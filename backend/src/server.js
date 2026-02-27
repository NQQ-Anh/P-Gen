import express from "express";
import db from "./config/db.js";
import userRoutes from "./routes/userRoute.js";

const app = express();

app.use(express.json());
app.use("/api/users", userRoutes);


app.listen(5001, () => {
  console.log("🚀 Server is running on port 5001");
});