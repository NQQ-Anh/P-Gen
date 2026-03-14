import { useState } from 'react';
import { AuthProvider, useAuth } from './contexts/AuthContext';
import Login from './components/Login';
import Register from './components/Register';
import Profile from './components/Profile';
import './App.css';

function AppContent() {
  const { user, loading } = useAuth();
  const [currentView, setCurrentView] = useState('home');

  if (loading) {
    return <div className="loading">Loading...</div>;
  }

  return (
    <div className="app">
      <header>
        <h1>JWT Authentication Demo</h1>
        <nav>
          <button onClick={() => setCurrentView('home')}>Home</button>
          {!user ? (
            <>
              <button onClick={() => setCurrentView('login')}>Login</button>
              <button onClick={() => setCurrentView('register')}>Register</button>
            </>
          ) : (
            <>
              <button onClick={() => setCurrentView('profile')}>Profile</button>
              <span>Welcome, {user.username}!</span>
            </>
          )}
        </nav>
      </header>

      <main>
        {currentView === 'home' && (
          <div className="home">
            <h2>Welcome to JWT Authentication Demo</h2>
            <p>This demo shows how to implement JWT authentication with login, profile, logout, and token refresh functionality.</p>
            <div className="features">
              <h3>Features:</h3>
              <ul>
                <li>User registration and login</li>
                <li>JWT access and refresh tokens</li>
                <li>Protected routes with authentication middleware</li>
                <li>Automatic token refresh</li>
                <li>Profile management</li>
                <li>Secure logout</li>
              </ul>
            </div>
          </div>
        )}

        {currentView === 'login' && !user && <Login />}
        {currentView === 'register' && !user && <Register />}
        {currentView === 'profile' && user && <Profile />}
      </main>
    </div>
  );
}

function App() {
  return (
    <AuthProvider>
      <AppContent />
    </AuthProvider>
  );
}

export default App;
