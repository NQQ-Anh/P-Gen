import "../styles/ResultView.css";

export const ResultView = ({ result, onRestart, onHome }) => {
  // Tính toán nhận xét dựa trên số điểm
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
          <h2>Hoàn thành bài ôn luyện</h2>
        </div>

        <div className="score-section">
          <div className="score-circle">
            <span className="final-score">{result.score}</span>
            <span className="score-label">Điểm số</span>
          </div>
          <div className="stats-row">
            <div className="stat-item">
              <span className="stat-value">{result.correct}</span>
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
          <button className="action-btn restart-btn" onClick={onRestart}>
            Làm lại bài này
          </button>
          <button className="action-btn home-btn" onClick={onHome}>
            Môn học khác
          </button>
        </div>
      </div>
    </div>
  );
};