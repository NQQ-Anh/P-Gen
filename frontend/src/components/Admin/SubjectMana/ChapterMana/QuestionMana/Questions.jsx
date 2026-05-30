import { useState, useEffect, useMemo, useCallback } from "react";
import { useAuth } from "../../../../../contexts/AuthContext";
import CreateQuestion from "./CreateQuestion";
import UpdateQuestion from "./UpdateQuestion";
import "../../../../../styles/AdminSide.css";

const API_BASE =
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
  const [searchTerm, setSearchTerm] = useState("");
  const [selectedStatus, setSelectedStatus] = useState("all");
  const [isCreateModalOpen, setIsCreateModalOpen] = useState(false);
  const [isUpdateModalOpen, setIsUpdateModalOpen] = useState(false);
  const [selectedQuestion, setSelectedQuestion] = useState(null);

  const fetchQuestions = useCallback(async () => {
    if (!token) {
      setError("Phiên đăng nhập đã hết hạn");
      setLoading(false);
      return;
    }

    if (!subject?.id || !chapter?.id) {
      setError("Không tìm thấy thông tin môn và chương.");
      setLoading(false);
      return;
    }

    try {
      setLoading(true);
      setError("");

      const response = await fetch(
        `${API_BASE}/subjects/${subject.id}/chapters/${chapter.id}/questions`,
        {
          headers: {
            Authorization: `Bearer ${token}`,
          },
        },
      );

      const payload = await response.json().catch(() => null);
      if (!response.ok) {
        throw new Error(payload?.message || "Không thể tải danh sách câu hỏi");
      }

      const fetchedQuestions = Array.isArray(payload)
        ? payload
        : Array.isArray(payload?.questions)
          ? payload.questions
          : [];

      const sortedQuestions = [...fetchedQuestions].sort((a, b) => Number(a.id) - Number(b.id));
      setQuestions(sortedQuestions);
    } catch (err) {
      setError(err.message || "Có lỗi xảy ra khi tải câu hỏi");
    } finally {
      setLoading(false);
    }
  }, [token, subject?.id, chapter?.id]);

  useEffect(() => {
    fetchQuestions();
  }, [fetchQuestions]);

  const filteredQuestions = useMemo(() => {
    const normalizedSearch = searchTerm.trim().toLowerCase();

    return questions.filter((question) => {
      const statusMatched = selectedStatus === "all" || question.status === selectedStatus;
      if (!statusMatched) return false;

      if (!normalizedSearch) return true;

      const searchableText = `${question.id} ${question.content} ${question.explanation || ""}`
        .toLowerCase();
      return searchableText.includes(normalizedSearch);
    });
  }, [questions, searchTerm, selectedStatus]);

  const totalQuestions = filteredQuestions.length;
  const totalPages = Math.max(1, Math.ceil(totalQuestions / pageSize));

  useEffect(() => {
    if (currentPage > totalPages) {
      setCurrentPage(totalPages);
    }
  }, [currentPage, totalPages]);

  useEffect(() => {
    setCurrentPage(1);
  }, [searchTerm, selectedStatus]);

  const paginatedQuestions = useMemo(() => {
    const start = (currentPage - 1) * pageSize;
    return filteredQuestions.slice(start, start + pageSize);
  }, [filteredQuestions, currentPage, pageSize]);

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

  const handleClearFilters = () => {
    setSearchTerm("");
    setSelectedStatus("all");
  };

  const handleGoToUpdate = (question) => {
    setSelectedQuestion(question);
    setIsUpdateModalOpen(true);
  };

  // const handleDeleteQuestion = async (question) => {
  //   if (!token) {
  //     setError("Phien dang nhap da het han.");
  //     return;
  //   }

  //   const confirmed = window.confirm(
  //     `Ban co chac chan muon xoa cau hoi ID ${question.id}? Hanh dong nay khong the hoan tac.`,
  //   );
  //   if (!confirmed) return;

  //   try {
  //     const response = await fetch(
  //       `${API_BASE}/subjects/${subject.id}/chapters/${chapter.id}/questions/${question.id}`,
  //       {
  //         method: "DELETE",
  //         headers: {
  //           Authorization: `Bearer ${token}`,
  //         },
  //       },
  //     );

  //     const payload = await response.json().catch(() => null);
  //     if (!response.ok) {
  //       throw new Error(payload?.message || "Khong the xoa cau hoi.");
  //     }

  //     await fetchQuestions();
  //   } catch (err) {
  //     window.alert(err.message || "Co loi xay ra khi xoa cau hoi.");
  //   }
  // };

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
        <span>Tổng số câu hỏi : {totalQuestions}/{questions.length}</span>
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

      <div className="table-filters">
        <label htmlFor="questions-search" className="table-filter-search">
          Tìm kiếm
          <input
            id="questions-search"
            type="search"
            value={searchTerm}
            onChange={(event) => setSearchTerm(event.target.value)}
            placeholder="ID, nội dung, giải thích"
          />
        </label>

        <label htmlFor="questions-status-filter">
          Trạng thái
          <select
            id="questions-status-filter"
            value={selectedStatus}
            onChange={(event) => setSelectedStatus(event.target.value)}
          >
            <option value="all">Tất cả</option>
            <option value="Active">Hoạt động</option>
            <option value="Inactive">Tạm khóa</option>
          </select>
        </label>

        <button
          type="button"
          className="admin-action-btn secondary filter-reset-btn"
          onClick={handleClearFilters}
          disabled={!searchTerm && selectedStatus === "all"}
        >
          Hủy lọc
        </button>
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
                            className="admin-action-btn warning table-action-icon"
                            onClick={() => handleGoToUpdate(question)}
                            title="Sửa"
                            aria-label="Sua cau hoi"
                          >
                            <i className="fa-solid fa-pen-to-square" />
                          </button>
                          {/* <button
                            type="button"
                            className="admin-action-btn danger table-action-icon"
                            onClick={() => handleDeleteQuestion(question)}
                            title="Xoa"
                            aria-label="Xoa cau hoi"
                          >
                            <i className="fa-solid fa-trash" />
                          </button> */}
                        </div>
                      </td>
                    </tr>
                  ))
                ) : (
                  <tr>
                    <td colSpan={6} style={{ padding: "10px", textAlign: "center" }}>
                      Không có câu hỏi phù hợp
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
