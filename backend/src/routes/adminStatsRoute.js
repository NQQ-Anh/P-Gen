import express from 'express';
import { getDashboardStats, getRankingStats } from '../controllers/adminStatsController.js';
import { authenticateToken, authorize } from '../middleware/auth.js';

const router = express.Router();

router.get('/dashboard', authenticateToken, authorize('Admin'), getDashboardStats);
router.get('/ranking', authenticateToken, authorize('Admin'), getRankingStats);

export default router;
