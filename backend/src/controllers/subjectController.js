import db from '../config/db.js';

export const getAllSubjects = async (req, res) => {
  try {
    const [rows] = await db.execute('SELECT * FROM Subjects');
    res.json(rows);
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};

export const getSubjectById = async (req, res) => {
  try {
    const { id } = req.params;
    const [subjectRows] = await db.execute('SELECT * FROM Subjects WHERE id = ?', [id]);
    if (subjectRows.length === 0) {
      return res.status(404).json({ message: 'Subject not found' });
    }
    const [chapterRows] = await db.execute('SELECT * FROM Chapters WHERE subject_id = ?', [id]);
    res.json({
      subject: subjectRows[0],
      chapters: chapterRows
    });
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};

export const createSubject = async (req, res) => {
  try {
    const { subject_name, description } = req.body;
    const [result] = await db.execute('INSERT INTO Subjects (subject_name, description) VALUES (?, ?)', [subject_name, description]);
    res.status(201).json({ message: 'Subject created successfully', subjectId: result.insertId });
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};

export const updateSubject = async (req, res) => {
  try {
    const { id } = req.params;
    const { subject_name, description } = req.body;
    await db.execute('UPDATE Subjects SET subject_name = ?, description = ? WHERE id = ?', [subject_name, description, id]);
    res.json({ message: 'Subject updated successfully' });
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};

export const deleteSubject = async (req, res) => {
  try {
    const { id } = req.params;
    await db.execute('DELETE FROM Subjects WHERE id = ?', [id]);
    res.json({ message: 'Subject deleted successfully' });
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};