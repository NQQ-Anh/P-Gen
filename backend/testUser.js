import db from './src/config/db.js';
import bcrypt from 'bcryptjs';

async function createTestUser() {
  try {
    console.log('Creating test users...');

    // Create regular user
    const userUsername = 'testuser';
    const userPassword = 'password123';
    const userEmail = 'user@example.com';
    const userHashedPassword = await bcrypt.hash(userPassword, 10);

    await db.execute(
      'INSERT INTO Users (username, password, email, role) VALUES (?, ?, ?, ?) ON DUPLICATE KEY UPDATE id=id',
      [userUsername, userHashedPassword, userEmail, 'User']
    );

    console.log('✅ Regular user created/updated');
    console.log('Username: testuser');
    console.log('Password: password123');
    console.log('Email: user@example.com');

    // Create admin user
    const adminUsername = 'admin';
    const adminPassword = 'admin123';
    const adminEmail = 'admin@example.com';
    const adminHashedPassword = await bcrypt.hash(adminPassword, 10);

    await db.execute(
      'INSERT INTO Users (username, password, email, role) VALUES (?, ?, ?, ?) ON DUPLICATE KEY UPDATE id=id',
      [adminUsername, adminHashedPassword, adminEmail, 'Admin']
    );

    console.log('✅ Admin user created/updated');
    console.log('Username: admin');
    console.log('Password: admin123');
    console.log('Email: admin@example.com');

    process.exit(0);
  } catch (error) {
    console.error('❌ Error creating test users:', error.message);
    process.exit(1);
  }
}

createTestUser();