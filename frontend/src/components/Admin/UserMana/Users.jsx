import { useState, useEffect, useMemo, useCallback } from "react";
import { useAuth } from "../../../contexts/AuthContext";
import CreateUser from "./CreateUser";
import UpdateUser from "./UpdateUser";
import ProfileUser from "./ProfileUser";
import "../../../styles/AdminSide.css";

const API_BASE =
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
  const [searchTerm, setSearchTerm] = useState("");
  const [selectedRole, setSelectedRole] = useState("all");
  const [isCreateModalOpen, setIsCreateModalOpen] = useState(false);
  const [isUpdateModalOpen, setIsUpdateModalOpen] = useState(false);
  const [isProfileModalOpen, setIsProfileModalOpen] = useState(false);
  const [selectedUser, setSelectedUser] = useState(null);

  const fetchUsers = useCallback(async () => {
    if (!token) {
      setError("Phiên đăng nhập đã hết hạn");
      setLoading(false);
      return;
    }

    try {
      setLoading(true);
      setError("");

      const response = await fetch(`${API_BASE}/users`, {
        headers: {
          Authorization: `Bearer ${token}`,
        },
      });

      const payload = await response.json().catch(() => null);
      if (!response.ok) {
        throw new Error(payload?.message || "Không thể tải danh sách user");
      }

      const fetchedUsers = Array.isArray(payload)
        ? payload
        : Array.isArray(payload?.users)
          ? payload.users
          : [];

      const sortedUsers = [...fetchedUsers].sort((a, b) => Number(a.id) - Number(b.id));
      setUsers(sortedUsers);
    } catch (err) {
      setError(err.message || "Có lỗi xảy ra");
    } finally {
      setLoading(false);
    }
  }, [token]);

  useEffect(() => {
    fetchUsers();
  }, [fetchUsers]);

  const roleOptions = useMemo(() => {
    const roleSet = new Set(users.map((user) => user.role).filter(Boolean));
    return Array.from(roleSet).sort((a, b) => a.localeCompare(b));
  }, [users]);

  const filteredUsers = useMemo(() => {
    const normalizedSearch = searchTerm.trim().toLowerCase();

    return users.filter((user) => {
      const roleMatched = selectedRole === "all" || user.role === selectedRole;
      if (!roleMatched) return false;

      if (!normalizedSearch) return true;

      const searchableText = `${user.id} ${user.username} ${user.email}`.toLowerCase();
      return searchableText.includes(normalizedSearch);
    });
  }, [users, searchTerm, selectedRole]);

  const totalUsers = filteredUsers.length;
  const totalPages = Math.max(1, Math.ceil(totalUsers / pageSize));

  useEffect(() => {
    if (currentPage > totalPages) {
      setCurrentPage(totalPages);
    }
  }, [currentPage, totalPages]);

  useEffect(() => {
    setCurrentPage(1);
  }, [searchTerm, selectedRole]);

  const paginatedUsers = useMemo(() => {
    const start = (currentPage - 1) * pageSize;
    return filteredUsers.slice(start, start + pageSize);
  }, [filteredUsers, currentPage, pageSize]);

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

  const handleClearFilters = () => {
    setSearchTerm("");
    setSelectedRole("all");
  };

  const handleViewProfile = (user) => {
    setSelectedUser(user);
    setIsProfileModalOpen(true);
  };

  const handleUpdateUser = (user) => {
    setSelectedUser(user);
    setIsUpdateModalOpen(true);
  };

  const handleDeleteUser = async (user) => {
    if (!token) {
      setError("Phien dang nhap da het han.");
      return;
    }

    const confirmed = window.confirm(
      `Chắc chắn xóa user : "${user.username}"? `,
    );
    if (!confirmed) return;

    try {
      const response = await fetch(`${API_BASE}/users/${user.id}`, {
        method: "DELETE",
        headers: {
          Authorization: `Bearer ${token}`,
        },
      });

      const payload = await response.json().catch(() => null);
      if (!response.ok) {
        throw new Error(payload?.message || "Không thể  xóa user");
      }

      await fetchUsers();
    } catch (err) {
      window.alert(err.message || "Có lỗi khi xóa user");
    }
  };

  return (
    <section className="user-list">
      {isCreateModalOpen && (
        <CreateUser onClose={() => setIsCreateModalOpen(false)} onRefresh={fetchUsers} />
      )}

      {isUpdateModalOpen && selectedUser && (
        <UpdateUser
          userData={selectedUser}
          onClose={() => {
            setIsUpdateModalOpen(false);
            setSelectedUser(null);
          }}
          onRefresh={fetchUsers}
        />
      )}

      {isProfileModalOpen && selectedUser && (
        <ProfileUser
          userData={selectedUser}
          onClose={() => {
            setIsProfileModalOpen(false);
            setSelectedUser(null);
          }}
        />
      )}

      <div className="user-list-header">
        <h3>Danh sách user</h3>
        <div style={{ display: "flex", gap: "10px" }}>
          <button
            type="button"
            className="admin-action-btn success"
            onClick={() => setIsCreateModalOpen(true)}
          >
            + Thêm user
          </button>
          <button className="red-btn" type="button" onClick={fetchUsers} disabled={loading}>
            Tải lại
          </button>
        </div>
      </div>

      <div className="user-list-controls">
        <span>Tổng số user: {totalUsers}/{users.length}</span>
        <label htmlFor="users-page-size">
          Hiển thị
          <select id="users-page-size" value={pageSize} onChange={handlePageSizeChange}>
            {PAGE_SIZE_OPTIONS.map((size) => (
              <option key={size} value={size}>
                {size} / trang
              </option>
            ))}
          </select>
        </label>
      </div>

      <div className="table-filters">
        <label htmlFor="users-search" className="table-filter-search">
          Tìm kiếm
          <input
            id="users-search"
            type="search"
            value={searchTerm}
            onChange={(event) => setSearchTerm(event.target.value)}
            placeholder="ID, tên đăng nhập, email"
          />
        </label>

        <label htmlFor="users-role-filter">
          Vai trò
          <select
            id="users-role-filter"
            value={selectedRole}
            onChange={(event) => setSelectedRole(event.target.value)}
          >
            <option value="all">Tất cả</option>
            {roleOptions.map((role) => (
              <option key={role} value={role}>
                {role}
              </option>
            ))}
          </select>
        </label>

        <button
          type="button"
          className="admin-action-btn secondary filter-reset-btn"
          onClick={handleClearFilters}
          disabled={!searchTerm && selectedRole === "all"}
        >
          Hủy lọc
        </button>
      </div>

      {loading && <p>Đang tải danh sách user...</p>}
      {!loading && error && <p className="user-error">{error}</p>}

      {!loading && !error && (
        <>
          <div className="table-responsive">
            <table style={{ width: "100%", borderCollapse: "collapse" }}>
              <thead style={{ backgroundColor: "#f0f0f0" }}>
                <tr style={{ color: "black", textAlign: "left" }}>
                  <th className="col-id" style={{ padding: "10px" }}>
                    ID
                  </th>
                  <th className="col-username" style={{ padding: "10px" }}>
                    Tên đăng nhập
                  </th>
                  <th className="col-email" style={{ padding: "10px" }}>
                    Email
                  </th>
                  <th className="col-role" style={{ padding: "10px" }}>
                    Vai trò
                  </th>
                  <th style={{ padding: "10px" }}>Hành động</th>
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
                      <td style={{ padding: "10px" }}>
                        <div className="table-actions">
                          <button
                            type="button"
                            className="admin-action-btn info table-action-icon"
                            onClick={() => handleViewProfile(user)}
                            title="Chi tiết"
                            aria-label="Chi tiet user"
                          >
                            <i className="fa-solid fa-circle-info" />
                          </button>
                          <button
                            type="button"
                            className="admin-action-btn warning table-action-icon"
                            onClick={() => handleUpdateUser(user)}
                            title="Sửa"
                            aria-label="Sua user"
                          >
                            <i className="fa-solid fa-pen-to-square" />
                          </button>
                          <button
                            type="button"
                            className="admin-action-btn danger table-action-icon"
                            onClick={() => handleDeleteUser(user)}
                            disabled={user.role === "Admin"}
                            title={
                              user.role === "Admin"
                                ? "Không được xóa Admin"
                                : "Xóa"
                            }
                            aria-label="Xoa user"
                          >
                            <i className="fa-solid fa-trash" />
                          </button>
                        </div>
                      </td>
                    </tr>
                  ))
                ) : (
                  <tr>
                    <td colSpan={5} style={{ padding: "10px", textAlign: "center" }}>
                      Không có user phù hợp
                    </td>
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
                  Trước
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
                  ),
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
