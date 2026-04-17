import { useState } from "react";
import { useAuth } from "../../../../../contexts/AuthContext";

const API_URL =
  import.meta.env.VITE_API_URL ||
  import.meta.env.REACT_APP_API_URL ||
  `http://${window.location.hostname}:5001`;

const CreateQuestion = ({ subject, chapter, onClose, onRefresh }) => {
  const { token } = useAuth();
  
  // Thêm các trường cơ bản cho câu hỏi
  const [formData, setFormData] = useState({ 
    content: "", 
    type: "Trắc nghiệm", 
    difficulty: "Dễ" 
  });
  
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState("");

  const handleChange = (e) => {
    const { name, value } = e.target;
    setFormData((prev) => ({ ...prev, [name]: value }));
  };

  const handleSubmit = async (e) => {
    e.preventDefault();
    
    if (!token) {
      setError("Phiên đăng nhập đã hết hạn.");
      return;
    }

    if (!subject || !chapter) {
      setError("Thiếu thông tin môn học hoặc chương học.");
      return;
    }

    setLoading(true);
    setError("");

    try {
      const response = await fetch(`${API_URL}/subjects/${subject.id}/chapters/${chapter.id}/questions`, {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
          Authorization: `Bearer ${token}`,
        },
        body: JSON.stringify(formData),
      });

      const payload = await response.json().catch(() => null);

      if (!response.ok) {
        throw new Error(payload?.message || "Không thể tạo câu hỏi.");
      }

      alert("Tạo câu hỏi thành công!");
      if (onRefresh) onRefresh();
      onClose();

    } catch (err) {
      setError(err.message || "Có lỗi xảy ra, vui lòng thử lại.");
    } finally {
      setLoading(false);
    }
  };

  return (
    <div 
      className="modal-overlay" 
      style={{
        position: "fixed", top: 0, left: 0, right: 0, bottom: 0,
        backgroundColor: "rgba(0, 0, 0, 0.5)",
        display: "flex", alignItems: "center", justifyContent: "center",
        zIndex: 1000
      }}
    >
      <div 
        className="modal-container"
        style={{
          background: "#fff", padding: "20px 30px", borderRadius: "8px",
          width: "100%", maxWidth: "550px", boxShadow: "0 4px 6px rgba(0,0,0,0.1)"
        }}
      >
        <div style={{ display: "flex", justifyContent: "space-between", alignItems: "center", borderBottom: "1px solid #ddd", paddingBottom: "10px", marginBottom: "20px" }}>
          <h3 style={{ margin: 0, color: '#333' }}>Thêm Câu hỏi mới</h3>
          <button 
            onClick={onClose} disabled={loading}
            style={{ background: "transparent", border: "none", fontSize: "20px", cursor: "pointer", color: "#666" }}
          >
            &times;
          </button>
        </div>

        {error && <p style={{ color: "#dc3545", marginBottom: "15px", fontSize: "14px" }}>{error}</p>}

        <form onSubmit={handleSubmit} style={{ display: "flex", flexDirection: "column", gap: "15px" }}>
          
          {/* Hàng chứa Loai và Độ khó */}
          <div style={{ display: "flex", gap: "15px" }}>
            <div style={{ flex: 1 }}>
              <label style={{ display: "block", marginBottom: "5px", fontWeight: "bold", color: '#333' }}>Loại câu hỏi</label>
              <select 
                name="type" value={formData.type} onChange={handleChange} disabled={loading}
                style={{ width: "100%", padding: "8px", borderRadius: "4px", border: "1px solid #ccc", boxSizing: "border-box" }}
              >
                <option value="Trắc nghiệm">Trắc nghiệm</option>
                <option value="Tự luận">Tự luận</option>
              </select>
            </div>
            
            <div style={{ flex: 1 }}>
              <label style={{ display: "block", marginBottom: "5px", fontWeight: "bold", color: '#333' }}>Độ khó</label>
              <select 
                name="difficulty" value={formData.difficulty} onChange={handleChange} disabled={loading}
                style={{ width: "100%", padding: "8px", borderRadius: "4px", border: "1px solid #ccc", boxSizing: "border-box" }}
              >
                <option value="Dễ">Dễ</option>
                <option value="Trung bình">Trung bình</option>
                <option value="Khó">Khó</option>
              </select>
            </div>
          </div>

          <div>
            <label style={{ display: "block", marginBottom: "5px", fontWeight: "bold", color: '#333' }}>
              Nội dung câu hỏi <span style={{ color: "red" }}>*</span>
            </label>
            <textarea 
              name="content" value={formData.content} onChange={handleChange} rows="5" required disabled={loading}
              style={{ width: "100%", padding: "8px", borderRadius: "4px", border: "1px solid #ccc", resize: "vertical", boxSizing: "border-box" }}
              placeholder="Nhập nội dung câu hỏi..."
            ></textarea>
          </div>

          <div style={{ display: "flex", justifyContent: "flex-end", gap: "10px", marginTop: "10px" }}>
            <button 
              type="button" onClick={onClose} disabled={loading}
              style={{ padding: "8px 16px", background: "#6c757d", color: "white", border: "none", borderRadius: "4px", cursor: "pointer" }}
            >
              Hủy
            </button>
            <button 
              type="submit" disabled={loading}
              style={{ padding: "8px 16px", background: "#28a745", color: "white", border: "none", borderRadius: "4px", cursor: loading ? "not-allowed" : "pointer" }}
            >
              {loading ? "Đang lưu..." : "Lưu câu hỏi"}
            </button>
          </div>
        </form>
      </div>
    </div>
  );
};

export default CreateQuestion;