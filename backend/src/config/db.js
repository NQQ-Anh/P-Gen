import mysql from "mysql2/promise";
import dotenv from 'dotenv';

dotenv.config();

const password = process.env.SQL_PASS ;
const port = process.env.SQL_PORT ;
const host = process.env.SQL_HOST ;
const user = process.env.SQL_USER ;
const database = process.env.SQL_DB ;

const db = mysql.createPool({
  host: host,
  port: port,
  user: user,
  password: password, // Thay bằng pass db local
  database: database,
  ssl: {
    rejectUnauthorized: false,
  },
  waitForConnections: true,
  connectionLimit: 5,
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
