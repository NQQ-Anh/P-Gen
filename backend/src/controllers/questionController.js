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
      FROM Questions q
      LEFT JOIN Answers a ON q.id = a.question_id
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
      "INSERT INTO Questions (title, content) VALUES (?, ?)",
      [title, content],
    );
    res.status(201).json({
      message: "Question created successfully",
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
      "UPDATE Questions SET title = ?, content = ? WHERE id = ?",
      [title, content, id],
    );
    res.json({ message: "Question updated successfully" });
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};

export const deleteQuestion = async (req, res) => {
  try {
    const { id } = req.params;
    await db.execute("DELETE FROM Questions WHERE id = ?", [id]);
    res.json({ message: "Question deleted successfully" });
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};
