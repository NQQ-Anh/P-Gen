import { useAuth } from "../hooks/useAuth";

const Profile = () => {
  const { user, logout } = useAuth();

  if (!user) {
    return <div className="auth-container">Please login</div>;
  }

  return (
    <div className="profile-container">
      <div className="profile-card">
        <h2>Thông tin</h2>

        <div className="profile-info">
          <p style={{ color: "black" }}><strong>ID:</strong> {user.id}</p>
          <p style={{ color: "black" }}><strong>Tên đăng nhập:</strong> {user.username}</p>
          <p style={{ color: "black" }}><strong>Email:</strong> {user.email}</p>
          <p style={{ color: "black" }}><strong>Role:</strong> {user.role}</p>
        </div>

        <button className="logout-btn red-btn" onClick={logout}>
          Đăng xuất
        </button>
      </div>
    </div>
  );
};

export default Profile;