# P-Gen - JWT Authentication System

This project implements a complete JWT (JSON Web Token) authentication system with login, profile management, logout, and token refresh functionality.

## Features

- **User Registration**: Create new user accounts
- **JWT Authentication**: Secure login with access and refresh tokens
- **Protected Routes**: Middleware to protect API endpoints
- **Profile Management**: View user profile information
- **Token Refresh**: Automatic token renewal
- **Secure Logout**: Proper token invalidation
- **Password Hashing**: bcrypt for secure password storage

## Tech Stack

### Backend

- Node.js with Express
- MySQL database
- JWT for token management
- bcryptjs for password hashing
- CORS for cross-origin requests

### Frontend

- React with Vite
- Context API for state management
- Modern CSS for styling

## Quick Start

### Prerequisites

- Node.js (v14 or higher)
- MySQL database
- npm or yarn

### Installation & Setup

1. **Install all dependencies:**

   ```bash
   npm run install:all
   ```

2. **Setup Database:**

   ```bash
   cd backend
   node src/setupDatabase.js  # Run only once to setup database
   node testUser.js          # Create test user
   cd ..
   ```

3. **Start Development Servers:**
   ```bash
   npm run dev
   ```
   This will start both backend (port 5001) and frontend (port 5173) servers simultaneously.

### Alternative: Run servers separately

**Backend only:**

```bash
npm run dev:backend
```

**Frontend only:**

```bash
npm run dev:frontend
```

### Test Credentials

- **Username:** testuser
- **Password:** password123

## Available Scripts

From the project root directory:

- `npm run dev` - Start both backend and frontend development servers
- `npm run dev:backend` - Start only the backend server
- `npm run dev:frontend` - Start only the frontend server
- `npm run install:all` - Install dependencies for root, backend, and frontend
- `npm run build` - Build the frontend for production
- `npm run start` - Start the backend in production mode

## API Endpoints

### Authentication Routes (`/api/auth`)

#### POST `/api/auth/register`

Register a new user account.

**Request Body:**

```json
{
  "username": "newuser",
  "email": "newuser@example.com",
  "password": "password123"
}
```

**Response:**

```json
{
  "message": "User registered successfully",
  "user": {
    "id": 1,
    "username": "newuser",
    "email": "newuser@example.com",
    "role": "User"
  },
  "accessToken": "eyJhbGciOiJIUzI1NiIs...",
  "refreshToken": "eyJhbGciOiJIUzI1NiIs..."
}
```

#### POST `/api/auth/login`

Login with username and password.

**Request Body:**

```json
{
  "username": "testuser",
  "password": "password123"
}
```

#### GET `/api/auth/profile`

Get current user profile (requires authentication).

**Headers:**

```
Authorization: Bearer <access_token>
```

#### POST `/api/auth/logout`

Logout user (requires authentication).

#### POST `/api/auth/refresh`

Refresh access token using refresh token.

## Security Features

- **Password Hashing**: Uses bcrypt with salt rounds
- **JWT Tokens**: Access tokens expire in 15 minutes, refresh tokens in 7 days
- **Token Verification**: Middleware validates tokens on protected routes
- **CORS**: Configured for frontend-backend communication

## Project Structure

```
├── backend/
│   ├── src/
│   │   ├── config/db.js
│   │   ├── controllers/UserController.js
│   │   ├── middleware/auth.js
│   │   ├── routes/authRoute.js
│   │   ├── routes/userRoute.js
│   │   ├── server.js
│   │   └── setupDatabase.js
├── frontend/
│   ├── src/
│   │   ├── components/
│   │   │   ├── Login.jsx
│   │   │   ├── Register.jsx
│   │   │   └── Profile.jsx
│   │   ├── contexts/AuthContext.jsx
│   │   ├── App.jsx
│   │   └── App.css
```

## Manual Testing with cURL

1. **Register:**

   ```bash
   curl -X POST http://localhost:5001/api/auth/register \
     -H "Content-Type: application/json" \
     -d '{"username":"newuser","email":"newuser@example.com","password":"password123"}'
   ```

2. **Login:**

   ```bash
   curl -X POST http://localhost:5001/api/auth/login \
     -H "Content-Type: application/json" \
     -d '{"username":"testuser","password":"password123"}'
   ```

3. **Get Profile:**

   ```bash
   curl -X GET http://localhost:5001/api/auth/profile \
     -H "Authorization: Bearer YOUR_ACCESS_TOKEN"
   ```

4. **Refresh Token:**
   ```bash
   curl -X POST http://localhost:5001/api/auth/refresh \
     -H "Content-Type: application/json" \
     -d '{"refreshToken":"YOUR_REFRESH_TOKEN"}'
   ```

## Environment Variables

Create a `.env` file in the backend directory:

```env
JWT_SECRET=your-super-secret-jwt-key
JWT_REFRESH_SECRET=your-super-secret-refresh-key
DB_HOST=localhost
DB_USER=root
DB_PASSWORD=your-db-password
DB_NAME=p_gen
```
