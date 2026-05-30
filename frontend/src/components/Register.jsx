import { useState } from "react";
import { useAuth } from "../contexts/AuthContext";
import "../styles/LoginRegis.css";

const API_BASE =
  import.meta.env.VITE_API_URL ||
  import.meta.env.REACT_APP_API_URL ||
  `http://${window.location.hostname}:5001`;

const Register = () => {
  const { login } = useAuth();
  const [formData, setFormData] = useState({
    username: "",
    email: "",
    password: "",
    confirmPassword: "",
  });
  const [error, setError] = useState("");
  const [loading, setLoading] = useState(false);

  const handleChange = (event) => {
    const { name, value } = event.target;
    setFormData((prev) => ({ ...prev, [name]: value }));
  };

  const handleSubmit = async (event) => {
    event.preventDefault();
    setError("");
    setLoading(true);

    if (formData.password !== formData.confirmPassword) {
      setError("Mật khẩu xác nhận không khớp.");
      setLoading(false);
      return;
    }

    try {
      const response = await fetch(`${API_BASE}/auth/register`, {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({
          username: formData.username,
          email: formData.email,
          password: formData.password,
        }),
      });

      const data = await response.json();
      if (!response.ok) {
        throw new Error(data.message);
      }

      await login(formData.username, formData.password);
    } catch (err) {
      setError(err.message || "Đăng ký thất bại. Vui lòng thử lại.");
    } finally {
      setLoading(false);
    }
  };

  return (
    <div className="auth-page">
      <div className="auth-container">
        <div className="auth-form-side">
          <div className="auth-form-wrapper">
            <h2 className="auth-title">Tạo tài khoản P-Gen</h2>
            <p className="auth-subtitle">
              Chào mừng bạn đến với hệ thống ôn luyện thông minh.
            </p>

            <form onSubmit={handleSubmit} className="auth-form">
              <div className="auth-group">
                <label>Tên đăng nhập</label>
                <input
                  type="text"
                  className="auth-input"
                  name="username"
                  placeholder="Tên đăng nhập"
                  value={formData.username}
                  onChange={handleChange}
                  required
                />
              </div>

              <div className="auth-group">
                <label>Email</label>
                <input
                  type="email"
                  className="auth-input"
                  name="email"
                  placeholder="Email"
                  value={formData.email}
                  onChange={handleChange}
                  required
                />
              </div>

              <div className="auth-group">
                <label>Mật khẩu</label>
                <input
                  type="password"
                  className="auth-input"
                  name="password"
                  placeholder="Mật khẩu"
                  value={formData.password}
                  onChange={handleChange}
                  required
                />
              </div>

              <div className="auth-group">
                <label>Xác nhận mật khẩu</label>
                <input
                  type="password"
                  className="auth-input"
                  name="confirmPassword"
                  placeholder="Xác nhận mật khẩu"
                  value={formData.confirmPassword}
                  onChange={handleChange}
                  required
                />
              </div>

              {error && <div className="error">{error}</div>}

              <button className="red-btn" disabled={loading}>
                {loading ? "Đang đăng ký..." : "Đăng ký"}
              </button>
            </form>
          </div>
        </div>

        <div className="auth-img-side">
          <div className="auth-img-box">
            <img src="/img/auth-pic1.png" className="auth-img-desk" alt="P-Gen" />
          </div>
        </div>
      </div>
    </div>
  );
};

export default Register;
