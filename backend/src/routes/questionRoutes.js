import express from 'express';
import { getAllQuestions, createQuestion, updateQuestion, deleteQuestion } from '../controllers/questionController.js';
import { authenticateToken, authorize } from '../middleware/auth.js';

const router = express.Router();

router.get('/',authenticateToken, getAllQuestions);
router.post('/', authenticateToken, createQuestion);
router.put('/:id',authenticateToken, authorize('Admin'), updateQuestion);
router.delete('/:id', authenticateToken, authorize('Admin'), deleteQuestion);


export default router;