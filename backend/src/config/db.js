import mysql from "mysql2/promise";

const password = process.env.SQL_PASS;

const db = mysql.createPool({
  host: "localhost",
  user: "root",
  password: password, // Thay bằng pass db local
  database: "p_gen",
  waitForConnections: true,
  connectionLimit: 10,
  queueLimit: 0,
});

// Test connection
async function checkConnection() {
  try {
    const connection = await db.getConnection();
    console.log("✅ MySQL Connected Successfully");
    connection.release();
  } catch (error) {
    console.error("❌ MySQL Connection Failed:", error.message);
  }
}

checkConnection();

export default db;
