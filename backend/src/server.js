import 'dotenv/config';

import express from "express";
import cors from "cors";
import db from "./config/db.js";
import userRoutes from "./routes/userRoute.js";
import authRoutes from "./routes/authRoute.js";

const app = express();

// Middleware
app.use(cors({
  origin: ["http://localhost:5173"], // Vite dev server ports
  credentials: true
}));
app.use(express.json());

// Routes
app.use("/api/users", userRoutes);
app.use("/api/auth", authRoutes);

// Health check
app.get("/api/health", (req, res) => {
  res.json({ status: "OK", message: "Server is running" });
});

app.listen(5001, () => {
  console.log("🚀 Server is running on port 5001");
});