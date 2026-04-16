import express from 'express';
import { saveQuizAttempt, getUserHistory, getAttemptDetails } from '../controllers/historyController.js';
import { authenticateToken } from '../middleware/auth.js';

const router = express.Router();

router.post('/save', authenticateToken, saveQuizAttempt);
router.get('/my-history', authenticateToken, getUserHistory);
router.get('/details/:attemptId', authenticateToken, getAttemptDetails);

export default router;