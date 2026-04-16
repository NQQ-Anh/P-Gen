import React, { useState, useEffect, useCallback, useMemo } from 'react';
import '../styles/QuestionView.css';

const API_URL = import.meta.env.REACT_APP_API_URL || `http://${window.location.hostname}:5001`;

export const QuestionView = ({ subjectId, chapterIds, settings, onBack, onFinish }) => {
    const isExam = settings?.isExam;
    const [questions, setQuestions] = useState([]);
    const [currentIndex, setCurrentIndex] = useState(0);
    const [userAnswers, setUserAnswers] = useState({});
    const [isAnswered, setIsAnswered] = useState({});
    const [isListView, setIsListView] = useState(settings?.viewMode === 'list');
    const [loading, setLoading] = useState(true);
    const [timeLeft, setTimeLeft] = useState(() => {
        if (isExam) return (settings?.totalTime || 15) * 60;
        if (settings?.timePerQuestion > 0) return settings.timePerQuestion;
        return null;
    });
    const [flaggedQuestions, setFlaggedQuestions] = useState({});

    // Fetch dữ liệu
    const fetchQuestions = useCallback(async () => {
        try {
            setLoading(true);
            let allQuestions = [];
            const token = localStorage.getItem('accessToken'); // Lấy token

            if (!token) {
                alert("Phiên đăng nhập hết hạn!");
                onBack();
                return;
            }

            for (const chapterId of chapterIds) {
                const response = await fetch(
                    `${API_URL}/subjects/${subjectId}/chapters/${chapterId}/questions`,
                    {
                        headers: { 'Authorization': `Bearer ${token}` } // Đảm bảo có Bearer
                    }
                );

                if (response.status === 401) {
                    alert("Phiên làm việc hết hạn. Vui lòng đăng nhập lại.");
                    onBack();
                    return;
                }

                const data = await response.json();
                
                // KIỂM TRA: Một số API trả về mảng trực tiếp, một số trả về { result: [] }
                // Hãy đảm bảo lấy đúng mảng chứa các câu hỏi
                const questionsBatch = Array.isArray(data) ? data : (data.questions || data.result || []);
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

    useEffect(() => { fetchQuestions(); }, [fetchQuestions]);

    useEffect(() => {
        if (!isExam && settings?.timePerQuestion > 0) {
            setTimeLeft(settings.timePerQuestion);
        }
    }, [currentIndex, isExam, settings?.timePerQuestion]);

    // Hàm chuyển câu tập trung
    const handleNext = useCallback(() => {
        if (currentIndex < questions.length - 1) {
            setCurrentIndex(prev => prev + 1);
            // Reset ngay timeLeft về giá trị cài đặt để tránh nhảy bước
            if (!isExam && settings?.timePerQuestion > 0) {
                setTimeLeft(settings.timePerQuestion);
            }
        } else if (isExam) {
            handleSubmit();
        }
    }, [currentIndex, questions.length, isExam, settings?.timePerQuestion]);

    // Logic Timer
    useEffect(() => {
        if (timeLeft === null) return;

        if (timeLeft <= 0) {
            // Chỉ tự chuyển câu ở chế độ Từng câu
            if (!isExam && settings?.timePerQuestion > 0 && !isListView) {
                handleNext();
            }
            return;
        }

        const timer = setInterval(() => {
            setTimeLeft(prev => prev - 1);
        }, 1000);

        return () => clearInterval(timer);
        // QUAN TRỌNG: Không đưa currentIndex vào đây để tránh re-trigger khi đang ở 0s
    }, [timeLeft, isExam, settings?.timePerQuestion, isListView, handleNext]);

    const answeredCount = useMemo(() => 
        Object.keys(userAnswers).length, [userAnswers]);

    useEffect(() => {
        if (!isListView || questions.length === 0) return;

        const observerOptions = {
            root: null,
            rootMargin: '-40% 0px -69% 0px',
            threshold: 0 
        };

        const observerCallback = (entries) => {
            entries.forEach((entry) => {
                // Khi một câu hỏi chạm vào vạch mép trên màn hình
                if (entry.isIntersecting) {
                    const id = entry.target.id;
                    const index = parseInt(id.replace('question-', ''));
                    
                    if (!isNaN(index)) {
                        setCurrentIndex(index);
                    }
                }
            });
        };

        const observer = new IntersectionObserver(observerCallback, observerOptions);

        // QUAN TRỌNG: Phải đảm bảo các phần tử đã được render xong
        const timer = setTimeout(() => {
            questions.forEach((_, idx) => {
                const el = document.getElementById(`question-${idx}`);
                if (el) observer.observe(el);
            });
        }, 100); // Delay nhẹ để DOM kịp render

        return () => {
            clearTimeout(timer);
            observer.disconnect();
        };
    }, [isListView, questions]);

    // Hàm nhảy câu
    const goToQuestion = (index) => {
        if (!isExam && settings?.timePerQuestion > 0) {
            return; 
        }

        if (isListView) {
            const element = document.getElementById(`question-${index}`);
            if (element) {
                const offset = 150;
                const bodyRect = document.body.getBoundingClientRect().top;
                const elementRect = element.getBoundingClientRect().top;
                const offsetPosition = (elementRect - bodyRect) - offset;

                window.scrollTo({ top: offsetPosition, behavior: 'smooth' });
            }
        } else {
            setCurrentIndex(index);
        }
    };

    // Xử lý chọn đáp án
    const handleAnswerSelect = (questionId, answerId, isCorrect) => {
        // Nếu đã trả lời rồi thì không cho chọn lại ở chế độ hiện đáp án ngay
        if (settings.showAnswerImmediately && isAnswered[questionId]) return;

        setUserAnswers(prev => ({ ...prev, [questionId]: answerId }));
        
        if (settings.showAnswerImmediately) {
            setIsAnswered(prev => ({ ...prev, [questionId]: true }));
            
            // Tự động chuyển câu sau khi chọn
            // điều kiện: Nếu có timePerQuestion hoặc autoNext được bật
            const shouldAutoNext = settings.autoNext || settings.timePerQuestion > 0;
            
            if (shouldAutoNext && !isListView) {
                // Khi đã chọn, chúng ta có thể dừng timer của câu hiện tại
                // để tránh việc vừa hết giờ vừa tự chuyển gây nhảy 2 bước
                if (!isExam && settings?.timePerQuestion > 0) {
                    setTimeLeft(null); 
                }

                setTimeout(() => {
                    handleNext();
                }, 2000); // Chờ 2s
            }
        }
    };

    // Nộp bài
    const handleSubmit = async () => {
        // 1. Xác nhận nộp bài
        if (!window.confirm("Bạn có muốn nộp bài và kết thúc lượt làm này không?")) return;

        // 2. Tính toán các chỉ số
        const totalTimeSet = isExam ? (settings?.totalTime || 15) * 60 : 0;
        const timeSpent = isExam ? totalTimeSet - timeLeft : 0;
        
        let correctCount = 0;
        const details = questions.map(q => {
            const selectedId = userAnswers[q.id];
            const options = q.options || q.answers || [];
            const correctAns = options.find(o => o.is_correct === 1 || o.is_correct === true);
            const isCorrect = selectedId === correctAns?.id;
            
            if (isCorrect) correctCount++;
            
            return {
                questionId: q.id,
                selectedAnswerId: selectedId,
                isCorrect: isCorrect
            };
        });

        const finalScore = ((correctCount / questions.length) * 10).toFixed(2);

        // 3. Chuẩn bị dữ liệu gửi lên Backend
        const payload = {
            subjectId: subjectId,
            // Nếu làm nhiều chương thì để null, nếu 1 chương thì lấy id chương đó
            chapterId: chapterIds.length === 1 ? chapterIds[0] : null, 
            score: finalScore,
            correct: correctCount,
            total: questions.length,
            timeSpent: timeSpent,
            details: details, // Chi tiết từng câu đúng/sai để lưu QuizAttemptDetail
            questions: questions, // Gửi kèm để ResultView hiển thị lại
            userAnswers: userAnswers
        };

        try {
            // 4. Gửi API lưu vào Database
            const response = await fetch(`${API_URL}/history/save`, {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json',
                    'Authorization': `Bearer ${localStorage.getItem('accessToken')}`
                },
                body: JSON.stringify(payload)
            });

            if (!response.ok) {
                const errorData = await response.json();
                throw new Error(errorData.message || "Không thể lưu kết quả");
            }

            const savedResult = await response.json();
            console.log("Đã lưu lịch sử thành công:", savedResult);

            // 5. Chuyển sang màn hình kết quả (ResultView)
            // Truyền thêm attemptId từ server trả về nếu cần xem lại sau này
            onFinish({
                ...payload,
                attemptId: savedResult.attemptId 
            });

        } catch (error) {
            console.error("Lỗi khi lưu kết quả:", error);
            alert("Lưu kết quả vào hệ thống thất bại, nhưng bạn vẫn có thể xem điểm.");
            
            // Vẫn cho xem kết quả kể cả khi lỗi DB để tránh mất công làm bài của user
            onFinish(payload);
        }
    };

    // Render Câu hỏi
    const renderQuestion = (q, index) => {
        const userAnswerId = userAnswers[q.id];
        const hasAnswered = isAnswered[q.id] || (settings.showAnswerImmediately && userAnswerId);
        
        // Kiểm tra xem API trả về tên là 'options' hay 'answers'
        const displayOptions = q.options || q.answers || [];

        return (
            <div key={q.id} id={`question-${index}`} className={`question-card ${isListView ? 'list-item' : ''}`}>
                <div className="question-card-header">
                    <h3 className="question-text">Câu {index + 1}: {q.content}</h3>
                    <button 
                        className={`flag-toggle ${flaggedQuestions[q.id] ? 'active' : ''}`}
                        onClick={() => setFlaggedQuestions(prev => ({...prev, [q.id]: !prev[q.id]}))}
                    >
                        <i className={flaggedQuestions[q.id] ? "fa-solid fa-flag" : "fa-regular fa-flag"}></i>
                    </button>
                </div>
                
                <div className="answers-grid">
                    {displayOptions.map((opt) => {
                        const isSelected = userAnswerId === opt.id;
                        // Kiểm tra is_correct dù là kiểu Boolean hay 1/0
                        const isCorrect = opt.is_correct === 1 || opt.is_correct === true;

                        let btnClass = "answer-btn";
                        if (settings.showAnswerImmediately && hasAnswered) {
                            if (isCorrect) btnClass += " correct"; // Hiện xanh lá cho câu đúng
                            else if (isSelected) btnClass += " incorrect"; // Hiện đỏ cho câu chọn sai
                        } else if (isSelected) {
                            btnClass += " selected"; // Hiện vàng cho câu đang chọn (chế độ ôn tập)
                        }

                        return (
                            <button
                                key={opt.id}
                                className={btnClass}
                                // GỌI ĐÚNG TÊN HÀM: handleAnswerSelect
                                onClick={() => handleAnswerSelect(q.id, opt.id, isCorrect)}
                                disabled={settings.showAnswerImmediately && hasAnswered}
                            >
                                {opt.content}
                            </button>
                        );
                    })}
                </div>
            </div>
        );
    };

    if (loading) return <div className="quiz-loading">Đang chuẩn bị câu hỏi...</div>;

    return (
        <div className="quiz-layout-wrapper">
            <div className="quiz-container">
                <div className="quiz-header">
                    <button className="red-btn back-link" onClick={onBack}><i className="fa-solid fa-caret-left"></i> Quay lại</button>
                    {(isExam || (!isExam && settings?.timePerQuestion > 0)) && timeLeft !== null && (
                        <div className={`quiz-timer ${timeLeft < 60 ? "timer-warning" : ""}`}>
                            <i className="fa-regular fa-clock"></i> 
                            <span>{Math.floor(timeLeft / 60)}:{String(timeLeft % 60).padStart(2, '0')}</span>
                        </div>
                    )}
                </div>

                <div className="sticky-completion-wrapper">
                    <div className="completion-card-pastel">
                        <div className="completion-info">
                            <span className="completion-label">Hoàn thành</span>
                            <span className="completion-stats">{answeredCount} / {questions.length} câu</span>
                        </div>
                        <div className="completion-bar-bg">
                            <div 
                                className="completion-bar-fill" 
                                style={{ width: `${(answeredCount / questions.length) * 100}%` }}
                            ></div>
                        </div>
                    </div>
                </div>

                <div className="quiz-body">
                    {questions.length === 0 ? (
                        <div className="empty-state"><p>Chương này trống!</p><button onClick={onBack}>Quay lại</button></div>
                    ) : (
                        isListView ? questions.map((q, idx) => renderQuestion(q, idx)) : renderQuestion(questions[currentIndex], currentIndex)
                    )}
                </div>

                <div className="quiz-footer">
                    {!isListView && (
                        <div className="nav-buttons">
                            <button className="red-btn" disabled={currentIndex === 0} onClick={() => setCurrentIndex(c => c - 1)}>Trước</button>
                            <button className="red-btn" disabled={currentIndex === questions.length - 1} onClick={() => setCurrentIndex(c => c + 1)}>Sau</button>
                        </div>
                    )}
                    <button className="red-btn submit-quiz-btn" onClick={handleSubmit}>Nộp bài tập</button>
                </div>
            </div>

            <div className="quiz-sidebar">
                <div className="question-map-card">
                    <h4>Bản đồ câu hỏi</h4>
                    <div className="map-grid">
                        {questions.map((q, idx) => {
                            let nodeClass = "map-node";
                            if (idx === currentIndex) nodeClass += " current";
                            const currentAnsId = userAnswers[q.id];
                            const opts = q.options || q.answers || [];

                            if (!isListView && idx === currentIndex) nodeClass += " current";
                            if (flaggedQuestions[q.id]) nodeClass += " flagged";
                            
                            if (currentAnsId) {
                                if (settings?.showAnswerImmediately) {
                                    const isCorrect = currentAnsId === opts.find(o => o.is_correct === 1 || o.is_correct === true)?.id;
                                    nodeClass += isCorrect ? " correct" : " incorrect";
                                } else {
                                    nodeClass += " answered";
                                }
                            }

                            return (
                                <div 
                                    key={q.id} 
                                    className={nodeClass} 
                                    onClick={() => goToQuestion(idx)} // Gọi hàm cuộn mượt
                                >
                                    {idx + 1}
                                </div>
                            );
                        })}
                    </div>
                </div>
            </div>
        </div>
    );
};