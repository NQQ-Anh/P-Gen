import mysql from "mysql2/promise";
import bcrypt from "bcrypt";

async function setupDatabase() {
  try {
    console.log("🚀 Setting up database...");

    // Kết nối MySQL (không chọn database trước)
    const connection = await mysql.createConnection({
      host: "localhost",
      user: "root",
      password: "123456", // Thay bằng pass db local
    });

    // Tạo database
    await connection.query(`CREATE DATABASE IF NOT EXISTS p_gen`);
    await connection.query(`USE p_gen`);

    // =====================
    // 1-Subjects
    // =====================
    await connection.query(`
      CREATE TABLE IF NOT EXISTS Subjects (
        id INT AUTO_INCREMENT PRIMARY KEY,
    subject_name VARCHAR(255) NOT NULL,
    description TEXT
      ) ENGINE=InnoDB;
    `);

    // =====================
    // 2-Tags
    // =====================
    await connection.query(`
      CREATE TABLE IF NOT EXISTS Tags (
        id INT AUTO_INCREMENT PRIMARY KEY,
    tag_name VARCHAR(100) NOT NULL,
    subject_id INT NOT NULL,
    FOREIGN KEY (subject_id) REFERENCES Subjects(id) ON DELETE CASCADE
      ) ENGINE=InnoDB;
    `);

    // =====================
    // 3-Chapters
    // =====================
    await connection.query(`
      CREATE TABLE IF NOT EXISTS Chapters (
         id INT AUTO_INCREMENT PRIMARY KEY,
    chapter_name VARCHAR(255) NOT NULL,
    order_index INT DEFAULT 0,
    subject_id INT NOT NULL,
    FOREIGN KEY (subject_id) REFERENCES Subjects(id) ON DELETE CASCADE
      ) ENGINE=InnoDB;
    `);

    // =====================
    // 4-Users
    // =====================
    await connection.query(`
      CREATE TABLE IF NOT EXISTS Users (
        id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    role ENUM('Admin', 'User') DEFAULT 'User'
      ) ENGINE=InnoDB;
    `);

    // =====================
    // 5-Questions
    // =====================
    await connection.query(`
      CREATE TABLE IF NOT EXISTS Questions (
        id INT AUTO_INCREMENT PRIMARY KEY,
    content TEXT NOT NULL,
    explanation TEXT,
    status ENUM('Pending', 'Approved') DEFAULT 'Pending',
    author_id INT NOT NULL,
    chapter_id INT NOT NULL,
    subject_id INT NOT NULL,
    FOREIGN KEY (author_id) REFERENCES Users(id) ON DELETE CASCADE,
    FOREIGN KEY (chapter_id) REFERENCES Chapters(id) ON DELETE CASCADE,
    FOREIGN KEY (subject_id) REFERENCES Subjects(id) ON DELETE CASCADE
      ) ENGINE=InnoDB;
    `);

    // =====================
    // 6-Questions_Tags
    // =====================
    await connection.query(`
      CREATE TABLE IF NOT EXISTS Questions_tags (
        question_id INT NOT NULL,
    tag_id INT NOT NULL,
    PRIMARY KEY (question_id, tag_id),
    FOREIGN KEY (question_id) REFERENCES Questions(id) ON DELETE CASCADE,
    FOREIGN KEY (tag_id) REFERENCES Tags(id) ON DELETE CASCADE
      ) ENGINE=InnoDB;
    `);

    // =====================
    // 7-Answers
    // =====================
    await connection.query(`
      CREATE TABLE IF NOT EXISTS Answers (
        id INT AUTO_INCREMENT PRIMARY KEY,
    content TEXT NOT NULL,
    is_correct BOOLEAN DEFAULT FALSE,
    question_id INT NOT NULL,
    FOREIGN KEY (question_id) REFERENCES Questions(id) ON DELETE CASCADE
      ) ENGINE=InnoDB;
    `);

    // =====================
    // 8-Learning_Process
    // =====================
    await connection.query(`
      CREATE TABLE IF NOT EXISTS Learning_process (
        user_id INT NOT NULL,
    question_id INT NOT NULL,
    interval_days INT DEFAULT 0,
    easiness_factor FLOAT DEFAULT 2.5,
    repetition INT DEFAULT 0,
    next_review DATETIME NOT NULL,
    PRIMARY KEY (user_id, question_id),
    FOREIGN KEY (user_id) REFERENCES Users(id) ON DELETE CASCADE,
    FOREIGN KEY (question_id) REFERENCES Questions(id) ON DELETE CASCADE
      ) ENGINE=InnoDB;
    `);

    await connection.query(`
      CREATE TABLE IF NOT EXISTS History (
      id BIGINT AUTO_INCREMENT PRIMARY KEY,
      user_id INT NOT NULL,
      question_id INT NOT NULL,
      is_correct BOOLEAN NOT NULL,
      answered_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
      FOREIGN KEY (user_id) REFERENCES Users(id) ON DELETE CASCADE,
      FOREIGN KEY (question_id) REFERENCES Questions(id) ON DELETE CASCADE
      ) ENGINE=InnoDB;
      `);

      // await connection.query(`
      //   INSERT IGNORE INTO Users (id, username, password, email, role) VALUES
      // (1, 'admin1', 'admin111', 'admin1@pgen.vn', 'Admin'),
      // (2, 'admin2', 'admin222', 'admin2@pgen.vn', 'Admin'),
      // (3, 'user1', 'user111', 'user1@pgen.vn', 'User'),
      // (4, 'user2', 'user222', 'user2@pgen.vn', 'User'),
      // (5, 'user3', 'user333', 'user3@pgen.vn', 'User'),
      // (6, 'user4', 'user444', 'user4@pgen.vn', 'User'),
      // (7, 'user5', 'user555', 'user5@pgen.vn', 'User');
      // `);


const users = [
  { id:1, username:"admin1", password:"admin111", email:"admin1@pgen.vn", role:"Admin"},
  { id:2, username:"admin2", password:"admin222", email:"admin2@pgen.vn", role:"Admin"},
  { id:3, username:"user1", password:"user111", email:"user1@pgen.vn", role:"User"},
  { id:4, username:"user2", password:"user222", email:"user2@pgen.vn", role:"User"},
  { id:5, username:"user3", password:"user333", email:"user3@pgen.vn", role:"User"},
  { id:6, username:"user4", password:"user444", email:"user4@pgen.vn", role:"User"},
  { id:7, username:"user5", password:"user555", email:"user5@pgen.vn", role:"User"}
];

for (const user of users) {
  const hash = await bcrypt.hash(user.password,10);

  await connection.query(
    "INSERT INTO Users (id, username, password, email, role) VALUES (?, ?, ?, ?, ?)",
    [user.id, user.username, hash, user.email, user.role]
  );
}
    console.log("✅ Database & Tables created successfully!");
    await connection.end();
    process.exit();

  } catch (error) {
    console.error("❌ Setup failed:", error);
    process.exit(1);
  }
}

setupDatabase();