import {
  createContext,
  useContext,
  useState,
  useEffect,
  useMemo,
  useCallback,
  useRef,
} from "react";

const AuthContext = createContext();
const API_URL =
  import.meta.env.REACT_APP_API_URL ||
  `http://${window.location.hostname}:5001`;

export const useAuth = () => {
  const context = useContext(AuthContext);
  if (!context) {
    throw new Error("useAuth must be used within an AuthProvider");
  }
  return context;
};

const INACTIVITY_TIMEOUT_MS = 15 * 60 * 1000; // 15 phút

export const AuthProvider = ({ children }) => {
  const [user, setUser] = useState(null); //Tạm thời tắt
  // const [user, setUser] = useState({
  //   id: 999,
  //   username: "Guest_User",
  //   role: "User"
  // });
  const [loading, setLoading] = useState(true); // Tạm thời tắt
  // const [loading, setLoading] = useState(false);

  const [isRefreshing, setIsRefreshing] = useState(false);
  const inactivityTimerRef = useRef(null);
  const tokenExpiryTimerRef = useRef(null);

  const clearSessionState = useCallback(() => {
    localStorage.removeItem("accessToken");
    localStorage.removeItem("refreshToken");
    setUser(null);

    if (inactivityTimerRef.current) {
      clearTimeout(inactivityTimerRef.current);
      inactivityTimerRef.current = null;
    }

    if (tokenExpiryTimerRef.current) {
      clearTimeout(tokenExpiryTimerRef.current);
      tokenExpiryTimerRef.current = null;
    }
  }, []);

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

  // Check for existing tokens on app start
  useEffect(() => {
    const verifyToken = async () => {
      const token = localStorage.getItem("accessToken");
      if (token) {
        scheduleTokenExpiryLogout(token);
        await fetchProfile();
      } else {
        setLoading(false);
      }
    };

    verifyToken();
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, []);

  const login = async (username, password) => {
    try {
      const response = await fetch(`${API_URL}/auth/login`, {
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
      localStorage.setItem("accessToken", data.accessToken);
      localStorage.setItem("refreshToken", data.refreshToken);
      scheduleTokenExpiryLogout(data.accessToken);

      setUser(data.user);
      return { success: true };
    } catch (error) {
      return { success: false, error: error.message };
    }
  };

  const logout = useCallback(async () => {
    try {
      const token = localStorage.getItem("accessToken");
      if (token) {
        await fetch(`${API_URL}/auth/logout`, {
          method: "POST",
          headers: {
            Authorization: `Bearer ${token}`,
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

  const refreshAccessToken = async () => {
    if (isRefreshing) return; // Prevent multiple refresh calls
    setIsRefreshing(true);
    try {
      const refreshToken = localStorage.getItem("refreshToken");
      if (!refreshToken) {
        throw new Error("Không tìm thấy refresh token");
      }

      const response = await fetch(`${API_URL}/auth/refresh`, {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
        },
        body: JSON.stringify({ refreshToken }),
      });

      const data = await response.json();

      if (!response.ok) {
        throw new Error(data.message || "Làm mới token thất bại");
      }

      // Update tokens
      localStorage.setItem("accessToken", data.accessToken);
      localStorage.setItem("refreshToken", data.refreshToken);
      scheduleTokenExpiryLogout(data.accessToken);

      // Fetch profile with new token
      await fetchProfile();
    } catch (error) {
      console.error("Token refresh error:", error);
      // Clear invalid tokens
      clearSessionState();
      setLoading(false);
    } finally {
      setIsRefreshing(false);
    }
  };

  const fetchProfile = async () => {
    try {
      const token = localStorage.getItem("accessToken");
      if (!token) {
        setLoading(false);
        return;
      }

      const response = await fetch(`${API_URL}/auth/profile`, {
        headers: {
          Authorization: `Bearer ${token}`,
        },
      });

      if (response.ok) {
        const userData = await response.json();
        setUser(userData);
      } else if (response.status === 401 && !isRefreshing) {
        // Token expired, try refresh
        await refreshAccessToken();
      } else {
        throw new Error("Không thể tải hồ sơ người dùng");
      }
    } catch (error) {
      console.error("Profile fetch error:", error);
      // Clear invalid tokens
      clearSessionState();
    } finally {
      setLoading(false);
    }
  };

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
      token: localStorage.getItem("accessToken"),
    }),
    [user, loading, logout, fetchProfile],
  );

  return <AuthContext.Provider value={value}>{children}</AuthContext.Provider>;
};
