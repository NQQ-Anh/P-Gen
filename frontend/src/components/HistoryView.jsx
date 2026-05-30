import React, { useEffect, useState } from "react";
import "../styles/HistoryView.css";

const DISPLAY_TIME_ZONE = "Asia/Ho_Chi_Minh";

const API_BASE =
  import.meta.env.VITE_API_URL ||
  import.meta.env.REACT_APP_API_URL ||
  `http://${window.location.hostname}:5001`;


export const HistoryView = ({ attemptId, onBack }) => {
  const [history, setHistory] = useState([]);
  const [loading, setLoading] = useState(true);
  const [selectedDetail, setSelectedDetail] = useState(null);

  const [filterSubject, setFilterSubject] = useState("");
  const [filterDate, setFilterDate] = useState("");
  const [filterMinScore, setFilterMinScore] = useState("");
  
  const [currentPage, setCurrentPage] = useState(1);
  const itemsPerPage = 10;

  useEffect(() => {
    if (attemptId) {
      handleViewDetail(attemptId);
    }
  }, [attemptId]);

  useEffect(() => {
    fetch(`${API_BASE}/history/my-history`, {
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
    const date = new Date(dateString);
    if (Number.isNaN(date.getTime())) return "";
    return new Intl.DateTimeFormat("vi-VN", {
      timeZone: DISPLAY_TIME_ZONE,
      hour12: false,
      day: "2-digit",
      month: "2-digit",
      year: "numeric",
      hour: "2-digit",
      minute: "2-digit",
      second: "2-digit",
    }).format(date);
  };

  const formatDateKeyInDisplayTimeZone = (dateString) => {
    const date = new Date(dateString);
    if (Number.isNaN(date.getTime())) return "";

    const parts = new Intl.DateTimeFormat("en-US", {
      timeZone: DISPLAY_TIME_ZONE,
      year: "numeric",
      month: "2-digit",
      day: "2-digit",
    }).formatToParts(date);

    const year = parts.find((p) => p.type === "year")?.value;
    const month = parts.find((p) => p.type === "month")?.value;
    const day = parts.find((p) => p.type === "day")?.value;

    if (!year || !month || !day) return "";
    return `${year}-${month}-${day}`;
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
      const response = await fetch(`${API_BASE}/history/details/${attemptId}`, {
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

  // Lấy danh sách môn học duy nhất cho thẻ Select
  const subjectOptions = Array.from(new Set(history.map(item => item.subject_name)));

  // Reset trang về 1 mỗi khi thay đổi bộ lọc
  useEffect(() => { setCurrentPage(1); }, [filterSubject, filterDate, filterMinScore]);

  // Xử lý logic Lọc
  const filteredHistory = history.filter(item => {
    const matchSubject = filterSubject ? item.subject_name === filterSubject : true;
    
    // Xử lý lọc theo ngày (chuyển created_at về dạng YYYY-MM-DD)
    let matchDate = true;
    if (filterDate) {
      const itemDate = formatDateKeyInDisplayTimeZone(item.created_at);
      matchDate = itemDate === filterDate;
    }

    const matchScore = filterMinScore ? item.score >= parseFloat(filterMinScore) : true;

    return matchSubject && matchDate && matchScore;
  });

  // Xử lý logic Phân trang
  const totalPages = Math.ceil(filteredHistory.length / itemsPerPage);
  const currentData = filteredHistory.slice(
    (currentPage - 1) * itemsPerPage,
    currentPage * itemsPerPage
  );

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
              <div className="history-list-view">

                <div className="history-filters">
                  <div className="filter-item">
                    <select value={filterSubject} onChange={e => setFilterSubject(e.target.value)}>
                      <option value="">Tất cả môn học</option>
                      {subjectOptions.map(sub => (
                        <option key={sub} value={sub}>{sub}</option>
                      ))}
                    </select>
                    <i className="fa-solid fa-chevron-down"></i>
                  </div>

                  <div className="filter-item">
                    <input 
                      type="date" 
                      value={filterDate} 
                      onChange={e => setFilterDate(e.target.value)} 
                    />
                    <i className="fa-solid fa-calendar-days"></i>
                  </div>

                  <div className="filter-item">
                    <input 
                      type="number" 
                      placeholder="Điểm tối thiểu" 
                      value={filterMinScore} 
                      onChange={e => setFilterMinScore(e.target.value)} 
                    />
                    <i className="fa-solid fa-arrow-up-9-1"></i>
                  </div>

                  <button className="red-btn" onClick={() => {
                    setFilterSubject(""); setFilterDate(""); setFilterMinScore("");
                  }}>
                    Xóa lọc
                  </button>
                </div>

                {currentData.length === 0 ? (
                  <p className="no-data">Không tìm thấy dữ liệu phù hợp.</p>
                ) : (
                  <div className="table-responsive">
                    <table className="history-table">
                      <thead>
                        <tr>
                          <th>Môn học</th>
                          <th>Ngày làm</th>
                          <th>Kết quả</th>
                          <th>Thời gian</th>
                          <th>Điểm</th>
                          <th>Thao tác</th>
                        </tr>
                      </thead>
                      <tbody>
                        {currentData.map((item) => (
                          <tr key={item.id}>
                            <td>
                              <div className="tbl-subject">{item.subject_name}</div>
                              <div className="tbl-chapter">
                                {item.order_index ? `Chương ${item.order_index}` : "Tổng hợp"}
                              </div>
                            </td>
                            <td>{formatDate(item.created_at)}</td>
                            <td><strong>{item.correct_count}</strong> / {item.total_questions}</td>
                            <td>{formatDuration(item.time_spent)}</td>
                            <td><span className="tbl-score">{item.score}</span></td>
                            <td>
                              <button className="red-btn small-btn" onClick={() => handleViewDetail(item.id)}>
                                <i className="fa-solid fa-eye"></i> Chi tiết
                              </button>
                            </td>
                          </tr>
                        ))}
                      </tbody>
                    </table>
                  </div>
                )}

                {totalPages > 1 && (
                  <div className="pagination">
                    <button 
                      disabled={currentPage === 1} 
                      onClick={() => setCurrentPage(prev => prev - 1)}
                    >
                      &laquo; Trước
                    </button>
                    <span className="page-info">Trang {currentPage} / {totalPages}</span>
                    <button 
                      disabled={currentPage === totalPages} 
                      onClick={() => setCurrentPage(prev => prev + 1)}
                    >
                      Sau &raquo;
                    </button>
                  </div>
                )}
              </div>
            )}
          </div>
        )}
      </div>
    </div>
  );
};
