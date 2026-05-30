import { useState } from "react";
import { useAuth } from "../../../../../contexts/AuthContext";

const API_BASE =
  import.meta.env.VITE_API_URL ||
  import.meta.env.REACT_APP_API_URL ||
  `http://${window.location.hostname}:5001`;

const DEFAULT_ANSWERS = [
  { content: "", is_correct: true },
  { content: "", is_correct: false },
  { content: "", is_correct: false },
  { content: "", is_correct: false },
];

const CreateQuestion = ({ subject, chapter, onClose, onRefresh }) => {
  const { token } = useAuth();
  const [formData, setFormData] = useState({
    content: "",
    explanation: "",
    status: "Active",
  });
  const [answers, setAnswers] = useState(DEFAULT_ANSWERS);
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState("");

  const handleChange = (event) => {
    const { name, value } = event.target;
    setFormData((prev) => ({ ...prev, [name]: value }));
  };

  const handleAnswerContentChange = (index, value) => {
    setAnswers((prev) =>
      prev.map((answer, answerIndex) =>
        answerIndex === index ? { ...answer, content: value } : answer,
      ),
    );
  };

  const handleCorrectAnswerChange = (index) => {
    setAnswers((prev) =>
      prev.map((answer, answerIndex) => ({
        ...answer,
        is_correct: answerIndex === index,
      })),
    );
  };

  const validatePayload = () => {
    const normalizedAnswers = answers.map((answer) => ({
      content: answer.content.trim(),
      is_correct: Boolean(answer.is_correct),
    }));

    if (normalizedAnswers.some((answer) => !answer.content)) {
      return { isValid: false, message: "Vui lòng nhập đầy đủ nội dung 4 đáp án." };
    }

    const correctCount = normalizedAnswers.filter((answer) => answer.is_correct).length;
    if (correctCount !== 1) {
      return { isValid: false, message: "Cần chọn đúng 1 đáp án chính xác." };
    }

    return { isValid: true, answers: normalizedAnswers };
  };

  const handleSubmit = async (event) => {
    event.preventDefault();

    if (!token) {
      setError("Phiên đăng nhập đã hết hạn.");
      return;
    }

    if (!subject?.id || !chapter?.id) {
      setError("Thiếu thông tin môn học hoặc chương học.");
      return;
    }

    const validated = validatePayload();
    if (!validated.isValid) {
      setError(validated.message);
      return;
    }

    setLoading(true);
    setError("");

    try {
      const response = await fetch(
        `${API_BASE}/subjects/${subject.id}/chapters/${chapter.id}/questions`,
        {
          method: "POST",
          headers: {
            "Content-Type": "application/json",
            Authorization: `Bearer ${token}`,
          },
          body: JSON.stringify({
            ...formData,
            answers: validated.answers,
          }),
        },
      );

      const payload = await response.json().catch(() => null);
      if (!response.ok) {
        throw new Error(payload?.message || "Không thể tạo câu hỏi.");
      }

      if (onRefresh) await onRefresh();
      onClose();
    } catch (err) {
      setError(err.message || "Có lỗi xảy ra, vui lòng thử lại.");
    } finally {
      setLoading(false);
    }
  };

  return (
    <div className="modal-overlay">
      <div className="modal-container modal-container-lg">
        <div className="modal-header">
          <h3>Thêm câu hỏi mới</h3>
          <button
            className="modal-close-btn"
            type="button"
            onClick={onClose}
            disabled={loading}
          >
            &times;
          </button>
        </div>

        {error && <p className="modal-error">{error}</p>}

        <form className="admin-form" onSubmit={handleSubmit}>
          <div className="admin-field">
            <label htmlFor="create-question-content">Nội dung câu hỏi *</label>
            <textarea
              id="create-question-content"
              name="content"
              value={formData.content}
              onChange={handleChange}
              rows={4}
              required
              disabled={loading}
            />
          </div>

          <div className="admin-field">
            <label htmlFor="create-question-explanation">Giải thích</label>
            <textarea
              id="create-question-explanation"
              name="explanation"
              value={formData.explanation}
              onChange={handleChange}
              rows={4}
              disabled={loading}
            />
          </div>

          <div className="admin-field">
            <label htmlFor="create-question-status">Trạng thái</label>
            <select
              id="create-question-status"
              name="status"
              value={formData.status}
              onChange={handleChange}
              disabled={loading}
            >
              <option value="Active">Hoạt động</option>
              <option value="Inactive">Tạm khóa</option>
            </select>
          </div>

          <div className="admin-field">
            <label>Đáp án (4 lựa chọn)</label>
            <div className="question-answer-list">
              {answers.map((answer, index) => (
                <div key={index} className="question-answer-row">
                  <span className="question-answer-label">{String.fromCharCode(65 + index)}.</span>
                  <input
                    type="text"
                    value={answer.content}
                    onChange={(event) => handleAnswerContentChange(index, event.target.value)}
                    placeholder={`Nhập đáp án ${String.fromCharCode(65 + index)}`}
                    disabled={loading}
                  />
                  <label className="question-answer-correct">
                    <input
                      type="radio"
                      name="create-correct-answer"
                      checked={answer.is_correct}
                      onChange={() => handleCorrectAnswerChange(index)}
                      disabled={loading}
                    />
                    Đúng
                  </label>
                </div>
              ))}
            </div>
          </div>

          <div className="admin-form-actions">
            <button
              type="button"
              className="admin-action-btn secondary"
              onClick={onClose}
              disabled={loading}
            >
              Hủy
            </button>
            <button type="submit" className="admin-action-btn success" disabled={loading}>
              {loading ? "Đang lưu..." : "Lưu câu hỏi"}
            </button>
          </div>
        </form>
      </div>
    </div>
  );
};

export default CreateQuestion;
