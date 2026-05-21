import { useState } from "react";
import { useAuth } from "../../contexts/AuthContext";
import DashboardStats from "./DashboardStats";
import RankingBoard from "./RankingBoard";
import Users from "./UserMana/Users";
import Subjects from "./SubjectMana/Subjects";
import "../../styles/AdminSide.css";

const MENU_ITEMS = [
  { id: "dashboard", label: "Thống kê", icon: "fa-solid fa-chart-simple" },
  { id: "rankings", label: "Xếp hạng", icon: "fa-solid fa-ranking-star" },
  { id: "users", label: "Quản lý user", icon: "fa-solid fa-users" },
  { id: "subjects", label: "Quản lý môn học", icon: "fa-solid fa-book-open" },
];

const AdminSide = () => {
  const { user, logout } = useAuth();
  const [activeView, setActiveView] = useState("dashboard");

  const getHeaderInfo = () => {
    if (activeView === "dashboard") {
      return {
        title: "Thống kê hệ thống",
        sub: "Theo dõi bài làm gần nhất và tài khoản mới đăng ký.",
      };
    }

    if (activeView === "rankings") {
      return {
        title: "Xếp hạng người dùng",
        sub: "Xếp hạng theo tiêu chí đã chọn.",
      };
    }

    if (activeView === "users") {
      return { title: "Quản lý user", sub: "" };
    }

    if (activeView === "subjects") {
      return { title: "Quản lý môn học", sub: "" };
    }

    return { title: "Admin", sub: "" };
  };

  const renderMainContent = () => {
    if (activeView === "dashboard") {
      return <DashboardStats />;
    }
    if (activeView === "rankings") {
      return <RankingBoard />;
    }
    if (activeView === "users") {
      return <Users />;
    }
    if (activeView === "subjects") {
      return <Subjects />;
    }

    return (
      <div className="admin-empty-state">
        <h3>Tính năng đang phát triển</h3>
        <p>Module này sẽ được bổ sung trong các bước tiếp theo.</p>
      </div>
    );
  };

  const headerInfo = getHeaderInfo();

  return (
    <section className="admin-panel">
      <div className="admin-layout">
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
                <i className={item.icon} />
                <span>{item.label}</span>
              </button>
            ))}
          </nav>

          <button className="red-btn admin-logout-btn" onClick={logout}>
            Đăng xuất
          </button>
        </aside>

        <main className="admin-main">
          <div className="admin-header">
            <h2>{headerInfo.title}</h2>
            <p className="admin-subtitle">{headerInfo.sub}</p>
          </div>
          {renderMainContent()}
        </main>
      </div>
    </section>
  );
};

export default AdminSide;
