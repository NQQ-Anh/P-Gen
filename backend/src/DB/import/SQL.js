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
    password: "",
    database: "p_gen",
    multipleStatements: true,
  });

  const files = [
    "../../../srcDB/Subjects_and_Chapters_Input.sql",
    "../../../srcDB/AnToanBaoMatHeThongThongTin.sql",
    "../../../srcDB/CoSoDuLieu.sql",
    "../../../srcDB/KinhTeChinhTriMacLenin.sql",
    "../../../srcDB/MangMayTinh.sql",
    "../../../srcDB/PhapLuatDaiCuong.sql",
    "../../../srcDB/TuTuongHoChiMinh.sql",
  ];

  for (const file of files) {
    console.log("Running:", file);
    await runSQLFile(file, connection);
  }

  console.log("Import xong toàn bộ!");
  await connection.end();
}

main();
