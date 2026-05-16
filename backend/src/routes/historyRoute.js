import express from 'express';
import { saveQuizAttempt, getUserHistory, getAttemptDetails } from '../controllers/historyController.js';
import { getDashboardStats, getCapacityAnalysis } from '../controllers/userController.js';
import { authenticateToken } from '../middleware/auth.js';

const router = express.Router();

router.post('/save', authenticateToken, saveQuizAttempt);
router.get('/my-history', authenticateToken, getUserHistory);
router.get('/details/:attemptId', authenticateToken, getAttemptDetails);
router.get('/dashboard-stats', authenticateToken, getDashboardStats);
router.get('/analysis/:subjectId', authenticateToken, getCapacityAnalysis);

export default router;