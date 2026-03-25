import { useState, useEffect, useCallback } from "react";
import { useAuth } from "../contexts/AuthContext";

const AdminSide = () => {
  const { token } = useAuth();
  const [users, setUsers] = useState([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState("");
  const [editingUser, setEditingUser] = useState(null);
  const [formData, setFormData] = useState({
    username: "",
    email: "",
    role: "User"
  });

  const fetchUsers = useCallback(async () => {
    try {
      const response = await fetch("http://localhost:5001/api/users", {
        headers: {
          Authorization: `Bearer ${token}`,
        },
      });

      if (!response.ok) {
        throw new Error("Failed to fetch users");
      }

      const data = await response.json();
      setUsers(data);
    } catch (err) {
      setError(err.message);
    } finally {
      setLoading(false);
    }
  }, [token]);

  useEffect(() => {
    fetchUsers();
  }, [fetchUsers]);

  const handleCreate = async (e) => {
    e.preventDefault();
    try {
      const response = await fetch("http://localhost:5001/api/users", {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
          Authorization: `Bearer ${token}`,
        },
        body: JSON.stringify(formData),
      });

      if (!response.ok) {
        throw new Error("Failed to create user");
      }

      setFormData({ username: "", email: "", role: "User" });
      fetchUsers();
    } catch (err) {
      setError(err.message);
    }
  };

  const handleUpdate = async (e) => {
    e.preventDefault();
    try {
      const response = await fetch(`http://localhost:5001/api/users/${editingUser.id}`, {
        method: "PUT",
        headers: {
          "Content-Type": "application/json",
          Authorization: `Bearer ${token}`,
        },
        body: JSON.stringify(formData),
      });

      if (!response.ok) {
        throw new Error("Failed to update user");
      }

      setEditingUser(null);
      setFormData({ username: "", email: "", role: "User" });
      fetchUsers();
    } catch (err) {
      setError(err.message);
    }
  };

  const handleDelete = async (id) => {
    if (!window.confirm("Are you sure you want to delete this user?")) return;

    try {
      const response = await fetch(`http://localhost:5001/api/users/${id}`, {
        method: "DELETE",
        headers: {
          Authorization: `Bearer ${token}`,
        },
      });

      if (!response.ok) {
        throw new Error("Failed to delete user");
      }

      fetchUsers();
    } catch (err) {
      setError(err.message);
    }
  };

  const startEdit = (user) => {
    setEditingUser(user);
    setFormData({
      username: user.username,
      email: user.email,
      role: user.role,
    });
  };

  const cancelEdit = () => {
    setEditingUser(null);
    setFormData({ username: "", email: "", role: "User" });
  };

  if (loading) return <div>Loading...</div>;
  if (error) return <div>Error: {error}</div>;

  return (
    <div className="admin-panel">
      <h2>Quản lý User</h2>

      <div className="user-form">
        <h3>{editingUser ? "Cập nhật User" : "Tạo User mới"}</h3>
        <form onSubmit={editingUser ? handleUpdate : handleCreate}>
          <div>
            <label>Username:</label>
            <input
              type="text"
              value={formData.username}
              onChange={(e) => setFormData({ ...formData, username: e.target.value })}
              required
            />
          </div>
          <div>
            <label>Email:</label>
            <input
              type="email"
              value={formData.email}
              onChange={(e) => setFormData({ ...formData, email: e.target.value })}
              required
            />
          </div>
          <div>
            <label>Role:</label>
            <select
              value={formData.role}
              onChange={(e) => setFormData({ ...formData, role: e.target.value })}
            >
              <option value="User">User</option>
              <option value="Admin">Admin</option>
            </select>
          </div>
          <div className="form-btn-group">
            <button class="red-btn" type="submit">{editingUser ? "Cập nhật" : "Tạo"}</button>
            {editingUser && <button class="red-btn" type="button" onClick={cancelEdit}>Hủy</button>}
          </div>
        </form>
      </div>

      <div className="user-list table-responsive">
        <h3>Danh sách User</h3>
        <table>
          <thead style={{ backgroundColor: "#f0f0f0" }}>
            <tr style={{ color: "black" }}>
              <th class="col-id">ID</th>
              <th class="col-username">Username</th>
              <th class="col-email">Email</th>
              <th class="col-role">Role</th>
              <th class="col-actions">Actions</th>
            </tr>
          </thead>
          <tbody style={{ color: "#080000" }}>
            {users.map((u) => (
              <tr key={u.id}>
                <td>{u.id}</td>
                <td>{u.username}</td>
                <td>{u.email}</td>
                <td>{u.role}</td>
                <td class="btn-group">
                  <button class="red-btn" onClick={() => startEdit(u)}>Sửa</button>
                  <button class="red-btn" onClick={() => handleDelete(u.id)}>Xóa</button>
                </td>
              </tr>
            ))}
          </tbody>
        </table>
      </div>
    </div>
  );
};

export default AdminSide;