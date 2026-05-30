import db from "../config/db.js";

const normalizeStatus = (status) =>
  status === "Inactive" ? "Inactive" : "Active";

export const getAllSubjects = async (req, res) => {
  try {
    const role = req.user.role;

    const [rows] = await db.execute(
      `
      SELECT s.*, 
        (SELECT COUNT(*) FROM chapters WHERE subject_id = s.id 
         AND (status = 'Active' OR ? = 'Admin')) AS total_chapters,
        (SELECT COUNT(*) FROM questions q WHERE q.subject_id = s.id 
         AND (q.status = 'Active' OR ? = 'Admin')) AS total_questions
      FROM subjects s
      WHERE (s.status = 'Active' OR ? = 'Admin')
    `,
      [role, role, role],
    );

    res.json(rows);
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};

export const getSubjectById = async (req, res) => {
  try {
    const { id } = req.params;
    const role = req.user.role;

    const [subjectRows] = await db.execute(
      "SELECT * FROM subjects WHERE id = ?",
      [id],
    );

    if (subjectRows.length === 0) {
      return res.status(404).json({ message: "Không tìm thấy môn học" });
    }

    const [chapterRows] = await db.execute(
      `SELECT c.* FROM chapters c 
       INNER JOIN subjects s ON c.subject_id = s.id
       WHERE c.subject_id = ? 
       AND (? = 'Admin' OR (c.status = 'Active' AND s.status = 'Active'))`,
      [id, role],
    );

    res.json({
      subject: subjectRows[0],
      chapters: chapterRows,
    });
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};

export const createSubject = async (req, res) => {
  try {
    const { subject_name, description } = req.body;
    const status = normalizeStatus(req.body?.status);
    const [result] = await db.execute(
      "INSERT INTO subjects (subject_name, description, status) VALUES (?, ?, ?)",
      [subject_name, description, status],
    );
    res
      .status(201)
      .json({ message: "Tạo môn học thành công", subjectId: result.insertId });
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};

export const updateSubject = async (req, res) => {
  try {
    const { id } = req.params;
    const { subject_name, description } = req.body;
    const status = normalizeStatus(req.body?.status);
    await db.execute(
      "UPDATE subjects SET subject_name = ?, description = ?, status = ? WHERE id = ?",
      [subject_name, description, status, id],
    );
    res.json({ message: "Cập nhật môn học thành công" });
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};

export const deleteSubject = async (req, res) => {
  try {
    const { id } = req.params;
    await db.execute("DELETE FROM subjects WHERE id = ?", [id]);
    res.json({ message: "Xóa môn học thành công" });
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};
