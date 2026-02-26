import express from "express";
import db from "./config/db.js";

const app = express();

app.use(express.json());

app.get("/", (req, res) => {
  res.send("Server is running 🚀");
});

app.get("/subjects", async (req, res) => {
  try {
    const [rows] = await db.query("SELECT * FROM Subjects");
    res.json(rows);
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
});
app.get("/answers", async (req, res) => {
  try {
    const [rows] = await db.query("SELECT * FROM Answers");
    res.json(rows);
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
});

app.listen(5001, () => {
  console.log("🚀 Server is running on port 5001");
});