import express from 'express';
import { getAllChapters, getChapterById, createChapter, updateChapter, deleteChapter } from '../controllers/chapterController.js';
import { authenticateToken, authorize } from '../middleware/auth.js';

const router = express.Router();

router.get('/', authenticateToken, getAllChapters);
router.get('/:id', authenticateToken, getChapterById);
router.post('/', authenticateToken, authorize('Admin'), createChapter);
router.put('/:id', authenticateToken, authorize('Admin'), updateChapter);
router.delete('/:id', authenticateToken, authorize('Admin'), deleteChapter);

export default router;