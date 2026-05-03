import express from "express";
import db from "../config/db.js";
import {
  getAllSubjects,
  getSubjectById,
  createSubject,
  updateSubject,
  deleteSubject,
} from "../controllers/subjectController.js";
import { authenticateToken, authorize } from "../middleware/auth.js";

const router = express.Router();

const normalizeStatus = (status) =>
  status === "Inactive" ? "Inactive" : "Active";

const validateQuestionPayload = (payload) => {
  const content =
    typeof payload?.content === "string" ? payload.content.trim() : "";
  const explanation =
    typeof payload?.explanation === "string" ? payload.explanation.trim() : "";
  const status = normalizeStatus(payload?.status);
  const rawAnswers = Array.isArray(payload?.answers) ? payload.answers : [];

  if (!content) {
    return { isValid: false, message: "Nội dung câu hỏi là bắt buộc" };
  }

  if (rawAnswers.length !== 4) {
    return { isValid: false, message: "Mỗi câu hỏi phải có đúng 4 đáp án" };
  }

  const answers = rawAnswers.map((answer) => ({
    content: typeof answer?.content === "string" ? answer.content.trim() : "",
    is_correct: Boolean(answer?.is_correct),
  }));

  if (answers.some((answer) => !answer.content)) {
    return {
      isValid: false,
      message: "Vui lòng nhập nội dung cho đầy đủ 4 đáp án",
    };
  }

  const correctCount = answers.filter((answer) => answer.is_correct).length;
  if (correctCount !== 1) {
    return { isValid: false, message: "Cần chọn đúng 1 đáp án chính xác" };
  }

  return {
    isValid: true,
    data: {
      content,
      explanation,
      status,
      answers,
    },
  };
};

const mapQuestionRows = (rows) => {
  const map = {};
  const result = [];

  for (const row of rows) {
    if (!map[row.question_id]) {
      map[row.question_id] = {
        id: row.question_id,
        content: row.question_content,
        explanation: row.question_explanation,
        status: row.status,
        answers: [],
      };
      result.push(map[row.question_id]);
    }

    if (row.answer_id) {
      map[row.question_id].answers.push({
        id: row.answer_id,
        content: row.answer_content,
        is_correct: Boolean(row.is_correct),
      });
    }
  }

  return result;
};

// ==================== SUBJECTS ====================
router.get("/", authenticateToken, getAllSubjects);
router.post("/", authenticateToken, authorize("Admin"), createSubject);
router.get("/:id", authenticateToken, getSubjectById);
router.put("/:id", authenticateToken, authorize("Admin"), updateSubject);
router.delete("/:id", authenticateToken, authorize("Admin"), deleteSubject);

