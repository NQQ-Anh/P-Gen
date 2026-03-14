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
      return res.status(400).json({ message: 'Username or email already exists' });
    }

    // Hash password
    const hashedPassword = await bcrypt.hash(password, 10);

    // Insert user
    const [result] = await db.execute(
      'INSERT INTO Users (username, password, email, role) VALUES (?, ?, ?, ?)',
      [username, hashedPassword, email, role]
    );

    res.status(201).json({
      message: 'User created successfully',
      userId: result.insertId
    });
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};

export const updateUser = async (req, res) => {
  try {
    const { id } = req.params;
    const { username, email, role } = req.body;

    const [result] = await db.execute(
      'UPDATE Users SET username = ?, email = ?, role = ? WHERE id = ?',
      [username, email, role, id]
    );

    if (result.affectedRows === 0) {
      return res.status(404).json({ message: 'User not found' });
    }

    res.json({ message: 'User updated successfully' });
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};

export const deleteUser = async (req, res) => {
  try {
    const { id } = req.params;
    const [result] = await db.execute('DELETE FROM Users WHERE id = ?', [id]);

    if (result.affectedRows === 0) {
      return res.status(404).json({ message: 'User not found' });
    }

    res.json({ message: 'User deleted successfully' });
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
      return res.status(400).json({ message: 'Username, password, and email are required' });
    }

    if (password.length < 6) {
      return res.status(400).json({ message: 'Password must be at least 6 characters long' });
    }

    // Check if user already exists
    const [existingUsers] = await db.execute('SELECT id FROM Users WHERE username = ? OR email = ?', [username, email]);
    if (existingUsers.length > 0) {
      return res.status(400).json({ message: 'Username or email already exists' });
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
      message: 'User registered successfully',
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
      return res.status(401).json({ message: 'Invalid credentials' });
    }

    const user = users[0];

    // Check password
    const isValidPassword = await bcrypt.compare(password, user.password);
    if (!isValidPassword) {
      return res.status(401).json({ message: 'Invalid credentials' });
    }

    // Generate tokens
    const { accessToken, refreshToken } = generateTokens(user.id);

    // Remove password from response
    const { password: _, ...userWithoutPassword } = user;

    res.json({
      message: 'Login successful',
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
  res.json({ message: 'Logged out successfully' });
};

export const refreshToken = async (req, res) => {
  try {
    const { refreshToken } = req.body;

    if (!refreshToken) {
      return res.status(401).json({ message: 'Refresh token required' });
    }

    // Verify refresh token
    const decoded = verifyRefreshToken(refreshToken);

    // Check if user still exists
    const [users] = await db.execute('SELECT id FROM Users WHERE id = ?', [decoded.userId]);
    if (users.length === 0) {
      return res.status(401).json({ message: 'User not found' });
    }

    // Generate new tokens
    const { accessToken, newRefreshToken } = generateTokens(decoded.userId);

    res.json({
      accessToken,
      refreshToken: newRefreshToken
    });
  } catch (error) {
    res.status(403).json({ message: 'Invalid refresh token' });
  }
};