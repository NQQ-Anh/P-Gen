import { useState, useEffect } from "react";
import { AuthProvider, useAuth } from "./contexts/AuthContext";
import Login from "./components/Login";
import Register from "./components/Register";
import Profile from "./components/Profile";
import AdminSide from "./components/AdminSide";
import "./App.css";

function AppContent() {
  const { user, logout, loading } = useAuth();
  const [view, setView] = useState("home");

  // Set view based on user role after login
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

  if (loading) {
    return <div className="loading">Loading...</div>;
  }

  return (
    <div className="container">
      <header className="navbar">
        <h1 className="logo">P-Gen</h1>

        <div className="menu">
          <button onClick={() => setView("home")}>Trang chủ</button>

          {!user && (
            <>
              <button onClick={() => setView("login")}>Đăng nhập</button>
              <button onClick={() => setView("register")}>Đăng ký</button>
            </>
          )}

          {user && (
            <>
              <button onClick={() => setView("profile")}>Thông tin</button>
              {user.role === 'Admin' && (
                <button onClick={() => setView("admin")}>Quản lý User</button>
              )}
              <button className="logout" onClick={logout}>
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
              <h2>Chào mừng đến với P-Gen</h2>
              <p>
                Hệ thống ôn luyện trắc nghiệm thông minh cho sinh viên. <br/>
                P-Gen giúp bạn làm chủ kiến thức nhờ thuật toán ghi nhớ để tối ưu thời gian ôn thi.
              </p>
            </div>

            <div className="card-grid">
              <div className="card">
                <h3></h3>
                <p></p>
              </div>

              <div className="card">
                <h3></h3>
                <p></p>
              </div>

              <div className="card">
                <h3></h3>
                <p></p>
              </div>

              <div className="card">
                <h3></h3>
                <p></p>
              </div>
            </div>
          </div>
        )}

        {view === "login" && !user && <Login />}
        {view === "register" && !user && <Register />}
        {view === "profile" && user && <Profile />}
        {view === "admin" && user && user.role === 'Admin' && <AdminSide />}
      </main>

      <footer className="footer">
        <p>Đây là footer</p>
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