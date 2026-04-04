import React, { useState, useEffect, useCallback } from 'react';
import '../styles/QuestionView.css';

export const QuestionView = ({ subjectId, chapterIds, settings, onBack, onFinish }) => {
    const [questions, setQuestions] = useState([]);
    const [currentIndex, setCurrentIndex] = useState(0);
    const [userAnswers, setUserAnswers] = useState({}); // { questionId: answerId }
    const [isAnswered, setIsAnswered] = useState({}); // { questionId: true/false }
    const [isListView, setIsListView] = useState(false); // Trạng thái chuyển chế độ
    const [loading, setLoading] = useState(true);

    // Fetch dữ liệu từ API dựa trên danh sách chương đã chọn
    const fetchQuestions = useCallback(async () => {
        try {
            setLoading(true);
            let allQuestions = [];
            for (const chapterId of chapterIds) {
                const response = await fetch(
                    `http://localhost:5001/subjects/${subjectId}/chapters/${chapterId}/questions`,
                    {
                        headers: { 'Authorization': `Bearer ${localStorage.getItem('accessToken')}` }
                    }
                );
                const data = await response.json();
                allQuestions = [...allQuestions, ...data];
            }

            if (settings.shuffle) {
                allQuestions = allQuestions.sort(() => Math.random() - 0.5);
            }
            setQuestions(allQuestions);
        } catch (error) {
            console.error("Lỗi tải câu hỏi:", error);
        } finally {
            setLoading(false);
        }
    }, [subjectId, chapterIds, settings.shuffle]);

    useEffect(() => {
        fetchQuestions();
    }, [fetchQuestions]);

    const handleSelectAnswer = (questionId, answerId, isCorrect) => {
        if (settings.showAnswerImmediately && isAnswered[questionId]) return;

        setUserAnswers(prev => ({ ...prev, [questionId]: answerId }));
        
        if (settings.showAnswerImmediately) {
            setIsAnswered(prev => ({ ...prev, [questionId]: true }));
            if (settings.autoNext && isCorrect && !isListView) {
                setTimeout(() => {
                    if (currentIndex < questions.length - 1) setCurrentIndex(prev => prev + 1);
                }, 1000);
            }
        }
    };

    const handleSubmit = () => {
        let correctCount = 0;
        questions.forEach(q => {
            const selectedId = userAnswers[q.id];
            const correctAns = q.answers.find(a => a.is_correct === 1 || a.is_correct === true);
            if (selectedId === correctAns?.id) correctCount++;
        });

        onFinish({
            total: questions.length,
            correct: correctCount,
            score: ((correctCount / questions.length) * 10).toFixed(2),
            userAnswers
        });
    };

    // Component con hiển thị nội dung một câu hỏi (để tái sử dụng cho cả 2 chế độ)
    const renderQuestion = (q, index) => (
        <div key={q.id} className={`question-card ${isListView ? 'list-item' : ''}`}>
            <h3 className="question-text">Câu {index + 1}: {q.content}</h3>
            <div className="answers-grid">
                {q.answers.map((ans) => {
                    const isSelected = userAnswers[q.id] === ans.id;
                    const isCorrect = ans.is_correct === 1 || ans.is_correct === true;
                    const hasAnswered = isAnswered[q.id];

                    let btnClass = "answer-btn";
                    if (settings.showAnswerImmediately && hasAnswered) {
                        if (isCorrect) btnClass += " correct";
                        else if (isSelected) btnClass += " incorrect";
                    } else if (isSelected) {
                        btnClass += " selected";
                    }

                    return (
                        <button
                            key={ans.id}
                            className={btnClass}
                            onClick={() => handleSelectAnswer(q.id, ans.id, isCorrect)}
                        >
                            {ans.content}
                        </button>
                    );
                })}
            </div>
        </div>
    );

    if (loading) return <div className="quiz-loading">Đang chuẩn bị câu hỏi...</div>;

    return (
        <div className="quiz-container">
            <div className="quiz-header">
                <button className="back-link" onClick={onBack}>← Thoát</button>
                
                {/* Nút chuyển đổi chế độ List/Flashcard */}
                <div className="view-toggle">
                    <span className={!isListView ? "toggle-label active" : "toggle-label"}>Flashcard</span>
                    <label className="switch">
                        <input 
                            type="checkbox" 
                            checked={isListView} 
                            onChange={() => setIsListView(!isListView)} 
                        />
                        <span className="slider"></span>
                    </label>
                    <span className={isListView ? "toggle-label active" : "toggle-label"}>Danh sách</span>
                </div>
            </div>

            <div className="quiz-body">
                {isListView ? (
                    <div className="list-view-container">
                        {questions.map((q, idx) => renderQuestion(q, idx))}
                    </div>
                ) : (
                    renderQuestion(questions[currentIndex], currentIndex)
                )}
            </div>

            <div className="quiz-footer">
                {!isListView && (
                    <div className="nav-buttons">
                        <button disabled={currentIndex === 0} onClick={() => setCurrentIndex(c => c - 1)}>Trước</button>
                        <span>{currentIndex + 1} / {questions.length}</span>
                        <button disabled={currentIndex === questions.length - 1} onClick={() => setCurrentIndex(c => c + 1)}>Sau</button>
                    </div>
                )}
                <button className="submit-quiz-btn" onClick={handleSubmit}>Nộp bài tập</button>
            </div>
        </div>
    );
};

export default QuestionView;