const ProfileUser = ({ userData, onClose }) => {
  if (!userData) return null;

  return (
    <div className="modal-overlay">
      <div className="modal-container">
        <div className="modal-header">
          <h3>Thông tin user</h3>
          <button className="modal-close-btn" type="button" onClick={onClose}>
            &times;
          </button>
        </div>

        <div className="admin-profile-view">
          <div className="admin-profile-item">
            <span>ID</span>
            <strong>{userData.id}</strong>
          </div>
          <div className="admin-profile-item">
            <span>Tên đăng nhập</span>
            <strong>{userData.username}</strong>
          </div>
          <div className="admin-profile-item">
            <span>Email</span>
            <strong>{userData.email}</strong>
          </div>
          <div className="admin-profile-item">
            <span>Vai trò</span>
            <strong>{userData.role}</strong>
          </div>
        </div>

        <div className="admin-form-actions" style={{ marginTop: "16px" }}>
          <button type="button" className="admin-action-btn secondary" onClick={onClose}>
            Đóng
          </button>
        </div>
      </div>
    </div>
  );
};

export default ProfileUser;
