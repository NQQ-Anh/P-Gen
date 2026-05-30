import {
  createContext,
  useContext,
  useState,
  useEffect,
  useMemo,
  useCallback,
  useRef,
} from "react";
import axios from "axios";

const AuthContext = createContext();
const API_BASE =
  import.meta.env.VITE_API_URL ||
  import.meta.env.REACT_APP_API_URL ||
  `http://${window.location.hostname}:5001`;
const ACCESS_TOKEN_KEY = "accessToken";
const REFRESH_TOKEN_KEY = "refreshToken";
const USER_KEY = "user";
const ROLE_KEY = "role";

export const useAuth = () => {
  const context = useContext(AuthContext);
  if (!context) {
    throw new Error("useAuth must be used within an AuthProvider");
  }
  return context;
};

const INACTIVITY_TIMEOUT_MS = 15 * 60 * 1000; // 15 phút

export const AuthProvider = ({ children }) => {
  const [token, setToken] = useState(() => localStorage.getItem(ACCESS_TOKEN_KEY));
  const [user, setUser] = useState(() => {
    try {
      const storedUser = localStorage.getItem(USER_KEY);
      if (!storedUser) return null;
      return JSON.parse(storedUser);
    } catch (error) {
      return null;
    }
  }); //Tạm thời tắt
  // const [user, setUser] = useState({
  //   id: 999,
  //   username: "Guest_User",
  //   role: "User"
  // });
  const [loading, setLoading] = useState(true); // Tạm thời tắt
  // const [loading, setLoading] = useState(false);

  const isRefreshingRef = useRef(false);
  const inactivityTimerRef = useRef(null);
  const tokenExpiryTimerRef = useRef(null);

  const persistUser = useCallback((nextUser) => {
    if (!nextUser) {
      localStorage.removeItem(USER_KEY);
      localStorage.removeItem(ROLE_KEY);
      return;
    }
    localStorage.setItem(USER_KEY, JSON.stringify(nextUser));
    if (nextUser.role) {
      localStorage.setItem(ROLE_KEY, nextUser.role);
    } else {
      localStorage.removeItem(ROLE_KEY);
    }
  }, []);

  const setAxiosAuthHeader = useCallback((token) => {
    if (token) {
      axios.defaults.headers.common.Authorization = `Bearer ${token}`;
    } else {
      delete axios.defaults.headers.common.Authorization;
    }
  }, []);

  const clearSessionState = useCallback(() => {
    localStorage.removeItem(ACCESS_TOKEN_KEY);
    localStorage.removeItem(REFRESH_TOKEN_KEY);
    localStorage.removeItem(USER_KEY);
    localStorage.removeItem(ROLE_KEY);
    setAxiosAuthHeader(null);
    setToken(null);
    setUser(null);

    if (inactivityTimerRef.current) {
      clearTimeout(inactivityTimerRef.current);
      inactivityTimerRef.current = null;
    }

    if (tokenExpiryTimerRef.current) {
      clearTimeout(tokenExpiryTimerRef.current);
      tokenExpiryTimerRef.current = null;
    }
  }, [setAxiosAuthHeader]);

  const getTokenExpiryMs = useCallback((token) => {
    try {
      const payloadBase64 = token.split(".")[1];
      if (!payloadBase64) return null;

      const normalized = payloadBase64.replace(/-/g, "+").replace(/_/g, "/");
      const padded = normalized + "=".repeat((4 - (normalized.length % 4)) % 4);
      const payload = JSON.parse(window.atob(padded));

      if (!payload?.exp || typeof payload.exp !== "number") {
        return null;
      }

      return payload.exp * 1000;
    } catch (error) {
      return null;
    }
  }, []);

  const login = async (username, password) => {
    try {
      const response = await fetch(`${API_BASE}/auth/login`, {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
        },
        body: JSON.stringify({ username, password }),
      });

      const data = await response.json();

      if (!response.ok) {
        throw new Error(data.message || "Đăng nhập thất bại");
      }

      // Store tokens
      localStorage.setItem(ACCESS_TOKEN_KEY, data.accessToken);
      localStorage.setItem(REFRESH_TOKEN_KEY, data.refreshToken);
      setAxiosAuthHeader(data.accessToken);
      setToken(data.accessToken);
      scheduleTokenExpiryLogout(data.accessToken);

      setUser(data.user);
      persistUser(data.user);
      return { success: true };
    } catch (error) {
      return { success: false, error: error.message };
    }
  };

  const logout = useCallback(async () => {
    try {
      const accessToken = localStorage.getItem(ACCESS_TOKEN_KEY);
      if (accessToken) {
        await fetch(`${API_BASE}/auth/logout`, {
          method: "POST",
          headers: {
            Authorization: `Bearer ${accessToken}`,
          },
        });
      }
    } catch (error) {
      console.error("Logout error:", error);
    } finally {
      // Clear local storage and state
      clearSessionState();
    }
  }, [clearSessionState]);

  const scheduleTokenExpiryLogout = useCallback(
    (token) => {
      if (tokenExpiryTimerRef.current) {
        clearTimeout(tokenExpiryTimerRef.current);
        tokenExpiryTimerRef.current = null;
      }

      if (!token) return;

      const expiryMs = getTokenExpiryMs(token);
      if (!expiryMs) return;

      const timeRemaining = expiryMs - Date.now();
      if (timeRemaining <= 0) {
        logout();
        return;
      }

      tokenExpiryTimerRef.current = window.setTimeout(() => {
        logout();
      }, timeRemaining);
    },
    [getTokenExpiryMs, logout],
  );

  const refreshAccessToken = useCallback(async () => {
    if (isRefreshingRef.current) return null; // Prevent multiple refresh calls
    isRefreshingRef.current = true;
    let statusCode = null;
    try {
      const refreshToken = localStorage.getItem(REFRESH_TOKEN_KEY);
      if (!refreshToken) {
        throw new Error("Không tìm thấy refresh token");
      }

      const response = await fetch(`${API_BASE}/auth/refresh`, {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
        },
        body: JSON.stringify({ refreshToken }),
      });

      const data = await response.json();

      statusCode = response.status;
      if (!response.ok) {
        throw new Error(data.message || "Làm mới token thất bại");
      }

      // Update tokens
      localStorage.setItem(ACCESS_TOKEN_KEY, data.accessToken);
      localStorage.setItem(REFRESH_TOKEN_KEY, data.refreshToken);
      setAxiosAuthHeader(data.accessToken);
      setToken(data.accessToken);
      scheduleTokenExpiryLogout(data.accessToken);
      return data.accessToken;
    } catch (error) {
      console.error("Token refresh error:", error);
      if (statusCode === 401) {
        clearSessionState();
      }
      return null;
    } finally {
      isRefreshingRef.current = false;
    }
  }, [clearSessionState, scheduleTokenExpiryLogout, setAxiosAuthHeader]);

  const fetchProfile = useCallback(async () => {
    let authStatus = null;
    try {
      const accessToken = localStorage.getItem(ACCESS_TOKEN_KEY);
      if (!accessToken) {
        setLoading(false);
        return;
      }
      setAxiosAuthHeader(accessToken);

      const response = await fetch(`${API_BASE}/auth/profile`, {
        headers: {
          Authorization: `Bearer ${accessToken}`,
        },
      });
      authStatus = response.status;

      if (response.ok) {
        const userData = await response.json();
        setUser(userData);
        persistUser(userData);
      } else if (response.status === 401 && !isRefreshingRef.current) {
        // Token expired, try refresh
        const nextToken = await refreshAccessToken();
        if (!nextToken) {
          return;
        }
        const retryResponse = await fetch(`${API_BASE}/auth/profile`, {
          headers: {
            Authorization: `Bearer ${nextToken}`,
          },
        });
        authStatus = retryResponse.status;
        if (retryResponse.ok) {
          const userData = await retryResponse.json();
          setUser(userData);
          persistUser(userData);
        } else if (retryResponse.status === 401) {
          clearSessionState();
        }
      } else {
        throw new Error("Không thể tải hồ sơ người dùng");
      }
    } catch (error) {
      console.error("Profile fetch error:", error);
      if (authStatus === 401) {
        clearSessionState();
      }
    } finally {
      setLoading(false);
    }
  }, [clearSessionState, persistUser, refreshAccessToken, setAxiosAuthHeader]);

  // Check for existing tokens on app start
  useEffect(() => {
    const verifyToken = async () => {
      const accessToken = localStorage.getItem(ACCESS_TOKEN_KEY);
      if (!accessToken) {
        setUser(null);
        localStorage.removeItem(USER_KEY);
        localStorage.removeItem(ROLE_KEY);
        setAxiosAuthHeader(null);
        setToken(null);
        setLoading(false);
        return;
      }

      const storedUser = localStorage.getItem(USER_KEY);
      if (storedUser) {
        try {
          setUser(JSON.parse(storedUser));
        } catch (error) {
          localStorage.removeItem(USER_KEY);
          localStorage.removeItem(ROLE_KEY);
        }
      }

      setAxiosAuthHeader(accessToken);
      setToken(accessToken);
      scheduleTokenExpiryLogout(accessToken);
      await fetchProfile();
    };

    verifyToken();
  }, [fetchProfile, scheduleTokenExpiryLogout, setAxiosAuthHeader]);

  useEffect(() => {
    const reqInterceptor = axios.interceptors.request.use(
      (config) => {
        const token = localStorage.getItem(ACCESS_TOKEN_KEY);
        if (!config.headers) {
          config.headers = {};
        }
        if (token) {
          config.headers.Authorization = `Bearer ${token}`;
        } else {
          delete config.headers.Authorization;
        }
        return config;
      },
      (error) => Promise.reject(error),
    );
    const resInterceptor = axios.interceptors.response.use(
      (response) => response,
      (error) => {
        const status = error?.response?.status;
        if (status === 401 && localStorage.getItem(ACCESS_TOKEN_KEY)) {
          clearSessionState();
        }
        return Promise.reject(error);
      },
    );

    return () => {
      axios.interceptors.request.eject(reqInterceptor);
      axios.interceptors.response.eject(resInterceptor);
    };
  }, [clearSessionState]);

  const resetInactivityTimer = useCallback(() => {
    if (inactivityTimerRef.current) {
      clearTimeout(inactivityTimerRef.current);
    }
    inactivityTimerRef.current = window.setTimeout(() => {
      logout();
      alert("Bạn đã bị đăng xuất do không hoạt động trong một thời gian dài.");
    }, INACTIVITY_TIMEOUT_MS);
  }, [logout]);

  useEffect(() => {
    if (!user) {
      if (inactivityTimerRef.current) {
        clearTimeout(inactivityTimerRef.current);
        inactivityTimerRef.current = null;
      }
      return;
    }

    const events = [
      "mousemove",
      "mousedown",
      "keydown",
      "scroll",
      "touchstart",
    ];
    const handleActivity = () => resetInactivityTimer();

    events.forEach((eventName) =>
      window.addEventListener(eventName, handleActivity),
    );
    resetInactivityTimer();

    return () => {
      if (inactivityTimerRef.current) {
        clearTimeout(inactivityTimerRef.current);
        inactivityTimerRef.current = null;
      }
      events.forEach((eventName) =>
        window.removeEventListener(eventName, handleActivity),
      );
    };
  }, [user, resetInactivityTimer]);

  useEffect(() => {
    return () => {
      if (tokenExpiryTimerRef.current) {
        clearTimeout(tokenExpiryTimerRef.current);
        tokenExpiryTimerRef.current = null;
      }
    };
  }, []);

  const value = useMemo(
    () => ({
      user,
      loading,
      login,
      logout,
      refreshProfile: fetchProfile,
      token,
    }),
    [user, loading, logout, fetchProfile, token],
  );

  return <AuthContext.Provider value={value}>{children}</AuthContext.Provider>;
};
