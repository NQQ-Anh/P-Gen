import db from './src/config/db.js';
import bcrypt from 'bcryptjs';

async function createTestUser() {
  try {
    console.log('Creating test user...');

    const username = 'testuser';
    const password = 'password123';
    const email = 'test@example.com';

    // Hash password
    const hashedPassword = await bcrypt.hash(password, 10);

    // Insert user
    const [result] = await db.execute(
      'INSERT INTO Users (username, password, email, role) VALUES (?, ?, ?, ?) ON DUPLICATE KEY UPDATE id=id',
      [username, hashedPassword, email, 'User']
    );

    console.log('✅ Test user created/updated successfully');
    console.log('Username: testuser');
    console.log('Password: password123');
    console.log('Email: test@example.com');

    process.exit(0);
  } catch (error) {
    console.error('❌ Error creating test user:', error.message);
    process.exit(1);
  }
}

createTestUser();