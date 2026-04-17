import { useState } from "react";
import { useAuth } from "../../contexts/AuthContext";
import Users from "./UserMana/Users";
import Subjects from './SubjectMana/Subjects';
import "../../styles/AdminSide.css";

// 1. CHUẨN BỊ DỮ LIỆU (Menu và Tính năng)
const MENU_ITEMS = [
  { id: "dashboard", label: "Dashboard", icon: "fa-solid fa-table-columns" },
  { id: "users", label: "Quản lý user", icon: "fa-solid fa-users" },
  { id: "subjects", label: "Quản lý môn học", icon: "fa-solid fa-book-open" },
];

const FEATURES = [
  { id: "users", title: "Quản lý user", desc: "Xem danh sách và quản lý tài khoản.", available: true },
  { id: "subjects", title: "Quản lý môn học", desc: "Tạo mới, cập nhật, xóa môn học.", available: false },
];

// 2. COMPONENT CHÍNH
const AdminSide = () => {
  const { user, logout } = useAuth();
  const [activeView, setActiveView] = useState("dashboard");

  // Hàm phụ trợ: Lấy tiêu đề Header dựa vào Tab đang chọn
  const getHeaderInfo = () => {
    if (activeView === "dashboard") return { title: "Admin Dashboard", sub: "Chọn chức năng cần sử dụng." };
    if (activeView === "users") return { title: "Quản lý user", sub: "" };
    if (activeView === 'subjects') return {title : "Quản lý môn học", sub: ""}
    
    // Mặc định cho các tính năng chưa hoàn thiện
    const feature = FEATURES.find(f => f.id === activeView);
    return { title: feature?.title || "Tính năng", sub: "Tính năng này đang được hoàn thiện." };
  };

  // Hàm phụ trợ: Render phần nội dung chính (Main Content)
  const renderMainContent = () => {
    switch (activeView) {
      case "dashboard":
        return (
          <div className="admin-feature-grid">
            {FEATURES.map((feature) => (
              <article key={feature.id} className="admin-feature-card">
                <h3>{feature.title}</h3>
                <p>{feature.desc}</p>
                <button className="red-btn" onClick={() => setActiveView(feature.id)}>
                  {feature.available ? "Truy cập" : "Xem chi tiết"}
                </button>
              </article>
            ))}
          </div>
        );
      case "users":
        return <Users />;
      case "subjects":
        return <Subjects/>
      
      default:
        return (
          <div className="admin-empty-state">
            <h3>Tính năng đang phát triển</h3>
            <p>Module này sẽ được bổ sung chức năng chi tiết ở các bước tiếp theo.</p>
          </div>
        );
    }
  };

  const headerInfo = getHeaderInfo();

  // 3. GIAO DIỆN TỔNG THỂ (Dễ đọc hơn rất nhiều)
  return (
    <section className="admin-panel">
      <div className="admin-layout">
        
        {/* CỘT TRÁI - SIDEBAR */}
        <aside className="admin-sidebar">
          <div className="admin-brand">
            <h2>P-Gen Admin</h2>
            <p>System management</p>
          </div>

          <div className="admin-user-box">
            <p className="admin-user-name">{user?.username || "Admin"}</p>
            <span className="admin-user-role">{user?.role || "Admin"}</span>
          </div>

          <nav className="admin-side-nav">
            {MENU_ITEMS.map((item) => (
              <button
                key={item.id}
                className={`admin-nav-btn ${activeView === item.id ? "active" : ""}`}
                onClick={() => setActiveView(item.id)}
              >
                <i className={item.icon}></i> <span>{item.label}</span>
              </button>
            ))}
          </nav>

          <button className="red-btn admin-logout-btn" onClick={logout}>Đăng xuất</button>
        </aside>

        {/* CỘT PHẢI - NỘI DUNG CHÍNH */}
        <main className="admin-main">
          {/* Header luôn hiển thị */}
          <div className="admin-header">
            <h2>{headerInfo.title}</h2>
            <p className="admin-subtitle">{headerInfo.sub}</p>
          </div>

          {/* Phần nội dung thay đổi theo Tab */}
          {renderMainContent()}
        </main>

      </div>
    </section>
  );
};

export default AdminSide;