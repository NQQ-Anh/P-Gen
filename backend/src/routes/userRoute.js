import express from 'express';
import { getAllUsers, createUser, updateUser, deleteUser } from '../controllers/userController.js';
import { authenticateToken, authorize } from '../middleware/auth.js';

const router = express.Router();

// Admin only routes
router.get('/', authenticateToken, authorize('Admin'), getAllUsers);
router.post('/', authenticateToken, authorize('Admin'), createUser);
router.put('/:id', authenticateToken, updateUser); // Will check permissions in controller
router.delete('/:id', authenticateToken, authorize('Admin'), deleteUser); // Will check in controller

export default router;
