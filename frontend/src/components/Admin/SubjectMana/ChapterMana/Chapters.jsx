import { useState, useEffect, useMemo, useCallback } from "react";
import { useAuth } from "../../../../contexts/AuthContext";
import CreateChapter from "./CreateChapter";
import UpdateChapter from "./UpdateChapter";
import Questions from "./QuestionMana/Questions";
import "../../../../styles/AdminSide.css";

const API_BASE =
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
  const [searchTerm, setSearchTerm] = useState("");
  const [selectedStatus, setSelectedStatus] = useState("all");
  const [isCreateModalOpen, setIsCreateModalOpen] = useState(false);
  const [isUpdateModalOpen, setIsUpdateModalOpen] = useState(false);

  const fetchChapters = useCallback(async () => {
    if (!token) {
      setError("Phiên đăng nhập đã hết hạn");
      setLoading(false);
      return;
    }

    if (!subject?.id) {
      setError("Không tìm thấy thông tin môn học");
      setLoading(false);
      return;
    }

    try {
      setLoading(true);
      setError("");

      const response = await fetch(`${API_BASE}/subjects/${subject.id}/chapters`, {
        headers: {
          Authorization: `Bearer ${token}`,
        },
      });

      const payload = await response.json().catch(() => null);
      if (!response.ok) {
        throw new Error(payload?.message || "Không thể tải danh sách chương");
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
      setError(err.message || "Có lỗi khi tải danh sách chương");
    } finally {
      setLoading(false);
    }
  }, [token, subject?.id]);

  useEffect(() => {
    if (currentView === "list") {
      fetchChapters();
    }
  }, [fetchChapters, currentView]);

  const filteredChapters = useMemo(() => {
    const normalizedSearch = searchTerm.trim().toLowerCase();

    return chapters.filter((chapter) => {
      const statusMatched = selectedStatus === "all" || chapter.status === selectedStatus;
      if (!statusMatched) return false;

      if (!normalizedSearch) return true;

      const searchableText = `${chapter.id} ${chapter.order_index} ${chapter.chapter_name}`
        .toLowerCase();
      return searchableText.includes(normalizedSearch);
    });
  }, [chapters, searchTerm, selectedStatus]);

  const totalChapters = filteredChapters.length;
  const totalPages = Math.max(1, Math.ceil(totalChapters / pageSize));

  useEffect(() => {
    if (currentPage > totalPages) {
      setCurrentPage(totalPages);
    }
  }, [currentPage, totalPages]);

  useEffect(() => {
    setCurrentPage(1);
  }, [searchTerm, selectedStatus]);

  const paginatedChapters = useMemo(() => {
    const start = (currentPage - 1) * pageSize;
    return filteredChapters.slice(start, start + pageSize);
  }, [filteredChapters, currentPage, pageSize]);

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

  const handleGoToUpdate = (chapter) => {
    setSelectedChapter(chapter);
    setIsUpdateModalOpen(true);
  };

  const handleGoToQuestions = (chapter) => {
    setSelectedChapter(chapter);
    setCurrentView("questions");
  };

  // const handleDeleteChapter = async (chapter) => {
  //   if (!token) {
  //     setError("Phien dang nhap da het han.");
  //     return;
  //   }

  //   const confirmed = window.confirm(
  //     `Ban co chac chan muon xoa chuong "${chapter.chapter_name}"? Tat ca cau hoi lien quan se bi xoa.`,
  //   );
  //   if (!confirmed) return;

  //   try {
  //     const response = await fetch(`${API_BASE}/subjects/${subject.id}/chapters/${chapter.id}`, {
  //       method: "DELETE",
  //       headers: {
  //         Authorization: `Bearer ${token}`,
  //       },
  //     });

  //     const payload = await response.json().catch(() => null);
  //     if (!response.ok) {
  //       throw new Error(payload?.message || "Khong the xoa chuong.");
  //     }

  //     await fetchChapters();
  //   } catch (err) {
  //     window.alert(err.message || "Co loi xay ra khi xoa chuong.");
  //   }
  // };

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
        <span>Tổng số chương : {totalChapters}/{chapters.length}</span>
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

      <div className="table-filters">
        <label htmlFor="chapters-search" className="table-filter-search">
          Tìm kiếm
          <input
            id="chapters-search"
            type="search"
            value={searchTerm}
            onChange={(event) => setSearchTerm(event.target.value)}
            placeholder="ID, tên chương"
          />
        </label>

        <label htmlFor="chapters-status-filter">
          Trạng thái
          <select
            id="chapters-status-filter"
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
                            className="admin-action-btn info table-action-icon"
                            onClick={() => handleGoToQuestions(chapter)}
                            title="Danh sách câu hỏi"
                            aria-label="Quan ly cau hoi"
                          >
                            <i className="fa-solid fa-circle-question" />
                          </button>
                          <button
                            type="button"
                            className="admin-action-btn warning table-action-icon"
                            onClick={() => handleGoToUpdate(chapter)}
                            title="Sửa"
                            aria-label="Sua chuong"
                          >
                            <i className="fa-solid fa-pen-to-square" />
                          </button>
                          {/* <button
                            type="button"
                            className="admin-action-btn danger table-action-icon"
                            onClick={() => handleDeleteChapter(chapter)}
                            title="Xoa"
                            aria-label="Xoa chuong"
                          >
                            <i className="fa-solid fa-trash" />
                          </button> */}
                        </div>
                      </td>
                    </tr>
                  ))
                ) : (
                  <tr>
                    <td colSpan={5} style={{ padding: "10px", textAlign: "center" }}>
                      Không có chương phù hợp
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
