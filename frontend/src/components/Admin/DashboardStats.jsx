import { useCallback, useEffect, useMemo, useState } from "react";
import { useAuth } from "../../contexts/AuthContext";
import { API_URL } from "../../config/api";
import "../../styles/AdminSide.css";

const DEFAULT_FILTERS = {
  from: "",
  to: "",
};

const formatDateTime = (value) => {
  if (!value) return "--";
  const date = new Date(value);
  if (Number.isNaN(date.getTime())) return "--";
  return date.toLocaleString("vi-VN");
};

const formatScore = (value) => {
  const parsed = Number(value);
  if (Number.isNaN(parsed)) return "--";
  return parsed.toFixed(2);
};

const formatNumber = (value) => {
  const parsed = Number(value);
  if (Number.isNaN(parsed)) return "0";
  return parsed.toLocaleString("vi-VN");
};

const formatDuration = (seconds) => {
  const total = Number(seconds);
  if (Number.isNaN(total) || total <= 0) return "--";

  const hours = Math.floor(total / 3600);
  const minutes = Math.floor((total % 3600) / 60);
  const secs = total % 60;

  if (hours > 0) return `${hours} giờ ${minutes} phút ${secs} giây`;
  if (minutes > 0) return `${minutes} phút ${secs} giây`;
  return `${secs} giây`;
};

