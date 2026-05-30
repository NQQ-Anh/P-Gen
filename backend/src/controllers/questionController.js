import db from "../config/db.js";

export const getAllQuestions = async (req, res) => {
  try {
    const [rows] = await db.execute(`
      SELECT 
        q.id AS question_id,
        q.content AS question_content,
        q.status,
        a.id AS answer_id,
        a.content AS answer_content,
        a.is_correct
      FROM questions q
      LEFT JOIN answers a ON q.id = a.question_id
      `);

    const result = [];
    const map = {};

    for (const row of rows) {
      if (!map[row.question_id]) {
        map[row.question_id] = {
          id: row.question_id,
          content: row.question_content,
          status: row.status,
          answers: [],
        };
        result.push(map[row.question_id]);
      }

      if (row.answer_id) {
        map[row.question_id].answers.push({
          id: row.answer_id,
          content: row.answer_content,
          is_correct: row.is_correct,
        });
      }
    }

    res.json(result);
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};

export const createQuestion = async (req, res) => {
  try {
    const { title, content } = req.body;
    const [result] = await db.execute(
      "INSERT INTO questions (title, content) VALUES (?, ?)",
      [title, content],
    );
    res.status(201).json({
      message: "Tạo câu hỏi thành công",
      questionId: result.insertId,
    });
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};

export const updateQuestion = async (req, res) => {
  try {
    const { id } = req.params;
    const { title, content } = req.body;
    await db.execute(
      "UPDATE questions SET title = ?, content = ? WHERE id = ?",
      [title, content, id],
    );
    res.json({ message: "Cập nhật câu hỏi thành công" });
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};

export const deleteQuestion = async (req, res) => {
  try {
    const { id } = req.params;
    await db.execute("DELETE FROM questions WHERE id = ?", [id]);
    res.json({ message: "Xóa câu hỏi thành công" });
  } catch (error) {
    res.status(500).json({ message: error.message });
  } 
};

export const getQuestionsByIds = async (req, res) => {
  try {
    const { ids } = req.query;
    if (!ids) {
      return res.status(400).json({ message: "Danh sách ID không được để trống" });
    }

    const idArray = ids.split(',');
    const placeholders = idArray.map(() => '?').join(',');

    const [questions] = await db.query(
      `SELECT * FROM questions WHERE id IN (${placeholders})`,
      idArray
    );

    const [answers] = await db.query(
      `SELECT * FROM answers WHERE question_id IN (${placeholders})`,
      idArray
    );

    const questionsWithAnswers = questions.map(q => {
      return {
        ...q,
        answers: answers.filter(a => a.question_id === q.id)
      };
    });

    res.status(200).json(questionsWithAnswers);
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};
