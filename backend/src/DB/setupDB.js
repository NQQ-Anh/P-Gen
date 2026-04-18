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
    // Subjects
    // =====================
    await connection.query(`
      CREATE TABLE IF NOT EXISTS Subjects (
        id INT AUTO_INCREMENT PRIMARY KEY,
        subject_name VARCHAR(255) NOT NULL,
        description TEXT,
        status ENUM('Active', 'Inactive') DEFAULT 'Inactive'
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
        status ENUM('Active', 'Inactive') DEFAULT 'Inactive',
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
        status ENUM('Active', 'Inactive') DEFAULT 'Inactive',
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
    // user_question_memory
    // =====================
    await connection.query(`
      CREATE TABLE IF NOT EXISTS user_question_memory (
        id INT AUTO_INCREMENT PRIMARY KEY,
        user_id INT NOT NULL,
        question_id INT NOT NULL,
        correct_streak INT DEFAULT 0,
        wrong_streak INT DEFAULT 0,
        review_count INT DEFAULT 0,
        memory_score DECIMAL(5, 4) DEFAULT 0.1,
        last_result BOOLEAN,
        last_reviewed_at DATETIME,
        next_review_at DATETIME NOT NULL, 
        
        FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
        FOREIGN KEY (question_id) REFERENCES questions(id) ON DELETE CASCADE,
        
        UNIQUE INDEX idx_user_question (user_id, question_id),
        INDEX idx_user_next_review (user_id, next_review_at)
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

    // =====================
    // Quiz Attempt
    // =====================
    await connection.query(`
      CREATE TABLE IF NOT EXISTS QuizAttempts (
        id INT AUTO_INCREMENT PRIMARY KEY,
        user_id INT NOT NULL,
        subject_id INT NOT NULL,
        chapter_id INT,
        score DECIMAL(4,2) NOT NULL,
        correct_count INT NOT NULL,
        total_questions INT NOT NULL,
        time_spent INT,
        created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
        FOREIGN KEY (user_id) REFERENCES Users(id) ON DELETE CASCADE,
        FOREIGN KEY (subject_id) REFERENCES Subjects(id) ON DELETE CASCADE,
        FOREIGN KEY (chapter_id) REFERENCES Chapters(id) ON DELETE SET NULL
      ) ENGINE=InnoDB;
    `);

    // =====================
    // Quiz Attempt Detail
    // =====================
    await connection.query(`
      CREATE TABLE IF NOT EXISTS QuizAttemptDetail (
        id BIGINT AUTO_INCREMENT PRIMARY KEY,
        attempt_id INT NOT NULL,
        question_id INT NOT NULL,
        selected_answer_id INT,
        is_correct BOOLEAN NOT NULL,
        FOREIGN KEY (attempt_id) REFERENCES QuizAttempts(id) ON DELETE CASCADE,
        FOREIGN KEY (question_id) REFERENCES Questions(id) ON DELETE CASCADE
      ) ENGINE=InnoDB;
    `);

    const users = [
      {
        id: 1,
        username: "admin1",
        password: "admin111",
        email: "admin1@pgen.vn",
        role: "Admin",
      },
      {
        id: 2,
        username: "admin2",
        password: "admin222",
        email: "admin2@pgen.vn",
        role: "Admin",
      },
      {
        id: 3,
        username: "user1",
        password: "user111",
        email: "user1@pgen.vn",
        role: "User",
      },
      {
        id: 4,
        username: "user2",
        password: "user222",
        email: "user2@pgen.vn",
        role: "User",
      },
      {
        id: 5,
        username: "user3",
        password: "user333",
        email: "user3@pgen.vn",
        role: "User",
      },
      {
        id: 6,
        username: "user4",
        password: "user444",
        email: "user4@pgen.vn",
        role: "User",
      },
      {
        id: 7,
        username: "user5",
        password: "user555",
        email: "user5@pgen.vn",
        role: "User",
      },
    ];

    for (const user of users) {
      const hash = await bcrypt.hash(user.password, 10);

      await connection.query(
        "INSERT INTO Users (id, username, password, email, role) VALUES (?, ?, ?, ?, ?)",
        [user.id, user.username, hash, user.email, user.role],
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
