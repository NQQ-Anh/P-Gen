import React, { useState, useEffect } from 'react';
import "../styles/ReviewDashboard.css";

const API_BASE =
  import.meta.env.VITE_API_URL ||
  import.meta.env.REACT_APP_API_URL ||
  `http://${window.location.hostname}:5001`;

const ReviewDashboard = ({ onSelectSubject }) => {
    const [stats, setStats] = useState([]);
    const [loading, setLoading] = useState(true);

    useEffect(() => {
        const fetchStatus = async () => {
            try {
                const token = localStorage.getItem('accessToken');
                const response = await fetch(`${API_BASE}/review/status`, {
                    headers: { 
                        'Authorization': `Bearer ${token}`,
                        'Content-Type': 'application/json'
                    }
                });

                if (!response.ok) {
                    throw new Error(`Server error: ${response.status}`);
                }

                const data = await response.json();
                setStats(Array.isArray(data) ? data : []);
            } catch (error) {
                console.error("Lỗi lấy dữ liệu dashboard:", error);
                setStats([]);
            } finally {
                setLoading(false);
            }
        };
        fetchStatus();
    }, []);

    if (loading) return <div className="loading-center">Đang tải dữ liệu ôn tập...</div>;

    return (
        <div className='all-wrapper'>
            <div className="review-dashboard">
                <h1 className="view-title">Sổ tay ôn tập</h1>
                <p className="view-subtitle">Củng cố những gì bạn đã học</p>

                <div className="subject-grid">
                    {stats.length > 0 ? (
                        stats.map((sub) => (
                            <div key={sub.id} className="subject-card" onClick={() => onSelectSubject(sub)}>
                                <div className="card-bg"></div>

                                <div className="card-content">
                                    <div className="card-basic-info">
                                        <div className="subject-icon-box">
                                            <i className="fa-solid fa-clock-rotate-left"></i>
                                        </div>
                                        <h3>{sub.name}</h3>
                                    </div>

                                    <div className="card-hover-details">
                                        <div className="review-progress-wrapper">
                                            <div className="progress-label-group">
                                                <span>Tiến độ ghi nhớ: </span>
                                                <span>{sub.progress}%</span>
                                            </div>
                                            <div className="progress-bar-container">
                                                <div 
                                                    className="progress-bar-fill" 
                                                    style={{ width: `${sub.progress}%` }}
                                                ></div>
                                            </div>
                                        </div>

                                        <div className="sub-stats">
                                            <span>
                                                <i className="fa-solid fa-circle-exclamation"></i>
                                                {sub.dueCount} câu đến hạn
                                            </span>
                                        </div>
                                        
                                        <button className="red-btn">Ôn tập ngay</button>
                                    </div>
                                </div>
                            </div>
                        ))
                    ) : (
                        <div className="empty-message">
                            <i className="fa-solid fa- mug-hot"></i>
                            <p>Bạn chưa có dữ liệu ôn tập. Hãy hoàn thành các bài luyện tập trước nhé!</p>
                        </div>
                    )}
                </div>
            </div>
        </div>
    );
};

export default ReviewDashboard;