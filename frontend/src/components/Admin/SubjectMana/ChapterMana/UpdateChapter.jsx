import { useState } from "react";
import { useAuth } from "../../../../contexts/AuthContext";

const API_URL =
  import.meta.env.VITE_API_URL ||
  import.meta.env.REACT_APP_API_URL ||
  `http://${window.location.hostname}:5001`;

const UpdateChapter = ({ subject, chapterData, onClose, onRefresh }) => {
  const { token } = useAuth();
  
  const [formData, setFormData] = useState({
    name: chapterData?.name || "",
    description: chapterData?.description || "",
    status: chapterData?.status || "Active",
  });
  
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState("");

  const handleChange = (e) => {
    const { name, value } = e.target;
    setFormData((prev) => ({ ...prev, [name]: value }));
  };

  const handleSubmit = async (e) => {
    e.preventDefault();
    if (!token) return setError("Phiên đăng nhập đã hết hạn.");
    if (!subject || !chapterData) return setError("Dữ liệu không hợp lệ.");

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
      if (!response.ok) throw new Error(payload?.message || "Không thể cập nhật chương học.");

      alert("Cập nhật chương học thành công!");
      if (onRefresh) onRefresh();
      onClose();
    } catch (err) {
      setError(err.message || "Có lỗi xảy ra, vui lòng thử lại.");
    } finally {
      setLoading(false);
    }
  };

  return (
    <div className="modal-overlay" style={{ position: "fixed", top: 0, left: 0, right: 0, bottom: 0, backgroundColor: "rgba(0, 0, 0, 0.5)", display: "flex", alignItems: "center", justifyContent: "center", zIndex: 1000 }}>
      <div className="modal-container" style={{ background: "#fff", padding: "20px 30px", borderRadius: "8px", width: "100%", maxWidth: "450px", boxShadow: "0 4px 6px rgba(0,0,0,0.1)" }}>
        <div style={{ display: "flex", justifyContent: "space-between", alignItems: "center", borderBottom: "1px solid #ddd", paddingBottom: "10px", marginBottom: "20px" }}>
          <h3 style={{ margin: 0, color: '#333' }}>Cập nhật Chương</h3>
          <button onClick={onClose} disabled={loading} style={{ background: "transparent", border: "none", fontSize: "20px", cursor: "pointer", color: "#666" }}>&times;</button>
        </div>

        {error && <p style={{ color: "#dc3545", marginBottom: "15px", fontSize: "14px" }}>{error}</p>}

        <form onSubmit={handleSubmit} style={{ display: "flex", flexDirection: "column", gap: "15px" }}>
          <div>
            <label style={{ display: "block", marginBottom: "5px", fontWeight: "bold", color: '#333' }}>Tên chương <span style={{ color: "red" }}>*</span></label>
            <input type="text" name="name" value={formData.name} onChange={handleChange} required disabled={loading} style={{ width: "100%", padding: "8px", borderRadius: "4px", border: "1px solid #ccc", boxSizing: "border-box" }} />
          </div>
          
          <div>
            <label style={{ display: "block", marginBottom: "5px", fontWeight: "bold", color: '#333' }}>Mô tả</label>
            <textarea name="description" value={formData.description} onChange={handleChange} rows="4" disabled={loading} style={{ width: "100%", padding: "8px", borderRadius: "4px", border: "1px solid #ccc", resize: "vertical", boxSizing: "border-box" }}></textarea>
          </div>

          <div>
            <label style={{ display: "block", marginBottom: "5px", fontWeight: "bold", color: '#333' }}>Trạng thái</label>
            <select name="status" value={formData.status} onChange={handleChange} disabled={loading} style={{ width: "100%", padding: "8px", borderRadius: "4px", border: "1px solid #ccc", boxSizing: "border-box" }}>
              <option value="Active">Hoạt động (Active)</option>
              <option value="Inactive">Khóa (Inactive)</option>
            </select>
          </div>

          <div style={{ display: "flex", justifyContent: "flex-end", gap: "10px", marginTop: "10px" }}>
            <button type="button" onClick={onClose} disabled={loading} style={{ padding: "8px 16px", background: "#6c757d", color: "white", border: "none", borderRadius: "4px", cursor: "pointer" }}>Hủy</button>
            <button type="submit" disabled={loading} style={{ padding: "8px 16px", background: "#ffc107", color: "black", border: "none", borderRadius: "4px", cursor: loading ? "not-allowed" : "pointer", fontWeight: "bold" }}>
              {loading ? "Đang xử lý..." : "Cập nhật"}
            </button>
          </div>
        </form>
      </div>
    </div>
  );
};

export default UpdateChapter;