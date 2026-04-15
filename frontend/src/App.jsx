import { useState, useEffect, useRef, startTransition } from "react";
import { AuthProvider } from "./contexts/AuthContext";
import { useAuth } from './contexts/AuthContext';
import Login from "./components/Login";
import Register from "./components/Register";
import Profile from "./components/Profile";
import AdminSide from "./components/AdminSide";
import {SubjectView} from "./components/SubjectView";
import {ChapterView} from "./components/ChapterView";
import QuestionView from "./components/QuestionView";
import {ResultView} from "./components/ResultView";

import "./styles/App.css";
import "./styles/Common.css";
import "./styles/Footer.css";
import "./styles/Home.css";
import "./styles/Navbar.css";

function AppContent() {
  const { user, logout, loading } = useAuth();
  const [view, setView] = useState("home"); // Tắt tạm thời
  // const [view, setView] = useState("subject");
  const [isMenuOpen, setIsMenuOpen] = useState(false);
  const navRef = useRef(null);
  const [typedText, setTypedText] = useState("");
  const fullText = "Chào mừng đến với P-Gen";
  const [selectedSubject, setSelectedSubject] = useState(null)
  const [selectedChapters, setSelectedChapters] = useState([]);
  const [quizSettings, setQuizSettings] = useState({});
  const [quizResult, setQuizResult] = useState(null);

  const handleSetView = (newView) => {
    startTransition(() => {
      setView(newView);
    });
    setIsMenuOpen(false);

    if (newView === "home") {
      setTypedText(""); 
    }
  };

  // Hiển thị dựa trên Role của người dùng
  useEffect(() => {
    if (user) {
      if (user.role === 'Admin') {
        setView("admin");
      } else {
        setView("profile");
      }
    } else {
      setView("home");
    }
  }, [user]);

  // Hiệu ứng của welcome
  useEffect(() => {
    if (view !== "home" || typedText === fullText) return;

    const timer = setTimeout(() => {
      setTypedText(fullText.substring(0, typedText.length + 1));
    }, 75);

    return () => clearTimeout(timer);
  }, [typedText, view]);

  // Đóng menu
  useEffect(() => {
    // Đóng khi thay đổi kích thước hoặc cuộn trang
    const handleOutsideEvents = (event) => {
    if (event.type === 'resize'|| event.type === 'wheel' || event.type === 'touchmove') {
      console.log("resize");
      setIsMenuOpen(false);
    }

    // Đóng khi click ra ngoài vùng Navbar
    if (event.type === 'mousedown'|| event.type === 'touchstart') {
      if (navRef.current && !navRef.current.contains(event.target)) {
        setIsMenuOpen(false);
      }
    }
  };
    
    window.addEventListener("resize", handleOutsideEvents);
    window.addEventListener("wheel", handleOutsideEvents);
    window.addEventListener("touchmove", handleOutsideEvents);
    document.addEventListener("mousedown", handleOutsideEvents);
    document.addEventListener("touchstart", handleOutsideEvents);

    return () => {
      window.removeEventListener("resize", handleOutsideEvents);
      window.removeEventListener("wheel", handleOutsideEvents);
      window.removeEventListener("touchmove", handleOutsideEvents);
      document.removeEventListener("mousedown", handleOutsideEvents);    
      document.removeEventListener("touchstart", handleOutsideEvents);    
    };
  }, []);

  if (loading) {
    return <div className="loading">Loading...</div>;
  }

  return (
    <div className="container">
      <div 
        className={`menu-overlay ${isMenuOpen ? "active" : ""}`} 
        onClick={() => setIsMenuOpen(false)}
      ></div>

      <header className="navbar" ref={navRef}>
        <div className="logo" onClick={() => handleSetView("home")} style={{cursor: 'pointer'}}>
          <img className="logo-pic" src="/img/pgen-noback.png" alt="P-Gen" />
          <h1 className="logo-cont"><span className="brand-name">P-Gen</span></h1>
        </div>

        <button className="menu-toggle" onClick={() => setIsMenuOpen(!isMenuOpen)}>
          <i className={isMenuOpen ? "fa-solid fa-xmark" : "fa-solid fa-bars"}></i>
        </button>

        <div className={`menu ${isMenuOpen ? "open" : ""}`}>
          <button onClick={() => handleSetView("home")}>Trang chủ</button>

          {!user && (
            <>
              <button onClick={() => handleSetView("login")}>Đăng nhập</button>
              <button onClick={() => handleSetView("register")}>Đăng ký</button>
            </>
          )}

          {user && (
            <>
              <button onClick={() => handleSetView("subject")}>Ôn luyện</button>
              <button onClick={() => handleSetView("profile")}>Thông tin</button>
              {user.role === 'Admin' && (
                <button onClick={() => handleSetView("admin")}>Quản lý</button>
              )}
              <button className="logout" onClick={() => { logout(); setIsMenuOpen(false); }}>
                Đăng xuất
              </button>
            </>
          )}
        </div>
      </header>

      <main className="content">
        {view === "home" && (
          <div className="home">
            <div className="slider">
              <h2>
                {typedText.slice(0, 17)}
                {typedText.length > 17 && <>&nbsp;</>}
                {typedText.length > 18 && (
                  <span className="brand-name">{typedText.slice(18)}</span>
                )}
                <span className="cursor-slide">|</span>
              </h2>
              <p>
                Hệ thống ôn luyện trắc nghiệm thông minh cho sinh viên. <br/>
                P-Gen giúp bạn làm chủ kiến thức nhờ thuật toán ghi nhớ để tối ưu thời gian ôn thi.
              </p>
            </div>

            <div className="card-grid">
              <div className="card">
                <i className="fa-solid fa-brain"></i>
                <div className="card-content">
                  <h3>Tối ưu lộ trình học</h3>
                  <p>Nhờ áp dụng thuật toán nhắc lại.</p>
                </div>
              </div>

              <div className="card">
                <i className="fa-solid fa-book"></i>
                <div className="card-content">
                  <h3>Kho dữ liệu đa dạng</h3>
                  <p>Tổng hợp 2000+ câu hỏi trắc nghiệm.</p>
                </div>
              </div>

              <div className="card">
                <i className="fa-solid fa-fire-flame-curved"></i>
                <div className="card-content">
                  <h3>Trải nghiệm thực tế</h3>
                  <p>Giả lập môi trường thi với bộ đếm giờ và câu hỏi ngẫu nhiên.</p>
                </div>
              </div>

              <div className="card">
                <i className="fa-solid fa-wand-magic-sparkles"></i>
                <div className="card-content">
                  <h3>Giao diện thân thiện</h3>
                  <p>Thiết kế hiện đại, dễ dàng thao tác.</p>
                </div>
              </div>

            </div>
          </div>
        )}
        {view === "login" && !user && <Login />}
        {view === "register" && !user && <Register />}
        {view === "profile" && user && <Profile />}
        {view === "admin" && user && user.role === 'Admin' && <AdminSide />}
        {view === "subject" && (
          <SubjectView 
            onSelectSubject={(sub) => {
              setSelectedSubject(sub);
              handleSetView("chapter"); // Chuyển sang view chapter
            }} 
          />
        )}
        {view === "chapter" && selectedSubject && (
          <ChapterView 
            subject={selectedSubject}
            onBack={() => handleSetView("subject")}
            onStartQuiz={(chapters, settings) => {
              // 1. Lưu danh sách các mã chương đã chọn
              setSelectedChapters(chapters);
              
              // 2. Lưu các cài đặt (xáo trộn, hiện đáp án, v.v.)
              setQuizSettings(settings);
              
              // 3. Chuyển sang giao diện làm bài
              handleSetView("question");
            }}
          />
        )}
        {view === "question" && selectedSubject && (
          <QuestionView 
            subjectId={selectedSubject.id}
            chapterIds={selectedChapters}
            settings={quizSettings}
            onBack={() => handleSetView("chapter")}
          />
        )}
        {view === "result" && quizResult && (
          <ResultView 
            result={quizResult}
            onRestart={() => handleSetView("question")}
            onHome={() => {
              setQuizResult(null);
              handleSetView("subject");
            }}
          />
        )}
      </main>

      <footer className="footer">
        <div className="footer-container">
          <div className="footer-column footer-info">
            <div className="logo">
              <img src="/img/pgen.png" alt="P-Gen Logo" className="logo-pic" />
              <h1 className="logo-cont">
                <span className="brand-name">P-Gen</span>
              </h1>
            </div>
            <p className="footer-description">
              Hệ thống ôn luyện trắc nghiệm thông minh dành riêng cho sinh viên tại PTIT. 
              Đồng hành cùng bạn chinh phục mọi bài thi trắc nghiệm.
            </p>
          </div>

          <div className="footer-column footer-connect">
            <h3 className="footer-title">Kết nối</h3>
            <div className="social-links">
              <a href="https://facebook.com" target="_blank" rel="noreferrer" aria-label="Facebook">
                <i className="fa-brands fa-facebook"></i>
              </a>
              <a href="https://discord.com" target="_blank" rel="noreferrer" aria-label="Discord">
                <i className="fa-brands fa-discord"></i>
              </a>
              <a href="https://web.telegram.org" target="_blank" rel="noreferrer" aria-label="Telegram">
                <i className="fa-brands fa-telegram"></i>
              </a>
              <a href="https://github.com" target="_blank" rel="noreferrer" aria-label="GitHub">
                <i className="fa-brands fa-github"></i>
              </a>
            </div>
            <div className="contact-details">
              <p>
                <i className="fa-solid fa-envelope"></i> support@pgen.vn
              </p>
              <p>
                <i className="fa-solid fa-location-dot"></i> PTIT - Hà Đông, Hà Nội
              </p>
            </div>
          </div>
        </div>
        <div className="footer-copyright">
          &copy; 2026 P-Gen Project. Developed by nam. and quanh
        </div>
      </footer>
    </div>
  );
}

function App() {
  return (
    <AuthProvider>
      <AppContent />
    </AuthProvider>
  );
}

export default App;