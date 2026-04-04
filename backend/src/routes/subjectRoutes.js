import express from 'express';
import db from '../config/db.js';
import { getAllSubjects, getSubjectById, createSubject, updateSubject, deleteSubject } from '../controllers/subjectController.js';
import { createChapter, updateChapter, deleteChapter } from '../controllers/chapterController.js';
import { createQuestion, updateQuestion, deleteQuestion } from '../controllers/questionController.js';
import { authenticateToken, authorize } from '../middleware/auth.js';

const router = express.Router();

// ==================== SUBJECTS ====================
// GET /subjects - Lấy tất cả subjects
router.get('/', authenticateToken, getAllSubjects);

// POST /subjects - Tạo subject mới (Admin)
router.post('/', authenticateToken, authorize('Admin'), createSubject);

// GET /subjects/:id - Lấy subject và chapters của nó
router.get('/:id', authenticateToken, getSubjectById);

// PUT /subjects/:id - Update subject (Admin)
router.put('/:id', authenticateToken, authorize('Admin'), updateSubject);

// DELETE /subjects/:id - Delete subject (Admin)
router.delete('/:id', authenticateToken, authorize('Admin'), deleteSubject);

// ==================== CHAPTERS ====================
// GET /subjects/:id/chapters - Lấy tất cả chapters của subject
router.get('/:id/chapters', authenticateToken, async (req, res) => {
  try {
    const { id: subjectId } = req.params;
    const [rows] = await db.execute(`
      SELECT
        c.id,
        c.chapter_name,
        c.order_index,
        c.subject_id,
        s.subject_name
      FROM Chapters c
      LEFT JOIN Subjects s ON c.subject_id = s.id
      WHERE c.subject_id = ?
    `, [subjectId]);
    res.json(rows);
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
});

// POST /subjects/:id/chapters - Tạo chapter mới cho subject (Admin)
router.post('/:id/chapters', authenticateToken, authorize('Admin'), async (req, res) => {
  try {
    const { id: subjectId } = req.params;
    const { chapter_name, order_index } = req.body;
    const [result] = await db.execute(
      'INSERT INTO Chapters (chapter_name, order_index, subject_id) VALUES (?, ?, ?)',
      [chapter_name, order_index, subjectId]
    );
    res.status(201).json({ message: 'Chapter created successfully', chapterId: result.insertId });
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
});

// PUT /subjects/:id/chapters/:chapterId - Update chapter (Admin)
router.put('/:id/chapters/:chapterId', authenticateToken, authorize('Admin'), async (req, res) => {
  try {
    const { id: subjectId, chapterId } = req.params;
    const { chapter_name, order_index } = req.body;
    await db.execute(
      'UPDATE Chapters SET chapter_name = ?, order_index = ? WHERE id = ? AND subject_id = ?',
      [chapter_name, order_index, chapterId, subjectId]
    );
    res.json({ message: 'Chapter updated successfully' });
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
});

// DELETE /subjects/:id/chapters/:chapterId - Delete chapter (Admin)
router.delete('/:id/chapters/:chapterId', authenticateToken, authorize('Admin'), async (req, res) => {
  try {
    const { id: subjectId, chapterId } = req.params;
    await db.execute('DELETE FROM Chapters WHERE id = ? AND subject_id = ?', [chapterId, subjectId]);
    res.json({ message: 'Chapter deleted successfully' });
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
});

// ==================== QUESTIONS ====================
// GET /subjects/:id/chapters/:chapterId/questions - Lấy tất cả questions của chapter
router.get('/:id/chapters/:chapterId/questions', authenticateToken, async (req, res) => {
  try {
    const { id: subjectId, chapterId } = req.params;
    const [rows] = await db.execute(`
      SELECT 
        q.id AS question_id,
        q.content AS question_content,
        a.id AS answer_id,
        a.content AS answer_content,
        a.is_correct
      FROM Questions q
      LEFT JOIN Answers a ON q.id = a.question_id
      WHERE q.subject_id = ? AND q.chapter_id = ?
    `, [subjectId, chapterId]);

    const result = [];
    const map = {};

    for (const row of rows) {
      if (!map[row.question_id]) {
        map[row.question_id] = {
          id: row.question_id,
          content: row.question_content,
          answers: []
        };
        result.push(map[row.question_id]);
      }
      if (row.answer_id) {
        map[row.question_id].answers.push({
          id: row.answer_id,
          content: row.answer_content,
          is_correct: row.is_correct
        });
      }
    }

    res.json(result);
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
});

// POST /subjects/:id/chapters/:chapterId/questions - Tạo question mới (Admin)
router.post('/:id/chapters/:chapterId/questions', authenticateToken, authorize('Admin'), async (req, res) => {
  try {
    const { id: subjectId, chapterId } = req.params;
    const { content, explanation, status } = req.body;
    const author_id = req.user.id;
    const [result] = await db.execute(
      'INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id) VALUES (?, ?, ?, ?, ?, ?)',
      [content, explanation, status || 'Pending', author_id, chapterId, subjectId]
    );
    res.status(201).json({ message: 'Question created successfully', questionId: result.insertId });
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
});

// GET /subjects/:id/chapters/:chapterId/questions/:questionId - Lấy question cụ thể
router.get('/:id/chapters/:chapterId/questions/:questionId', authenticateToken, async (req, res) => {
  try {
    const { id: subjectId, chapterId, questionId } = req.params;
    const [rows] = await db.execute(`
      SELECT 
        q.id AS question_id,
        q.content AS question_content,
        q.subject_id,
        q.chapter_id,
        a.id AS answer_id,
        a.content AS answer_content,
        a.is_correct
      FROM Questions q
      LEFT JOIN Answers a ON q.id = a.question_id
      WHERE q.id = ? AND q.subject_id = ? AND q.chapter_id = ?
    `, [questionId, subjectId, chapterId]);

    if (rows.length === 0) {
      return res.status(404).json({ message: 'Question not found' });
    }

    const map = {};
    const result = [];

    for (const row of rows) {
      if (!map[row.question_id]) {
        map[row.question_id] = {
          id: row.question_id,
          content: row.question_content,
          subject_id: row.subject_id,
          chapter_id: row.chapter_id,
          answers: []
        };
        result.push(map[row.question_id]);
      }
      if (row.answer_id) {
        map[row.question_id].answers.push({
          id: row.answer_id,
          content: row.answer_content,
          is_correct: row.is_correct
        });
      }
    }

    res.json(result[0]);
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
});

// PUT /subjects/:id/chapters/:chapterId/questions/:questionId - Update question (Admin)
router.put('/:id/chapters/:chapterId/questions/:questionId', authenticateToken, authorize('Admin'), async (req, res) => {
  try {
    const { id: subjectId, chapterId, questionId } = req.params;
    const { content, explanation, status } = req.body;
    await db.execute(
      'UPDATE Questions SET content = ?, explanation = ?, status = ? WHERE id = ? AND subject_id = ? AND chapter_id = ?',
      [content, explanation, status, questionId, subjectId, chapterId]
    );
    res.json({ message: 'Question updated successfully' });
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
});

// DELETE /subjects/:id/chapters/:chapterId/questions/:questionId - Delete question (Admin)
router.delete('/:id/chapters/:chapterId/questions/:questionId', authenticateToken, authorize('Admin'), async (req, res) => {
  try {
    const { id: subjectId, chapterId, questionId } = req.params;
    await db.execute(
      'DELETE FROM Questions WHERE id = ? AND subject_id = ? AND chapter_id = ?',
      [questionId, subjectId, chapterId]
    );
    res.json({ message: 'Question deleted successfully' });
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
});

export default router;