// ==================== CHAPTERS ====================
router.get("/:id/chapters", authenticateToken, async (req, res) => {
  try {
    const { id: subjectId } = req.params;
    const role = req.user.role;

    const [rows] = await db.execute(
      `
      SELECT
        c.id,
        c.chapter_name,
        c.order_index,
        c.status,
        c.subject_id,
        s.subject_name
      FROM Chapters c
      INNER JOIN Subjects s ON c.subject_id = s.id -- Dùng INNER JOIN để kiểm tra trạng thái môn học
      WHERE c.subject_id = ?
        AND (
          ? = 'Admin' -- Nếu là Admin thì luôn thấy tất cả
          OR (c.status = 'Active' AND s.status = 'Active') -- Nếu là User, chỉ hiện khi cả 2 đều Active[cite: 3]
        )
      ORDER BY c.order_index ASC, c.id ASC
      `,
      [subjectId, role],
    );
    res.json(rows);
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
});

router.post("/:id/chapters", authenticateToken, authorize("Admin"), async (req, res) => {
    try {
      const { id: subjectId } = req.params;
      const chapterName =
        typeof req.body?.chapter_name === "string"
          ? req.body.chapter_name.trim()
          : "";
      const orderIndex = Number.parseInt(req.body?.order_index, 10) || 0;
      const status = normalizeStatus(req.body?.status);

      if (!chapterName) {
        return res.status(400).json({ message: "chapter_name is required" });
      }

      const [result] = await db.execute(
        "INSERT INTO Chapters (chapter_name, order_index, subject_id, status) VALUES (?, ?, ?, ?)",
        [chapterName, orderIndex, subjectId, status],
      );
      res.status(201).json({
        message: "Chapter created successfully",
        chapterId: result.insertId,
      });
    } catch (error) {
      res.status(500).json({ message: error.message });
    }
  },
);

router.put( "/:id/chapters/:chapterId", authenticateToken, authorize("Admin"), async (req, res) => {
    try {
      const { id: subjectId, chapterId } = req.params;
      const chapterName =
        typeof req.body?.chapter_name === "string"
          ? req.body.chapter_name.trim()
          : "";
      const orderIndex = Number.parseInt(req.body?.order_index, 10) || 0;
      const status = normalizeStatus(req.body?.status);

      if (!chapterName) {
        return res.status(400).json({ message: "Tên chương là bắt buộc" });
      }

      const [result] = await db.execute(
        "UPDATE Chapters SET chapter_name = ?, order_index = ?, status = ? WHERE id = ? AND subject_id = ?",
        [chapterName, orderIndex, status, chapterId, subjectId],
      );

      if (result.affectedRows === 0) {
        return res.status(404).json({ message: "Không tìm thấy chương" });
      }

      res.json({ message: "Chapter updated successfully" });
    } catch (error) {
      res.status(500).json({ message: error.message });
    }
  },
);

router.delete( "/:id/chapters/:chapterId", authenticateToken, authorize("Admin"), async (req, res) => {
    try {
      const { id: subjectId, chapterId } = req.params;
      const [result] = await db.execute(
        "DELETE FROM Chapters WHERE id = ? AND subject_id = ?",
        [chapterId, subjectId],
      );

      if (result.affectedRows === 0) {
        return res.status(404).json({ message: "Không tìm thấy chương" });
      }

      res.json({ message: "Chapter deleted successfully" });
    } catch (error) {
      res.status(500).json({ message: error.message });
    }
  },
);

// ==================== QUESTIONS ====================
router.get(
  "/:id/chapters/:chapterId/questions",
  authenticateToken,
  async (req, res) => {
    try {
      const { id: subjectId, chapterId: chapterPk } = req.params;
      const role = req.user.role;

      const [rows] = await db.execute(
        `
      SELECT 
        q.id AS question_id,
        q.content AS question_content,
        q.status,
        a.id AS answer_id,
        a.content AS answer_content,
        a.is_correct
      FROM questions q
      INNER JOIN chapters c ON q.chapter_id = c.order_index AND q.subject_id = c.subject_id
      INNER JOIN subjects s ON c.subject_id = s.id 
      LEFT JOIN answers a ON q.id = a.question_id
      WHERE c.id = ? AND c.subject_id = ?
        AND (
          ? = 'Admin'
          OR (q.status = 'Active' AND c.status = 'Active' AND s.status = 'Active')
        )
    `,
        [chapterPk, subjectId, role],
      );

      if (rows.length === 0) return res.json([]);

      const result = mapQuestionRows(rows);
      res.json(result);
    } catch (error) {
      console.error("Lỗi lấy câu hỏi:", error.message);
      res.status(500).json({ message: error.message });
    }
});

router.post( "/:id/chapters/:chapterId/questions", authenticateToken, authorize("Admin"), async (req, res) => {
    const { id: subjectId, chapterId } = req.params;
    const validated = validateQuestionPayload(req.body);
    if (!validated.isValid) {
      return res.status(400).json({ message: validated.message });
    }

    const connection = await db.getConnection();
    try {
      await connection.beginTransaction();

      const { content, explanation, status, answers } = validated.data;
      const authorId = req.user.id;

      const [questionResult] = await connection.execute(
        "INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id) VALUES (?, ?, ?, ?, ?, ?)",
        [content, explanation, status, authorId, chapterId, subjectId],
      );

      for (const answer of answers) {
        await connection.execute(
          "INSERT INTO Answers (content, is_correct, question_id) VALUES (?, ?, ?)",
          [answer.content, answer.is_correct ? 1 : 0, questionResult.insertId],
        );
      }

      await connection.commit();
      res.status(201).json({
        message: "Question created successfully",
        questionId: questionResult.insertId,
      });
    } catch (error) {
      await connection.rollback();
      res.status(500).json({ message: error.message });
    } finally {
      connection.release();
    }
  },
);

router.get("/:id/chapters/:chapterId/questions/:questionId", authenticateToken, async (req, res) => {
    try {
      const { id: subjectId, chapterId, questionId } = req.params;
      const [rows] = await db.execute(
        `
      SELECT
        q.id AS question_id,
        q.content AS question_content,
        q.explanation AS question_explanation,
        q.status,
        a.id AS answer_id,
        a.content AS answer_content,
        a.is_correct
      FROM Questions q
      LEFT JOIN Answers a ON q.id = a.question_id
      WHERE q.id = ? AND q.subject_id = ? AND q.chapter_id = ?
      ORDER BY a.id ASC
      `,
        [questionId, subjectId, chapterId],
      );

      if (rows.length === 0) {
        return res.status(404).json({ message: "Không tìm thấy câu hỏi" });
      }

      const mapped = mapQuestionRows(rows);
      res.json(mapped[0]);
    } catch (error) {
      res.status(500).json({ message: error.message });
    }
  },
);

router.put("/:id/chapters/:chapterId/questions/:questionId", authenticateToken, authorize("Admin"), async (req, res) => {
    const { id: subjectId, chapterId, questionId } = req.params;
    const validated = validateQuestionPayload(req.body);
    if (!validated.isValid) {
      return res.status(400).json({ message: validated.message });
    }

    const connection = await db.getConnection();
    try {
      await connection.beginTransaction();

      const { content, explanation, status, answers } = validated.data;
      const [updateResult] = await connection.execute(
        "UPDATE Questions SET content = ?, explanation = ?, status = ? WHERE id = ? AND subject_id = ? AND chapter_id = ?",
        [content, explanation, status, questionId, subjectId, chapterId],
      );

      if (updateResult.affectedRows === 0) {
        await connection.rollback();
        return res.status(404).json({ message: "Không tìm thấy câu hỏi" });
      }

      await connection.execute("DELETE FROM Answers WHERE question_id = ?", [
        questionId,
      ]);
      for (const answer of answers) {
        await connection.execute(
          "INSERT INTO Answers (content, is_correct, question_id) VALUES (?, ?, ?)",
          [answer.content, answer.is_correct ? 1 : 0, questionId],
        );
      }

      await connection.commit();
      res.json({ message: "Question updated successfully" });
    } catch (error) {
      await connection.rollback();
      res.status(500).json({ message: error.message });
    } finally {
      connection.release();
    }
  },
);

router.delete( "/:id/chapters/:chapterId/questions/:questionId", authenticateToken, authorize("Admin"), async (req, res) => {
    try {
      const { id: subjectId, chapterId, questionId } = req.params;
      const [result] = await db.execute(
        "DELETE FROM Questions WHERE id = ? AND subject_id = ? AND chapter_id = ?",
        [questionId, subjectId, chapterId],
      );

      if (result.affectedRows === 0) {
        return res.status(404).json({ message: "Không tìm thấy câu hỏi" });
      }

      res.json({ message: "Question deleted successfully" });
    } catch (error) {
      res.status(500).json({ message: error.message });
    }
  },
);

export default router;
