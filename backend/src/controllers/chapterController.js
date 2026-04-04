import db from '../config/db.js';

export const getAllChapters = async (req, res) => {
  try {
    const [rows] = await db.execute(`
      SELECT
        c.id AS chapter_id,
        c.chapter_name,
        c.order_index,
        c.subject_id,
        s.subject_name
      FROM Chapters c
      LEFT JOIN Subjects s ON c.subject_id = s.id
    `);
    res.json(rows);
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};

export const getChapterById = async (req, res) => {
  try {
    const { id: subjectId, chapterId } = req.params;
    const [chapterRows] = await db.execute(`
      SELECT
        c.id AS chapter_id,
        c.chapter_name,
        c.order_index,
        c.subject_id,
        s.subject_name
      FROM Chapters c
      LEFT JOIN Subjects s ON c.subject_id = s.id
      WHERE c.id = ? AND c.subject_id = ?
    `, [chapterId, subjectId]);
    if (chapterRows.length === 0) {
      return res.status(404).json({ message: 'Chapter not found' });
    }
    const [questionRows] = await db.execute(`
      SELECT 
        q.id AS question_id,
        q.content AS question_content,
        a.id AS answer_id,
        a.content AS answer_content,
        a.is_correct
      FROM Questions q
      LEFT JOIN Answers a ON q.id = a.question_id
      WHERE q.chapter_id = ?
    `, [chapterId]);

    const questions = [];
    const map = {};

    for (const row of questionRows) {
      if (!map[row.question_id]) {
        map[row.question_id] = {
          id: row.question_id,
          content: row.question_content,
          answers: []
        };
        questions.push(map[row.question_id]);
      }
      if (row.answer_id) {
        map[row.question_id].answers.push({
          id: row.answer_id,
          content: row.answer_content,
          is_correct: row.is_correct
        });
      }
    }

    res.json({
      chapter: chapterRows[0],
      questions: questions
    });
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};

export const createChapter = async (req, res) => {
  try {
    const { id: subjectId } = req.params;
    const { chapter_name, order_index } = req.body;
    const [result] = await db.execute('INSERT INTO Chapters (chapter_name, order_index, subject_id) VALUES (?, ?, ?)', [chapter_name, order_index, subjectId]);
    res.status(201).json({ message: 'Chapter created successfully', chapterId: result.insertId });
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};

export const updateChapter = async (req, res) => {
  try {
    const { id: subjectId, chapterId } = req.params;
    const { chapter_name, order_index } = req.body;
    await db.execute('UPDATE Chapters SET chapter_name = ?, order_index = ? WHERE id = ? AND subject_id = ?', [chapter_name, order_index, chapterId, subjectId]);
    res.json({ message: 'Chapter updated successfully' });
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};

export const deleteChapter = async (req, res) => {
  try {
    const { id: subjectId, chapterId } = req.params;
    await db.execute('DELETE FROM Chapters WHERE id = ? AND subject_id = ?', [chapterId, subjectId]);
    res.json({ message: 'Chapter deleted successfully' });
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};