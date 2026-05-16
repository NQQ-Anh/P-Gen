import { useCallback, useEffect, useMemo, useState } from "react";
import { useAuth } from "../../contexts/AuthContext";
import "../../styles/AdminSide.css";
import { API_URL } from '../../config/api.js';


const DEFAULT_FILTERS = {
  from: "",
  to: "",
};

const formatDateTime = (value) => {
  if (!value) return "--";
  const date = new Date(value);
  if (Number.isNaN(date.getTime())) return value;
  return date.toLocaleString("vi-VN");
};

const formatScore = (value) => {
  const parsed = Number(value);
  if (Number.isNaN(parsed)) return "--";
  return parsed.toFixed(2);
};

const DashboardStats = () => {
  const { token } = useAuth();
  const [filters, setFilters] = useState(DEFAULT_FILTERS);
  const [stats, setStats] = useState({
    recentAttempts: [],
    latestRegisteredUsers: [],
    leaderboard: [],
    systemStats: {
      totalUsers: 0,
      totalSubjects: 0,
      totalChapters: 0,
      totalQuestions: 0,
      totalAttempts: 0,
    },
  });
  const [selectedAttempt, setSelectedAttempt] = useState(null);
  const [selectedUser, setSelectedUser] = useState(null);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState("");

  const loadStats = useCallback(
    async (nextFilters = DEFAULT_FILTERS) => {
      if (!token) {
        setError("Phiên đăng nhập đã hết hạn");
        setLoading(false);
        return;
      }

      try {
        setLoading(true);
        setError("");

        const params = new URLSearchParams();
        if (nextFilters.from) params.set("from", nextFilters.from);
        if (nextFilters.to) params.set("to", nextFilters.to);
        params.set("limit", "10");

        const response = await fetch(`${API_URL}/admin-stats/dashboard?${params.toString()}`, {
          headers: {
            Authorization: `Bearer ${token}`,
          },
        });

        const payload = await response.json().catch(() => null);
        if (!response.ok) {
          throw new Error(payload?.message || "Không thể tải thống kê dashboard");
        }

        setStats({
          recentAttempts: Array.isArray(payload?.recentAttempts) ? payload.recentAttempts : [],
          latestRegisteredUsers: Array.isArray(payload?.latestRegisteredUsers)
            ? payload.latestRegisteredUsers
            : payload?.latestRegisteredUser
              ? [payload.latestRegisteredUser]
              : [],
          leaderboard: Array.isArray(payload?.leaderboard) ? payload.leaderboard : [],
          systemStats: payload?.systemStats || {
            totalUsers: 0,
            totalSubjects: 0,
            totalChapters: 0,
            totalQuestions: 0,
            totalAttempts: 0,
          },
        });
      } catch (err) {
        setError(err.message || "Có lỗi khi tải thống kê");
      } finally {
        setLoading(false);
      }
    },
    [token],
  );

  useEffect(() => {
    loadStats(DEFAULT_FILTERS);
  }, [loadStats]);

  const hasFilter = useMemo(() => Boolean(filters.from || filters.to), [filters.from, filters.to]);

  const handleChangeFilter = (event) => {
    const { name, value } = event.target;
    setFilters((prev) => ({
      ...prev,
      [name]: value,
    }));
  };

  const handleApplyFilter = async (event) => {
    event.preventDefault();
    await loadStats(filters);
  };

  const handleResetFilter = async () => {
    setFilters(DEFAULT_FILTERS);
    await loadStats(DEFAULT_FILTERS);
  };

  return (
    <section className="admin-stats-panel">
      <div className="admin-stats-header">
        <h3></h3>
        <form className="admin-stats-filter" onSubmit={handleApplyFilter}>
          <label htmlFor="stats-from">
            Từ ngày
            <input
              id="stats-from"
              name="from"
              type="date"
              value={filters.from}
              onChange={handleChangeFilter}
            />
          </label>
          <label htmlFor="stats-to">
            Đến ngày
            <input
              id="stats-to"
              name="to"
              type="date"
              value={filters.to}
              onChange={handleChangeFilter}
            />
          </label>
          <button type="submit" className="admin-action-btn info">
            Lọc
          </button>
          <button
            type="button"
            className="admin-action-btn secondary"
            onClick={handleResetFilter}
            disabled={!hasFilter}
          >
            Đặt lại
          </button>
          <button type="button" className="red-btn" onClick={() => loadStats(filters)} disabled={loading}>
            Tải lại
          </button>
        </form>
      </div>

      {loading && <p>Đang tải dữ liệu thống kê...</p>}
      {!loading && error && <p className="user-error">{error}</p>}

      {!loading && !error && (
        <div className="admin-stats-layout-four-parts">
          {/* Part 1: Recent Attempts (5 most recent) */}
          <article className="admin-stats-card admin-stats-recent-attempts">
            <h4>5 Bài làm gần nhất</h4>
            {stats.recentAttempts.length === 0 ? (
              <p className="admin-stats-empty">Không có dữ liệu trong khoảng thời gian đã chọn.</p>
            ) : (
              <div className="admin-compact-list">
                {stats.recentAttempts.map((attempt) => (
                  <button
                    key={attempt.id}
                    type="button"
                    className="admin-compact-item"
                    onClick={() => setSelectedAttempt(attempt)}
                  >
                    <span className="attempt-user">{attempt.username}</span>
                    <strong className="attempt-score">{formatScore(attempt.score)}</strong>
                  </button>
                ))}
              </div>
            )}
          </article>

          {/* Part 2: Latest Registered Users (5 most recent) */}
          <article className="admin-stats-card admin-stats-latest-users">
            <h4>5 User đăng ký gần nhất</h4>
            {stats.latestRegisteredUsers.length === 0 ? (
              <p className="admin-stats-empty">Không có user mới trong khoảng thời gian đã chọn.</p>
            ) : (
              <div className="admin-compact-list">
                {stats.latestRegisteredUsers.map((user) => (
                  <button
                    key={user.userId}
                    type="button"
                    className="admin-compact-item"
                    onClick={() => setSelectedUser(user)}
                  >
                    <span className="user-username">{user.username}</span>
                    <span className="user-email">{user.email}</span>
                  </button>
                ))}
              </div>
            )}
          </article>

          {/* Part 3: Leaderboard (Top 10 users by attempts) */}
          <article className="admin-stats-card admin-stats-leaderboard">
            <h4>Xếp hạng</h4>
            {stats.leaderboard.length === 0 ? (
              <p className="admin-stats-empty">Không có dữ liệu xếp hạng trong khoảng thời gian đã chọn.</p>
            ) : (
              <div className="admin-leaderboard-list">
                {stats.leaderboard.map((item, index) => (
                  <div key={item.userId} className="leaderboard-item">
                    <span className="rank">#{index + 1}</span>
                    <span className="username">{item.username}</span>
                    <strong className="attempt-count">{item.attemptCount}</strong>
                  </div>
                ))}
              </div>
            )}
          </article>

          {/* Part 4: System Statistics */}
          <article className="admin-stats-card admin-stats-system-stats">
            <h4>Thống kê hệ thống</h4>
            <div className="system-stats-grid">
              <div className="stat-box">
                <span className="stat-label">Tổng User</span>
                <strong className="stat-value">{stats.systemStats.totalUsers}</strong>
              </div>
              <div className="stat-box">
                <span className="stat-label">Tổng Môn học</span>
                <strong className="stat-value">{stats.systemStats.totalSubjects}</strong>
              </div>
              <div className="stat-box">
                <span className="stat-label">Tổng Chương</span>
                <strong className="stat-value">{stats.systemStats.totalChapters}</strong>
              </div>
              <div className="stat-box">
                <span className="stat-label">Tổng Câu hỏi</span>
                <strong className="stat-value">{stats.systemStats.totalQuestions}</strong>
              </div>
              <div className="stat-box">
                <span className="stat-label">Tổng Lượt làm bài</span>
                <strong className="stat-value">{stats.systemStats.totalAttempts}</strong>
              </div>
            </div>
          </article>
        </div>
      )}

      {/* Dialog for Recent Attempt Details */}
      {selectedAttempt && (
        <div className="modal-overlay">
          <div className="modal-container">
            <div className="modal-header">
              <h3>Chi tiết bài làm</h3>
              <button className="modal-close-btn" type="button" onClick={() => setSelectedAttempt(null)}>
                &times;
              </button>
            </div>
            <div className="admin-profile-view">
              <div className="admin-profile-item">
                <span>User</span>
                <strong>{selectedAttempt.username}</strong>
              </div>
              <div className="admin-profile-item">
                <span>Email</span>
                <strong>{selectedAttempt.email}</strong>
              </div>
              <div className="admin-profile-item">
                <span>Môn</span>
                <strong>{selectedAttempt.subjectName}</strong>
              </div>
              <div className="admin-profile-item">
                <span>Chương</span>
                <strong>
                  {selectedAttempt.chapterName || "--"}
                  {selectedAttempt.chapterOrder !== null && selectedAttempt.chapterOrder !== undefined
                    ? ` (#${selectedAttempt.chapterOrder})`
                    : ""}
                </strong>
              </div>
              <div className="admin-profile-item">
                <span>Điểm</span>
                <strong>{formatScore(selectedAttempt.score)}</strong>
              </div>
              <div className="admin-profile-item">
                <span>Đúng / Tổng</span>
                <strong>
                  {selectedAttempt.correctCount}/{selectedAttempt.totalQuestions}
                </strong>
              </div>
              <div className="admin-profile-item">
                <span>Thời gian làm</span>
                <strong>{selectedAttempt.timeSpent ? `${selectedAttempt.timeSpent}s` : "--"}</strong>
              </div>
              <div className="admin-profile-item">
                <span>Thời gian nộp</span>
                <strong>{formatDateTime(selectedAttempt.createdAt)}</strong>
              </div>
            </div>
          </div>
        </div>
      )}

      {/* Dialog for Latest User Details */}
      {selectedUser && (
        <div className="modal-overlay">
          <div className="modal-container">
            <div className="modal-header">
              <h3>Chi tiết người dùng</h3>
              <button className="modal-close-btn" type="button" onClick={() => setSelectedUser(null)}>
                &times;
              </button>
            </div>
            <div className="admin-profile-view">
              <div className="admin-profile-item">
                <span>ID</span>
                <strong>{selectedUser.userId}</strong>
              </div>
              <div className="admin-profile-item">
                <span>Tên đăng nhập</span>
                <strong>{selectedUser.username}</strong>
              </div>
              <div className="admin-profile-item">
                <span>Email</span>
                <strong>{selectedUser.email}</strong>
              </div>
              <div className="admin-profile-item">
                <span>Vai trò</span>
                <strong>{selectedUser.role}</strong>
              </div>
              <div className="admin-profile-item">
                <span>Thời gian đăng kí</span>
                <strong>{formatDateTime(selectedUser.registeredAt)}</strong>
              </div>
            </div>
          </div>
        </div>
      )}
    </section>
  );
};

export default DashboardStats;

