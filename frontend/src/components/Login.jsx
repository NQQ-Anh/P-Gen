import { memo, useState } from "react";
import { useAuth } from "../contexts/AuthContext";
import "../styles/LoginRegis.css";

const Login = memo(() => {
  const { login } = useAuth();
  const [username, setUsername] = useState("");
  const [password, setPassword] = useState("");
  const [error, setError] = useState("");
  const [loading, setLoading] = useState(false);

  const handleSubmit = async (event) => {
    event.preventDefault();
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
            <h2 className="auth-title">Chào mừng trở lại!</h2>
            <p className="auth-subtitle">Vui lòng đăng nhập để tiếp tục</p>

            <form onSubmit={handleSubmit} className="auth-form">
              <div className="auth-group">
                <label>Tên đăng nhập</label>
                <input
                  type="text"
                  className="auth-input"
                  placeholder="Tên đăng nhập"
                  value={username}
                  onChange={(event) => setUsername(event.target.value)}
                  required
                />
              </div>

              <div className="auth-group">
                <label>Mật khẩu</label>
                <input
                  type="password"
                  className="auth-input"
                  placeholder="Mật khẩu"
                  value={password}
                  onChange={(event) => setPassword(event.target.value)}
                  required
                />
              </div>

              {error && <div className="auth-error-msg">{error}</div>}

              <button className="red-btn" type="submit" disabled={loading}>
                {loading ? "Đang đăng nhập..." : "Đăng nhập"}
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
