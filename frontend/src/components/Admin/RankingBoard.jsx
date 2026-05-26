import { useCallback, useEffect, useMemo, useState } from "react";
import { useAuth } from "../../contexts/AuthContext";
import { API_URL } from "../../config/api";
import "../../styles/AdminSide.css";

const RANKING_OPTIONS = [
  { value: "attempt_count", label: "Số lần làm bài " },
  { value: "average_score", label: "Điểm trung bình " },
];

const formatDateTime = (value) => {
  if (!value) return "--";
  const date = new Date(value);
  if (Number.isNaN(date.getTime())) return "--";
  return date.toLocaleString("vi-VN");
};

const formatScore = (value) => {
  if (value === null || value === undefined) return "--";
  const parsed = Number(value);
  if (Number.isNaN(parsed)) return "--";
  return parsed.toFixed(2);
};

const formatDuration = (value) => {
  if (value === null || value === undefined) return "--";
  const total = Math.round(Number(value));
  if (Number.isNaN(total) || total <= 0) return "--";

  const hours = Math.floor(total / 3600);
  const minutes = Math.floor((total % 3600) / 60);
  const seconds = total % 60;

  if (hours > 0) return `${hours} giờ ${minutes} phút ${seconds} giây`;
  if (minutes > 0) return `${minutes} phút ${seconds} giây`;
  return `${seconds} giây`;
};

const RankingBoard = () => {
  const { token } = useAuth();
  const [criteria, setCriteria] = useState("attempt_count");
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState("");
  const [rankingRows, setRankingRows] = useState([]);
  const [selectedRow, setSelectedRow] = useState(null);

  const selectedOptionLabel = useMemo(() => {
    return RANKING_OPTIONS.find((option) => option.value === criteria)?.label || "";
  }, [criteria]);

  const loadRanking = useCallback(
    async (nextCriteria = criteria) => {
      if (!token) {
        setError("Phiên đăng nhập đã hết hạn.");
        setLoading(false);
        return;
      }

      try {
        setLoading(true);
        setError("");

        const params = new URLSearchParams();
        params.set("criteria", nextCriteria);
        params.set("limit", "10");

        const response = await fetch(`${API_URL}/admin-stats/ranking?${params.toString()}`, {
          headers: {
            Authorization: `Bearer ${token}`,
          },
        });

        const payload = await response.json().catch(() => null);
        if (!response.ok) {
          throw new Error(payload?.message || "Không thể tải dữ liệu xếp hạng.");
        }

        setRankingRows(Array.isArray(payload?.ranking) ? payload.ranking : []);
      } catch (err) {
        setError(err.message || "Có lỗi khi tải dữ liệu xếp hạng.");
      } finally {
        setLoading(false);
      }
    },
    [criteria, token],
  );

  useEffect(() => {
    loadRanking(criteria);
  }, [criteria, loadRanking]);

  const metricHeaderLabel =
    criteria === "average_score"
      ? "Điểm trung bình"
        : "Số lần làm bài";

  const renderMetricValue = (row) => {
    if (criteria === "average_score") return formatScore(row.avgScore);
    return row.attemptCount ?? 0;
  };

  return (
    <section className="admin-stats-panel">
      <div className="admin-ranking-toolbar admin-toolbar-card">
        <label htmlFor="ranking-criteria">
          Tiêu chí xếp hạng
          <select
            id="ranking-criteria"
            value={criteria}
            onChange={(event) => setCriteria(event.target.value)}
          >
            {RANKING_OPTIONS.map((option) => (
              <option key={option.value} value={option.value}>
                {option.label}
              </option>
            ))}
          </select>
        </label>

        <button type="button" className="red-btn" onClick={() => loadRanking(criteria)} disabled={loading}>
          Tải lại
        </button>
      </div>

      {loading && <p>Đang tải dữ liệu xếp hạng...</p>}
      {!loading && error && <p className="user-error">{error}</p>}

      {!loading && !error && (
        <article className="admin-stats-card">
          <div className="admin-card-head">
            <h4>{selectedOptionLabel}</h4>
            <span className="admin-pill">{rankingRows.length} bản ghi</span>
          </div>

          {rankingRows.length === 0 ? (
            <p className="admin-stats-empty">Chưa có dữ liệu xếp hạng phù hợp.</p>
          ) : (
            <div className="table-responsive">
              <table className="admin-stats-table">
                <thead>
                  <tr>
                    <th>Thứ hạng</th>
                    <th>Tên user</th>
                    <th>Email</th>
                    <th>{metricHeaderLabel}</th>
                  </tr>
                </thead>
                <tbody>
                  {rankingRows.map((row) => (
                    <tr
                      key={`${row.userId}-${row.rank}`}
                      className="admin-clickable-row"
                      onClick={() => setSelectedRow(row)}
                    >
                      <td>#{row.rank}</td>
                      <td>{row.username || "Không xác định"}</td>
                      <td>{row.email || "--"}</td>
                      <td>{renderMetricValue(row)}</td>
                    </tr>
                  ))}
                </tbody>
              </table>
            </div>
          )}
        </article>
      )}

      {selectedRow && (
        <div className="modal-overlay">
          <div className="modal-container">
            <div className="modal-header">
              <h3>Chi tiết xếp hạng</h3>
              <button className="modal-close-btn" type="button" onClick={() => setSelectedRow(null)}>
                &times;
              </button>
            </div>

            <div className="admin-profile-view">
              <div className="admin-profile-item">
                <span>Thứ hạng</span>
                <strong>#{selectedRow.rank}</strong>
              </div>
              <div className="admin-profile-item">
                <span>Tên user</span>
                <strong>{selectedRow.username || "Không xác định"}</strong>
              </div>
              <div className="admin-profile-item">
                <span>Email</span>
                <strong>{selectedRow.email || "--"}</strong>
              </div>
              <div className="admin-profile-item">
                <span>Tổng số lần làm bài</span>
                <strong>{selectedRow.attemptCount ?? 0}</strong>
              </div>
              <div className="admin-profile-item">
                <span>Điểm trung bình</span>
                <strong>{formatScore(selectedRow.avgScore)}</strong>
              </div>
              <div className="admin-profile-item">
                <span>Thời gian làm bài trung bình</span>
                <strong>{formatDuration(selectedRow.avgTimeSpent)}</strong>
              </div>
              <div className="admin-profile-item">
                <span>Lần làm bài gần nhất</span>
                <strong>{formatDateTime(selectedRow.lastAttemptAt)}</strong>
              </div>
            </div>
          </div>
        </div>
      )}
    </section>
  );
};

export default RankingBoard;
