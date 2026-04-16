import React, { useState } from "react";
import "../styles/ResultView.css";

export const ResultView = ({ result, onRestart, onHome }) => {
  const [showReview, setShowReview] = useState(false);

  const percentage = (result.correct / result.total) * 100;
  
  const getFeedback = (score) => {
    if (score >= 9) return { text: "Xuất sắc! Bạn đã nắm rất vững kiến thức.", color: "#2ecc71" };
    if (score >= 7) return { text: "Rất tốt! Hãy tiếp tục phát huy nhé.", color: "#f1c40f" };
    if (score >= 5) return { text: "Tạm ổn. Bạn nên ôn tập kỹ hơn các câu sai.", color: "#e67e22" };
    return { text: "Cần cố gắng nhiều hơn. Đừng bỏ cuộc nhé!", color: "#e74c3c" };
  };

  const feedback = getFeedback(parseFloat(result.score));

  return (
    <div className="result-container">
      <div className="result-card">
        <div className="result-header">
          <i className="fa-solid fa-trophy trophy-icon"></i>
          <h2>Hoàn thành</h2>
        </div>

        <div className="score-section">
          <div 
            className="score-circle" 
            style={{ "--progress": `${percentage}%` }}
          >
            <div className="score-inner">
              <span className="final-score">{result.score}</span>
              <span className="score-label">Điểm</span>
            </div>
          </div>
          <div className="stats-row">
            <div className="stat-item">
              <span className="stat-value stat-correct">{result.correct}</span>
              <span className="stat-label">Câu đúng</span>
            </div>
            <div className="stat-item">
              <span className="stat-value">{result.total}</span>
              <span className="stat-label">Tổng số câu</span>
            </div>
          </div>
        </div>

        <p className="result-feedback" style={{ color: feedback.color }}>
          {feedback.text}
        </p>

        <div className="result-actions">
          <button className="red-btn review-btn" onClick={() => setShowReview(!showReview)}>
             {showReview ? "Ẩn danh sách" : "Xem lại kết quả"}
          </button>
          <button className="red-btn restart-btn red" onClick={onRestart}>
            <i class="fa-solid fa-arrow-rotate-left"></i> Làm lại
          </button>
          <button className="red-btn home-btn" onClick={onHome}>
            <i class="fa-solid fa-list"></i> Môn học khác
          </button>
        </div>

        {showReview && result.questions && (
          <div className="review-list">
            <h3 className="review-title">Chi tiết bài làm</h3>
            {result.questions.map((q, index) => {
              const selectedId = result.userAnswers[q.id];
              const correctAns = q.answers.find(a => a.is_correct === 1 || a.is_correct === true);
              const isCorrect = selectedId === correctAns?.id;

              // Xác định class cho nền của thẻ câu hỏi
              let questionCardClass = "review-item";
              if (isCorrect) questionCardClass += " correct-card";
              else questionCardClass += " incorrect-card";

              return (
                <div key={q.id} className={questionCardClass}>
                  <p className="review-q-text">
                    <strong>Câu {index + 1}:</strong> {q.content}
                  </p>
                  <div className="review-answers">
                    {q.answers?.map((ans) => {
                      const isSelected = selectedId === ans.id;
                      const isCorrectAns = ans.is_correct === 1 || ans.is_correct === true;

                      // Logic xác định Border cho từng đáp án
                      let ansClass = "review-ans-card";
                      if (isCorrectAns) ansClass += " border-correct"; // Luôn hiện viền xanh cho đáp án đúng
                      if (isSelected && !isCorrectAns) ansClass += " border-wrong"; // Hiện viền đỏ nếu chọn sai

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
        )}
      </div>
    </div>
  );
};