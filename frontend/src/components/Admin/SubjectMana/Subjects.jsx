import { useState, useEffect, useMemo, useCallback } from "react";
import { useAuth } from "../../../contexts/AuthContext";

import CreateSubject from "./CreateSubject";
import UpdateSubject from "./UpdateSubject";
import Chapters from "./ChapterMana/Chapters"; 
import '../../../styles/AdminSide.css';

const API_URL =
  import.meta.env.VITE_API_URL ||
  import.meta.env.REACT_APP_API_URL ||
  `http://${window.location.hostname}:5001`;

const DEFAULT_PAGE_SIZE = 10;
const PAGE_SIZE_OPTIONS = [5, 10, 20, 50];

const Subjects = () => {
  const { token } = useAuth();

  // State điều hướng component con
  const [currentView, setCurrentView] = useState("list");
  const [selectedSubject, setSelectedSubject] = useState(null);

  // State đồng bộ cấu trúc hiển thị dữ liệu như Users.jsx
  const [subjects, setSubjects] = useState([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState("");
  const [currentPage, setCurrentPage] = useState(1);
  const [pageSize, setPageSize] = useState(DEFAULT_PAGE_SIZE);
  
  // SỬA LẠI: Khai báo useState đúng chuẩn mảng [state, setState]
  const [isCreateModalOpen, setIsCreateModalOpen] = useState(false);
  const [isUpdateModalOpen, setIsUpdateModalOpen] = useState(false);

  // Hàm fetch dữ liệu giả lập (sẵn sàng thay bằng API thực tế)
  const fetchSubjects = useCallback(async () => {
      if (!token) {
        setError("Phiên đăng nhập đã hết hạn.");
        setLoading(false);
        return;
      }
      try {
        setLoading(true);
        setError("");
        const response = await fetch(`${API_URL}/subjects`, {
          headers: {
            Authorization: `Bearer ${token}`,
          },
        });
        const payload = await response.json().catch(() => null);
        if (!response.ok) {
          throw new Error(payload?.message || "Không thể tải danh sách.");
        }
        const fetchedSubjects = Array.isArray(payload)
          ? payload
          : Array.isArray(payload?.subjects)
            ? payload.subjects
            : [];
        const sortedSubjects = [...fetchedSubjects].sort((a, b) => Number(a.id) - Number(b.id));
        setSubjects(sortedSubjects);
      } catch (err) {
        setError(err.message || "Có lỗi xảy ra.");
      } finally {
        setLoading(false);
      }
    }, [token]);

  // Chỉ tải lại dữ liệu khi quay về màn hình "list"
  useEffect(() => {
    if (currentView === "list") {
      fetchSubjects();
    }
  }, [fetchSubjects, currentView]);

  // --- LOGIC PHÂN TRANG ---
  const totalSubjects = subjects.length;
  const totalPages = Math.max(1, Math.ceil(totalSubjects / pageSize));

  useEffect(() => {
    if (currentPage > totalPages) {
      setCurrentPage(totalPages);
    }
  }, [currentPage, totalPages]);

  const paginatedSubjects = useMemo(() => {
    const start = (currentPage - 1) * pageSize;
    return subjects.slice(start, start + pageSize);
  }, [subjects, currentPage, pageSize]);

  const visiblePageItems = useMemo(() => {
    if (totalPages <= 1) return [1];

    const items = [];
    const start = Math.max(1, currentPage - 1);
    const end = Math.min(totalPages, currentPage + 1);

    if (start > 1) items.push(1);
    if (start > 2) items.push("...");

    for (let page = start; page <= end; page += 1) {
      items.push(page);
    }

    if (end < totalPages - 1) items.push("...");
    if (end < totalPages) items.push(totalPages);

    return items;
  }, [currentPage, totalPages]);

  const goToPage = (page) => {
    const safePage = Math.min(Math.max(page, 1), totalPages);
    setCurrentPage(safePage);
  };

  const handlePageSizeChange = (event) => {
    setPageSize(Number(event.target.value));
    setCurrentPage(1);
  };

  // --- CÁC HÀM XỬ LÝ ĐIỀU HƯỚNG ---
  const handleGoToCreate = () => setIsCreateModalOpen(true);
  
  const handleGoToUpdate = (subject) => {
    setSelectedSubject(subject);
    setIsUpdateModalOpen(true); // Đổi từ setCurrentView sang bật Modal
  };

  const handleGoToChapters = (subject) => {
    setSelectedSubject(subject);
    setCurrentView("chapters");
  };

  const handleBackToList = () => {
    setSelectedSubject(null);
    setCurrentView("list");
  };

  // --- RENDER CÁC COMPONENT CON ---


  if (currentView === "chapters") {
    return <Chapters subject={selectedSubject} onBackToSubjects={handleBackToList} />;
  }

  // --- RENDER GIAO DIỆN CHÍNH ---
  return (
    <section className="user-list">
      
      {/* THÊM VÀO ĐÂY: Hiển thị Dialog khi isCreateModalOpen = true */}
      {isCreateModalOpen && (
        <CreateSubject 
          onClose={() => setIsCreateModalOpen(false)} 
          onRefresh={fetchSubjects} 
        />
      )}

      {/* THÊM VÀO ĐÂY: Hiển thị Dialog Cập nhật */}
      {isUpdateModalOpen && selectedSubject && (
        <UpdateSubject 
          subjectData={selectedSubject} 
          onClose={() => setIsUpdateModalOpen(false)} 
          onRefresh={fetchSubjects} 
        />
      )}

      <div className="user-list-header">
        <h3>Danh sách môn học</h3>
        <div style={{ display: "flex", gap: "10px" }}>
          <button 
            type="button" 
            onClick={handleGoToCreate} 
            style={{ padding: "8px 16px", background: "#28a745", color: "white", border: "none", borderRadius: "4px", cursor: "pointer", fontWeight: "bold" }}
          >
            + Thêm Môn học
          </button>
          <button className="red-btn" type="button" onClick={fetchSubjects} disabled={loading}>
            Tải lại
          </button>
        </div>
      </div>

      <div className="user-list-controls">
        <span>Tổng môn học : {totalSubjects}</span>
        <label htmlFor="subjects-page-size">
          Hiển thị
          <select id="subjects-page-size" value={pageSize} onChange={handlePageSizeChange} style={{ marginLeft: "8px" }}>
            {PAGE_SIZE_OPTIONS.map((size) => (
              <option key={size} value={size}>
                {size} / trang
              </option>
            ))}
          </select>
        </label>
      </div>

      {loading && <p>Đang tải danh sách môn học...</p>}

      {!loading && error && <p className="user-error">{error}</p>}

      {!loading && !error && (
        <>
          <div className="table-responsive">
            <table style={{ width: "100%", borderCollapse: "collapse" }}>
              <thead style={{ backgroundColor: "#f0f0f0" }}>
                <tr style={{ color: "black", textAlign: "left" }}>
                  <th className="col-id" style={{ padding: "10px" }}>ID</th>
                  <th className="col-name" style={{ padding: "10px" }}>Tên Môn</th>
                  <th className="col-desc" style={{ padding: "10px" }}>Mô tả</th>
                  <th className="col-status" style={{ padding: "10px" }}>Trạng thái</th>
                  <th className="col-actions" style={{ padding: "10px" }}>Hành động</th>
                </tr>
              </thead>
              <tbody style={{ color: "#080000" }}>
                {paginatedSubjects.length > 0 ? (
                  paginatedSubjects.map((sub) => (
                    <tr key={sub.id} style={{ borderBottom: "1px solid #ddd" }}>
                      <td style={{ padding: "10px" }}>{sub.id}</td>
                      <td style={{ padding: "10px" }}><strong>{sub.subject_name}</strong></td>
                      <td style={{ padding: "10px" }}>{sub.description}</td>
                      <td style={{ padding: "10px" }}>{sub.status}</td>
                      <td style={{ padding: "10px", display: "flex", gap: "8px" }}>
                        
                        <button 
                          type="button" 
                          onClick={() => handleGoToChapters(sub)}
                          style={{ padding: "5px 10px", cursor: "pointer", background: "#17a2b8", color: "white", border: "none", borderRadius: "4px" }}
                        >
                          Quản lý Chương
                        </button>

                        <button 
                          type="button" 
                          onClick={() => handleGoToUpdate(sub)}
                          style={{ padding: "5px 10px", cursor: "pointer", background: "#ffc107", color: "black", border: "none", borderRadius: "4px" }}
                        >
                          Sửa
                        </button>
                        
                      </td>
                    </tr>
                  ))
                ) : (
                  <tr>
                    <td colSpan={5} style={{ padding: "10px", textAlign: "center" }}>Không có môn học nào.</td>
                  </tr>
                )}
              </tbody>
            </table>
          </div>

          {totalSubjects > 0 && (
            <>
              <p className="pagination-meta">
                Trang {currentPage}/{totalPages}
              </p>
              <div className="user-pagination">
                <button
                  className="pagination-btn"
                  type="button"
                  onClick={() => goToPage(currentPage - 1)}
                  disabled={currentPage === 1}
                >
                  Trước
                </button>

                {visiblePageItems.map((item, index) =>
                  item === "..." ? (
                    <span key={`ellipsis-${index}`} className="pagination-ellipsis">
                      ...
                    </span>
                  ) : (
                    <button
                      key={`page-${item}`}
                      className={`pagination-btn ${item === currentPage ? "active" : ""}`}
                      type="button"
                      onClick={() => goToPage(item)}
                    >
                      {item}
                    </button>
                  )
                )}

                <button
                  className="pagination-btn"
                  type="button"
                  onClick={() => goToPage(currentPage + 1)}
                  disabled={currentPage === totalPages}
                >
                  Sau
                </button>
              </div>
            </>
          )}
        </>
      )}
    </section>
  );
};

export default Subjects;