import React, { useState, useEffect } from 'react';
import "../styles/ReviewSubjectView.css";

const ReviewSubjectView = ({ subject, onStart, onBack }) => {
    const [questions, setQuestions] = useState([]);
    const [selectedIds, setSelectedIds] = useState([]);
    const [searchTerm, setSearchTerm] = useState("");
    const [loading, setLoading] = useState(true);

    // Cài đặt ôn tập
    const [viewMode, setViewMode] = useState("list");
    const [isShuffle, setIsShuffle] = useState(false);
    const [showAnswers, setShowAnswers] = useState(true);
    const [timePerQuestion, setTimePerQuestion] = useState(0);

    useEffect(() => {
        const fetchDueQuestions = async () => {
            try {
                const token = localStorage.getItem('accessToken');
                const response = await fetch(`http://localhost:5001/review/questions/${subject.id}`, {
                    headers: { 'Authorization': `Bearer ${token}` }
                });
                if (!response.ok) throw new Error("Không thể tải câu hỏi");
                const data = await response.json();
                setQuestions(Array.isArray(data) ? data : []);
                // Mặc định chọn tất cả khi mới tải
                if (Array.isArray(data)) setSelectedIds(data.map(q => q.id));
            } catch (error) {
                console.error("Lỗi lấy danh sách câu hỏi:", error);
                setQuestions([]);
            } finally {
                setLoading(false);
            }
        };
        fetchDueQuestions();
    }, [subject.id]);

    const filteredQuestions = questions.filter(q => 
        q.content?.toLowerCase().includes(searchTerm.toLowerCase())
    );

    const toggleSelect = (id) => {
        setSelectedIds(prev => 
            prev.includes(id) ? prev.filter(i => i !== id) : [...prev, id]
        );
    };

    const toggleSelectAll = () => {
        if (selectedIds.length === filteredQuestions.length) {
            setSelectedIds([]);
        } else {
            setSelectedIds(filteredQuestions.map(q => q.id));
        }
    };

    const getStreakInfo = (streak) => {
        if (streak <= 0) return null;
        if (streak <= 3) return { class: 'streak-low', icon: 'fa-fire-flame-simple' };
        if (streak <= 6) return { class: 'streak-mid', icon: 'fa-fire' };
        return { class: 'streak-high', icon: 'fa-fire-flame-curved' };
    };

    if (loading) return <div className="review-loading">Đang tải danh sách câu hỏi...</div>;

    return (
        <div className="review-subject-container">
            <div className="review-header">
                <button onClick={onBack} className="red-btn back-btn">
                    <i className="fa-solid fa-caret-left"></i> Quay lại
                </button>
                <div className="subject-info-title">
                    <h2 className='title'>{subject.name || "Môn học"}</h2>
                    <span className='subtitle'>{questions.length} câu hỏi đến hạn củng cố</span>
                </div>
            </div>

            <div className="review-two-columns">
                {/* CỘT 1: DANH SÁCH CÂU HỎI */}
                <div className="questions-column">
                    <div className="list-controls-wrapper">
                        <button className="select-all-btn red-btn" onClick={toggleSelectAll}>
                            <i className={`fa-solid ${selectedIds.length === filteredQuestions.length ? 'fa-check-double' : 'fa-list-check'}`}></i>
                            {selectedIds.length === filteredQuestions.length ? " Bỏ chọn hết" : " Chọn tất cả"}
                        </button>
                        
                        <div className="search-bar-wrapper">
                            <i className="fa-solid fa-magnifying-glass"></i>
                            <input 
                                type="text" 
                                placeholder="Tìm kiếm nội dung..." 
                                value={searchTerm}
                                onChange={(e) => setSearchTerm(e.target.value)}
                            />
                        </div>
                    </div>

                    <div className="questions-scroll-area">
                        {filteredQuestions.map(q => {
                            const streakInfo = getStreakInfo(q.correct_streak);
                            const isSelected = selectedIds.includes(q.id);
                            return (
                                <div 
                                    key={q.id} 
                                    className={`q-review-item ${isSelected ? 'selected' : ''}`}
                                    onClick={() => toggleSelect(q.id)}
                                >
                                    <div className="q-checkbox">
                                        <div className={`custom-check ${isSelected ? 'checked' : ''}`}>
                                            <i className="fa-solid fa-check"></i>
                                        </div>
                                    </div>
                                    <div className="q-brief">
                                        <p className="q-content">
                                            {(() => {
                                                const limit = 70;
                                                if (!q.content || q.content.length <= limit) return q.content;
                                                
                                                const snippet = q.content.substring(0, limit);
                                                const lastSpace = snippet.lastIndexOf(" ");
                                                
                                                return (lastSpace > 0 ? snippet.substring(0, lastSpace) : snippet) + " ...";
                                            })()}
                                        </p>
                                    </div>
                                    {streakInfo && (
                                        <div className={`q-streak-badge ${streakInfo.class}`}>
                                            <i className={`fa-solid ${streakInfo.icon}`}></i>
                                            {q.correct_streak}
                                        </div>
                                    )}
                                </div>
                            );
                        })}
                    </div>
                </div>

                {/* CỘT 2: CÀI ĐẶT */}
                <div className="settings-column">
                    <div className="settings-card">
                        <h3 className='title'><i className="fa-solid fa-sliders"></i> Cấu hình ôn tập</h3>
                        
                        <div className="setting-group">
                            <label>Chế độ hiển thị</label>
                            <div className="mode-toggle">
                                <button className={viewMode === 'list' ? 'active' : 'inactive'} onClick={() => setViewMode('list')}>Danh sách</button>
                                <button className={viewMode === 'each' ? 'active' : 'inactive'} onClick={() => setViewMode('each')}>Từng câu</button>
                            </div>
                        </div>

                        <div className="setting-item">
                            <label>Xáo trộn câu hỏi</label>
                            <input type="checkbox" checked={isShuffle} onChange={(e) => setIsShuffle(e.target.checked)} />
                        </div>

                        <div className="setting-item">
                            <label>Hiện đáp án ngay</label>
                            <input type="checkbox" checked={showAnswers} onChange={(e) => setShowAnswers(e.target.checked)} />
                        </div>

                        {viewMode === 'each' && (    
                            <div className="setting-item">
                                <label>Thời gian mỗi câu</label>
                                <select 
                                    className="custom-select"
                                    value={timePerQuestion}
                                    onChange={(e) => setTimePerQuestion(Number(e.target.value))}
                                >
                                    <option value={0}>Không giới hạn</option>
                                    {[10, 20, 30, 60].map(s => (
                                        <option key={s} value={s}>{s} giây</option>
                                    ))}
                                </select>
                            </div>
                        )}

                        <button 
                            className="start-review-btn"
                            disabled={selectedIds.length === 0}
                            onClick={() => onStart(selectedIds, { viewMode, isShuffle, showAnswers, timePerQuestion })}
                        >
                            BẮT ĐẦU ÔN TẬP ({selectedIds.length})
                        </button>
                    </div>
                </div>
            </div>
        </div>
    );
};

export default ReviewSubjectView;