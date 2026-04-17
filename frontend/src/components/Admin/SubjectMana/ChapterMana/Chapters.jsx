import { useState, useEffect, useMemo, useCallback } from "react";
import { useAuth } from "../../../../contexts/AuthContext";

// Import các component con
import CreateChapter from "./CreateChapter";
import UpdateChapter from "./UpdateChapter";
import Questions from "./QuestionMana/Questions"; 
import '../../../../styles/AdminSide.css';

const API_URL =
  import.meta.env.VITE_API_URL ||
  import.meta.env.REACT_APP_API_URL ||
  `http://${window.location.hostname}:5001`;


const DEFAULT_PAGE_SIZE = 10;
const PAGE_SIZE_OPTIONS = [5, 10, 20, 50];

const Chapters = ({ subject, onBackToSubjects }) => {
  const { token } = useAuth();

  // State điều hướng component con
  const [currentView, setCurrentView] = useState("list");
  const [selectedChapter, setSelectedChapter] = useState(null);

  // State đồng bộ cấu trúc hiển thị dữ liệu
  const [chapters, setChapters] = useState([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState("");
  const [currentPage, setCurrentPage] = useState(1);
  const [pageSize, setPageSize] = useState(DEFAULT_PAGE_SIZE);
  
  // State mở Modal tạo mới
  const [isCreateModalOpen, setIsCreateModalOpen] = useState(false);
  const [isUpdateModalOpen, setIsUpdateModalOpen] = useState(false);

  // Hàm fetch dữ liệu giả lập (dựa theo môn học đang chọn)
   const fetchChapters = useCallback(async () => {
        if (!token) {
          setError("Phiên đăng nhập đã hết hạn.");
          setLoading(false);
          return;
        }
        try {
          setLoading(true);
          setError("");
          const response = await fetch(`${API_URL}/subjects/${subject.id}/chapters`, {
        headers: {
          Authorization: `Bearer ${token}`,
        },
      });
      
      const payload = await response.json().catch(() => null);
      
      if (!response.ok) {
        throw new Error(payload?.message || "Không thể tải danh sách chương.");
      }
      
      // Làm sạch logic kiểm tra mảng (bỏ phần check users cũ)
      const fetchedChapters = Array.isArray(payload)
        ? payload
        : Array.isArray(payload?.chapters)
          ? payload.chapters
          : [];
          
      // Sắp xếp lại theo ID
      const sortedChapters = [...fetchedChapters].sort((a, b) => Number(a.id) - Number(b.id));
      setChapters(sortedChapters);
      
    } catch (err) {
      setError(err.message || "Có lỗi xảy ra khi tải danh sách chương.");
    } finally {
      setLoading(false);
    }
  }, [token, subject]);

  // Chỉ tải lại dữ liệu khi quay về màn hình "list"
  useEffect(() => {
    if (currentView === "list") {
      fetchChapters();
    }
  }, [fetchChapters, currentView]);

  // --- LOGIC PHÂN TRANG ---
  const totalChapters = chapters.length;
  const totalPages = Math.max(1, Math.ceil(totalChapters / pageSize));

  useEffect(() => {
    if (currentPage > totalPages) {
      setCurrentPage(totalPages);
    }
  }, [currentPage, totalPages]);

  const paginatedChapters = useMemo(() => {
    const start = (currentPage - 1) * pageSize;
    return chapters.slice(start, start + pageSize);
  }, [chapters, currentPage, pageSize]);

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
  
  const handleGoToUpdate = (chapter) => {
    setSelectedChapter(chapter);
    setIsUpdateModalOpen(true); // Bật Modal
  };

  const handleGoToQuestions = (chapter) => {
    setSelectedChapter(chapter);
    setCurrentView("questions");
  };

  const handleBackToList = () => {
    setSelectedChapter(null);
    setCurrentView("list");
  };

  // --- RENDER CÁC COMPONENT CON ---
 

  if (currentView === "questions") {
    return <Questions chapter={selectedChapter} subject={subject} onBackToChapters={handleBackToList} />;
  }

  // --- RENDER GIAO DIỆN CHÍNH ---
  return (
    <section className="user-list">
      
      {/* Hiển thị Dialog tạo mới nếu state bật */}
      {isCreateModalOpen && (
        <CreateChapter 
          subject={subject} // Truyền subject xuống để biết tạo cho môn nào
          onClose={() => setIsCreateModalOpen(false)} 
          onRefresh={fetchChapters} 
        />
      )}
      
      {isUpdateModalOpen && selectedChapter && (
        <UpdateChapter 
          subject={subject}
          chapterData={selectedChapter} 
          onClose={() => setIsUpdateModalOpen(false)} 
          onRefresh={fetchChapters} 
        />
      )}

      {/* Nút lùi về danh sách môn học */}
      <button 
        onClick={onBackToSubjects} 
        style={{ marginBottom: '15px', background: "transparent", color: "#007bff", border: "none", cursor: "pointer", fontWeight: "bold", fontSize: "15px" }}
      >
        <i className="fa-solid fa-arrow-left" style={{ marginRight: '8px' }}></i>
        Trở về danh sách Môn học
      </button>

      <div className="user-list-header">
        <h3>Danh sách Chương {subject ? `- ${subject.subject_name}` : ""}</h3>
        <div style={{ display: "flex", gap: "10px" }}>
          <button 
            type="button" 
            onClick={handleGoToCreate} 
            style={{ padding: "8px 16px", background: "#28a745", color: "white", border: "none", borderRadius: "4px", cursor: "pointer", fontWeight: "bold" }}
          >
            + Thêm Chương
          </button>
          <button className="red-btn" type="button" onClick={fetchChapters} disabled={loading}>
            Tải lại
          </button>
        </div>
      </div>

      <div className="user-list-controls">
        <span>Tổng số chương : {totalChapters}</span>
        <label htmlFor="chapters-page-size">
          Hiển thị
          <select id="chapters-page-size" value={pageSize} onChange={handlePageSizeChange} style={{ marginLeft: "8px" }}>
            {PAGE_SIZE_OPTIONS.map((size) => (
              <option key={size} value={size}>
                {size} / trang
              </option>
            ))}
          </select>
        </label>
      </div>

      {loading && <p>Đang tải danh sách chương...</p>}

      {!loading && error && <p className="user-error">{error}</p>}

      {!loading && !error && (
        <>
          <div className="table-responsive">
            <table style={{ width: "100%", borderCollapse: "collapse" }}>
              <thead style={{ backgroundColor: "#f0f0f0" }}>
                <tr style={{ color: "black", textAlign: "left" }}>
                  <th className="col-id" style={{ padding: "10px" }}>ID</th>
                  <th className="col-name" style={{ padding: "10px" }}>Tên Chương</th>
                  <th className="col-status" style={{ padding: "10px" }}>Trạng thái</th>
                  <th className="col-actions" style={{ padding: "10px" }}>Hành động</th>
                </tr>
              </thead>
              <tbody style={{ color: "#080000" }}>
                {paginatedChapters.length > 0 ? (
                  paginatedChapters.map((chap) => (
                    <tr key={chap.id} style={{ borderBottom: "1px solid #ddd" }}>
                      <td style={{ padding: "10px" }}>{chap.order_index}</td>
                      <td style={{ padding: "10px" }}><strong>{chap.chapter_name}</strong></td>
                      <td style={{ padding: "10px" }}>{chap.status}</td>
                      <td style={{ padding: "10px", display: "flex", gap: "8px" }}>
                        
                        {/* NÚT QUẢN LÝ CÂU HỎI */}
                        <button 
                          type="button" 
                          onClick={() => handleGoToQuestions(chap)}
                          style={{ padding: "5px 10px", cursor: "pointer", background: "#17a2b8", color: "white", border: "none", borderRadius: "4px" }}
                        >
                          Quản lý Câu hỏi
                        </button>

                        {/* NÚT SỬA */}
                        <button 
                          type="button" 
                          onClick={() => handleGoToUpdate(chap)}
                          style={{ padding: "5px 10px", cursor: "pointer", background: "#ffc107", color: "black", border: "none", borderRadius: "4px" }}
                        >
                          Sửa
                        </button>
                        
                      </td>
                    </tr>
                  ))
                ) : (
                  <tr>
                    <td colSpan={5} style={{ padding: "10px", textAlign: "center" }}>Không có chương nào.</td>
                  </tr>
                )}
              </tbody>
            </table>
          </div>

          {/* THANH PHÂN TRANG */}
          {totalChapters > 0 && (
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

export default Chapters;