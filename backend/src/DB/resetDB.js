import mysql from "mysql2/promise";

async function resetDatabase() {
  try {
    console.log("⚠ Resetting database...");
    const password = process.env.SQL_PASS;
    const connection = await mysql.createConnection({
      host: "localhost",
      user: "root",
      password: "123456",
      database: "p_gen",
    });

    // lấy danh sách bảng
    const [tables] = await connection.query("SHOW TABLES");

    const tableKey = Object.keys(tables[0])[0];

    await connection.query("SET FOREIGN_KEY_CHECKS = 0");

    for (const table of tables) {
      const tableName = table[tableKey];
      console.log("Deleting data from:", tableName);

      await connection.query(`TRUNCATE TABLE \`${tableName}\``);
    }

    await connection.query("SET FOREIGN_KEY_CHECKS = 1");

    await connection.end();

    console.log("✅ Database reset completed!");
  } catch (error) {
    console.error("❌ Reset failed:", error);
  }
}

resetDatabase();
