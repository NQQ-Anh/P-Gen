import React, { useEffect, useState } from "react";
import "../styles/HistoryView.css";

export const HistoryView = ({ attemptId, onBack }) => {
  const [history, setHistory] = useState([]);
  const [loading, setLoading] = useState(true);
  const [selectedDetail, setSelectedDetail] = useState(null);

  useEffect(() => {
    if (attemptId) {
      handleViewDetail(attemptId);
    }
  }, [attemptId]);

  useEffect(() => {
    fetch("http://localhost:5001/history/my-history", {
      headers: {
        Authorization: `Bearer ${localStorage.getItem("accessToken")}`,
      },
    })
      .then((res) => {
        if (!res.ok) return res.json().then(err => { throw err; });
        return res.json();
      })
      .then((data) => {
        if (Array.isArray(data)) {
          setHistory(data);
        } else {
          setHistory([]);
        }
        setLoading(false);
      })
      .catch((err) => {
        console.error("Lỗi lấy lịch sử:", err);
        setHistory([]);
        setLoading(false);
      });
  }, []);

  const formatDate = (dateString) => {
    return new Date(dateString).toLocaleString("vi-VN");
  };

  const formatDuration = (totalSeconds) => {
    if (!totalSeconds || totalSeconds <= 0) return "0 phút";
    const hours = Math.floor(totalSeconds / 3600);
    const minutes = Math.floor((totalSeconds % 3600) / 60);
    const seconds = totalSeconds % 60;

    let result = "";
    if (hours > 0) result += `${hours} giờ `;
    if (minutes > 0 || hours > 0) result += `${minutes} phút `;
    if (hours === 0 && minutes === 0) return `${seconds} giây`;
    return result.trim();
  };

  const handleViewDetail = async (attemptId) => {
    try {
      const response = await fetch(`http://localhost:5001/history/details/${attemptId}`, {
        headers: { Authorization: `Bearer ${localStorage.getItem("accessToken")}` },
      });
      
      if (!response.ok) {
          throw new Error("Không tìm thấy dữ liệu");
      }

      const data = await response.json();
      setSelectedDetail(data);
    } catch (err) {
      console.error(err);
      alert("Lỗi: " + err.message);
      setSelectedDetail(null);
    }
  };

  return (
    <div className="all-wrapper">
      <div className="history-container">
        <div className="history-header">
          <button className="red-btn" onClick={selectedDetail ? () => setSelectedDetail(null) : onBack}>
            <i className="fa-solid fa-caret-left"></i> {selectedDetail ? "Trở lại" : "Quay lại"}
          </button>
          <h2>{selectedDetail ? "Chi tiết bài làm" : "Lịch sử làm bài"}</h2>
        </div>

        {loading ? (
          <div className="loader">Đang tải dữ liệu...</div>
        ) : (
          <div className="history-content">
            {selectedDetail ? (
              <div className="detail-view">
                <div className="detail-summary">
                  <div className="summary-col">
                    <p>Môn học: <strong>{selectedDetail?.attempt?.subject_name || "Đang tải..."}</strong></p>
                    <p>Nội dung: <strong>{selectedDetail.attempt.order_index ? `Chương ${selectedDetail.attempt.order_index}` : "Đề tổng hợp"}</strong></p>
                  </div>
                  <div className="summary-col">
                    <p>Điểm: <strong className="red-text">{selectedDetail.attempt.score}</strong></p>
                    <p>Thời gian làm: <strong>{formatDuration(selectedDetail.attempt.time_spent)}</strong></p>
                  </div>
                </div>

                <div className="review-list">
                  {selectedDetail.questions.map((q, index) => {
                    const selectedId = q.selected_answer_id;
                    const correctAns = q.answers?.find(a => a.is_correct === 1 || a.is_correct === true);
                    const isCorrect = selectedId === correctAns?.id;

                    return (
                      <div key={q.id} className={`review-item ${isCorrect ? 'correct-card' : 'incorrect-card'}`}>
                        <p className="review-q-text">
                          <strong>Câu {index + 1}:</strong> {q.content}
                        </p>
                        <div className="review-answers">
                          {q.answers?.map((ans) => {
                            const isUserSelected = selectedId === ans.id;
                            const isCorrectAns = ans.is_correct === 1 || ans.is_correct === true;

                            let ansClass = "review-ans-card";
                            if (isCorrectAns) ansClass += " border-correct";
                            if (isUserSelected && !isCorrectAns) ansClass += " border-wrong";

                            return (
                              <div key={ans.id} className={ansClass}>
                                <span className="ans-text">{ans.content}</span>
                                <div className="tags">
                                </div>
                              </div>
                            );
                          })}
                        </div>
                      </div>
                    );
                  })}
                </div>
              </div>
            ) : (
              <div className="history-list">
                {history.length === 0 ? (
                  <p className="no-data">Bạn chưa có lượt làm bài nào.</p>
                ) : (
                  history.map((item) => (
                    <div key={item.id} className="history-card">
                      <div className="card-main">
                        <div className="subject-info">
                          <span className="subject-name">
                            {item.subject_name} 
                          </span>
                          <span className="chapter-index">
                            <i className="fa-solid fa-book-bookmark"></i> {item.order_index ? `Chương ${item.order_index}` : "Tổng hợp"}
                          </span>
                          <span className="attempt-date">
                            <i className="fa-regular fa-calendar"></i> {formatDate(item.created_at)}
                          </span>
                        </div>
                        <div className="score-badge">
                          <span className="score-num">{item.score}</span>
                          <span className="score-text">điểm</span>
                        </div>
                      </div>
                      <div className="card-footer">
                        <div className="stats">
                          <span>Kết quả: <strong>{item.correct_count}/{item.total_questions}</strong></span>
                          <span>Thời gian: <strong>{formatDuration(item.time_spent)}</strong></span>
                        </div>
                        <button className="red-btn" onClick={() => handleViewDetail(item.id)}>
                          <i className="fa-solid fa-eye"></i> Chi tiết
                        </button>
                      </div>
                    </div>
                  ))
                )}
              </div>
            )}
          </div>
        )}
      </div>
    </div>
  );
};