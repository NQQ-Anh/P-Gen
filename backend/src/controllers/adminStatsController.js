import db from "../config/db.js";

const DEFAULT_DASHBOARD_LIMIT = 5;
const DEFAULT_RANKING_LIMIT = 10;
const MAX_LIST_LIMIT = 50;
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

const parseLimit = (rawLimit, defaultLimit) => {
  const value = Number.parseInt(rawLimit, 10);
  if (Number.isNaN(value) || value <= 0) return defaultLimit;
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

const parseDateRange = (rawFrom, rawTo) => {
  const from = rawFrom ? toSqlDateTime(rawFrom, false) : null;
  const to = rawTo ? toSqlDateTime(rawTo, true) : null;

  if (rawFrom && !from) {
    return { error: "Ngày bắt đầu không hợp lệ" };
  }
  if (rawTo && !to) {
    return { error: "Ngày kết thúc không hợp lệ" };
  }
  if (from && to && from > to) {
    return { error: "Khoảng thời gian không hợp lệ" };
  }

  return { from, to, error: null };
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

const RANKING_CRITERIA = {
  attempt_count: {
    key: "attempt_count",
    label: "Số lần làm bài",
    orderBy: "attemptCount DESC, lastAttemptAt DESC, userId ASC",
    havingClause: "COUNT(qa.id) > 0",
    metricField: "attemptCount",
  },
  average_score: {
    key: "average_score",
    label: "Điểm trung bình ",
    orderBy: "avgScore DESC, attemptCount DESC, userId ASC",
    havingClause: "avgScore IS NOT NULL",
    metricField: "avgScore",
  },
  shortest_time: {
    key: "shortest_time",
    label: "Thời gian làm bài ",
    orderBy: "avgTimeSpent ASC, attemptCount DESC, userId ASC",
    // Dùng trực tiếp field time_spent hiện có; chỉ tính bản ghi có time_spent > 0 để tránh dữ liệu thời gian không hợp lệ.
    havingClause: "avgTimeSpent IS NOT NULL",
    metricField: "avgTimeSpent",
  },
};

const resolveRankingCriteria = (rawCriteria) => {
  const normalized = String(rawCriteria || "").trim().toLowerCase();

  if (normalized === "average_score" || normalized === "avg_score" || normalized === "score") {
    return RANKING_CRITERIA.average_score;
  }

  if (normalized === "shortest_time" || normalized === "time" || normalized === "avg_time") {
    return RANKING_CRITERIA.shortest_time;
  }

  return RANKING_CRITERIA.attempt_count;
};

export const getDashboardStats = async (req, res) => {
  try {
    await ensureUsersCreatedAtColumn();

    const { from, to, error } = parseDateRange(req.query.from, req.query.to);
    if (error) {
      return res.status(400).json({ message: error });
    }

    const listLimit = parseLimit(req.query.limit, DEFAULT_DASHBOARD_LIMIT);

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
        COALESCE(NULLIF(TRIM(u.username), ''), 'Không xác định') AS username,
        COALESCE(u.email, '') AS email,
        qa.subject_id AS subjectId,
        COALESCE(s.subject_name, 'Không xác định') AS subjectName,
        qa.chapter_id AS chapterId,
        c.chapter_name AS chapterName,
        c.order_index AS chapterOrder,
        qa.score,
        qa.correct_count AS correctCount,
        qa.total_questions AS totalQuestions,
        qa.time_spent AS timeSpent,
        qa.created_at AS createdAt
      FROM QuizAttempts qa
      LEFT JOIN Users u ON qa.user_id = u.id
      LEFT JOIN Subjects s ON qa.subject_id = s.id
      LEFT JOIN Chapters c ON qa.chapter_id = c.id
      ${recentAttemptsFilter}
      ORDER BY qa.created_at DESC, qa.id DESC
      LIMIT ${listLimit}
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
    const [latestRegisteredUsers] = await db.execute(
      `
      SELECT
        u.id AS userId,
        COALESCE(NULLIF(TRIM(u.username), ''), 'Không xác định') AS username,
        COALESCE(u.email, '') AS email,
        u.role,
        u.created_at AS registeredAt
      FROM Users u
      ${latestUserFilter}
      ORDER BY u.created_at DESC, u.id DESC
      LIMIT ${listLimit}
      `,
      latestUserParams,
    );

    const [systemStatsRows] = await db.execute(`
      SELECT
        (SELECT COUNT(*) FROM Users) AS totalUsers,
        (SELECT COUNT(*) FROM Subjects) AS totalSubjects,
        (SELECT COUNT(*) FROM Chapters) AS totalChapters,
        (SELECT COUNT(*) FROM Questions) AS totalQuestions,
        (SELECT COUNT(*) FROM QuizAttempts) AS totalAttempts
    `);
    const systemStats = systemStatsRows[0] || {};

    res.json({
      filters: {
        from,
        to,
        limit: listLimit,
      },
      systemStats: {
        totalUsers: Number(systemStats.totalUsers) || 0,
        totalSubjects: Number(systemStats.totalSubjects) || 0,
        totalChapters: Number(systemStats.totalChapters) || 0,
        totalQuestions: Number(systemStats.totalQuestions) || 0,
        totalAttempts: Number(systemStats.totalAttempts) || 0,
      },
      recentAttempts,
      latestRegisteredUsers,
    });
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};

export const getRankingStats = async (req, res) => {
  try {
    const { from, to, error } = parseDateRange(req.query.from, req.query.to);
    if (error) {
      return res.status(400).json({ message: error });
    }

    const criteria = resolveRankingCriteria(req.query.criteria);
    const listLimit = parseLimit(req.query.limit, DEFAULT_RANKING_LIMIT);

    const rankingParams = [];
    const rankingFilter = buildTimeFilterClause(
      "qa.created_at",
      from,
      to,
      rankingParams,
    );

    const [rows] = await db.execute(
      `
      SELECT
        COALESCE(u.id, 0) AS userId,
        COALESCE(NULLIF(TRIM(u.username), ''), 'Không xác định') AS username,
        COALESCE(u.email, '') AS email,
        COUNT(qa.id) AS attemptCount,
        ROUND(AVG(CASE WHEN qa.score >= 0 AND qa.score <= 10 THEN qa.score END), 2) AS avgScore,
        ROUND(AVG(CASE WHEN qa.time_spent IS NOT NULL AND qa.time_spent > 0 THEN qa.time_spent END), 2) AS avgTimeSpent,
        MAX(qa.created_at) AS lastAttemptAt
      FROM QuizAttempts qa
      LEFT JOIN Users u ON qa.user_id = u.id
      ${rankingFilter}
      GROUP BY u.id, u.username, u.email
      HAVING ${criteria.havingClause}
      ORDER BY ${criteria.orderBy}
      LIMIT ${listLimit}
      `,
      rankingParams,
    );

    const ranking = rows.map((row, index) => {
      const attemptCount = Number(row.attemptCount) || 0;
      const avgScore = row.avgScore === null ? null : Number(row.avgScore);
      const avgTimeSpent = row.avgTimeSpent === null ? null : Number(row.avgTimeSpent);

      let metricValue = attemptCount;
      if (criteria.metricField === "avgScore") {
        metricValue = avgScore;
      } else if (criteria.metricField === "avgTimeSpent") {
        metricValue = avgTimeSpent;
      }

      return {
        rank: index + 1,
        userId: Number(row.userId) || 0,
        username: row.username,
        email: row.email,
        attemptCount,
        avgScore,
        avgTimeSpent,
        lastAttemptAt: row.lastAttemptAt,
        metricValue,
      };
    });

    res.json({
      filters: {
        from,
        to,
        limit: listLimit,
      },
      criteria: {
        key: criteria.key,
        label: criteria.label,
      },
      ranking,
    });
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};
