import React, { useState, useEffect, useCallback, useMemo } from 'react';
import { useAuth } from '../contexts/AuthContext';
import '../styles/QuestionView.css';

const API_BASE =
  import.meta.env.VITE_API_URL ||
  import.meta.env.REACT_APP_API_URL ||
  `http://${window.location.hostname}:5001`;
export const QuestionView = ({ subject, chapterIds, settings, onBack, onFinish, resumeData, initialQuestions, mode }) => {
    const isExam = settings?.isExam;
    const subjectId = subject?.id;
    const { user } = useAuth();
    const [startedAt] = useState(() => {
        const resumed = Number(resumeData?.startedAt);
        if (Number.isFinite(resumed) && resumed > 0) return resumed;
        return Date.now();
    });

    //KHỞI TẠO STATE
    const [questions, setQuestions] = useState(resumeData?.questions || []);
    const [currentIndex, setCurrentIndex] = useState(resumeData?.currentIndex || 0);
    const [userAnswers, setUserAnswers] = useState(resumeData?.userAnswers || {});
    const [isAnswered, setIsAnswered] = useState(resumeData?.isAnswered || {});
    const [flaggedQuestions, setFlaggedQuestions] = useState(resumeData?.flaggedQuestions || {});
    const [loading, setLoading] = useState(!resumeData);
    const [isListView, setIsListView] = useState(settings?.viewMode === 'list');

    //LOGIC THỜI GIAN
    const [timeLeft, setTimeLeft] = useState(() => {
        if (resumeData) {
            if (isExam && resumeData.lastTimestamp) {
                const now = Date.now();
                const secondsPassedOffline = Math.floor((now - resumeData.lastTimestamp) / 1000);
                const calculatedTime = resumeData.timeLeft - secondsPassedOffline;
                return calculatedTime > 0 ? calculatedTime : 0;
            }
            return resumeData.timeLeft;
        }
        if (isExam) return (settings?.totalTime || 15) * 60;
        if (settings?.timePerQuestion > 0) return settings.timePerQuestion;
        return null;
    });

    //LƯU PHIÊN
    useEffect(() => {
        if (questions.length === 0 || mode === 'review') return;

        const session = {
            subject: subject,
            chapterIds,
            settings,
            questions,
            userAnswers,
            isAnswered,
            currentIndex,
            flaggedQuestions,
            timeLeft,
            isExam,
            startedAt,
            lastTimestamp: Date.now()
        };

        localStorage.setItem(`PTIT_QUIZ_SESSION_${user.id}`, JSON.stringify(session));
    }, [userAnswers, isAnswered, currentIndex, flaggedQuestions, timeLeft, questions, subject, chapterIds, settings, isExam, startedAt, user.id]);

    //FETCH DỮ LIỆU
    const fetchQuestions = useCallback(async () => {
        if (resumeData || (initialQuestions && initialQuestions.length > 0)) {
            if (initialQuestions) {
                setQuestions(initialQuestions);
                setLoading(false);
            }
            return;
        };

        try {
            setLoading(true);
            const token = localStorage.getItem('accessToken');
            let chaptersToFetch = chapterIds;
            
            if (isExam && (!chapterIds || chapterIds.length === 0)) {
                const resSubject = await fetch(`${API_BASE}/subjects/${subjectId}`, {
                    headers: { 'Authorization': `Bearer ${token}` }
                });
                const subjectData = await resSubject.json();
                chaptersToFetch = (subjectData.chapters || []).map(c => c.id);
            };

            let allQuestions = [];
            for (const chapterId of chaptersToFetch) {
                const response = await fetch(
                    `${API_BASE}/subjects/${subjectId}/chapters/${chapterId}/questions`,
                    { headers: { 'Authorization': `Bearer ${token}` } }
                );
                
                if (response.status === 401) {
                    alert("Phiên đăng nhập hết hạn!");
                    onBack();
                    return;
                };

                const data = await response.json();
                const questionsBatch = Array.isArray(data) ? data : (data.questions || data.result || []);
                allQuestions = [...allQuestions, ...questionsBatch];
            };

            if (settings.shuffle || isExam) {
                allQuestions = allQuestions.sort(() => Math.random() - 0.5);
            };

            if (isExam && settings.questionCount) {
                allQuestions = allQuestions.slice(0, settings.questionCount);
            };

            setQuestions(allQuestions);
        } catch (error) {
            console.error("Lỗi fetch:", error);
        } finally {
            setLoading(false);
        };
    }, [subjectId, chapterIds, settings.shuffle, settings.questionCount, isExam, onBack, resumeData, initialQuestions]);

    useEffect(() => { fetchQuestions(); }, [fetchQuestions]);

    //LOGIC TIMER & CHUYỂN CÂU
    const handleNext = useCallback(() => {
        if (currentIndex < questions.length - 1) {
            setCurrentIndex(prev => prev + 1);
            if (!isExam && settings?.timePerQuestion > 0) {
                setTimeLeft(settings.timePerQuestion);
            }
        } else if (isExam) {
            handleSubmit();
        }
    }, [currentIndex, questions.length, isExam, settings?.timePerQuestion]);

    useEffect(() => {
        if (timeLeft === null) return;
        if (timeLeft <= 0) {
            if (!isExam && settings?.timePerQuestion > 0 && !isListView) {
                handleNext();
            }
            return;
        }

        const timer = setInterval(() => {
            setTimeLeft(prev => prev - 1);
        }, 1000);

        return () => clearInterval(timer);
    }, [timeLeft, isExam, settings?.timePerQuestion, isListView, handleNext]);

    useEffect(() => {
        if (isExam && timeLeft === 0) {
            alert("Đã hết thời gian làm bài!");
            handleSubmit();
        }
    }, [timeLeft, isExam]);

    //QUESTION MAP
    const questionsPerPageMap = 30; 
    const [mapPage, setMapPage] = useState(Math.floor(currentIndex / questionsPerPageMap));

    useEffect(() => {
        setMapPage(Math.floor(currentIndex / questionsPerPageMap));
    }, [currentIndex]);

    const totalMapPages = Math.ceil(questions.length / questionsPerPageMap);
    const currentMapQuestions = questions.slice(mapPage * questionsPerPageMap, (mapPage + 1) * questionsPerPageMap);

    //LIST VIEW OBSERVER
    useEffect(() => {
        if (!isListView || questions.length === 0) return;

        const observerOptions = {
            root: null,
            rootMargin: '-40% 0px -59% 0px',
            threshold: 0 
        };

        const observerCallback = (entries) => {
            entries.forEach((entry) => {
                if (entry.isIntersecting) {
                    const id = entry.target.id;
                    const index = parseInt(id.replace('question-', ''));
                    if (!isNaN(index)) setCurrentIndex(index);
                }
            });
        };

        const observer = new IntersectionObserver(observerCallback, observerOptions);
        const timer = setTimeout(() => {
            questions.forEach((_, idx) => {
                const el = document.getElementById(`question-${idx}`);
                if (el) observer.observe(el);
            });
        }, 300);

        return () => {
            clearTimeout(timer);
            observer.disconnect();
        };
    }, [isListView, questions]);

    //CÁC HÀM TƯƠNG TÁC
    const goToQuestion = (index) => {
        if (!isExam && settings?.timePerQuestion > 0) return; 

        if (isListView) {
            const element = document.getElementById(`question-${index}`);
            if (element) {
                const offset = 150;
                const bodyRect = document.body.getBoundingClientRect().top;
                const elementRect = element.getBoundingClientRect().top;
                window.scrollTo({ top: (elementRect - bodyRect) - offset, behavior: 'smooth' });
            }
        } else {
            setCurrentIndex(index);
        }
    };

    const handleAnswerSelect = (questionId, answerId, isCorrect) => {
        if (settings.showAnswerImmediately && isAnswered[questionId]) return;

        setUserAnswers(prev => ({ ...prev, [questionId]: answerId }));
        
        if (settings.showAnswerImmediately) {
            setIsAnswered(prev => ({ ...prev, [questionId]: true }));
            const shouldAutoNext = settings.autoNext || settings.timePerQuestion > 0;
            if (shouldAutoNext && !isListView) {
                if (!isExam && settings?.timePerQuestion > 0) setTimeLeft(null); 
                setTimeout(() => { handleNext(); }, 2000); 
            }
        }
    };

    const handleSubmit = async () => {
        if (!isExam && timeLeft === 0) {}
        else if (!window.confirm("Bạn có muốn nộp bài tập không?")) return;

        const totalTimeSet = isExam ? (settings?.totalTime || 15) * 60 : 0;
        const remainingExamTime = Number.isFinite(timeLeft) ? timeLeft : 0;
        const examTimeSpent = Math.max(0, totalTimeSet - remainingExamTime);
        const practiceTimeSpent = Math.max(0, Math.floor((Date.now() - startedAt) / 1000));
        const timeSpent = isExam ? examTimeSpent : practiceTimeSpent;
        
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
                isCorrect: isCorrect ? 1 : 0
            };
        });

        const totalQuestions = questions.length;
        const score = totalQuestions > 0
            ? ((correctCount / totalQuestions) * 10).toFixed(2)
            : "0.00";

        const payload = {
            subjectId: subjectId,
            chapterId: (chapterIds && chapterIds.length === 1) ? chapterIds[0] : null,
            score,
            correct: correctCount,
            total: totalQuestions,
            timeSpent,
            details: details,
            questions,
            userAnswers
        };

        try {
            const token = localStorage.getItem('accessToken');
            
            if (mode === "review") {
                // A. REVIEW MODE
                const reviewPayload = {
                    results: details.map(d => ({
                        questionId: d.questionId,
                        isCorrect: d.isCorrect === 1
                    }))
                };

                const response = await fetch(`${API_BASE}/review/submit`, {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/json',
                        'Authorization': `Bearer ${token}`
                    },
                    body: JSON.stringify(reviewPayload)
                });

                if (response.ok) {
                    localStorage.removeItem(`PTIT_QUIZ_SESSION_${user.id}`); 
                    const savedResult = await response.json();
                    onFinish({ ...payload, attemptId: savedResult.attemptId });
                } else {
                    throw new Error("Lỗi cập nhật trí nhớ");
                }

            } else {
                // B. PRACTICE MODE
                const response = await fetch(`${API_BASE}/history/save`, {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/json',
                        'Authorization': `Bearer ${token}`
                    },
                    body: JSON.stringify(payload)
                });

                if (response.ok) {
                    localStorage.removeItem(`PTIT_QUIZ_SESSION_${user.id}`); 
                    const savedResult = await response.json();
                    onFinish({ ...payload, attemptId: savedResult.attemptId });
                }
            }
        } catch (error) {
            console.error("Lỗi nộp bài:", error);
            onFinish(payload);
        }
    };

    const answeredCount = useMemo(() => Object.keys(userAnswers).length, [userAnswers]);

    // RENDER
    const renderQuestion = (q, index) => {
        const userAnswerId = userAnswers[q.id];
        const hasAnswered = isAnswered[q.id] || (settings.showAnswerImmediately && userAnswerId);
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
                        const isCorrect = opt.is_correct === 1 || opt.is_correct === true;

                        let btnClass = "answer-btn";
                        if (settings.showAnswerImmediately && hasAnswered) {
                            if (isCorrect) btnClass += " correct";
                            else if (isSelected) btnClass += " incorrect";
                        } else if (isSelected) {
                            btnClass += " selected";
                        }

                        return (
                            <button
                                key={opt.id}
                                className={btnClass}
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
                            <div className="completion-bar-fill" style={{ width: `${(answeredCount / questions.length) * 100}%` }}></div>
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
                    <div className="map-card-header">
                        <h4>Danh sách câu hỏi</h4>
                        {totalMapPages > 1 && <div className="map-pagination-info">{mapPage + 1}/{totalMapPages}</div>}
                    </div>

                    {totalMapPages > 1 && (
                        <div className="map-page-controls">
                            <button className="map-page-btn" disabled={mapPage === 0} onClick={() => setMapPage(p => p - 1)}><i className="fa-solid fa-chevron-left"></i></button>
                            <div className="map-page-dots">
                                {Array.from({ length: totalMapPages }).map((_, pIdx) => (
                                    <span key={pIdx} className={`page-dot ${pIdx === mapPage ? 'active' : ''}`} onClick={() => setMapPage(pIdx)}></span>
                                ))}
                            </div>
                            <button className="map-page-btn" disabled={mapPage === totalMapPages - 1} onClick={() => setMapPage(p => p + 1)}><i className="fa-solid fa-chevron-right"></i></button>
                        </div>
                    )}

                    <div className="map-grid">
                        {currentMapQuestions.map((q, localIdx) => {
                            const globalIdx = mapPage * questionsPerPageMap + localIdx;
                            let nodeClass = "map-node";
                            const isLocked = !isExam && settings?.timePerQuestion > 0;
                            if (globalIdx === currentIndex) nodeClass += " current";
                            if (flaggedQuestions[q.id]) nodeClass += " flagged";
                            if (userAnswers[q.id]) {
                                if (settings?.showAnswerImmediately) {
                                    const opts = q.options || q.answers || [];
                                    const isCorrect = userAnswers[q.id] === opts.find(o => o.is_correct === 1 || o.is_correct === true)?.id;
                                    nodeClass += isCorrect ? " correct" : " incorrect";
                                } else nodeClass += " answered";
                            }
                            return <div key={q.id} className={nodeClass} onClick={() => !isLocked && goToQuestion(globalIdx)}>{globalIdx + 1}</div>;
                        })}
                    </div>
                </div>
            </div>
        </div>
    );
};
