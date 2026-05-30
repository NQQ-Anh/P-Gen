import mysql from "mysql2/promise";
import fs from "fs";
import dotenv from 'dotenv';

dotenv.config();


async function runSQLFile(filePath, connection) {
  const sql = fs.readFileSync(filePath, "utf-8");
  await connection.query(sql);
}

async function main() {
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
    multipleStatements: true,
  });

  const files = [
    "E:/SRCcode/Code/P_Gen/P-Gen/backend/srcDB/Subjects_and_Chapters_Input.sql",
    "E:/SRCcode/Code/P_Gen/P-Gen/backend/srcDB/AnToanBaoMatHeThongThongTin.sql",
    "E:/SRCcode/Code/P_Gen/P-Gen/backend/srcDB/CoSoDuLieu.sql",
    "E:/SRCcode/Code/P_Gen/P-Gen/backend/srcDB/KinhTeChinhTriMacLenin.sql",
    "E:/SRCcode/Code/P_Gen/P-Gen/backend/srcDB/MangMayTinh.sql",
    "E:/SRCcode/Code/P_Gen/P-Gen/backend/srcDB/PhapLuatDaiCuong.sql",
    "E:/SRCcode/Code/P_Gen/P-Gen/backend/srcDB/TuTuongHoChiMinh.sql",
  ];

  for (const file of files) {
    console.log("Running:", file);
    await runSQLFile(file, connection);
  }

  console.log("Import xong toàn bộ!");
  await connection.end();
}

main();
