import { useState, useEffect, useMemo, useCallback } from "react";
import { useAuth } from "../../../contexts/AuthContext";
import CreateSubject from "./CreateSubject";
import UpdateSubject from "./UpdateSubject";
import Chapters from "./ChapterMana/Chapters";
import "../../../styles/AdminSide.css";

const API_URL =
  import.meta.env.VITE_API_URL ||
  import.meta.env.REACT_APP_API_URL ||
  `http://${window.location.hostname}:5001`;

const DEFAULT_PAGE_SIZE = 10;
const PAGE_SIZE_OPTIONS = [5, 10, 20, 50];
const toStatusLabel = (status) => (status === "Inactive" ? "Tạm khóa" : "Hoạt động");

const Subjects = () => {
  const { token } = useAuth();
  const [currentView, setCurrentView] = useState("list");
  const [selectedSubject, setSelectedSubject] = useState(null);
  const [subjects, setSubjects] = useState([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState("");
  const [currentPage, setCurrentPage] = useState(1);
  const [pageSize, setPageSize] = useState(DEFAULT_PAGE_SIZE);
  const [searchTerm, setSearchTerm] = useState("");
  const [selectedStatus, setSelectedStatus] = useState("all");
  const [isCreateModalOpen, setIsCreateModalOpen] = useState(false);
  const [isUpdateModalOpen, setIsUpdateModalOpen] = useState(false);

  const fetchSubjects = useCallback(async () => {
    if (!token) {
      setError("Phiên đăng nhập đã hết hạn");
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
        throw new Error(payload?.message || "Không thể tải danh sách môn học");
      }

      const fetchedSubjects = Array.isArray(payload)
        ? payload
        : Array.isArray(payload?.subjects)
          ? payload.subjects
          : [];

      const sortedSubjects = [...fetchedSubjects].sort((a, b) => Number(a.id) - Number(b.id));
      setSubjects(sortedSubjects);
    } catch (err) {
      setError(err.message || "Có lỗi xảy ra");
    } finally {
      setLoading(false);
    }
  }, [token]);

  useEffect(() => {
    if (currentView === "list") {
      fetchSubjects();
    }
  }, [fetchSubjects, currentView]);

  const filteredSubjects = useMemo(() => {
    const normalizedSearch = searchTerm.trim().toLowerCase();

    return subjects.filter((subject) => {
      const statusMatched = selectedStatus === "all" || subject.status === selectedStatus;
      if (!statusMatched) return false;

      if (!normalizedSearch) return true;

      const searchableText = `${subject.id} ${subject.subject_name} ${subject.description || ""}`
        .toLowerCase();
      return searchableText.includes(normalizedSearch);
    });
  }, [subjects, searchTerm, selectedStatus]);

  const totalSubjects = filteredSubjects.length;
  const totalPages = Math.max(1, Math.ceil(totalSubjects / pageSize));

  useEffect(() => {
    if (currentPage > totalPages) {
      setCurrentPage(totalPages);
    }
  }, [currentPage, totalPages]);

  useEffect(() => {
    setCurrentPage(1);
  }, [searchTerm, selectedStatus]);

  const paginatedSubjects = useMemo(() => {
    const start = (currentPage - 1) * pageSize;
    return filteredSubjects.slice(start, start + pageSize);
  }, [filteredSubjects, currentPage, pageSize]);

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

  const handleGoToCreate = () => setIsCreateModalOpen(true);

  const handleGoToUpdate = (subject) => {
    setSelectedSubject(subject);
    setIsUpdateModalOpen(true);
  };

  const handleGoToChapters = (subject) => {
    setSelectedSubject(subject);
    setCurrentView("chapters");
  };

  // const handleDeleteSubject = async (subject) => {
  //   if (!token) {
  //     setError("Phien dang nhap da het han.");
  //     return;
  //   }

  //   const confirmed = window.confirm(
  //     `Ban co chac chan muon xoa mon "${subject.subject_name}"? Tat ca chuong/cau hoi lien quan se bi xoa.`,
  //   );
  //   if (!confirmed) return;

  //   try {
  //     const response = await fetch(`${API_URL}/subjects/${subject.id}`, {
  //       method: "DELETE",
  //       headers: {
  //         Authorization: `Bearer ${token}`,
  //       },
  //     });

  //     const payload = await response.json().catch(() => null);
  //     if (!response.ok) {
  //       throw new Error(payload?.message || "Khong the xoa mon hoc.");
  //     }

  //     await fetchSubjects();
  //   } catch (err) {
  //     window.alert(err.message || "Co loi xay ra khi xoa mon hoc.");
  //   }
  // };

  const handleBackToList = () => {
    setSelectedSubject(null);
    setCurrentView("list");
  };

  if (currentView === "chapters") {
    return <Chapters subject={selectedSubject} onBackToSubjects={handleBackToList} />;
  }

  return (
    <section className="user-list">
      {isCreateModalOpen && (
        <CreateSubject onClose={() => setIsCreateModalOpen(false)} onRefresh={fetchSubjects} />
      )}

      {isUpdateModalOpen && selectedSubject && (
        <UpdateSubject
          subjectData={selectedSubject}
          onClose={() => {
            setIsUpdateModalOpen(false);
            setSelectedSubject(null);
          }}
          onRefresh={fetchSubjects}
        />
      )}

      <div className="user-list-header">
        <h3>Danh sách môn học</h3>
        <div style={{ display: "flex", gap: "10px" }}>
          <button type="button" className="admin-action-btn success" onClick={handleGoToCreate}>
            + Thêm môn học
          </button>
          <button className="red-btn" type="button" onClick={fetchSubjects} disabled={loading}>
            Tải lại
          </button>
        </div>
      </div>

      <div className="user-list-controls">
        <span>Tổng số môn học : {totalSubjects}/{subjects.length}</span>
        <label htmlFor="subjects-page-size">
          Hiển thị
          <select id="subjects-page-size" value={pageSize} onChange={handlePageSizeChange}>
            {PAGE_SIZE_OPTIONS.map((size) => (
              <option key={size} value={size}>
                {size} / trang
              </option>
            ))}
          </select>
        </label>
      </div>

      <div className="table-filters">
        <label htmlFor="subjects-search" className="table-filter-search">
          Tìm kiếm
          <input
            id="subjects-search"
            type="search"
            value={searchTerm}
            onChange={(event) => setSearchTerm(event.target.value)}
            placeholder="ID, tên môn, mô tả"
          />
        </label>

        <label htmlFor="subjects-status-filter">
          Trạng thái
          <select
            id="subjects-status-filter"
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
          Xoa loc
        </button>
      </div>

      {loading && <p>Đang tải danh sách môn học...</p>}
      {!loading && error && <p className="user-error">{error}</p>}

      {!loading && !error && (
        <>
          <div className="table-responsive">
            <table style={{ width: "100%", borderCollapse: "collapse" }}>
              <thead style={{ backgroundColor: "#f0f0f0" }}>
                <tr style={{ color: "black", textAlign: "left" }}>
                  <th className="col-id" style={{ padding: "10px" }}>
                    ID
                  </th>
                  <th style={{ padding: "10px" }}>Tên môn</th>
                  <th style={{ padding: "10px" }}>Mô tả</th>
                  <th style={{ padding: "10px" }}>Trạng thái</th>
                  <th style={{ padding: "10px" }}>Hành động</th>
                </tr>
              </thead>
              <tbody style={{ color: "#080000" }}>
                {paginatedSubjects.length > 0 ? (
                  paginatedSubjects.map((subject) => (
                    <tr key={subject.id} style={{ borderBottom: "1px solid #ddd" }}>
                      <td style={{ padding: "10px" }}>{subject.id}</td>
                      <td style={{ padding: "10px" }}>
                        <strong>{subject.subject_name}</strong>
                      </td>
                      <td style={{ padding: "10px" }}>{subject.description || "-"}</td>
                      <td style={{ padding: "10px" }}>{toStatusLabel(subject.status)}</td>
                      <td style={{ padding: "10px" }}>
                        <div className="table-actions">
                          <button
                            type="button"
                            className="admin-action-btn info table-action-icon"
                            onClick={() => handleGoToChapters(subject)}
                            title="Quan ly chuong"
                            aria-label="Quan ly chuong"
                          >
                            <i className="fa-solid fa-list" />
                          </button>
                          <button
                            type="button"
                            className="admin-action-btn warning table-action-icon"
                            onClick={() => handleGoToUpdate(subject)}
                            title="Sua"
                            aria-label="Sua mon hoc"
                          >
                            <i className="fa-solid fa-pen-to-square" />
                          </button>
                          {/* <button
                            type="button"
                            className="admin-action-btn danger table-action-icon"
                            onClick={() => handleDeleteSubject(subject)}
                            title="Xoa"
                            aria-label="Xoa mon hoc"
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
                      Khong co mon hoc phu hop.
                    </td>
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

export default Subjects;
