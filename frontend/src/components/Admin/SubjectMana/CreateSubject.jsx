import { useState } from "react";
import { useAuth } from "../../../contexts/AuthContext";

const API_URL =
  import.meta.env.VITE_API_URL ||
  import.meta.env.REACT_APP_API_URL ||
  `http://${window.location.hostname}:5001`;

const CreateSubject = ({ onClose, onRefresh }) => {
  const { token } = useAuth();
  const [formData, setFormData] = useState({
    subject_name: "",
    description: "",
    status: "Active",
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
      const response = await fetch(`${API_URL}/subjects`, {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
          Authorization: `Bearer ${token}`,
        },
        body: JSON.stringify(formData),
      });

      const payload = await response.json().catch(() => null);
      if (!response.ok) {
        throw new Error(payload?.message || "Không thể tạo môn học.");
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
          <h3>Thêm môn học mới</h3>
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
            <label htmlFor="create-subject-name">Tên môn học *</label>
            <input
              id="create-subject-name"
              type="text"
              name="subject_name"
              value={formData.subject_name}
              onChange={handleChange}
              required
              disabled={loading}
            />
          </div>

          <div className="admin-field">
            <label htmlFor="create-subject-description">Mô tả</label>
            <textarea
              id="create-subject-description"
              name="description"
              value={formData.description}
              onChange={handleChange}
              rows={4}
              disabled={loading}
            />
          </div>

          <div className="admin-field">
            <label htmlFor="create-subject-status">Trạng thái</label>
            <select
              id="create-subject-status"
              name="status"
              value={formData.status}
              onChange={handleChange}
              disabled={loading}
            >
              <option value="Active">Hoạt động</option>
              <option value="Inactive">Tạm khóa</option>
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
              {loading ? "Đang lưu..." : "Lưu môn học"}
            </button>
          </div>
        </form>
      </div>
    </div>
  );
};

export default CreateSubject;
