import { useState, useEffect, useMemo, useCallback } from "react";
import { useAuth } from "../../../../contexts/AuthContext";
import CreateChapter from "./CreateChapter";
import UpdateChapter from "./UpdateChapter";
import Questions from "./QuestionMana/Questions";
import "../../../../styles/AdminSide.css";

const API_URL =
  import.meta.env.VITE_API_URL ||
  import.meta.env.REACT_APP_API_URL ||
  `http://${window.location.hostname}:5001`;

const DEFAULT_PAGE_SIZE = 10;
const PAGE_SIZE_OPTIONS = [5, 10, 20, 50];
const toStatusLabel = (status) => (status === "Inactive" ? "Tạm khóa" : "Hoạt động");

const Chapters = ({ subject, onBackToSubjects }) => {
  const { token } = useAuth();
  const [currentView, setCurrentView] = useState("list");
  const [selectedChapter, setSelectedChapter] = useState(null);
  const [chapters, setChapters] = useState([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState("");
  const [currentPage, setCurrentPage] = useState(1);
  const [pageSize, setPageSize] = useState(DEFAULT_PAGE_SIZE);
  const [isCreateModalOpen, setIsCreateModalOpen] = useState(false);
  const [isUpdateModalOpen, setIsUpdateModalOpen] = useState(false);

  const fetchChapters = useCallback(async () => {
    if (!token) {
      setError("Phiên đăng nhập đã hết hạn.");
      setLoading(false);
      return;
    }

    if (!subject?.id) {
      setError("Không tìm thấy thông tin môn học.");
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

      const fetchedChapters = Array.isArray(payload)
        ? payload
        : Array.isArray(payload?.chapters)
          ? payload.chapters
          : [];

      const sortedChapters = [...fetchedChapters].sort((a, b) => {
        if (Number(a.order_index) === Number(b.order_index)) {
          return Number(a.id) - Number(b.id);
        }
        return Number(a.order_index) - Number(b.order_index);
      });
      setChapters(sortedChapters);
    } catch (err) {
      setError(err.message || "Có lỗi xảy ra khi tải danh sách chương.");
    } finally {
      setLoading(false);
    }
  }, [token, subject?.id]);

  useEffect(() => {
    if (currentView === "list") {
      fetchChapters();
    }
  }, [fetchChapters, currentView]);

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

  const handleGoToUpdate = (chapter) => {
    setSelectedChapter(chapter);
    setIsUpdateModalOpen(true);
  };

  const handleGoToQuestions = (chapter) => {
    setSelectedChapter(chapter);
    setCurrentView("questions");
  };

  const handleDeleteChapter = async (chapter) => {
    if (!token) {
      setError("Phiên đăng nhập đã hết hạn.");
      return;
    }

    const confirmed = window.confirm(
      `Bạn có chắc chắn muốn xóa chương "${chapter.chapter_name}"? Tất cả câu hỏi liên quan sẽ bị xóa.`,
    );
    if (!confirmed) return;

    try {
      const response = await fetch(`${API_URL}/subjects/${subject.id}/chapters/${chapter.id}`, {
        method: "DELETE",
        headers: {
          Authorization: `Bearer ${token}`,
        },
      });

      const payload = await response.json().catch(() => null);
      if (!response.ok) {
        throw new Error(payload?.message || "Không thể xóa chương.");
      }

      await fetchChapters();
    } catch (err) {
      window.alert(err.message || "Có lỗi xảy ra khi xóa chương.");
    }
  };

  const handleBackToList = () => {
    setSelectedChapter(null);
    setCurrentView("list");
  };

  if (currentView === "questions") {
    return <Questions chapter={selectedChapter} subject={subject} onBackToChapters={handleBackToList} />;
  }

  return (
    <section className="user-list">
      {isCreateModalOpen && (
        <CreateChapter
          subject={subject}
          onClose={() => setIsCreateModalOpen(false)}
          onRefresh={fetchChapters}
        />
      )}

      {isUpdateModalOpen && selectedChapter && (
        <UpdateChapter
          subject={subject}
          chapterData={selectedChapter}
          onClose={() => {
            setIsUpdateModalOpen(false);
            setSelectedChapter(null);
          }}
          onRefresh={fetchChapters}
        />
      )}

      <button type="button" className="admin-back-btn" onClick={onBackToSubjects}>
        <i className="fa-solid fa-arrow-left" /> Trở về danh sách môn học
      </button>

      <div className="user-list-header">
        <h3>Danh sách chương {subject ? `- ${subject.subject_name}` : ""}</h3>
        <div style={{ display: "flex", gap: "10px" }}>
          <button
            type="button"
            className="admin-action-btn success"
            onClick={() => setIsCreateModalOpen(true)}
          >
            + Thêm chương
          </button>
          <button className="red-btn" type="button" onClick={fetchChapters} disabled={loading}>
            Tải lại
          </button>
        </div>
      </div>

      <div className="user-list-controls">
        <span>Tổng chương: {totalChapters}</span>
        <label htmlFor="chapters-page-size">
          Hiển thị
          <select id="chapters-page-size" value={pageSize} onChange={handlePageSizeChange}>
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
                  <th style={{ padding: "10px", width: "10%" }}>ID</th>
                  <th style={{ padding: "10px", width: "14%" }}>Thứ tự</th>
                  <th style={{ padding: "10px" }}>Tên chương</th>
                  <th style={{ padding: "10px", width: "16%" }}>Trạng thái</th>
                  <th style={{ padding: "10px", width: "34%" }}>Hành động</th>
                </tr>
              </thead>
              <tbody style={{ color: "#080000" }}>
                {paginatedChapters.length > 0 ? (
                  paginatedChapters.map((chapter) => (
                    <tr key={chapter.id} style={{ borderBottom: "1px solid #ddd" }}>
                      <td style={{ padding: "10px" }}>{chapter.id}</td>
                      <td style={{ padding: "10px" }}>{chapter.order_index}</td>
                      <td style={{ padding: "10px" }}>
                        <strong>{chapter.chapter_name}</strong>
                      </td>
                      <td style={{ padding: "10px" }}>{toStatusLabel(chapter.status)}</td>
                      <td style={{ padding: "10px" }}>
                        <div className="table-actions">
                          <button
                            type="button"
                            className="admin-action-btn info"
                            onClick={() => handleGoToQuestions(chapter)}
                          >
                            Quản lý câu hỏi
                          </button>
                          <button
                            type="button"
                            className="admin-action-btn warning"
                            onClick={() => handleGoToUpdate(chapter)}
                          >
                            Sửa
                          </button>
                          <button
                            type="button"
                            className="admin-action-btn danger"
                            onClick={() => handleDeleteChapter(chapter)}
                          >
                            Xóa
                          </button>
                        </div>
                      </td>
                    </tr>
                  ))
                ) : (
                  <tr>
                    <td colSpan={5} style={{ padding: "10px", textAlign: "center" }}>
                      Không có chương nào.
                    </td>
                  </tr>
                )}
              </tbody>
            </table>
          </div>

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

export default Chapters;
