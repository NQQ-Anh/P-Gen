import { useState } from "react";
import { useAuth } from '../contexts/AuthContext';
import "../styles/LoginRegis.css";

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

  const handleChange = (e) => {
    setFormData({
      ...formData,
      [e.target.name]: e.target.value,
    });
  };

  const handleSubmit = async (e) => {
    e.preventDefault();
    setError("");
    setLoading(true);

    if (formData.password !== formData.confirmPassword) {
      setError("Passwords do not match");
      setLoading(false);
      return;
    }

    try {
      const response = await fetch(
        "http://localhost:5001/api/auth/register",
        {
          method: "POST",
          headers: { "Content-Type": "application/json" },
          body: JSON.stringify({
            username: formData.username,
            email: formData.email,
            password: formData.password,
          }),
        }
      );

      const data = await response.json();

      if (!response.ok) {
        throw new Error(data.message);
      }

      await login(formData.username, formData.password);
    } catch (err) {
      setError(err.message);
    }

    setLoading(false);
  };

  return (
    <div className="auth-page">
      <div className="auth-container">
        <div className="auth-form-side">
          <div className="auth-form-wrapper">
            <h2 className="auth-title">Join P-Gen</h2>
            <p className="auth-subtitle">Chào mừng bạn đến với hệ thống ôn luyện thông minh.</p>

            <form onSubmit={handleSubmit} className="auth-form">
              <div className="auth-group">  
                <label>Tên đăng nhập</label>
                <input
                  type="text"
                  className="auth-input"
                  name="username"
                  placeholder="Username"
                  value={formData.username}
                  onChange={handleChange}
                  required
                />
              </div>

              <div className="auth-group">  
                <label>Email</label>
                <input
                  type="text"
                  className="auth-input"
                  name="email"
                  placeholder="Email"
                  value={formData.email}
                  onChange={handleChange}
                  required
                />
              </div>

              <div className="auth-group">  
                <label>Mậu khẩu</label>
                <input
                  type="text"
                  className="auth-input"
                  name="password"
                  placeholder="Password"
                  value={formData.password}
                  onChange={handleChange}
                  required
                />
              </div>

              <div className="auth-group">  
                <label>Xác nhận mật khẩu</label>
                <input
                  type="text"
                  className="auth-input"
                  name="confirmPassword"
                  placeholder="Confirm password"
                  value={formData.confirmPassword}
                  onChange={handleChange}
                  required
                />
              </div>

              {error && <div className="error">{error}</div>}

              <button class="red-btn" disabled={loading}>
                {loading ? "Registering..." : "Đăng ký"}
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