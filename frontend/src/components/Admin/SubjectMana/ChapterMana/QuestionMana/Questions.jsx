import { useState, useEffect, useMemo, useCallback } from "react";
import { useAuth } from "../../../../../contexts/AuthContext";

// Import các component con
import CreateQuestion from "./CreateQuestion";
import UpdateQuestion from "./UpdateQuestion";
import '../../../../../styles/AdminSide.css';

const API_URL =
  import.meta.env.VITE_API_URL ||
  import.meta.env.REACT_APP_API_URL ||
  `http://${window.location.hostname}:5001`;

const DEFAULT_PAGE_SIZE = 10;
const PAGE_SIZE_OPTIONS = [5, 10, 20, 50];

const Questions = ({ subject, chapter, onBackToChapters }) => {
  const { token } = useAuth();

  // State điều hướng component con
  const [currentView] = useState("list");
  const [selectedQuestion, setSelectedQuestion] = useState(null);

  // State đồng bộ cấu trúc hiển thị dữ liệu
  const [questions, setQuestions] = useState([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState("");
  const [currentPage, setCurrentPage] = useState(1);
  const [pageSize, setPageSize] = useState(DEFAULT_PAGE_SIZE);
  
  // State mở Modal tạo mới
  const [isCreateModalOpen, setIsCreateModalOpen] = useState(false);
  const [isUpdateModalOpen, setIsUpdateModalOpen] = useState(false);

  // Hàm fetch dữ liệu từ API dựa theo chương đang chọn
  const fetchQuestions = useCallback(async () => {
    // 1. Kiểm tra token
    if (!token) {
      setError("Phiên đăng nhập đã hết hạn.");
      setLoading(false);
      return;
    }

    // 2. Chặn lỗi undefined làm sập trang
    if (!subject || !chapter || !subject.id || !chapter.id) {
      setError("Không tìm thấy thông tin môn học hoặc chương học.");
      setLoading(false);
      return;
    }

    try {
      setLoading(true);
      setError("");
      
      const response = await fetch(`${API_URL}/subjects/${subject.id}/chapters/${chapter.id}/questions`, {
        headers: {
          Authorization: `Bearer ${token}`,
        },
      });
      
      const payload = await response.json().catch(() => null);
      
      if (!response.ok) {
        throw new Error(payload?.message || "Không thể tải danh sách câu hỏi.");
      }
      
      const fetchedQuestions = Array.isArray(payload)
        ? payload
        : Array.isArray(payload?.questions)
          ? payload.questions
          : [];
          
      // Sắp xếp lại theo ID
      const sortedQuestions = [...fetchedQuestions].sort((a, b) => Number(a.id) - Number(b.id));
      setQuestions(sortedQuestions);
      
    } catch (err) {
      setError(err.message || "Có lỗi xảy ra khi tải danh sách câu hỏi.");
    } finally {
      setLoading(false);
    }
  }, [token, subject, chapter]);

  // Chỉ tải lại dữ liệu khi quay về màn hình "list"
  useEffect(() => {
    if (currentView === "list") {
      fetchQuestions();
    }
  }, [fetchQuestions, currentView]);

  // --- LOGIC PHÂN TRANG ---
  const totalQuestions = questions.length;
  const totalPages = Math.max(1, Math.ceil(totalQuestions / pageSize));

  useEffect(() => {
    if (currentPage > totalPages) {
      setCurrentPage(totalPages);
    }
  }, [currentPage, totalPages]);

  const paginatedQuestions = useMemo(() => {
    const start = (currentPage - 1) * pageSize;
    return questions.slice(start, start + pageSize);
  }, [questions, currentPage, pageSize]);

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
  
  const handleGoToUpdate = (question) => {
    setSelectedQuestion(question);
    setIsUpdateModalOpen(true); // Bật Modal
  };

  // const handleBackToList = () => {
  //   setSelectedQuestion(null);
  //   setCurrentView("list");
  // };

  // --- RENDER CÁC COMPONENT CON ---
  // if (currentView === "update") {
  //   return (
  //     <UpdateQuestion 
  //       subject={subject}
  //       chapter={chapter}
  //       questionData={selectedQuestion} 
  //       onBack={handleBackToList} 
  //     />
  //   );
  // }

  // --- RENDER GIAO DIỆN CHÍNH ---
  return (
    <section className="user-list">
      
      {/* Hiển thị Dialog tạo mới nếu state bật */}
      {isCreateModalOpen && (
        <CreateQuestion 
          subject={subject} // Truyền thêm subject xuống
          chapter={chapter} 
          onClose={() => setIsCreateModalOpen(false)} 
          onRefresh={fetchQuestions} 
        />
      )}
      {isUpdateModalOpen && selectedQuestion && (
        <UpdateQuestion 
          subject={subject}
          chapter={chapter}
          questionData={selectedQuestion} 
          onClose={() => setIsUpdateModalOpen(false)} 
          onRefresh={fetchQuestions} 
        />
      )}

      {/* Nút lùi về danh sách Chương */}
      <button 
        onClick={onBackToChapters} 
        style={{ marginBottom: '15px', background: "transparent", color: "#007bff", border: "none", cursor: "pointer", fontWeight: "bold", fontSize: "15px" }}
      >
        <i className="fa-solid fa-arrow-left" style={{ marginRight: '8px' }}></i>
        Trở về danh sách Chương
      </button>

      <div className="user-list-header">
        <h3>Danh sách Câu hỏi {chapter ? `- ${chapter.chapter_name}` : ""}</h3>
        <div style={{ display: "flex", gap: "10px" }}>
          <button 
            type="button" 
            onClick={handleGoToCreate} 
            style={{ padding: "8px 16px", background: "#28a745", color: "white", border: "none", borderRadius: "4px", cursor: "pointer", fontWeight: "bold" }}
          >
            + Thêm Câu hỏi
          </button>
          <button className="red-btn" type="button" onClick={fetchQuestions} disabled={loading}>
            Tải lại
          </button>
        </div>
      </div>

      <div className="user-list-controls">
        <span>Tổng số câu hỏi : {totalQuestions}</span>
        <label htmlFor="questions-page-size">
          Hiển thị
          <select id="questions-page-size" value={pageSize} onChange={handlePageSizeChange} style={{ marginLeft: "8px" }}>
            {PAGE_SIZE_OPTIONS.map((size) => (
              <option key={size} value={size}>
                {size} / trang
              </option>
            ))}
          </select>
        </label>
      </div>

      {loading && <p>Đang tải danh sách câu hỏi...</p>}

      {!loading && error && <p className="user-error">{error}</p>}

      {!loading && !error && (
        <>
          <div className="table-responsive">
            <table style={{ width: "100%", borderCollapse: "collapse", tableLayout: "fixed" }}>
              <thead style={{ backgroundColor: "#f0f0f0" }}>
                <tr style={{ color: "black", textAlign: "left" }}>
                  {/* Cân đối lại tổng % width cho đủ 100% */}
                  <th className="col-id" style={{ padding: "10px", width: "10%" }}>ID</th>
                  <th className="col-content" style={{ padding: "10px", width: "50%" }}>Nội dung</th>
                  <th className="col-status" style={{ padding: "10px", width: "20%" }}>Trạng thái</th>
                  <th className="col-actions" style={{ padding: "10px", width: "20%" }}>Hành động</th>
                </tr>
              </thead>
              <tbody style={{ color: "#080000" }}>
                {paginatedQuestions.length > 0 ? (
                  paginatedQuestions.map((q) => (
                    <tr key={q.id} style={{ borderBottom: "1px solid #ddd" }}>
                      <td style={{ padding: "10px" }}>{q.id}</td>
                      <td style={{ padding: "10px", whiteSpace: "nowrap", overflow: "hidden", textOverflow: "ellipsis" }} title={q.content}>
                        {q.content}
                      </td>
                      <td style={{ padding: "10px" }}>{q.status}</td>
                      <td style={{ padding: "10px", display: "flex", gap: "8px" }}>
                        
                        {/* NÚT SỬA */}
                        <button 
                          type="button" 
                          onClick={() => handleGoToUpdate(q)}
                          style={{ padding: "5px 10px", cursor: "pointer", background: "#ffc107", color: "black", border: "none", borderRadius: "4px" }}
                        >
                          Sửa
                        </button>
                        
                      </td>
                    </tr>
                  ))
                ) : (
                  <tr>
                    <td colSpan={4} style={{ padding: "10px", textAlign: "center" }}>Không có câu hỏi nào.</td>
                  </tr>
                )}
              </tbody>
            </table>
          </div>

          {/* THANH PHÂN TRANG */}
          {totalQuestions > 0 && (
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

export default Questions;