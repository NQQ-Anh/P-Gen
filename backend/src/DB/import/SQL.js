import mysql from "mysql2/promise";
import fs from "fs";

async function runSQLFile(filePath, connection) {
  const sql = fs.readFileSync(filePath, "utf-8");
  await connection.query(sql);
}

async function main() {
  const connection = await mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "123456",
    database: "p_gen",
    multipleStatements: true // QUAN TRỌNG
  });

  const files = [
    "D:/CODE/Project/P-Gen/P-Gen/backend/srcDB/Subjects_and_Chapters_Input.sql",
    "D:/CODE/Project/P-Gen/P-Gen/backend/srcDB/AnToanBaoMatHeThongThongTin.sql",
    "D:/CODE/Project/P-Gen/P-Gen/backend/srcDB/CoSoDuLieu.sql",
    "D:/CODE/Project/P-Gen/P-Gen/backend/srcDB/KinhTeChinhTriMacLenin.sql",
    "D:/CODE/Project/P-Gen/P-Gen/backend/srcDB/MangMayTinh.sql",
    "D:/CODE/Project/P-Gen/P-Gen/backend/srcDB/PhapLuatDaiCuong.sql",
    "D:/CODE/Project/P-Gen/P-Gen/backend/srcDB/TuTuongHoChiMinh.sql",
  ];

  for (const file of files) {
    console.log("Running:", file);
    await runSQLFile(file, connection);
  }

  console.log("Import xong toàn bộ!");
  await connection.end();
}

main();