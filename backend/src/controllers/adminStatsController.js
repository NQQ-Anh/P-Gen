import db from "../config/db.js";

const DEFAULT_LIST_LIMIT = 10;
const MAX_LIST_LIMIT = 50;
const LATEST_USERS_LIMIT = 5;
const RECENT_ATTEMPTS_LIMIT = 5;
const LEADERBOARD_LIMIT = 10;
const DATE_ONLY_PATTERN = /^\d{4}-\d{2}-\d{2}$/;
let usersCreatedAtChecked = false;

const pad = (value) => String(value).padStart(2, "0");

const toSqlDateTime = (rawValue, endOfDay = false) => {
  const value = String(rawValue || "").trim();
  if (!value) return null;

  if (DATE_ONLY_PATTERN.test(value)) {
    return `${value} ${endOfDay ? "23:59:59" : "00:00:00"}`;
  }

  const parsedDate = new Date(value);
  if (Number.isNaN(parsedDate.getTime())) return null;

  const hours = endOfDay ? 23 : parsedDate.getHours();
  const minutes = endOfDay ? 59 : parsedDate.getMinutes();
  const seconds = endOfDay ? 59 : parsedDate.getSeconds();

  return `${parsedDate.getFullYear()}-${pad(parsedDate.getMonth() + 1)}-${pad(parsedDate.getDate())} ${pad(hours)}:${pad(minutes)}:${pad(seconds)}`;
};

const parseLimit = (rawLimit) => {
  const value = Number.parseInt(rawLimit, 10);
  if (Number.isNaN(value) || value <= 0) return DEFAULT_LIST_LIMIT;
  return Math.min(value, MAX_LIST_LIMIT);
};

const buildTimeFilterClause = (columnName, from, to, params) => {
  const conditions = [];

  if (from) {
    conditions.push(`${columnName} >= ?`);
    params.push(from);
  }

  if (to) {
    conditions.push(`${columnName} <= ?`);
    params.push(to);
  }

  return conditions.length > 0 ? `WHERE ${conditions.join(" AND ")}` : "";
};

const ensureUsersCreatedAtColumn = async () => {
  if (usersCreatedAtChecked) return;

  const [columns] = await db.execute(
    `SELECT COLUMN_NAME
     FROM information_schema.COLUMNS
     WHERE TABLE_SCHEMA = DATABASE()
       AND TABLE_NAME = 'Users'
       AND COLUMN_NAME = 'created_at'
     LIMIT 1`,
  );

  if (columns.length === 0) {
    try {
      await db.query(`
        ALTER TABLE Users
        ADD COLUMN created_at TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP
      `);
    } catch (error) {
      if (error.code !== "ER_DUP_FIELDNAME") {
        throw error;
      }
    }
  }

  usersCreatedAtChecked = true;
};

export const getDashboardStats = async (req, res) => {
  try {
    await ensureUsersCreatedAtColumn();

    const from = req.query.from ? toSqlDateTime(req.query.from, false) : null;
    const to = req.query.to ? toSqlDateTime(req.query.to, true) : null;
    const listLimit = parseLimit(req.query.limit);

    if (req.query.from && !from) {
      return res.status(400).json({ message: "Ngày bắt đầu không hợp lệ" });
    }
    if (req.query.to && !to) {
      return res.status(400).json({ message: "Ngày kết thúc không hợp lệ" });
    }
    if (from && to && from > to) {
      return res.status(400).json({
        message:
          "Khoảng thời gian không hợp lệ",
      });
    }

    const recentAttemptsParams = [];
    const recentAttemptsFilter = buildTimeFilterClause(
      "qa.created_at",
      from,
      to,
      recentAttemptsParams,
    );
    const [recentAttempts] = await db.execute(
      `
      SELECT
        qa.id,
        qa.user_id AS userId,
        u.username,
        u.email,
        qa.subject_id AS subjectId,
        s.subject_name AS subjectName,
        qa.chapter_id AS chapterId,
        c.chapter_name AS chapterName,
        c.order_index AS chapterOrder,
        qa.score,
        qa.correct_count AS correctCount,
        qa.total_questions AS totalQuestions,
        qa.time_spent AS timeSpent,
        qa.created_at AS createdAt
      FROM QuizAttempts qa
      JOIN Users u ON qa.user_id = u.id
      JOIN Subjects s ON qa.subject_id = s.id
      LEFT JOIN Chapters c ON qa.chapter_id = c.id
      ${recentAttemptsFilter}
      ORDER BY qa.created_at DESC
      LIMIT ${RECENT_ATTEMPTS_LIMIT}
      `,
      recentAttemptsParams,
    );

    const latestUserParams = [];
    const latestUserFilter = buildTimeFilterClause(
      "u.created_at",
      from,
      to,
      latestUserParams,
    );
    const [latestRegisteredRows] = await db.execute(
      `
      SELECT
        u.id AS userId,
        u.username,
        u.email,
        u.role,
        u.created_at AS registeredAt
      FROM Users u
      ${latestUserFilter}
      ORDER BY u.created_at DESC, u.id DESC
      LIMIT ${LATEST_USERS_LIMIT}
      `,
      latestUserParams,
    );

    const leaderboardParams = [];
    const leaderboardFilter = buildTimeFilterClause(
      "qa.created_at",
      from,
      to,
      leaderboardParams,
    );
    const [leaderboard] = await db.execute(
      `
      SELECT
        u.id AS userId,
        u.username,
        u.email,
        COUNT(qa.id) AS attemptCount,
        ROUND(AVG(qa.score), 2) AS avgScore,
        MAX(qa.created_at) AS lastAttemptAt
      FROM QuizAttempts qa
      JOIN Users u ON qa.user_id = u.id
      ${leaderboardFilter}
      GROUP BY u.id, u.username, u.email
      ORDER BY attemptCount DESC, lastAttemptAt DESC, u.id ASC
      LIMIT ${LEADERBOARD_LIMIT}
      `,
      leaderboardParams,
    );

    // Get system statistics
    const [totalStatsRows] = await db.execute(`
      SELECT
        (SELECT COUNT(*) FROM Users WHERE role = 'User') AS totalUsers,
        (SELECT COUNT(*) FROM Subjects) AS totalSubjects,
        (SELECT COUNT(*) FROM Chapters) AS totalChapters,
        (SELECT COUNT(*) FROM Questions) AS totalQuestions,
        (SELECT COUNT(*) FROM QuizAttempts) AS totalAttempts
    `);
    const totalStats = totalStatsRows[0] || {};

    res.json({
      filters: {
        from,
        to,
        limit: listLimit,
      },
      recentAttempts,
      latestRegisteredUser: latestRegisteredRows[0] || null,
      latestRegisteredUsers: latestRegisteredRows,
      leaderboard,
      systemStats: {
        totalUsers: totalStats.totalUsers || 0,
        totalSubjects: totalStats.totalSubjects || 0,
        totalChapters: totalStats.totalChapters || 0,
        totalQuestions: totalStats.totalQuestions || 0,
        totalAttempts: totalStats.totalAttempts || 0,
      },
    });
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};
