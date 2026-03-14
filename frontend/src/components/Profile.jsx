import { useAuth } from '../contexts/AuthContext';

const Profile = () => {
  const { user, logout } = useAuth();

  if (!user) {
    return <div>Please log in to view your profile.</div>;
  }

  return (
    <div className="profile-container">
      <h2>User Profile</h2>
      <div className="profile-info">
        <p><strong>ID:</strong> {user.id}</p>
        <p><strong>Username:</strong> {user.username}</p>
        <p><strong>Email:</strong> {user.email}</p>
        <p><strong>Role:</strong> {user.role}</p>
      </div>

      <button onClick={logout} className="logout-btn">
        Logout
      </button>
    </div>
  );
};

export default Profile;