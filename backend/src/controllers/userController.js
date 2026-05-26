import bcrypt from 'bcryptjs';
import db from '../config/db.js';
import { generateTokens, verifyRefreshToken } from '../middleware/auth.js';

export const getAllUsers = async (req, res) => {
  try {
    const [users] = await db.execute('SELECT id, username, email, role FROM Users');
    res.json(users);
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};

export const createUser = async (req, res) => {
  try {
    const { username, password, email, role = 'User' } = req.body;

    // Check if user already exists
    const [existingUsers] = await db.execute('SELECT id FROM Users WHERE username = ? OR email = ?', [username, email]);
    if (existingUsers.length > 0) {
      return res.status(400).json({ message: 'Tên đăng nhập hoặc email đã tồn tại' });
    }

    // Hash password
    const hashedPassword = await bcrypt.hash(password, 10);

    // Insert user
    const [result] = await db.execute(
      'INSERT INTO Users (username, password, email, role) VALUES (?, ?, ?, ?)',
      [username, hashedPassword, email, role]
    );

    res.status(201).json({
      message: 'Tạo người dùng thành công',
      userId: result.insertId
    });
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};

export const updateUser = async (req, res) => {
  try {
    const { id } = req.params;
    const { username, email, role, password } = req.body;
    const currentUser = req.user;
    const normalizedUsername = typeof username === 'string' ? username.trim() : '';
    const normalizedEmail = typeof email === 'string' ? email.trim() : '';
    const normalizedPassword = typeof password === 'string' ? password : '';

    // Check permissions
    if (currentUser.role !== 'Admin' && currentUser.id != id) {
      return res.status(403).json({ message: 'Bạn chỉ có thể cập nhật hồ sơ của chính mình' });
    }

    if (!normalizedUsername || !normalizedEmail) {
      return res.status(400).json({ message: 'Tên đăng nhập và email là bắt buộc' });
    }

    if (normalizedPassword && normalizedPassword.length < 6) {
      return res.status(400).json({ message: 'Mật khẩu phải có ít nhất 6 ký tự' });
    }

    // Always load current role when role is missing; non-admin cannot change role
    let updateRole = role;
    if (currentUser.role !== 'Admin' || !role) {
      const [currentUserData] = await db.execute('SELECT role FROM Users WHERE id = ?', [id]);
      if (currentUserData.length === 0) {
        return res.status(404).json({ message: 'Không tìm thấy người dùng' });
      }
      updateRole = currentUser.role !== 'Admin' ? currentUserData[0].role : (role || currentUserData[0].role);
    }

    // Prevent changing role to Admin if not already Admin
    if (role === 'Admin' && currentUser.role !== 'Admin') {
      return res.status(403).json({ message: 'Bạn không thể gán vai trò Admin' });
    }

    const [existingUsers] = await db.execute(
      'SELECT id FROM Users WHERE (username = ? OR email = ?) AND id != ?',
      [normalizedUsername, normalizedEmail, id]
    );
    if (existingUsers.length > 0) {
      return res.status(400).json({ message: 'Tên đăng nhập hoặc email đã tồn tại' });
    }

    const updateFields = ['username = ?', 'email = ?', 'role = ?'];
    const updateValues = [normalizedUsername, normalizedEmail, updateRole];

    if (normalizedPassword) {
      const hashedPassword = await bcrypt.hash(normalizedPassword, 10);
      updateFields.push('password = ?');
      updateValues.push(hashedPassword);
    }

    updateValues.push(id);

    const [result] = await db.execute(
      `UPDATE Users SET ${updateFields.join(', ')} WHERE id = ?`,
      updateValues
    );

    if (result.affectedRows === 0) {
      return res.status(404).json({ message: 'Không tìm thấy người dùng' });
    }

    res.json({ message: 'Cập nhật người dùng thành công' });
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};

export const deleteUser = async (req, res) => {
  try {
    const { id } = req.params;
    const currentUser = req.user;

    // Prevent deleting other Admins
    if (currentUser.role === 'Admin') {
      const [userToDelete] = await db.execute('SELECT role FROM Users WHERE id = ?', [id]);
      if (userToDelete.length === 0) {
        return res.status(404).json({ message: 'Không tìm thấy người dùng' });
      }
      if (userToDelete[0].role === 'Admin') {
        return res.status(403).json({ message: 'Không thể xóa tài khoản Admin' });
      }
    }

    const [result] = await db.execute('DELETE FROM Users WHERE id = ?', [id]);

    if (result.affectedRows === 0) {
      return res.status(404).json({ message: 'Không tìm thấy người dùng' });
    }

    res.json({ message: 'Xóa người dùng thành công' });
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};

// Authentication functions
export const register = async (req, res) => {
  try {
    const { username, password, email } = req.body;

    // Validate input
    if (!username || !password || !email) {
      return res.status(400).json({ message: 'Tên đăng nhập, mật khẩu và email là bắt buộc' });
    }

    if (password.length < 6) {
      return res.status(400).json({ message: 'Mật khẩu phải có ít nhất 6 ký tự' });
    }

    // Check if user already exists
    const [existingUsers] = await db.execute('SELECT id FROM Users WHERE username = ? OR email = ?', [username, email]);
    if (existingUsers.length > 0) {
      return res.status(400).json({ message: 'Tên đăng nhập hoặc email đã tồn tại' });
    }

    // Hash password
    const hashedPassword = await bcrypt.hash(password, 10);

    // Insert user
    const [result] = await db.execute(
      'INSERT INTO Users (username, password, email, role) VALUES (?, ?, ?, ?)',
      [username, hashedPassword, email, 'User']
    );

    // Generate tokens for immediate login after registration
    const { accessToken, refreshToken } = generateTokens(result.insertId);

    // Get the created user data
    const [newUser] = await db.execute('SELECT id, username, email, role FROM Users WHERE id = ?', [result.insertId]);

    res.status(201).json({
      message: 'Đăng ký tài khoản thành công',
      user: newUser[0],
      accessToken,
      refreshToken
    });
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};

export const login = async (req, res) => {
  try {
    const { username, password } = req.body;

    // Find user
    const [users] = await db.execute('SELECT id, username, password, email, role FROM Users WHERE username = ?', [username]);
    if (users.length === 0) {
      return res.status(401).json({ message: 'Tên đăng nhập hoặc mật khẩu không đúng' });
    }

    const user = users[0];

    // Check password
    const isValidPassword = await bcrypt.compare(password, user.password);
    if (!isValidPassword) {
      return res.status(401).json({ message: 'Tên đăng nhập hoặc mật khẩu không đúng' });
    }

    // Generate tokens
    const { accessToken, refreshToken } = generateTokens(user.id);

    // Remove password from response
    const { password: _, ...userWithoutPassword } = user;

    res.json({
      message: 'Đăng nhập thành công',
      user: userWithoutPassword,
      accessToken,
      refreshToken
    });
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};

export const getProfile = async (req, res) => {
  try {
    // User info is already attached by authenticateToken middleware
    const { password, ...userWithoutPassword } = req.user;
    res.json(userWithoutPassword);
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};

export const logout = async (req, res) => {
  // In a stateless JWT system, logout is handled client-side by removing tokens
  // For server-side logout, you might want to implement a token blacklist
  res.json({ message: 'Đăng xuất thành công' });
};

export const refreshToken = async (req, res) => {
  try {
    const { refreshToken } = req.body;

    if (!refreshToken) {
      return res.status(401).json({ message: 'Cần refresh token' });
    }

    // Verify refresh token
    const decoded = verifyRefreshToken(refreshToken);

    // Check if user still exists
    const [users] = await db.execute('SELECT id FROM Users WHERE id = ?', [decoded.userId]);
    if (users.length === 0) {
      return res.status(401).json({ message: 'Không tìm thấy người dùng' });
    }

    // Generate new tokens
    const { accessToken, refreshToken: newRefreshToken } = generateTokens(decoded.userId);

    res.json({
      accessToken,
      refreshToken: newRefreshToken
    });
  } catch (error) {
    res.status(403).json({ message: 'Refresh token không hợp lệ' });
  }
};

export const getDashboardStats = async (req, res) => {
  try {
    const userId = req.user.id;
    const role = req.user.role;

    const [statsRows] = await db.execute(
      `SELECT 
        COUNT(qa.id) as totalQuizzes,
        IFNULL(ROUND(SUM(qa.correct_count) * 100.0 / SUM(qa.total_questions), 1), 0) as accuracy
       FROM QuizAttempts qa
       JOIN subjects s ON qa.subject_id = s.id
       LEFT JOIN chapters c ON qa.chapter_id = c.id
       WHERE qa.user_id = ?
         AND (
           ? = 'Admin' 
           OR (s.status = 'Active' AND (c.id IS NULL OR c.status = 'Active'))
         )`,
      [userId, role]
    );

    const [recentRows] = await db.execute(
      `SELECT 
        qa.id, qa.score, qa.created_at,
        s.subject_name, c.order_index
       FROM QuizAttempts qa
       JOIN subjects s ON qa.subject_id = s.id
       LEFT JOIN chapters c ON qa.chapter_id = c.id
       WHERE qa.user_id = ?
         AND (? = 'Admin' OR (s.status = 'Active' AND (c.id IS NULL OR c.status = 'Active')))
       ORDER BY qa.created_at DESC
       LIMIT 5`,
      [userId, role]
    );

    const [dateRows] = await db.execute(
      `SELECT DISTINCT DATE(qa.created_at) as studyDate 
       FROM QuizAttempts qa
       JOIN subjects s ON qa.subject_id = s.id
       WHERE qa.user_id = ? 
         AND (? = 'Admin' OR s.status = 'Active')
       ORDER BY studyDate DESC`,
      [userId, role]
    );

    let streak = 0;
    if (dateRows.length > 0) {
      const dates = dateRows.map(row => new Date(row.studyDate).setHours(0, 0, 0, 0));
      const today = new Date().setHours(0, 0, 0, 0);
      const yesterday = new Date(today - 86400000).setHours(0, 0, 0, 0);

      if (dates[0] === today || dates[0] === yesterday) {
        streak = 1;
        for (let i = 0; i < dates.length - 1; i++) {
          if (dates[i] - dates[i + 1] === 86400000) streak++;
          else break;
        }
      }
    }

    res.json({
      stats: {
        totalQuizzes: statsRows[0].totalQuizzes,
        accuracy: statsRows[0].accuracy,
        streak: streak
      },
      recentActivities: recentRows
    });
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};

export const getCapacityAnalysis = async (req, res) => {
  try {
    const userId = req.user.id;
    const { subjectId } = req.params;
    const role = req.user.role;

    const [rows] = await db.execute(
      `SELECT 
          c.chapter_name as subject,
          IFNULL(ROUND(AVG(qad.is_correct) * 100, 0), 0) as A,
          100 as fullMark
      FROM chapters c
      JOIN subjects s ON c.subject_id = s.id
      LEFT JOIN questions q ON q.chapter_id = c.order_index AND q.subject_id = c.subject_id
      LEFT JOIN (
          SELECT qd.question_id, qd.is_correct
          FROM quizattemptdetail qd
          JOIN quizattempts qa ON qd.attempt_id = qa.id
          WHERE qa.user_id = ?
      ) qad ON q.id = qad.question_id
      WHERE c.subject_id = ? 
        AND (? = 'Admin' OR (s.status = 'Active' AND c.status = 'Active' AND (q.id IS NULL OR q.status = 'Active')))
      GROUP BY c.id, c.chapter_name, c.order_index
      ORDER BY c.order_index ASC`,
      [userId, subjectId, role]
    );

    res.json(rows);
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};
