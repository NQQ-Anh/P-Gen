import db from '../config/db.js';
import reviewController from './reviewController.js';

export const saveQuizAttempt = async (req, res) => {
  const connection = await db.getConnection();
  try {
    await connection.beginTransaction();

    const { subjectId, chapterId, score, correct, total, timeSpent, details } = req.body;
    const userId = req.user.id;

    // 1. Lưu vào bảng QuizAttempts
    const [attemptResult] = await connection.execute( 
        `INSERT INTO quizAttempts (user_id, subject_id, chapter_id, score, correct_count, total_questions, time_spent) 
        VALUES (?, ?, ?, ?, ?, ?, ?)`,
        [userId, subjectId, chapterId || null, score, correct, total, timeSpent]
    );

    const attemptId = attemptResult.insertId;

    // 2. Lưu vào bảng QuizAttemptDetail
    if (details && details.length > 0) {
      const detailValues = details.map(d => [
        attemptId, 
        d.questionId, 
        d.selectedAnswerId, 
        d.isCorrect ? 1 : 0
      ]);

      await connection.query(
        `INSERT INTO quizAttemptDetail (attempt_id, question_id, selected_answer_id, is_correct) VALUES ?`,
        [detailValues]
      );
    }

    // 3. Cập nhật trí nhớ (Spaced Repetition)
    await reviewController.syncQuizResultsToMemory(userId, details, connection);

    await connection.commit();
    res.status(201).json({ message: "Lưu kết quả thành công", attemptId });
  } catch (error) {
    await connection.rollback();
    res.status(500).json({ message: error.message });
  } finally {
    connection.release();
  }
};

// Hàm lấy lịch sử cho trang Profile
export const getUserHistory = async (req, res) => {
    try {
        const userId = req.user.id;
        
        const [rows] = await db.execute(
            `SELECT qa.*, s.subject_name, c.order_index 
            FROM quizAttempts qa
            JOIN subjects s ON qa.subject_id = s.id
            LEFT JOIN chapters c ON qa.chapter_id = c.id 
            WHERE qa.user_id = ?
            ORDER BY qa.created_at DESC`,
            [userId]
        );

        res.json(rows);
    } catch (error) {
        res.status(500).json({ message: "Lỗi khi lấy lịch sử: " + error.message });
    }
};

export const getAttemptDetails = async (req, res) => {
    try {
        const { attemptId } = req.params;
        const userId = req.user.id;

        // 1. Lấy thông tin tổng quát và kiểm tra quyền sở hữu
        const [attempts] = await db.execute(
            `SELECT qa.*, s.subject_name, c.order_index 
            FROM quizAttempts qa 
            JOIN subjects s ON qa.subject_id = s.id 
            LEFT JOIN chapters c ON qa.chapter_id = c.id
            WHERE qa.id = ? AND qa.user_id = ?
            ORDER BY qa.created_at DESC`,
            [attemptId, userId]
        );

        if (attempts.length === 0) {
            return res.status(404).json({ message: "Không tìm thấy lượt làm bài" });
        }

        // 2. Lấy chi tiết từng câu hỏi, đáp án và đáp án người dùng đã chọn
        const [details] = await db.execute(
            `SELECT 
                q.id AS question_id, 
                q.content AS question_content,
                qad.selected_answer_id,
                qad.is_correct
            FROM quizAttemptDetail qad
            JOIN questions q ON qad.question_id = q.id
            WHERE qad.attempt_id = ?`,
            [attemptId]
        );

        // 3. Với mỗi câu hỏi, lấy danh sách các đáp án của nó
        const fullDetails = await Promise.all(details.map(async (d) => {
            const [answers] = await db.execute(
                `SELECT id, content, is_correct FROM answers WHERE question_id = ?`,
                [d.question_id]
            );
            return {
                id: d.question_id,
                content: d.question_content,
                selected_answer_id: d.selected_answer_id,
                answers: answers
            };
        }));

        res.json({
            attempt: attempts[0],
            questions: fullDetails
        });
    } catch (error) {
        res.status(500).json({ message: error.message });
    }
};