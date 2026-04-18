import { useState } from "react";
import { useAuth } from "../../contexts/AuthContext";
import Users from "./UserMana/Users";
import Subjects from "./SubjectMana/Subjects";
import "../../styles/AdminSide.css";

const MENU_ITEMS = [
  { id: "dashboard", label: "Bảng điều khiển", icon: "fa-solid fa-table-columns" },
  { id: "users", label: "Quản lý user", icon: "fa-solid fa-users" },
  { id: "subjects", label: "Quản lý môn học", icon: "fa-solid fa-book-open" },
];

const FEATURES = [
  {
    id: "users",
    title: "Quản lý user",
    desc: "Xem, tạo mới, cập nhật, xóa và xem profile user.",
    available: true,
  },
  {
    id: "subjects",
    title: "Quản lý môn học",
    desc: "Quản lý subject, chapter và question theo đúng luồng admin.",
    available: true,
  },
];

const AdminSide = () => {
  const { user, logout } = useAuth();
  const [activeView, setActiveView] = useState("dashboard");

  const getHeaderInfo = () => {
    if (activeView === "dashboard") {
      return {
        title: "Bảng điều khiển Admin",
        sub: "Chọn chức năng quản trị hệ thống.",
      };
    }
    if (activeView === "users") return { title: "Quản lý user", sub: "" };
    if (activeView === "subjects") return { title: "Quản lý môn học", sub: "" };

    const feature = FEATURES.find((item) => item.id === activeView);
    return {
      title: feature?.title || "Tính năng",
      sub: "Tính năng này đang được cập nhật.",
    };
  };

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
        return <Subjects />;
      default:
        return (
          <div className="admin-empty-state">
            <h3>Tính năng đang phát triển</h3>
            <p>Module này sẽ được bổ sung trong các bước tiếp theo.</p>
          </div>
        );
    }
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
                <i className={item.icon} /> <span>{item.label}</span>
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
