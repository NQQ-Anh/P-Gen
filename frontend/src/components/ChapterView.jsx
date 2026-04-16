import { useState, useEffect } from "react";
import { useAuth } from "../contexts/AuthContext";
import "../styles/ChapterView.css";

export const ChapterView = ({ subject, onStartQuiz, onBack }) => {
  const { token } = useAuth();
  const [chapters, setChapters] = useState([]);
  const [selectedChapters, setSelectedChapters] = useState([]);
  const [settings, setSettings] = useState({
    shuffle: false,
    showAnswerImmediately: true,
    autoNext: false,
    time: 15
  });
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState(null);

  useEffect(() => {
    if (!subject?.id || !token) {
      return;
    }

    const loadChapters = async () => {
      setLoading(true);
      setError(null);

      try {
        const res = await fetch(`http://localhost:5001/subjects/${subject.id}`, {
          headers: {
            Authorization: `Bearer ${token}`,
          },
        });

        if (!res.ok) {
          const body = await res.json().catch(() => ({}));
          throw new Error(body.message || `Lỗi ${res.status}`);
        }

        const data = await res.json();
        setChapters(data.chapters || []);
      } catch (err) {
        console.error("Lỗi lấy chương:", err);
        setError(err.message);
        setChapters([]);
      } finally {
        setLoading(false);
      }
    };

    loadChapters();
  }, [subject?.id, token]);

  const handleSelectChapter = (id) => {
    setSelectedChapters([id]);
  };

  const handleTimeChange = (e) => {
    const value = parseInt(e.target.value) || 0;
    setSettings(prev => ({ ...prev, time: value }));
  };

  return (
    <div className="setup-container">
      <button className="red-btn" onClick={onBack}>
        <i class="fa-solid fa-caret-left"></i> Quay lại
      </button>
      <h2>Thiết lập ôn luyện: {subject.subject_name}</h2>
      
      <div className="setup-grid">
        <div className="chapter-selection">
          <h3>Chọn chương ôn tập</h3>
          {loading ? (
            <div className="loading">Đang tải chương...</div>
          ) : error ? (
            <div className="error-message">Không tải được chương: {error}</div>
          ) : chapters.length === 0 ? (
            <div className="empty-message">Không có chương nào trong môn này.</div>
          ) : (
            chapters.map(chap => (
              <div 
                key={chap.id} 
                className={`chapter-item-card ${selectedChapters[0] === chap.id ? 'selected' : ''}`}
                onClick={() => handleSelectChapter(chap.id)}
              >
                <div className="chapter-info">
                  <p className="chap-name">{chap.chapter_name}</p>
                </div>
              </div>
            ))
          )}
        </div>

        <div className="mode-settings">
          <h3>Tùy chỉnh chế độ</h3>
          <div className="setting-item">
            <span>Xáo trộn câu hỏi</span>
            <input type="checkbox" onChange={(e) => setSettings({...settings, shuffle: e.target.checked})} />
          </div>
          <div className="setting-item">
            <span>Hiện đáp án ngay</span>
            <input type="checkbox" checked={settings.showAnswerImmediately} onChange={(e) => setSettings({...settings, showAnswerImmediately: e.target.checked})} />
          </div>
          <div className="setting-item">
            <span>Thời gian (phút)</span>
            <input 
              type="number" 
              value={settings.time} 
              onChange={handleTimeChange} 
              min="0"
            />
          </div>
          
          <button 
            className="red-btn"
            disabled={selectedChapters.length === 0}
            onClick={() => onStartQuiz(selectedChapters, settings)}
          >
            Bắt đầu làm bài
          </button>
        </div>
      </div>
    </div>
  );
};