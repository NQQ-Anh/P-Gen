import mysql from "mysql2/promise";
import fs from "fs";

async function runSQLFile(filePath, connection) {
  const sql = fs.readFileSync(filePath, "utf-8");
  await connection.query(sql);
}

async function main() {
  const password = process.env.SQL_PASS;
  const connection = await mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "123456",
    database: "p_gen",
    multipleStatements: true,
  });

  const files = [
    "backend/srcDB/Subjects_and_Chapters_Input.sql",
    "backend/srcDB/AnToanBaoMatHeThongThongTin.sql",
    "backend/srcDB/CoSoDuLieu.sql",
    "backend/srcDB/KinhTeChinhTriMacLenin.sql",
    "backend/srcDB/MangMayTinh.sql",
    "backend/srcDB/PhapLuatDaiCuong.sql",
    "backend/srcDB/TuTuongHoChiMinh.sql",
  ];

  for (const file of files) {
    console.log("Running:", file);
    await runSQLFile(file, connection);
  }

  console.log("Import xong toàn bộ!");
  await connection.end();
}

main();
