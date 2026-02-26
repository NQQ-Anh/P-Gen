import mysql from "mysql2/promise";

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
    // Subjects
    // =====================
    await connection.query(`
      CREATE TABLE IF NOT EXISTS Subjects (
        id INT AUTO_INCREMENT PRIMARY KEY,
    subject_name VARCHAR(255) NOT NULL,
    description TEXT
      ) ENGINE=InnoDB;
    `);

    // =====================
    // Tags
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
    // Chapters
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
    // Users
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
    // Questions
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
    // Questions_Tags
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
    // Answers
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
    // Learning_Process
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

    console.log("✅ Database & Tables created successfully!");
    await connection.end();
    process.exit();

  } catch (error) {
    console.error("❌ Setup failed:", error);
    process.exit(1);
  }
}

setupDatabase();