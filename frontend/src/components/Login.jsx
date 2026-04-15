import { useState, memo } from "react";
import { useAuth } from '../contexts/AuthContext';
import "../styles/LoginRegis.css";

const Login = memo(() => {
  const { login } = useAuth();
  const [username, setUsername] = useState("");
  const [password, setPassword] = useState("");
  const [error, setError] = useState("");
  const [loading, setLoading] = useState(false);

  const handleSubmit = async (e) => {
    e.preventDefault();
    setError("");
    setLoading(true);

    const result = await login(username, password);

    if (!result.success) {
      setError(result.error);
    }

    setLoading(false);
  };

  return (
    <div className="auth-page">
      <div className="auth-container">
        <div className="auth-form-side">
          <div className="auth-form-wrapper">
            <h2 className="auth-title">Welcome back!!</h2>
            <p className="auth-subtitle">Vui lòng đăng nhập để tiếp tục</p>

            <form onSubmit={handleSubmit} className="auth-form">
              <div className="auth-group">  
                <label>Tên đăng nhập</label>
                <input
                  type="text"
                  className="auth-input"
                  placeholder="Username"
                  value={username}
                  onChange={(e) => setUsername(e.target.value)}
                  required
                />
              </div>

              <div className="auth-group">
                <label>Mật khẩu</label>
                <input
                  type="password"
                  className="auth-input"
                  placeholder="Password"
                  value={password}
                  onChange={(e) => setPassword(e.target.value)}
                  required
                />
              </div>

              {error && <div className="auth-error-msg">{error}</div>}

              <button class="red-btn" type="submit" disabled={loading}>
                {loading ? "Logging in..." : "Đăng nhập"}
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
});

export default Login;