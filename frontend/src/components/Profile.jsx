import React, { useState, useEffect } from 'react';
import axios from 'axios';
import { useAuth } from '../contexts/AuthContext';
import CapacityRadar from './CapacityRadar';
import { formatTimeAgo } from '../utils/formatTime';
import "../styles/Profile.css";

const Profile = ({ onNavigate }) => {
  const { user, logout } = useAuth();
  const [dashboardData, setDashboardData] = useState({ 
    stats: { totalQuizzes: 0, accuracy: 0, streak: 0 }, 
    recentActivities: [] 
  });
  const [analysisData, setAnalysisData] = useState([]);
  const [loading, setLoading] = useState(true);
  const [subjects, setSubjects] = useState([]);
  const [selectedSubject, setSelectedSubject] = useState("");
  const token = localStorage.getItem('accessToken');
  const API_BASE = 'http://localhost:5001';

  useEffect(() => {
    const fetchInitialData = async () => {
      try {
        // 1. Lấy dữ liệu thống kê tổng quát
        const dashRes = await axios.get(`${API_BASE}/history/dashboard-stats`, {
          headers: { Authorization: `Bearer ${token}` }
        });
        setDashboardData(dashRes.data);

        // 2. Lấy danh sách môn học cho Dropdown
        const subRes = await axios.get(`${API_BASE}/subjects`, {
          headers: { Authorization: `Bearer ${token}` }
        });
        setSubjects(subRes.data);
        
        if (subRes.data.length > 0) {
          const firstSubId = subRes.data[0].id;
          setSelectedSubject(firstSubId);
          fetchAnalysis(firstSubId);
        }
      } catch (err) {
        console.error("Lỗi tải dữ liệu:", err);
      } finally {
        setLoading(false);
      }
    };
    if (token) fetchInitialData();
  }, [token]);

  const fetchAnalysis = async (subjectId) => {
    try {
      const res = await axios.get(`${API_BASE}/history/analysis/${subjectId}`, {
        headers: { Authorization: `Bearer ${token}` }
      });
      setAnalysisData(res.data);
    } catch (err) {
      console.error("Lỗi tải phân tích:", err);
    }
  };

  const handleSubjectChange = (e) => {
    const subId = e.target.value;
    setSelectedSubject(subId);
    fetchAnalysis(subId);
  };

  const handleViewDetail = (attemptId) => {
    if (onNavigate) {
      onNavigate("quiz-detail", attemptId); 
    }
  };

  const handleViewAll = () => {
    if (onNavigate) {
      onNavigate("history");
    }
  };

  if (loading) return <div className="loading">Đang tải hồ sơ...</div>;

  return (
    <div className="profile-dashboard-wrapper">
      <div className="dashboard-grid">
        {/* SIDEBAR */}
        <aside className="widget-card sidebar-widget">
          <div className="avatar-placeholder">{user?.username?.charAt(0).toUpperCase()}</div>
          <h2>{user?.username}</h2>
          <span className="user-role-badge">{user?.role}</span>
          <div className="profile-details">
            <p><i className="fa-solid fa-envelope"></i> {user?.email}</p>
            <p><i className="fa-solid fa-id-card"></i> ID: {user?.id}</p>
          </div>
          <button className="red-btn" onClick={logout}>Đăng xuất</button>
        </aside>

        {/* MAIN CONTENT */}
        <main className="dashboard-main-content">
          <div className="top-row">
            {/* THỐNG KÊ */}
            <section className="widget-card stats-widget">
              <h3>Thống kê</h3>
              <div className="stats-list">
                <div className="stat-item">
                  <span className="label">ĐÃ LÀM</span>
                  <span className="value">{dashboardData.stats?.totalQuizzes ?? 0}</span>
                </div>
                <div className="stat-item">
                  <span className="label">CHÍNH XÁC</span>
                  <span className="value">{dashboardData.stats?.accuracy ?? 0}%</span>
                </div>
                <div className="stat-item">
                  <span className="label">CHUỖI</span>
                  <span className="value">{dashboardData.stats?.streak ?? 0}</span>
                </div>
              </div>
            </section>

            {/* BIỂU ĐỒ */}
            <section className="widget-card analysis-widget">
              <div className="analysis-header">
                <h3>Biểu đồ năng lực</h3>
                <select className="sub-dropdown" value={selectedSubject} onChange={handleSubjectChange}>
                  {subjects.map(sub => (
                    <option key={sub.id} value={sub.id}>{sub.subject_name}</option>
                  ))}
                </select>
              </div>
              <CapacityRadar data={analysisData} />
            </section>
          </div>

          {/* BẢNG HOẠT ĐỘNG */}
          <section className="widget-card history-widget">
            <div className="header-flex">
              <h3 className='title'>Bài làm gần đây</h3>
              <button className="red-btn" onClick={handleViewAll}>Xem tất cả</button>
            </div>
            <table className="recent-table">
              <thead>
                <tr>
                  <th>Môn học</th>
                  <th>Chế độ</th>
                  <th>Điểm</th>
                  <th>Thời gian</th>
                  <th>Hành động</th>
                </tr>
              </thead>
              <tbody>
                {dashboardData.recentActivities?.map((act) => (
                  <tr key={act.id}>
                    <td><strong>{act.subject_name}</strong></td>
                    <td>{act.order_index ? `Chương ${act.order_index}` : 'Kiểm tra'}</td>
                    <td className="score-cell">{act.score}</td>
                    <td className="time-cell">{formatTimeAgo(act.created_at)}</td>
                    <td>
                      <button className="red-btn" onClick={() => handleViewDetail(act.id)}>
                        <i class="fa-solid fa-eye"></i> Chi tiết
                      </button>
                    </td>
                  </tr>
                ))}
              </tbody>
            </table>
          </section>
        </main>
      </div>
    </div>
  );
};

export default Profile;