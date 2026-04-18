import express from "express";
import { getQuestionsByIds } from "../controllers/questionController.js";
import reviewController from "../controllers/reviewController.js";
import { authenticateToken } from "../middleware/auth.js";

const router = express.Router();

router.get('/status', authenticateToken, reviewController.getReviewStatus);
router.get('/questions/:subjectId', authenticateToken, reviewController.getDueQuestions);
router.get("/get-by-ids", authenticateToken, getQuestionsByIds);
router.post('/submit', authenticateToken, reviewController.submitReview);

export default router;