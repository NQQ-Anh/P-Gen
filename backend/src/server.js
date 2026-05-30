import "dotenv/config";

import express from "express";
import cors from "cors";
import db from "./config/db.js";
import userRoutes from "./routes/userRoute.js";
import authRoutes from "./routes/authRoute.js";
import questionRoutes from "./routes/questionRoutes.js";
import subjectRoutes from "./routes/subjectRoutes.js";
import historyRoutes from "./routes/historyRoute.js";
import reviewRoutes from "./routes/reviewRoute.js";
import adminStatsRoutes from "./routes/adminStatsRoute.js";
const app = express();

// Middleware
app.use(
  cors({
    origin: true,
    credentials: true,
  }),
);
app.use(express.json());

// Routes
app.use("/users", userRoutes);
app.use("/auth", authRoutes);
app.use("/subjects", subjectRoutes);
app.use("/history", historyRoutes);
app.use("/review", reviewRoutes);
app.use("/admin-stats", adminStatsRoutes);
// Question and chapter routes are now nested under /subjects

const port = process.env.PORT || 5001;
// Health check
app.get("/api/health", (req, res) => {
  res.json({ status: "OK", message: "Server is running" });
});

app.listen(port, "0.0.0.0", () => {
  console.log(`🚀 Server is running on port ${port}`);
});
