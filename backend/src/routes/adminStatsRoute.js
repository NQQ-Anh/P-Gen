import express from 'express';
import { getDashboardStats } from '../controllers/adminStatsController.js';
import { authenticateToken, authorize } from '../middleware/auth.js';

const router = express.Router();

router.get('/dashboard', authenticateToken, authorize('Admin'), getDashboardStats);

export default router;

