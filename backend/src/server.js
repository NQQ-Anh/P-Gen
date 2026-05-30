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

const PORT = process.env.PORT || 5001;
// Health check
app.get("/api/health", async (req, res) => {
  try {
    await db.query("SELECT 1");
    res.json({ status: "OK", message: "Server is running" });
  } catch (error) {
    res.status(500).json({ status: "Error", message: "Failed to check server status" });
  }
  
});

app.listen(PORT, "0.0.0.0", () => {
  console.log(`🚀 Server is running on port ${PORT}`);
});