const DashboardStats = () => {
  const { token } = useAuth();
  const [filters, setFilters] = useState(DEFAULT_FILTERS);

  const [systemStats, setSystemStats] = useState({
    totalUsers: 0,
    totalSubjects: 0,
    totalChapters: 0,
    totalQuestions: 0,
    totalAttempts: 0,
  });

  const [listStats, setListStats] = useState({
    recentAttempts: [],
    latestRegisteredUsers: [],
  });

  const [selectedAttempt, setSelectedAttempt] = useState(null);
  const [selectedUser, setSelectedUser] = useState(null);

  const [overviewLoading, setOverviewLoading] = useState(true);
  const [listLoading, setListLoading] = useState(true);
  const [overviewError, setOverviewError] = useState("");
  const [listError, setListError] = useState("");

  const loadOverviewStats = useCallback(async () => {
    if (!token) {
      setOverviewError("Phiên đăng nhập đã hết hạn.");
      setOverviewLoading(false);
      return;
    }

    try {
      setOverviewLoading(true);
      setOverviewError("");

      const response = await fetch(`${API_URL}/admin-stats/dashboard?limit=5`, {
        headers: { Authorization: `Bearer ${token}` },
      });

      const payload = await response.json().catch(() => null);
      if (!response.ok) {
        throw new Error(payload?.message || "Không thể tải thống kê tổng.");
      }

      setSystemStats({
        totalUsers: Number(payload?.systemStats?.totalUsers) || 0,
        totalSubjects: Number(payload?.systemStats?.totalSubjects) || 0,
        totalChapters: Number(payload?.systemStats?.totalChapters) || 0,
        totalQuestions: Number(payload?.systemStats?.totalQuestions) || 0,
        totalAttempts: Number(payload?.systemStats?.totalAttempts) || 0,
      });
    } catch (error) {
      setOverviewError(error.message || "Có lỗi khi tải thống kê tổng.");
    } finally {
      setOverviewLoading(false);
    }
  }, [token]);

  const loadFilteredListStats = useCallback(
    async (nextFilters = DEFAULT_FILTERS) => {
      if (!token) {
        setListError("Phiên đăng nhập đã hết hạn.");
        setListLoading(false);
        return;
      }

      try {
        setListLoading(true);
        setListError("");

        const params = new URLSearchParams();
        params.set("limit", "5");
        if (nextFilters.from) params.set("from", nextFilters.from);
        if (nextFilters.to) params.set("to", nextFilters.to);

        const response = await fetch(`${API_URL}/admin-stats/dashboard?${params.toString()}`, {
          headers: { Authorization: `Bearer ${token}` },
        });

        const payload = await response.json().catch(() => null);
        if (!response.ok) {
          throw new Error(payload?.message || "Không thể tải dữ liệu danh sách.");
        }

        setListStats({
          recentAttempts: Array.isArray(payload?.recentAttempts) ? payload.recentAttempts : [],
          latestRegisteredUsers: Array.isArray(payload?.latestRegisteredUsers)
            ? payload.latestRegisteredUsers
            : [],
        });
      } catch (error) {
        setListError(error.message || "Có lỗi khi tải dữ liệu danh sách.");
      } finally {
        setListLoading(false);
      }
    },
    [token],
  );

  useEffect(() => {
    loadOverviewStats();
    loadFilteredListStats(DEFAULT_FILTERS);
  }, [loadOverviewStats, loadFilteredListStats]);

  const handleApplyFilters = async (event) => {
    event.preventDefault();
    await loadFilteredListStats(filters);
  };

  const handleResetFilters = async () => {
    setFilters(DEFAULT_FILTERS);
    await loadFilteredListStats(DEFAULT_FILTERS);
  };

  const overviewCards = useMemo(
    () => [
      {
        key: "users",
        title: "Tổng user",
        value: formatNumber(systemStats.totalUsers),
        icon: "fa-solid fa-users",
      },
      {
        key: "subjects",
        title: "Tổng môn học",
        value: formatNumber(systemStats.totalSubjects),
        icon: "fa-solid fa-book-open-reader",
      },
      {
        key: "chapters",
        title: "Tổng chương",
        value: formatNumber(systemStats.totalChapters),
        icon: "fa-solid fa-list-ol",
      },
      {
        key: "questions",
        title: "Tổng câu hỏi",
        value: formatNumber(systemStats.totalQuestions),
        icon: "fa-solid fa-circle-question",
      },
      {
        key: "attempts",
        title: "Tổng số lần làm bài",
        value: formatNumber(systemStats.totalAttempts),
        icon: "fa-solid fa-square-poll-vertical",
      },
    ],
    [systemStats],
  );

  return (
    <section className="admin-stats-panel">
      <article className="admin-stats-card admin-overview-section">
        <div className="admin-card-head">
          <div>
            <h4>Thống kê tổng quan</h4>
          </div>
        </div>

        {overviewLoading && <p>Đang tải thống kê tổng...</p>}
        {!overviewLoading && overviewError && <p className="user-error">{overviewError}</p>}
        {!overviewLoading && !overviewError && (
          <div className="admin-overview-grid">
            {overviewCards.map((card) => (
              <article key={card.key} className="admin-overview-card">
                <div className="admin-overview-icon">
                  <i className={card.icon} />
                </div>
                <div className="admin-overview-content">
                  <p>{card.title}</p>
                  <strong>{card.value}</strong>
                </div>
              </article>
            ))}
          </div>
        )}
      </article>

      <div className="admin-stats-header">
        <form className="admin-stats-filter admin-toolbar-card" onSubmit={handleApplyFilters}>
          <label htmlFor="stats-from">
            Từ ngày
            <input
              id="stats-from"
              name="from"
              type="date"
              value={filters.from}
              onChange={(event) =>
                setFilters((prev) => ({
                  ...prev,
                  from: event.target.value,
                }))
              }
            />
          </label>
          <label htmlFor="stats-to">
            Đến ngày
            <input
              id="stats-to"
              name="to"
              type="date"
              value={filters.to}
              onChange={(event) =>
                setFilters((prev) => ({
                  ...prev,
                  to: event.target.value,
                }))
              }
            />
          </label>
          <button type="submit" className="admin-action-btn info">
            Lọc
          </button>
          <button
            type="button"
            className="admin-action-btn secondary"
            onClick={handleResetFilters}
            disabled={!filters.from && !filters.to}
          >
            Đặt lại
          </button>
          <button
            type="button"
            className="red-btn"
            onClick={() => loadFilteredListStats(filters)}
            disabled={listLoading}
          >
            Tải lại
          </button>
        </form>
      </div>

      {listLoading && <p>Đang tải dữ liệu danh sách...</p>}
      {!listLoading && listError && <p className="user-error">{listError}</p>}

      {!listLoading && !listError && (
        <div className="admin-stats-grid">
          <article className="admin-stats-card">
            <div className="admin-card-head">
              <h4>Bài làm gần đây</h4>
              <span className="admin-pill">{listStats.recentAttempts.length} bản ghi</span>
            </div>
            {listStats.recentAttempts.length === 0 ? (
              <p className="admin-stats-empty">Chưa có bài làm nào trong khoảng thời gian đã chọn.</p>
            ) : (
              <div className="table-responsive">
                <table className="admin-stats-table">
                  <thead>
                    <tr>
                      <th>Tên user</th>
                      <th>Thời gian làm bài</th>
                      <th>Điểm</th>
                    </tr>
                  </thead>
                  <tbody>
                    {listStats.recentAttempts.map((attempt) => (
                      <tr
                        key={attempt.id}
                        className="admin-clickable-row"
                        onClick={() => setSelectedAttempt(attempt)}
                      >
                        <td>{attempt.username || "Không xác định"}</td>
                        <td>{formatDateTime(attempt.createdAt)}</td>
                        <td>{formatScore(attempt.score)}</td>
                      </tr>
                    ))}
                  </tbody>
                </table>
              </div>
            )}
          </article>

          <article className="admin-stats-card">
            <div className="admin-card-head">
              <h4>Người dùng mới</h4>
              <span className="admin-pill">{listStats.latestRegisteredUsers.length} bản ghi</span>
            </div>
            {listStats.latestRegisteredUsers.length === 0 ? (
              <p className="admin-stats-empty">Chưa có user mới trong khoảng thời gian đã chọn.</p>
            ) : (
              <div className="table-responsive">
                <table className="admin-stats-table">
                  <thead>
                    <tr>
                      <th>Tên user</th>
                      <th>Email</th>
                      <th>Thời điểm đăng ký</th>
                    </tr>
                  </thead>
                  <tbody>
                    {listStats.latestRegisteredUsers.map((user) => (
                      <tr
                        key={user.userId}
                        className="admin-clickable-row"
                        onClick={() => setSelectedUser(user)}
                      >
                        <td>{user.username || "Không xác định"}</td>
                        <td>{user.email || "--"}</td>
                        <td>{formatDateTime(user.registeredAt)}</td>
                      </tr>
                    ))}
                  </tbody>
                </table>
              </div>
            )}
          </article>
        </div>
      )}

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
                <span>Tên user</span>
                <strong>{selectedAttempt.username || "Không xác định"}</strong>
              </div>
              <div className="admin-profile-item">
                <span>Email</span>
                <strong>{selectedAttempt.email || "--"}</strong>
              </div>
              <div className="admin-profile-item">
                <span>Môn học</span>
                <strong>{selectedAttempt.subjectName || "Không xác định"}</strong>
              </div>
              <div className="admin-profile-item">
                <span>Chương</span>
                <strong>
                  {selectedAttempt.chapterName
                    ? `${selectedAttempt.chapterName}${
                        selectedAttempt.chapterOrder !== null && selectedAttempt.chapterOrder !== undefined
                          ? ` (#${selectedAttempt.chapterOrder})`
                          : ""
                      }`
                    : "--"}
                </strong>
              </div>
              <div className="admin-profile-item">
                <span>Điểm</span>
                <strong>{formatScore(selectedAttempt.score)}</strong>
              </div>
              <div className="admin-profile-item">
                <span>Kết quả</span>
                <strong>
                  {selectedAttempt.correctCount ?? 0}/{selectedAttempt.totalQuestions ?? 0}
                </strong>
              </div>
              <div className="admin-profile-item">
                <span>Thời gian làm bài</span>
                <strong>{formatDuration(selectedAttempt.timeSpent)}</strong>
              </div>
              <div className="admin-profile-item">
                <span>Thời điểm nộp</span>
                <strong>{formatDateTime(selectedAttempt.createdAt)}</strong>
              </div>
            </div>
          </div>
        </div>
      )}

      {selectedUser && (
        <div className="modal-overlay">
          <div className="modal-container">
            <div className="modal-header">
              <h3>Chi tiết user</h3>
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
                <span>Tên user</span>
                <strong>{selectedUser.username || "Không xác định"}</strong>
              </div>
              <div className="admin-profile-item">
                <span>Email</span>
                <strong>{selectedUser.email || "--"}</strong>
              </div>
              <div className="admin-profile-item">
                <span>Vai trò</span>
                <strong>{selectedUser.role || "--"}</strong>
              </div>
              <div className="admin-profile-item">
                <span>Thời điểm đăng ký</span>
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
