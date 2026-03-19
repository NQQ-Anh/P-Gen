import { useState } from "react";
import { useAuth } from "../contexts/AuthContext";

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
    <div className="auth-container">
      <div className="auth-form">
        <h2>Đăng ký</h2>

        <form onSubmit={handleSubmit}>
          <input
            name="username"
            placeholder="Tên đăng nhập"
            value={formData.username}
            onChange={handleChange}
            required
          />

          <input
            name="email"
            type="email"
            placeholder="Email"
            value={formData.email}
            onChange={handleChange}
            required
          />

          <input
            name="password"
            type="password"
            placeholder="Mật khẩu"
            value={formData.password}
            onChange={handleChange}
            required
          />

          <input
            name="confirmPassword"
            type="password"
            placeholder="Xác nhận mật khẩu"
            value={formData.confirmPassword}
            onChange={handleChange}
            required
          />

          {error && <div className="error">{error}</div>}

          <button disabled={loading}>
            {loading ? "Registering..." : "Đăng ký"}
          </button>
        </form>
      </div>
    </div>
  );
};

export default Register;