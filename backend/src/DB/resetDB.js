import mysql from "mysql2/promise";
import dotenv from 'dotenv';

dotenv.config();

async function resetDatabase() {
  try {
    console.log("⚠ Resetting database...");
    const password = process.env.SQL_PASS;
    const host = process.env.SQL_HOST ;
    const port = process.env.SQL_PORT ;
    const user = process.env.SQL_USER ;
    const database = process.env.SQL_DB ;
    const connection = await mysql.createConnection({
      host: host,
      port: port,
      user: user,
      password: password,
      database: database,
    });

    // lấy danh sách bảng
    const [tables] = await connection.query("SHOW TABLES");

    const tableKey = Object.keys(tables[0])[0];

    await connection.query("SET FOREIGN_KEY_CHECKS = 0");

    for (const table of tables) {
      const tableName = table[tableKey];
      console.log("Deleting data from:", tableName);

      await connection.query(`DROP TABLE IF EXISTS \`${tableName}\``);
    }

    await connection.query("SET FOREIGN_KEY_CHECKS = 1");

    await connection.end();

    console.log("✅ Database reset completed!");
  } catch (error) {
    console.error("❌ Reset failed:", error);
  }
}

resetDatabase();
