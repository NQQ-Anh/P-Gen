import mysql from "mysql2/promise";

async function setupDatabase() {
  try {
    console.log("🚀 Setting up database...");

    // Kết nối MySQL (không chọn database trước)
    const connection = await mysql.createConnection({
      host: "localhost",
      user: "root",
      password: "123456",
    });

    // Tạo database
    await connection.query(`CREATE DATABASE IF NOT EXISTS learning_system`);
    await connection.query(`USE learning_system`);

    // =====================
    // Subjects
    // =====================
    await connection.query(`
      CREATE TABLE IF NOT EXISTS subjects (
        id INT AUTO_INCREMENT PRIMARY KEY,
        subject_name VARCHAR(255) NOT NULL,
        description TEXT
      ) ENGINE=InnoDB;
    `);

    // =====================
    // Tags
    // =====================
    await connection.query(`
      CREATE TABLE IF NOT EXISTS tags (
        id INT AUTO_INCREMENT PRIMARY KEY,
        tag_name VARCHAR(255) NOT NULL,
        subject_id INT NOT NULL,
        FOREIGN KEY (subject_id) REFERENCES subjects(id)
          ON DELETE CASCADE
          ON UPDATE CASCADE
      ) ENGINE=InnoDB;
    `);

    // =====================
    // Chapters
    // =====================
    await connection.query(`
      CREATE TABLE IF NOT EXISTS chapters (
        subject_id INT NOT NULL,
        id INT NOT NULL,
        chapter_name VARCHAR(255) NOT NULL,
        order_index INT,
        PRIMARY KEY (subject_id, id),
        FOREIGN KEY (subject_id) REFERENCES subjects(id)
          ON DELETE CASCADE
          ON UPDATE CASCADE
      ) ENGINE=InnoDB;
    `);

    // =====================
    // Users
    // =====================
    await connection.query(`
      CREATE TABLE IF NOT EXISTS users (
        id INT AUTO_INCREMENT PRIMARY KEY,
        username VARCHAR(100) NOT NULL UNIQUE,
        password VARCHAR(255) NOT NULL,
        email VARCHAR(255) UNIQUE,
        role ENUM('admin','user') DEFAULT 'user'
      ) ENGINE=InnoDB;
    `);

    // =====================
    // Questions
    // =====================
    await connection.query(`
      CREATE TABLE IF NOT EXISTS questions (
        subject_id INT NOT NULL,
        chapter_id INT NOT NULL,
        id INT NOT NULL,
        content TEXT NOT NULL,
        explanation TEXT,
        status ENUM('draft','published') DEFAULT 'draft',
        author_id INT,
        PRIMARY KEY (subject_id, chapter_id, id),
        FOREIGN KEY (subject_id, chapter_id)
          REFERENCES chapters(subject_id, id)
          ON DELETE CASCADE
          ON UPDATE CASCADE,
        FOREIGN KEY (author_id)
          REFERENCES users(id)
          ON DELETE SET NULL
      ) ENGINE=InnoDB;
    `);

    // =====================
    // Questions_Tags
    // =====================
    await connection.query(`
      CREATE TABLE IF NOT EXISTS questions_tags (
        subject_id INT NOT NULL,
        chapter_id INT NOT NULL,
        question_id INT NOT NULL,
        tag_id INT NOT NULL,
        PRIMARY KEY (subject_id, chapter_id, question_id, tag_id),
        FOREIGN KEY (subject_id, chapter_id, question_id)
          REFERENCES questions(subject_id, chapter_id, id)
          ON DELETE CASCADE
          ON UPDATE CASCADE,
        FOREIGN KEY (tag_id)
          REFERENCES tags(id)
          ON DELETE CASCADE
          ON UPDATE CASCADE
      ) ENGINE=InnoDB;
    `);

    // =====================
    // Answers
    // =====================
    await connection.query(`
      CREATE TABLE IF NOT EXISTS answers (
        subject_id INT NOT NULL,
        chapter_id INT NOT NULL,
        question_id INT NOT NULL,
        id INT NOT NULL,
        content TEXT NOT NULL,
        is_correct BOOLEAN DEFAULT FALSE,
        PRIMARY KEY (subject_id, chapter_id, question_id, id),
        FOREIGN KEY (subject_id, chapter_id, question_id)
          REFERENCES questions(subject_id, chapter_id, id)
          ON DELETE CASCADE
          ON UPDATE CASCADE
      ) ENGINE=InnoDB;
    `);

    // =====================
    // Learning_Process
    // =====================
    await connection.query(`
      CREATE TABLE IF NOT EXISTS learning_process (
        user_id INT NOT NULL,
        subject_id INT NOT NULL,
        chapter_id INT NOT NULL,
        question_id INT NOT NULL,
        interval_days INT DEFAULT 1,
        easiness_factor FLOAT DEFAULT 2.5,
        next_review DATETIME,
        repetition INT DEFAULT 0,
        PRIMARY KEY (user_id, subject_id, chapter_id, question_id),
        FOREIGN KEY (user_id)
          REFERENCES users(id)
          ON DELETE CASCADE,
        FOREIGN KEY (subject_id, chapter_id, question_id)
          REFERENCES questions(subject_id, chapter_id, id)
          ON DELETE CASCADE
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