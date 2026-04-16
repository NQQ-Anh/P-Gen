import React, { useState, useEffect, useCallback } from 'react';
import '../styles/QuestionView.css';

const API_URL = import.meta.env.REACT_APP_API_URL || `http://${window.location.hostname}:5001`;
export const QuestionView = ({ subjectId, chapterIds, settings, onBack, onFinish }) => {
    const [questions, setQuestions] = useState([]);
    const [currentIndex, setCurrentIndex] = useState(0);
    const [userAnswers, setUserAnswers] = useState({}); // { questionId: answerId }
    const [isAnswered, setIsAnswered] = useState({}); // { questionId: true/false }
    const [isListView, setIsListView] = useState(false); // Trạng thái chuyển chế độ
    const [loading, setLoading] = useState(true);
    const [timeLeft, setTimeLeft] = useState((settings?.time || 15) * 60);


    // Fetch dữ liệu từ API dựa trên danh sách chương đã chọn
    const fetchQuestions = useCallback(async () => {
        try {
            setLoading(true);
            let allQuestions = [];
            for (const chapterId of chapterIds) {
                const response = await fetch(
                    `${API_URL}/subjects/${subjectId}/chapters/${chapterId}/questions`,
                    {
                        headers: { 'Authorization': `Bearer ${localStorage.getItem('accessToken')}` }
                    }
                );
                const data = await response.json();
                
                // KIỂM TRA LỖI TOKEN NGAY TẠI ĐÂY
                if (response.status === 401 || data.message === "Token expired") {
                    alert("Phiên đăng nhập hết hạn. Vui lòng đăng nhập lại!");
                    onBack(); // Quay lại trang thiết lập
                    return;
                }

                if (!response.ok) throw new Error(data.message || "Lỗi tải dữ liệu");

                // Xử lý dữ liệu mảng trả về (Router của bạn trả về mảng result)
                const questionsBatch = Array.isArray(data) ? data : (data.questions || []);
                allQuestions = [...allQuestions, ...questionsBatch];
            }

            if (settings.shuffle) {
                allQuestions = allQuestions.sort(() => Math.random() - 0.5);
            }
            setQuestions(allQuestions);
        } catch (error) {
            console.error("Lỗi fetch:", error);
        } finally {
            setLoading(false);
        }
    }, [subjectId, chapterIds, settings.shuffle, onBack]);

    useEffect(() => {
        fetchQuestions();
    }, [fetchQuestions]);

    useEffect(() => {
        if (timeLeft <= 0) {
            alert("Hết giờ làm bài! Hệ thống tự động nộp.");
            handleSubmit();
            return;
        }

        const timer = setInterval(() => {
            setTimeLeft((prev) => prev - 1);
        }, 1000);

        return () => clearInterval(timer);
    }, [timeLeft]);

    const formatTime = (seconds) => {
    const mins = Math.floor(seconds / 60);
    const secs = seconds % 60;
    return `${mins}:${secs < 10 ? "0" : ""}${secs}`;
    };

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

    const handleSubmit = async () => {
        // 1. Xác nhận nộp bài
        if (!window.confirm("Bạn có muốn nộp bài và kết thúc lượt làm này không?")) return;

        // 2. Tính toán thời gian đã làm (đơn vị: giây)
        const totalTimeSet = (settings?.time || 15) * 60;
        const timeSpent = totalTimeSet - timeLeft;
        const chapterIdToSave = chapterIds.length === 1 ? chapterIds[0] : null;

        // 3. Chuẩn bị dữ liệu chi tiết cho QuizAttemptDetail và Review
        let correctCount = 0;
        const details = questions.map(q => {
            const selectedId = userAnswers[q.id];
            const correctAns = q.answers.find(a => a.is_correct === 1 || a.is_correct === true);
            const isCorrect = selectedId === correctAns?.id;
            
            if (isCorrect) correctCount++;
            
            return {
                questionId: q.id,
                selectedAnswerId: selectedId,
                isCorrect: isCorrect
            };
        });

        const finalScore = ((correctCount / questions.length) * 10).toFixed(2);

        // 4. Dữ liệu gửi lên Backend
        const payload = {
            subjectId: subjectId,
            chapterId: chapterIdToSave,
            score: finalScore,
            correct: correctCount,
            total: questions.length,
            timeSpent: timeSpent,
            details: details,
            questions: questions,
            userAnswers: userAnswers
        };

        try {
            // 5. Gọi API lưu lịch sử (Sử dụng token từ Context hoặc LocalStorage)
            const response = await fetch('http://localhost:5001/history/save', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json',
                    'Authorization': `Bearer ${localStorage.getItem('accessToken')}`
                },
                body: JSON.stringify(payload)
            });

            if (!response.ok) throw new Error("Không thể lưu kết quả làm bài");

            const savedResult = await response.json();

            // 6. Chuyển dữ liệu sang ResultView
            onFinish({
                ...payload,
                attemptId: savedResult.attemptId,
                questions: questions,
                userAnswers: userAnswers
            });

        } catch (error) {
            console.error("Lỗi khi nộp bài:", error);
            alert("Đã có lỗi xảy ra khi lưu kết quả. Bạn vẫn có thể xem điểm của mình.");
            
            // Vẫn cho xem kết quả kể cả khi lưu DB lỗi
            onFinish({ ...payload, questions, userAnswers });
        }
    };

    // Component con hiển thị nội dung một câu hỏi
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
                <button className="back-link" onClick={onBack}>
                    <i class="fa-solid fa-caret-left"></i> Quay lại
                </button>

                <div className={`quiz-timer ${timeLeft < 60 ? "timer-warning" : ""}`}>
                <i className="fa-regular fa-clock"></i>
                <span>{formatTime(timeLeft)}</span>
            </div>
                
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
                    <span className={isListView ? "toggle-label active" : "toggle-label"}>List</span>
                </div>
            </div>

            <div className="quiz-body">
                {/* Trường hợp đang tải */}
                {loading && <p className="loading-text">Đang tải câu hỏi...</p>}

                {/* Trường hợp đã tải xong nhưng không có câu hỏi (Tránh lỗi 1/0 và crash) */}
                {!loading && questions.length === 0 && (
                    <div className="empty-state">
                        <p>Chương này chưa có câu hỏi nào. Vui lòng quay lại sau!</p>
                        <button className="red-btn" onClick={onBack}>Quay lại</button>
                    </div>
                )}

                {/* Chỉ hiển thị câu hỏi nếu mảng có dữ liệu */}
                {!loading && questions.length > 0 && (
                    isListView ? (
                        <div className="list-view-container">
                            {questions.map((q, idx) => renderQuestion(q, idx))}
                        </div>
                    ) : (
                        // Thêm kiểm tra questions[currentIndex] trước khi gọi renderQuestion
                        questions[currentIndex] && renderQuestion(questions[currentIndex], currentIndex)
                    )
                )}
            </div>

            <div className="quiz-footer">
                {!isListView && (
                    <div className="nav-buttons">
                        <button className="red-btn" disabled={currentIndex === 0} onClick={() => setCurrentIndex(c => c - 1)}>Trước</button>
                        <span>{currentIndex + 1} / {questions.length}</span>
                        <button className="red-btn" disabled={currentIndex === questions.length - 1} onClick={() => setCurrentIndex(c => c + 1)}>Sau</button>
                    </div>
                )}
                <button className="red-btn submit-quiz-btn" onClick={handleSubmit}>Nộp bài tập</button>
            </div>
        </div>
    );
};

export default QuestionView;