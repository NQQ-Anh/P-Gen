import { useState, useEffect } from "react";
import { useAuth } from "../contexts/AuthContext";
import "../styles/ChapterView.css";

const API_URL = import.meta.env.REACT_APP_API_URL || `http://${window.location.hostname}:5001`;

export const ChapterView = ({ subject, onStartQuiz, onBack }) => {
  const { token } = useAuth();
  const [chapters, setChapters] = useState([]);
  const [selectedChapters, setSelectedChapters] = useState([]);
  const [isExamMode, setIsExamMode] = useState(false);
  
  const [settings, setSettings] = useState({
    viewMode: 'list',
    timePerQuestion: 0, 
    questionCount: 30,
    totalTime: 45,
    shuffle: false,
    showAnswerImmediately: true,
  });

  const [loading, setLoading] = useState(false);

  useEffect(() => {
    if (!subject?.id || !token) return;
    const loadChapters = async () => {
      setLoading(true);
      try {
        const res = await fetch(`${API_URL}/subjects/${subject.id}`, {
          headers: { Authorization: `Bearer ${token}` },
        });
        const data = await res.json();
        setChapters(data.chapters || []);
      } catch (err) { console.error(err); } 
      finally { setLoading(false); }
    };
    loadChapters();
  }, [subject?.id, token]);

  const handleStart = () => {
    // 1. Kiểm tra xem có phiên làm bài nào đang tồn tại không
    const savedSession = localStorage.getItem('PTIT_QUIZ_SESSION');

    if (savedSession) {
      const sessionData = JSON.parse(savedSession);
      const isCurrentSubject = sessionData.subject.id === subject.id;

      // 2. Tạo thông báo đồng bộ
      const msg = isCurrentSubject 
        ? `Bạn có bài (${sessionData.isExam ? 'Luyện thi' : 'Ôn tập'}) chưa hoàn thành của môn này.\n\n- Nhấn OK để TIẾP TỤC.\n- Nhấn Cancel để BỎ QUA.`
        : `Bạn đang có bài chưa hoàn thành thuộc môn: ${sessionData.subject?.subject_name}.\n\n- Nhấn OK để TIẾP TỤC.\n- Nhấn Cancel để BỎ QUA.`;

      // 3. Xử lý lựa chọn của người dùng
      if (window.confirm(msg)) {
        // TIẾP TỤC: Truyền dữ liệu cũ sang QuestionView
        onStartQuiz(sessionData.chapterIds, sessionData.settings, sessionData);
        return;
      } else {
        // LÀM MỚI: Xóa sạch phiên cũ trong LocalStorage
        localStorage.removeItem('PTIT_QUIZ_SESSION');
        
        // Nếu là khác môn, ta dừng lại ở đây để người dùng nhấn "Bắt đầu" lần nữa cho môn mới
        // Hoặc nếu muốn vào luôn môn mới thì xóa dòng 'if' dưới đây
        if (!isCurrentSubject) return; 
      }
    }

    // 4. Logic Bắt đầu bài mới hoàn toàn
    const finalSettings = { 
      ...settings, 
      isExam: isExamMode,
      // Nếu thi thử thì ép xáo trộn và tắt hiện đáp án ngay
      shuffle: isExamMode ? true : settings.shuffle,
      showAnswerImmediately: isExamMode ? false : settings.showAnswerImmediately
    };

    onStartQuiz(selectedChapters, finalSettings);
  };

  return (
    <div className="setup-container">
      <div className="setup-header-flex">
        <button className="red-btn back-btn" onClick={onBack}>
          <i className="fa-solid fa-caret-left"></i> Quay lại
        </button>
        <div className="mode-selector-tabs">
          <button 
            className={!isExamMode ? "tab-active" : "tab-inactive"} 
            onClick={() => setIsExamMode(false)}
          >Ôn tập</button>
          <button 
            className={isExamMode ? "tab-active" : "tab-inactive"} 
            onClick={() => setIsExamMode(true)}
          >Luyện thi</button>
        </div>
      </div>

      <h2 className="subject-title">{subject.subject_name}</h2>
      
      {/* Container sẽ đổi class để handle layout 2 cột hoặc 1 cột */}
      <div className={`setup-content-grid ${isExamMode ? 'exam-layout' : 'practice-layout'}`}>
        
        {!isExamMode && (
          <div className="chapter-selection">
            <h3 className="section-title">Danh sách chương</h3>
            <div className="chapter-list">
              {loading ? <p className="dark-text">Đang tải...</p> : chapters.map(chap => (
                <div 
                  key={chap.id} 
                  className={`chapter-item-card ${selectedChapters[0] === chap.id ? 'selected' : ''}`}
                  onClick={() => setSelectedChapters([chap.id])}
                >
                  <p className="chap-name">{chap.chapter_name}</p>
                </div>
              ))}
            </div>
          </div>
        )}

        <div className="mode-settings-panel">
          <h3 className="section-title">Cài đặt</h3>
          
          <div className="settings-form">

            <div className="setting-item-block">
              <label className="dark-label">Kiểu hiển thị</label>
              <div className="view-mode-selector">
                <button 
                  className={settings.viewMode === 'list' ? "active" : "inactive"} 
                  onClick={() => setSettings({...settings, viewMode: 'list'})}
                >Danh sách</button>
                <button 
                  className={settings.viewMode === 'each' ? "active" : "inactive"} 
                  onClick={() => setSettings({...settings, viewMode: 'each'})}
                >Từng câu</button>
              </div>
            </div>

            {isExamMode && (
              <div className="exam-inputs">
                <div className="setting-group-dropbox">
                  <label className="dark-label">Số lượng câu hỏi</label>
                  <select 
                    className="custom-select"
                    value={settings.questionCount} 
                    onChange={(e) => setSettings({...settings, questionCount: parseInt(e.target.value)})}
                  >
                    {[10, 20, 30, 40, 50, 60].map(num => <option key={num} value={num}>{num} câu</option>)}
                  </select>
                </div>
                <div className="setting-group-dropbox">
                  <label className="dark-label">Tổng thời gian (phút)</label>
                  <select 
                    className="custom-select"
                    value={settings.totalTime} 
                    onChange={(e) => setSettings({...settings, totalTime: parseInt(e.target.value)})}
                  >
                    {[15, 30, 45, 60, 90, 120].map(t => <option key={t} value={t}>{t} phút</option>)}
                  </select>
                </div>
              </div>
            )}

            {!isExamMode && (
              <div className="switches-container">
                <div className="switch-row">
                  <span className="dark-label">Xáo trộn câu hỏi</span>
                  <input type="checkbox" checked={settings.shuffle} onChange={(e) => setSettings({...settings, shuffle: e.target.checked})} />
                </div>
                <div className="switch-row">
                  <span className="dark-label">Hiện đáp án ngay</span>
                  <input type="checkbox" checked={settings.showAnswerImmediately} onChange={(e) => setSettings({...settings, showAnswerImmediately: e.target.checked})} />
                </div>
              </div>
            )}
          </div>

          {settings.viewMode === 'each' && !isExamMode && (
              <div className="setting-group-dropbox">
                <label className="dark-label">Thời gian mỗi câu</label>
                <select 
                  className="custom-select"
                  value={settings.timePerQuestion} 
                  onChange={(e) => setSettings({...settings, timePerQuestion: parseInt(e.target.value)})}
                >
                  <option value={0}>Không giới hạn</option>
                  {[10, 20, 30, 60].map(s => <option key={s} value={s}>{s} giây</option>)}
                </select>
              </div>
            )}
          
          <button 
            className="red-btn start-action-btn"
            disabled={!isExamMode && selectedChapters.length === 0}
            onClick={handleStart}
          >BẮT ĐẦU LÀM BÀI</button>
        </div>
      </div>
    </div>
  );
};