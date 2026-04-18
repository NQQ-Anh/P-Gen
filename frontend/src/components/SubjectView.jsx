import { useState, useEffect } from "react";
import { useAuth } from "../contexts/AuthContext";
import "../styles/SubjectView.css";

const API_URL = import.meta.env.REACT_APP_API_URL || `http://${window.location.hostname}:5001`;
export const SubjectView = ({ onSelectSubject, onNavigate }) => {
  const { token } = useAuth();
  const [subjects, setSubjects] = useState([]);
  const [error, setError] = useState(null);
  const [loading, setLoading] = useState(!token);

  useEffect(() => {
    if (!token) {
      return;
    }

    const loadSubjects = async () => {
      setLoading(true);
      setError(null);

      try {
        const res = await fetch(`${API_URL}/subjects`, {
          headers: {
            Authorization: `Bearer ${token}`,
          },
        });

        if (!res.ok) {
          const body = await res.json().catch(() => ({}));
          throw new Error(body.message || `Lỗi ${res.status}`);
        }

        const data = await res.json();
        setSubjects(data);
      } catch (err) {
        console.error("Lỗi lấy môn học:", err);
        setError(err.message);
      } finally {
        setLoading(false);
      }
    };

    loadSubjects();
  }, [token]);

  return (
    <div className="subject-view-container">
      <h1 className="view-title">Kho tàng kiến thức</h1>

      <div className="review-promo-banner" onClick={() => onNavigate("review-dashboard")}>
        <div className="promo-text">
          <h3>Hôm nay bạn chưa ôn tập?</h3>
          <p>Kiểm tra các câu hỏi đến hạn để không bị quên kiến thức nhé!</p>
        </div>
        <button className="btn-open-review">Truy cập</button>
      </div>

      {loading ? (
        <div className="loading">Đang tải môn học...</div>
      ) : error ? (
        <div className="error-message">Không tải được môn học: {error}</div>
      ) : subjects.length === 0 ? (
        <div className="empty-message">Không có môn học nào để hiển thị.</div>
      ) : (
        <div className="subject-grid">
          {subjects.map((sub) => (
            <div key={sub.id} className="subject-card" onClick={() => onSelectSubject(sub)}>
              {/* Ảnh nền mờ phía sau */}
              <div className="card-bg" style={{ backgroundImage: `url(${sub.image_url || '/img/default-sub.jpg'})` }}></div>

              <div className="card-content">
                {/* Trạng thái 1: Chỉ Icon và Tên */}
                <div className="card-basic-info">
                  <div className="subject-icon-box">
                    <i className="fa-solid fa-book-bookmark"></i>
                  </div>
                  <h3>{sub.subject_name}</h3>
                </div>

                {/* Trạng thái 2: Hiện rõ khi Hover */}
                <div className="card-hover-details">
                  <p className="sub-desc">{sub.description}</p>
                  <div className="sub-stats">
                    <span><i className="fa-solid fa-list-ol"></i> {sub.total_chapters || 0} Chương</span>
                    <span><i className="fa-solid fa-circle-question"></i> {sub.total_questions || 0} Câu</span>
                  </div>
                  <button className="red-btn">Khám phá ngay</button>
                </div>
              </div>
            </div>
          ))}
        </div>
      )}
    </div>
  );
};