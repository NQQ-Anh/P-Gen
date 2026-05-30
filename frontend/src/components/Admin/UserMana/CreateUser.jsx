import { useState } from "react";
import { useAuth } from "../../../contexts/AuthContext";

const API_BASE =
  import.meta.env.VITE_API_URL ||
  import.meta.env.REACT_APP_API_URL ||
  `http://${window.location.hostname}:5001`;

const CreateUser = ({ onClose, onRefresh }) => {
  const { token } = useAuth();
  const [formData, setFormData] = useState({
    username: "",
    email: "",
    password: "",
    role: "User",
  });
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState("");

  const handleChange = (event) => {
    const { name, value } = event.target;
    setFormData((prev) => ({ ...prev, [name]: value }));
  };

  const handleSubmit = async (event) => {
    event.preventDefault();

    if (!token) {
      setError("Phiên đăng nhập đã hết hạn.");
      return;
    }

    setLoading(true);
    setError("");

    try {
      const response = await fetch(`${API_BASE}/users`, {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
          Authorization: `Bearer ${token}`,
        },
        body: JSON.stringify(formData),
      });

      const payload = await response.json().catch(() => null);
      if (!response.ok) {
        throw new Error(payload?.message || "Không thể tạo user.");
      }

      if (onRefresh) await onRefresh();
      onClose();
    } catch (err) {
      setError(err.message || "Có lỗi xảy ra, vui lòng thử lại.");
    } finally {
      setLoading(false);
    }
  };

  return (
    <div className="modal-overlay">
      <div className="modal-container">
        <div className="modal-header">
          <h3>Thêm User mới</h3>
          <button
            className="modal-close-btn"
            type="button"
            onClick={onClose}
            disabled={loading}
          >
            &times;
          </button>
        </div>

        {error && <p className="modal-error">{error}</p>}

        <form className="admin-form" onSubmit={handleSubmit}>
          <div className="admin-field">
            <label htmlFor="create-user-username">Tên đăng nhập *</label>
            <input
              id="create-user-username"
              type="text"
              name="username"
              value={formData.username}
              onChange={handleChange}
              required
              disabled={loading}
            />
          </div>

          <div className="admin-field">
            <label htmlFor="create-user-email">Email *</label>
            <input
              id="create-user-email"
              type="email"
              name="email"
              value={formData.email}
              onChange={handleChange}
              required
              disabled={loading}
            />
          </div>

          <div className="admin-field">
            <label htmlFor="create-user-password">Mật khẩu *</label>
            <input
              id="create-user-password"
              type="password"
              name="password"
              value={formData.password}
              onChange={handleChange}
              minLength={6}
              required
              disabled={loading}
            />
          </div>

          <div className="admin-field">
            <label htmlFor="create-user-role">Vai trò</label>
            <select
              id="create-user-role"
              name="role"
              value={formData.role}
              onChange={handleChange}
              disabled={loading}
            >
              <option value="User">User</option>
              <option value="Admin">Admin</option>
            </select>
          </div>

          <div className="admin-form-actions">
            <button
              type="button"
              className="admin-action-btn secondary"
              onClick={onClose}
              disabled={loading}
            >
              Hủy
            </button>
            <button type="submit" className="admin-action-btn success" disabled={loading}>
              {loading ? "Đang lưu..." : "Lưu user"}
            </button>
          </div>
        </form>
      </div>
    </div>
  );
};

export default CreateUser;
