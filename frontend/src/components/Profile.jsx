import { useEffect, useState } from "react";
import axios from "axios";
import { useAuth } from "../contexts/AuthContext";
import CapacityRadar from "./CapacityRadar";
import { formatTimeAgo } from "../utils/formatTime";
import "../styles/Profile.css";

const API_BASE =
  import.meta.env.VITE_API_URL ||
  import.meta.env.REACT_APP_API_URL ||
  `http://${window.location.hostname}:5001`;

const Profile = ({ onNavigate }) => {
  const { user, logout, token, refreshProfile } = useAuth();
  const authToken = token || localStorage.getItem("accessToken");

  const [dashboardData, setDashboardData] = useState({
    stats: { totalQuizzes: 0, accuracy: 0, streak: 0 },
    recentActivities: [],
  });
  const [analysisData, setAnalysisData] = useState([]);
  const [loading, setLoading] = useState(true);
  const [subjects, setSubjects] = useState([]);
  const [selectedSubject, setSelectedSubject] = useState("");

  const [isEditDialogOpen, setIsEditDialogOpen] = useState(false);
  const [isSaving, setIsSaving] = useState(false);
  const [editError, setEditError] = useState("");
  const [editForm, setEditForm] = useState({
    username: "",
    email: "",
    password: "",
  });

  const fetchAnalysis = async (subjectId, currentToken = authToken) => {
    try {
      const res = await axios.get(`${API_BASE}/history/analysis/${subjectId}`, {
        headers: { Authorization: `Bearer ${currentToken}` },
      });
      setAnalysisData(res.data);
    } catch (err) {
      console.error("Lỗi tải dữ liệu phân tích:", err);
    }
  };

  useEffect(() => {
    const fetchInitialData = async () => {
      if (!authToken) {
        setLoading(false);
        return;
      }

      try {
        const [dashRes, subRes] = await Promise.all([
          axios.get(`${API_BASE}/history/dashboard-stats`, {
            headers: { Authorization: `Bearer ${authToken}` },
          }),
          axios.get(`${API_BASE}/subjects`, {
            headers: { Authorization: `Bearer ${authToken}` },
          }),
        ]);

        setDashboardData(dashRes.data);

        const nextSubjects = Array.isArray(subRes.data) ? subRes.data : [];
        setSubjects(nextSubjects);

        if (nextSubjects.length > 0) {
          const firstSubjectId = String(nextSubjects[0].id);
          setSelectedSubject(firstSubjectId);
          await fetchAnalysis(firstSubjectId, authToken);
        }
      } catch (err) {
        console.error("Lỗi tải dữ liệu hồ sơ:", err);
      } finally {
        setLoading(false);
      }
    };

    fetchInitialData();
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [authToken]);

  const handleSubjectChange = (event) => {
    const subjectId = event.target.value;
    setSelectedSubject(subjectId);
    fetchAnalysis(subjectId);
  };

  const handleViewDetail = (attemptId) => {
    if (onNavigate) {
      onNavigate("quiz-detail", attemptId);
    }
  };

  const handleViewAll = () => {
    if (onNavigate) {
      onNavigate("history");
    }
  };

  const openEditDialog = () => {
    setEditForm({
      username: user?.username || "",
      email: user?.email || "",
      password: "",
    });
    setEditError("");
    setIsEditDialogOpen(true);
  };

  const closeEditDialog = (force = false) => {
    if (isSaving && !force) return;
    setIsEditDialogOpen(false);
    setEditError("");
    setEditForm((prev) => ({ ...prev, password: "" }));
  };

  const handleEditChange = (event) => {
    const { name, value } = event.target;
    setEditForm((prev) => ({ ...prev, [name]: value }));
  };

  const handleUpdateProfile = async (event) => {
    event.preventDefault();

    if (!user?.id || !authToken) {
      setEditError("Phiên đăng nhập đã hết hạn, vui lòng đăng nhập lại.");
      return;
    }

    const username = editForm.username.trim();
    const email = editForm.email.trim();
    const password = editForm.password;

    if (!username || !email) {
      setEditError("Vui lòng nhập đầy đủ tên đăng nhập và email.");
      return;
    }

    if (password && password.length < 6) {
      setEditError("Mật khẩu mới phải có ít nhất 6 ký tự.");
      return;
    }

    setIsSaving(true);
    setEditError("");

    try {
      const payload = { username, email };
      if (password) {
        payload.password = password;
      }

      const response = await fetch(`${API_BASE}/users/${user.id}`, {
        method: "PUT",
        headers: {
          "Content-Type": "application/json",
          Authorization: `Bearer ${authToken}`,
        },
        body: JSON.stringify(payload),
      });

      const result = await response.json().catch(() => null);
      if (!response.ok) {
        throw new Error(result?.message || "Không thể cập nhật thông tin người dùng.");
      }

      if (refreshProfile) {
        await refreshProfile();
      }

      closeEditDialog(true);
    } catch (error) {
      setEditError(error.message || "Đã xảy ra lỗi, vui lòng thử lại.");
    } finally {
      setIsSaving(false);
    }
  };

  if (loading) return <div className="loading">Đang tải hồ sơ...</div>;

  return (
    <div className="all-wrapper profile-dashboard-wrapper">
      <div className="dashboard-grid">
        <aside className="widget-card sidebar-widget">
          <div className="avatar-placeholder">
            {user?.username?.charAt(0).toUpperCase()}
          </div>
          <h2>{user?.username}</h2>
          <span className="user-role-badge">{user?.role}</span>
          <div className="profile-details">
            <p>
              <i className="fa-solid fa-envelope"></i> {user?.email}
            </p>
            <p>
              <i className="fa-solid fa-id-card"></i> ID: {user?.id}
            </p>
          </div>
          <button className="red-btn profile-edit-btn" onClick={openEditDialog}>
            Chỉnh sửa
          </button>
          <button className="red-btn" onClick={logout}>
            Đăng xuất
          </button>
        </aside>

        <main className="dashboard-main-content">
          <div className="top-row">
            <section className="widget-card stats-widget">
              <h3>Thống kê</h3>
              <div className="stats-list">
                <div className="stat-item">
                  <span className="label">ĐÃ LÀM</span>
                  <span className="value">{dashboardData.stats?.totalQuizzes ?? 0}</span>
                </div>
                <div className="stat-item">
                  <span className="label">CHÍNH XÁC</span>
                  <span className="value">{dashboardData.stats?.accuracy ?? 0}%</span>
                </div>
                <div className="stat-item">
                  <span className="label">CHUỖI</span>
                  <span className="value">{dashboardData.stats?.streak ?? 0}</span>
                </div>
              </div>
            </section>

            <section className="widget-card analysis-widget">
              <div className="analysis-header">
                <h3>Biểu đồ năng lực</h3>
                <select className="sub-dropdown" value={selectedSubject} onChange={handleSubjectChange}>
                  {subjects.map((sub) => (
                    <option key={sub.id} value={sub.id}>
                      {sub.subject_name}
                    </option>
                  ))}
                </select>
              </div>
              <CapacityRadar data={analysisData} />
            </section>
          </div>

          <section className="widget-card history-widget">
            <div className="header-flex">
              <h3 className="title">Bài làm gần đây</h3>
              <button className="red-btn" onClick={handleViewAll}>
                Xem tất cả
              </button>
            </div>
            <table className="recent-table">
              <thead>
                <tr>
                  <th>Môn học</th>
                  <th>Chế độ</th>
                  <th>Điểm</th>
                  <th>Thời gian</th>
                  <th>Hành động</th>
                </tr>
              </thead>
              <tbody>
                {dashboardData.recentActivities?.length > 0 ? (
                  dashboardData.recentActivities.map((act) => (
                    <tr key={act.id}>
                      <td>
                        <strong>{act.subject_name}</strong>
                      </td>
                      <td>{act.order_index ? `Chương ${act.order_index}` : "Kiểm tra"}</td>
                      <td className="score-cell">{act.score}</td>
                      <td className="time-cell">{formatTimeAgo(act.created_at)}</td>
                      <td>
                        <button className="red-btn" onClick={() => handleViewDetail(act.id)}>
                          <i className="fa-solid fa-eye"></i>
                          <span className="btn-text"> Chi tiết</span>
                        </button>
                      </td>
                    </tr>
                  ))
                ) : (
                  <tr>
                    <td colSpan="5" className="empty-state-cell">
                      <p>Bạn chưa có bài làm nào gần đây. Bắt đầu ôn luyện ngay!</p>
                    </td>
                  </tr>
                )}
              </tbody>
            </table>
          </section>
        </main>
      </div>

      {isEditDialogOpen && (
        <div
          className="profile-dialog-overlay"
          role="presentation"
          onClick={(event) => {
            if (event.target === event.currentTarget) {
              closeEditDialog();
            }
          }}
        >
          <div className="profile-dialog-container" role="dialog" aria-modal="true">
            <div className="profile-dialog-header">
              <h3>Chỉnh sửa thông tin</h3>
              <button type="button" className="profile-dialog-close" onClick={closeEditDialog} disabled={isSaving}>
                &times;
              </button>
            </div>

            {editError && <p className="profile-dialog-error">{editError}</p>}

            <form className="profile-edit-form" onSubmit={handleUpdateProfile}>
              <div className="profile-edit-field">
                <label htmlFor="profile-update-username">Tên đăng nhập</label>
                <input
                  id="profile-update-username"
                  type="text"
                  name="username"
                  value={editForm.username}
                  onChange={handleEditChange}
                  disabled={isSaving}
                  required
                />
              </div>

              <div className="profile-edit-field">
                <label htmlFor="profile-update-email">Email</label>
                <input
                  id="profile-update-email"
                  type="email"
                  name="email"
                  value={editForm.email}
                  onChange={handleEditChange}
                  disabled={isSaving}
                  required
                />
              </div>

              <div className="profile-edit-field">
                <label htmlFor="profile-update-password">Mật khẩu mới</label>
                <input
                  id="profile-update-password"
                  type="password"
                  name="password"
                  value={editForm.password}
                  onChange={handleEditChange}
                  disabled={isSaving}
                  placeholder="Để trống nếu không đổi"
                />
              </div>

              <div className="profile-edit-actions">
                <button type="button" className="profile-btn-cancel" onClick={closeEditDialog} disabled={isSaving}>
                  Hủy
                </button>
                <button type="submit" className="profile-btn-save" disabled={isSaving}>
                  {isSaving ? "Đang lưu..." : "Lưu thay đổi"}
                </button>
              </div>
            </form>
          </div>
        </div>
      )}
    </div>
  );
};

export default Profile;
