import { useState, useEffect } from "react";
import "../styles/ChapterView.css";

export const ChapterView = ({ subject, onStartQuiz, onBack }) => {
  const [chapters, setChapters] = useState([]);
  const [selectedChapters, setSelectedChapters] = useState([]);
  const [settings, setSettings] = useState({
    shuffle: false,
    showAnswerImmediately: true,
    autoNext: false
  });

  useEffect(() => {
    fetch(`http://localhost:5001/subjects/${subject.id}`)
      .then(res => res.json())
      .then(data => {
        setChapters(data.chapters || []);
      });
  }, [subject.id]);
  // useEffect(() => {
  //   // Dữ liệu chương cứng để test
  //   const hardcodedChapters = {
  //     // Nếu subject.id là 1 (Cấu trúc dữ liệu)
  //     1: [
  //       { id: 101, chapter_name: "Chương 1: Tổng quan về thuật toán", question_count: 25 },
  //       { id: 102, chapter_name: "Chương 2: Danh sách liên kết (Linked List)", question_count: 30 },
  //       { id: 103, chapter_name: "Chương 3: Ngăn xếp và Hàng đợi", question_count: 20 },
  //       { id: 104, chapter_name: "Chương 4: Cây nhị phân", question_count: 45 },
  //     ],
  //     // Nếu subject.id là 2 (Mạng máy tính)
  //     2: [
  //       { id: 201, chapter_name: "Chương 1: Mô hình OSI và TCP/IP", question_count: 15 },
  //       { id: 202, chapter_name: "Chương 2: Tầng vật lý", question_count: 10 },
  //       { id: 203, chapter_name: "Chương 3: Tầng liên kết dữ liệu", question_count: 40 },
  //     ]
  //   };

  //   // Lấy danh sách chương dựa trên subject đang chọn
  //   // Nếu không tìm thấy subject.id trong danh sách trên, sẽ lấy một mảng mặc định
  //   const chaptersForSubject = hardcodedChapters[subject.id] || [
  //     { id: 0, chapter_name: "Chương mẫu 1", question_count: 10 },
  //     { id: 99, chapter_name: "Chương mẫu 2", question_count: 10 }
  //   ];

  //   setChapters(chaptersForSubject);
  // }, [subject.id]);

  const handleSelectChapter = (id) => {
    setSelectedChapters([id]);
  };

  return (
    <div className="setup-container">
      <button className="red-btn" onClick={onBack}>← Quay lại</button>
      <h2>Thiết lập ôn luyện: {subject.subject_name}</h2>
      
      <div className="setup-grid">
        <div className="chapter-selection">
          <h3>Chọn chương ôn tập</h3>
          {chapters.map(chap => (
            <div 
              key={chap.id} 
              // Kiểm tra xem ID này có phải là ID duy nhất trong mảng không để hiện style "đã chọn"
              className={`chapter-item-card ${selectedChapters[0] === chap.id ? 'selected' : ''}`}
              onClick={() => handleSelectChapter(chap.id)}
            >
              <div className="chapter-info">
                <p className="chap-name">{chap.chapter_name}</p>
              </div>
            </div>
          ))}
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