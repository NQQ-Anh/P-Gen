import { useState } from "react";
import { useAuth } from "../../../../contexts/AuthContext";

const API_URL =
  import.meta.env.VITE_API_URL ||
  import.meta.env.REACT_APP_API_URL ||
  `http://${window.location.hostname}:5001`;

const UpdateChapter = ({ subject, chapterData, onClose, onRefresh }) => {
  const { token } = useAuth();
  const [formData, setFormData] = useState({
    chapter_name: chapterData?.chapter_name || "",
    order_index: Number(chapterData?.order_index || 0),
    status: chapterData?.status || "Active",
  });
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState("");

  const handleChange = (event) => {
    const { name, value } = event.target;
    setFormData((prev) => ({
      ...prev,
      [name]: name === "order_index" ? Number(value) : value,
    }));
  };

  const handleSubmit = async (event) => {
    event.preventDefault();

    if (!token) {
      setError("Phiên đăng nhập đã hết hạn.");
      return;
    }

    if (!subject?.id || !chapterData?.id) {
      setError("Dữ liệu không hợp lệ.");
      return;
    }

    setLoading(true);
    setError("");

    try {
      const response = await fetch(`${API_URL}/subjects/${subject.id}/chapters/${chapterData.id}`, {
        method: "PUT",
        headers: {
          "Content-Type": "application/json",
          Authorization: `Bearer ${token}`,
        },
        body: JSON.stringify(formData),
      });

      const payload = await response.json().catch(() => null);
      if (!response.ok) {
        throw new Error(payload?.message || "Không thể cập nhật chương.");
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
          <h3>Cập nhật chương</h3>
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
            <label htmlFor="update-chapter-name">Tên chương *</label>
            <input
              id="update-chapter-name"
              type="text"
              name="chapter_name"
              value={formData.chapter_name}
              onChange={handleChange}
              required
              disabled={loading}
            />
          </div>

          <div className="admin-field">
            <label htmlFor="update-chapter-order">Thứ tự chương</label>
            <input
              id="update-chapter-order"
              type="number"
              name="order_index"
              value={formData.order_index}
              onChange={handleChange}
              min={0}
              disabled={loading}
            />
          </div>

          <div className="admin-field">
            <label htmlFor="update-chapter-status">Trạng thái</label>
            <select
              id="update-chapter-status"
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
            <button type="submit" className="admin-action-btn warning" disabled={loading}>
              {loading ? "Đang cập nhật..." : "Cập nhật"}
            </button>
          </div>
        </form>
      </div>
    </div>
  );
};

export default UpdateChapter;
