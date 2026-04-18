import { useState, useEffect, useMemo, useCallback } from "react";
import { useAuth } from "../../../contexts/AuthContext";
import "../../../styles/AdminSide.css";

const API_URL =
  import.meta.env.VITE_API_URL ||
  import.meta.env.REACT_APP_API_URL ||
  `http://${window.location.hostname}:5001`;

const DEFAULT_PAGE_SIZE = 10;
const PAGE_SIZE_OPTIONS = [5, 10, 20, 50];

const Users = () => {
  const { token } = useAuth();
  const [users, setUsers] = useState([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState("");
  const [currentPage, setCurrentPage] = useState(1);
  const [pageSize, setPageSize] = useState(DEFAULT_PAGE_SIZE);

  const fetchUsers = useCallback(async () => {
    if (!token) {
      setError("Phiên đăng nhập đã hết hạn.");
      setLoading(false);
      return;
    }
    try {
      setLoading(true);
      setError("");
      const response = await fetch(`${API_URL}/users`, {
        headers: {
          Authorization: `Bearer ${token}`,
        },
      });
      const payload = await response.json().catch(() => null);
      if (!response.ok) {
        throw new Error(payload?.message || "Không thể tải danh sách.");
      }

      const fetchedUsers = Array.isArray(payload)
        ? payload
        : Array.isArray(payload?.users)
          ? payload.users
          : [];
      const sortedUsers = [...fetchedUsers].sort((a, b) => Number(a.id) - Number(b.id));
      setUsers(sortedUsers);
    } catch (err) {
      setError(err.message || "Có lỗi xảy ra.");
    } finally {
      setLoading(false);
    }
  }, [token]);

  useEffect(() => {
    fetchUsers();
  }, [fetchUsers]);

  const totalUsers = users.length;
  const totalPages = Math.max(1, Math.ceil(totalUsers / pageSize));

  useEffect(() => {
    if (currentPage > totalPages) {
      setCurrentPage(totalPages);
    }
  }, [currentPage, totalPages]);

  const paginatedUsers = useMemo(() => {
    const start = (currentPage - 1) * pageSize;
    return users.slice(start, start + pageSize);
  }, [users, currentPage, pageSize]);

  const visiblePageItems = useMemo(() => {
    if (totalPages <= 1) return [1];

    const items = [];
    const start = Math.max(1, currentPage - 1);
    const end = Math.min(totalPages, currentPage + 1);

    if (start > 1) items.push(1);
    if (start > 2) items.push("...");

    for (let page = start; page <= end; page += 1) {
      items.push(page);
    }

    if (end < totalPages - 1) items.push("...");
    if (end < totalPages) items.push(totalPages);

    return items;
  }, [currentPage, totalPages]);

  const goToPage = (page) => {
    const safePage = Math.min(Math.max(page, 1), totalPages);
    setCurrentPage(safePage);
  };

  const handlePageSizeChange = (event) => {
    setPageSize(Number(event.target.value));
    setCurrentPage(1);
  };

  // --- CÁC HÀM XỬ LÝ HÀNH ĐỘNG MỚI ---
  const handleViewProfile = (user) => {
    // TODO: Mở modal hoặc chuyển sang component xem chi tiết
    console.log("Xem chi tiết user:", user);
    alert(`Xem profile của: ${user.username}`);
  };

  const handleUpdateUser = (user) => {
    // TODO: Chuyển sang màn hình/component UpdateUser
    console.log("Cập nhật user:", user);
    alert(`Update thông tin cho: ${user.username}`);
  };

  const handleDeleteUser = async (userId) => {
    // Thêm bước confirm để tránh xóa nhầm
    if (window.confirm("Bạn có chắc chắn muốn xóa user này không? Hành động này không thể hoàn tác.")) {
      console.log("Đang xóa user ID:", userId);
      // TODO: Gọi API DELETE xóa user ở đây
      // try {
      //   await fetch(`${API_URL}/users/${userId}`, { method: 'DELETE', headers: {...} });
      //   alert("Xóa thành công!");
      //   fetchUsers(); // Tải lại danh sách sau khi xóa
      // } catch(err) { ... }
      alert(`Đã gửi yêu cầu xóa user ID: ${userId}`);
    }
  };

  return (
    <section className="user-list">
      <div className="user-list-header">
        <h3>Danh sách User :</h3>
        <button className="red-btn" type="button" onClick={fetchUsers} disabled={loading}>
          Tải lại trang
        </button>
      </div>

      <div className="user-list-controls">
        <span>Tổng số User: {totalUsers}</span>
        <label htmlFor="users-page-size">
          Số lượng :
          <select id="users-page-size" value={pageSize} onChange={handlePageSizeChange} style={{ marginLeft: "8px" }}>
            {PAGE_SIZE_OPTIONS.map((size) => (
              <option key={size} value={size}>
                {size} / trang
              </option>
            ))}
          </select>
        </label>
      </div>

      {loading && <p> Đang tải danh sách User...</p>}

      {!loading && error && <p className="user-error">{error}</p>}

      {!loading && !error && (
        <>
          <div className="table-responsive">
            <table style={{ width: "100%", borderCollapse: "collapse" }}>
              <thead style={{ backgroundColor: "#f0f0f0" }}>
                <tr style={{ color: "black", textAlign: "left" }}>
                  <th className="col-id" style={{ padding: "10px" }}>ID</th>
                  <th className="col-username" style={{ padding: "10px" }}>Username</th>
                  <th className="col-email" style={{ padding: "10px" }}>Email</th>
                  <th className="col-role" style={{ padding: "10px" }}>Role</th>
                  {/* CỘT HÀNH ĐỘNG MỚI */}
                  <th className="col-actions" style={{ padding: "10px" }}>Hành động</th>
                </tr>
              </thead>
              <tbody style={{ color: "#080000" }}>
                {paginatedUsers.length > 0 ? (
                  paginatedUsers.map((user) => (
                    <tr key={user.id} style={{ borderBottom: "1px solid #ddd" }}>
                      <td style={{ padding: "10px" }}>{user.id}</td>
                      <td style={{ padding: "10px" }}>{user.username}</td>
                      <td style={{ padding: "10px" }}>{user.email}</td>
                      <td style={{ padding: "10px" }}>{user.role}</td>
                      {/* CÁC NÚT HÀNH ĐỘNG */}
                      <td style={{ padding: "10px", display: "flex", gap: "8px" }}>
                        <button 
                          type="button" 
                          onClick={() => handleViewProfile(user)}
                          style={{ padding: "5px 10px", cursor: "pointer", background: "#17a2b8", color: "white", border: "none", borderRadius: "4px" }}
                        >
                          Profile
                        </button>
                        <button 
                          type="button" 
                          onClick={() => handleUpdateUser(user)}
                          style={{ padding: "5px 10px", cursor: "pointer", background: "#ffc107", color: "black", border: "none", borderRadius: "4px" }}
                        >
                          Update
                        </button>
                        <button 
                          type="button" 
                          onClick={() => handleDeleteUser(user.id)}
                          style={{ padding: "5px 10px", cursor: "pointer", background: "#dc3545", color: "white", border: "none", borderRadius: "4px" }}
                        >
                          Xóa
                        </button>
                      </td>
                    </tr>
                  ))
                ) : (
                  <tr>
                    {/* Chú ý: Đổi colSpan từ 4 lên 5 do đã thêm 1 cột */}
                    <td colSpan={5} style={{ padding: "10px", textAlign: "center" }}>Không có User nào.</td>
                  </tr>
                )}
              </tbody>
            </table>
          </div>

          {totalUsers > 0 && (
            <>
              <p className="pagination-meta">
                Trang {currentPage}/{totalPages}
              </p>
              <div className="user-pagination">
                <button
                  className="pagination-btn"
                  type="button"
                  onClick={() => goToPage(currentPage - 1)}
                  disabled={currentPage === 1}
                >
                  Truoc
                </button>

                {visiblePageItems.map((item, index) =>
                  item === "..." ? (
                    <span key={`ellipsis-${index}`} className="pagination-ellipsis">
                      ...
                    </span>
                  ) : (
                    <button
                      key={`page-${item}`}
                      className={`pagination-btn ${item === currentPage ? "active" : ""}`}
                      type="button"
                      onClick={() => goToPage(item)}
                    >
                      {item}
                    </button>
                  )
                )}

                <button
                  className="pagination-btn"
                  type="button"
                  onClick={() => goToPage(currentPage + 1)}
                  disabled={currentPage === totalPages}
                >
                  Sau
                </button>
              </div>
            </>
          )}
        </>
      )}
    </section>
  );
};

export default Users;