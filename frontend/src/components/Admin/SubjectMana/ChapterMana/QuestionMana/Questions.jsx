import { useState, useEffect, useMemo, useCallback } from "react";
import { useAuth } from "../../../../../contexts/AuthContext";
import CreateQuestion from "./CreateQuestion";
import UpdateQuestion from "./UpdateQuestion";
import "../../../../../styles/AdminSide.css";

const API_URL =
  import.meta.env.VITE_API_URL ||
  import.meta.env.REACT_APP_API_URL ||
  `http://${window.location.hostname}:5001`;

const DEFAULT_PAGE_SIZE = 10;
const PAGE_SIZE_OPTIONS = [5, 10, 20, 50];
const toStatusLabel = (status) => (status === "Inactive" ? "Tạm khóa" : "Hoạt động");

const Questions = ({ subject, chapter, onBackToChapters }) => {
  const { token } = useAuth();
  const [questions, setQuestions] = useState([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState("");
  const [currentPage, setCurrentPage] = useState(1);
  const [pageSize, setPageSize] = useState(DEFAULT_PAGE_SIZE);
  const [isCreateModalOpen, setIsCreateModalOpen] = useState(false);
  const [isUpdateModalOpen, setIsUpdateModalOpen] = useState(false);
  const [selectedQuestion, setSelectedQuestion] = useState(null);

  const fetchQuestions = useCallback(async () => {
    if (!token) {
      setError("Phiên đăng nhập đã hết hạn.");
      setLoading(false);
      return;
    }

    if (!subject?.id || !chapter?.id) {
      setError("Không tìm thấy thông tin môn học hoặc chương học.");
      setLoading(false);
      return;
    }

    try {
      setLoading(true);
      setError("");

      const response = await fetch(
        `${API_URL}/subjects/${subject.id}/chapters/${chapter.id}/questions`,
        {
          headers: {
            Authorization: `Bearer ${token}`,
          },
        },
      );

      const payload = await response.json().catch(() => null);
      if (!response.ok) {
        throw new Error(payload?.message || "Không thể tải danh sách câu hỏi.");
      }

      const fetchedQuestions = Array.isArray(payload)
        ? payload
        : Array.isArray(payload?.questions)
          ? payload.questions
          : [];

      const sortedQuestions = [...fetchedQuestions].sort((a, b) => Number(a.id) - Number(b.id));
      setQuestions(sortedQuestions);
    } catch (err) {
      setError(err.message || "Có lỗi xảy ra khi tải danh sách câu hỏi.");
    } finally {
      setLoading(false);
    }
  }, [token, subject?.id, chapter?.id]);

  useEffect(() => {
    fetchQuestions();
  }, [fetchQuestions]);

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

  const handleGoToUpdate = (question) => {
    setSelectedQuestion(question);
    setIsUpdateModalOpen(true);
  };

  const handleDeleteQuestion = async (question) => {
    if (!token) {
      setError("Phiên đăng nhập đã hết hạn.");
      return;
    }

    const confirmed = window.confirm(
      `Bạn có chắc chắn muốn xóa câu hỏi ID ${question.id}? Hành động này không thể hoàn tác.`,
    );
    if (!confirmed) return;

    try {
      const response = await fetch(
        `${API_URL}/subjects/${subject.id}/chapters/${chapter.id}/questions/${question.id}`,
        {
          method: "DELETE",
          headers: {
            Authorization: `Bearer ${token}`,
          },
        },
      );

      const payload = await response.json().catch(() => null);
      if (!response.ok) {
        throw new Error(payload?.message || "Không thể xóa câu hỏi.");
      }

      await fetchQuestions();
    } catch (err) {
      window.alert(err.message || "Có lỗi xảy ra khi xóa câu hỏi.");
    }
  };

  return (
    <section className="user-list">
      {isCreateModalOpen && (
        <CreateQuestion
          subject={subject}
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
          onClose={() => {
            setIsUpdateModalOpen(false);
            setSelectedQuestion(null);
          }}
          onRefresh={fetchQuestions}
        />
      )}

      <button type="button" className="admin-back-btn" onClick={onBackToChapters}>
        <i className="fa-solid fa-arrow-left" /> Trở về danh sách chương
      </button>

      <div className="user-list-header">
        <h3>Danh sách câu hỏi {chapter ? `- ${chapter.chapter_name}` : ""}</h3>
        <div style={{ display: "flex", gap: "10px" }}>
          <button
            type="button"
            className="admin-action-btn success"
            onClick={() => setIsCreateModalOpen(true)}
          >
            + Thêm câu hỏi
          </button>
          <button className="red-btn" type="button" onClick={fetchQuestions} disabled={loading}>
            Tải lại
          </button>
        </div>
      </div>

      <div className="user-list-controls">
        <span>Tổng câu hỏi: {totalQuestions}</span>
        <label htmlFor="questions-page-size">
          Hiển thị
          <select id="questions-page-size" value={pageSize} onChange={handlePageSizeChange}>
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
                  <th style={{ padding: "10px", width: "8%" }}>ID</th>
                  <th style={{ padding: "10px", width: "36%" }}>Nội dung</th>
                  <th style={{ padding: "10px", width: "20%" }}>Giải thích</th>
                  <th style={{ padding: "10px", width: "12%" }}>Số đáp án</th>
                  <th style={{ padding: "10px", width: "10%" }}>Trạng thái</th>
                  <th style={{ padding: "10px", width: "20%" }}>Hành động</th>
                </tr>
              </thead>
              <tbody style={{ color: "#080000" }}>
                {paginatedQuestions.length > 0 ? (
                  paginatedQuestions.map((question) => (
                    <tr key={question.id} style={{ borderBottom: "1px solid #ddd" }}>
                      <td style={{ padding: "10px" }}>{question.id}</td>
                      <td
                        style={{
                          padding: "10px",
                          whiteSpace: "nowrap",
                          overflow: "hidden",
                          textOverflow: "ellipsis",
                        }}
                        title={question.content}
                      >
                        {question.content}
                      </td>
                      <td
                        style={{
                          padding: "10px",
                          whiteSpace: "nowrap",
                          overflow: "hidden",
                          textOverflow: "ellipsis",
                        }}
                        title={question.explanation || ""}
                      >
                        {question.explanation || "-"}
                      </td>
                      <td style={{ padding: "10px" }}>{question.answers?.length || 0}</td>
                      <td style={{ padding: "10px" }}>{toStatusLabel(question.status)}</td>
                      <td style={{ padding: "10px" }}>
                        <div className="table-actions">
                          <button
                            type="button"
                            className="admin-action-btn warning"
                            onClick={() => handleGoToUpdate(question)}
                          >
                            Sửa
                          </button>
                          <button
                            type="button"
                            className="admin-action-btn danger"
                            onClick={() => handleDeleteQuestion(question)}
                          >
                            Xóa
                          </button>
                        </div>
                      </td>
                    </tr>
                  ))
                ) : (
                  <tr>
                    <td colSpan={6} style={{ padding: "10px", textAlign: "center" }}>
                      Không có câu hỏi nào.
                    </td>
                  </tr>
                )}
              </tbody>
            </table>
          </div>

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
                  ),
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
