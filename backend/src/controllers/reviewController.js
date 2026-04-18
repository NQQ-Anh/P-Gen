import db from '../config/db.js';
import moment from 'moment';

/**
 * @param {Number} userId - ID người dùng
 * @param {Number} questionId - ID câu hỏi
 * @param {Boolean} isCorrect - Kết quả trả lời
 * @param {Object} connection - Pool hoặc Transaction connection
 */
const updateQuestionMemory = async (userId, questionId, isCorrect, connection = db) => {
    // 1. Lấy dữ liệu hiện tại
    const [rows] = await connection.execute(
        'SELECT * FROM user_question_memory WHERE user_id = ? AND question_id = ?',
        [userId, questionId]
    );

    let memory = rows[0];
    let nextReviewAt;

    // 2. Nếu câu hỏi này chưa từng được làm, tạo mới
    if (!memory) {
        nextReviewAt = moment().add(1, 'days').startOf('day').toDate();
        await connection.execute(
            `INSERT INTO user_question_memory 
            (user_id, question_id, correct_streak, wrong_streak, review_count, memory_score, next_review_at) 
            VALUES (?, ?, 0, 0, 0, 0.1, ?)`,
            [userId, questionId, nextReviewAt]
        );
        memory = { correct_streak: 0, wrong_streak: 0, review_count: 0, memory_score: 0.1 };
    }

    let { correct_streak, wrong_streak, review_count, memory_score } = memory;
    review_count += 1;

    // 3. Tính toán Streak và Memory Score dựa trên kết quả
    if (isCorrect) {
        correct_streak += 1;
        wrong_streak = 0;
        let increment = 0.1 + (0.05 * correct_streak);
        memory_score = Math.min(parseFloat(memory_score) + increment, 1.0);
        
        const daysToAdd = Math.round(Math.pow(2, correct_streak - 1) * (1 + memory_score));
        nextReviewAt = moment().add(daysToAdd, 'days').startOf('day').toDate();
    } else {
        correct_streak = 0;
        wrong_streak += 1;
        memory_score = parseFloat(memory_score) * 0.5;
        nextReviewAt = moment().add(1, 'days').startOf('day').toDate();
    }

    // 4. Cập nhật lại vào Database
    await connection.execute(
        `UPDATE user_question_memory SET 
            correct_streak = ?, 
            wrong_streak = ?, 
            review_count = ?, 
            memory_score = ?, 
            last_result = ?, 
            last_reviewed_at = NOW(), 
            next_review_at = ? 
        WHERE user_id = ? AND question_id = ?`,
        [correct_streak, wrong_streak, review_count, memory_score, isCorrect ? 1 : 0, nextReviewAt, userId, questionId]
    );
};

const reviewController = {
    /**
     * Lấy trạng thái tổng quát cho Dashboard (Tiến độ và Số câu đến hạn)
     */
    getReviewStatus: async (req, res) => {
        try {
            const userId = req.user.id;
            const query = `
                SELECT 
                    s.id, 
                    s.subject_name as name, 
                    COUNT(CASE WHEN m.next_review_at <= NOW() THEN 1 END) as dueCount,
                    ROUND(
                        (SUM(IFNULL(m.memory_score, 0)) * 100.0 / 
                        NULLIF((SELECT COUNT(*) FROM questions WHERE subject_id = s.id), 0)), 0
                    ) as progress
                FROM subjects s
                JOIN questions q ON s.id = q.subject_id
                LEFT JOIN user_question_memory m ON q.id = m.question_id AND m.user_id = ?
                GROUP BY s.id
                HAVING progress > 0 OR dueCount > 0;
            `;
            const [rows] = await db.execute(query, [userId]);
            res.json(rows);
        } catch (error) {
            res.status(500).json({ message: error.message });
        }
    },

    /**
     * Lấy danh sách câu hỏi cần ôn tập ngay của một môn
     */
    getDueQuestions: async (req, res) => {
        try {
            const { subjectId } = req.params;
            const userId = req.user.id;

            const query = `
                SELECT 
                    q.*, 
                    m.correct_streak, 
                    m.next_review_at
                FROM questions q
                JOIN user_question_memory m ON q.id = m.question_id
                WHERE q.subject_id = ? 
                  AND m.user_id = ? 
                  AND m.next_review_at <= NOW()
                ORDER BY m.next_review_at ASC
            `;

            const [questions] = await db.execute(query, [subjectId, userId]);
            
            const formattedQuestions = questions.map(q => ({
                ...q,
                options: typeof q.options === 'string' ? JSON.parse(q.options) : q.options
            }));

            res.json(formattedQuestions);
        } catch (error) {
            console.error("Lỗi getDueQuestions:", error);
            res.status(500).json({ message: error.message });
        }
    },

    /**
     * Lấy chi tiết danh sách câu hỏi theo mảng ID (Dùng khi bắt đầu phiên ôn tập)
     */
    getQuestionsByIds: async (req, res) => {
        try {
            const { ids } = req.query;
            if (!ids) {
                return res.status(400).json({ message: "Không tìm thấy danh sách ID" });
            }

            const idArray = ids.split(',').map(id => parseInt(id));

            const query = `SELECT * FROM questions WHERE id IN (${idArray.join(',')})`;
            const [questions] = await db.execute(query);

            const formatted = questions.map(q => ({
                ...q,
                options: typeof q.options === 'string' ? JSON.parse(q.options) : q.options
            }));

            res.json(formatted);
        } catch (error) {
            console.error("Lỗi getQuestionsByIds:", error);
            res.status(500).json({ message: "Lỗi server khi lấy chi tiết câu hỏi" });
        }
    },

    /**
     * Nộp bài ôn tập: Cập nhật hàng loạt câu hỏi vào bộ nhớ
     */
    submitReview: async (req, res) => {
        const connection = await db.getConnection();
        try {
            await connection.beginTransaction();

            const userId = req.user.id;
            const { results } = req.body;

            if (!results || !Array.isArray(results)) {
                return res.status(400).json({ message: "Dữ liệu kết quả không hợp lệ" });
            }

            for (const item of results) {
                await updateQuestionMemory(userId, item.questionId, item.isCorrect, connection);
            }

            await connection.commit();
            res.status(200).json({ message: "Đã cập nhật tiến độ ôn tập thành công!" });
        } catch (error) {
            await connection.rollback();
            console.error("Lỗi submitReview:", error);
            res.status(500).json({ message: error.message });
        } finally {
            connection.release();
        }
    },

    /**
     * Đồng bộ kết quả từ bài luyện tập thông thường sang bảng bộ nhớ
     */
    syncQuizResultsToMemory: async (userId, results, connection) => {
        if (!results || !Array.isArray(results)) return;
        for (const item of results) {
            await updateQuestionMemory(userId, item.questionId, item.isCorrect, connection);
        }
    }
};

export default reviewController;