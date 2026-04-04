
import React, { createContext, useState, useContext, useEffect } from 'react';

const AuthContext = createContext(null);

export const AuthProvider = ({ children }) => {
    const [user, setUser] = useState(null);
    const [isAuthenticated, setIsAuthenticated] = useState(false);
    // --- 1. THÊM TRẠNG THÁI QUAN TRỌNG NÀY ---
    const [authInitialized, setAuthInitialized] = useState(false);

    useEffect(() => {
        try {
            // Check if user is logged in on mount
            const storedUser = localStorage.getItem('user');
            const token = localStorage.getItem('token') || sessionStorage.getItem('token');

            if (storedUser && token) {
                setUser(JSON.parse(storedUser));
                setIsAuthenticated(true);
            }
        } catch (error) {
            console.error("AuthContext: Failed to initialize auth state.", error);
            // Nếu có lỗi (ví dụ JSON sai), xóa dữ liệu hỏng
            localStorage.removeItem('user');
            localStorage.removeItem('token');
        } finally {
            // --- 2. ĐÁNH DẤU LÀ ĐÃ KIỂM TRA XONG ---
            // Dù thành công hay thất bại, quá trình khởi tạo đã hoàn tất.
            setAuthInitialized(true);
        }
    }, []);

    // Hàm này được giữ nguyên, không thay đổi
    const getToken = () => {
        return localStorage.getItem('token') || sessionStorage.getItem('token');
    };

    // Hàm login của bạn được giữ nguyên, không thay đổi
    const login = (userData, token, rememberMe = true) => {
        setUser({
            id: userData.id,
            username: userData.username,
            email: userData.email,
            fullName: userData.fullName || userData.full_name,
            phone: userData.phone,
            role: userData.role,
            avatar: userData.avatar
        });
        setIsAuthenticated(true);

        localStorage.setItem('user', JSON.stringify(userData));

        if (rememberMe) {
            localStorage.setItem('token', token);
        } else {
            sessionStorage.setItem('token', token);
        }
    };

    // Hàm logout của bạn được giữ nguyên, không thay đổi
    const logout = () => {
        setUser(null);
        setIsAuthenticated(false);
        localStorage.removeItem('user');
        localStorage.removeItem('token');
        sessionStorage.removeItem('user');
        sessionStorage.removeItem('token');
    };

    // Hàm updateUserAvatar của bạn được giữ nguyên, không thay đổi
    const updateUserAvatar = (avatarUrl) => {
        if (user) {
            const updatedUser = { ...user, avatar: avatarUrl };
            setUser(updatedUser);
            localStorage.setItem('user', JSON.stringify(updatedUser));
        }
    };

    return (
        <AuthContext.Provider value={{
            user,
            isAuthenticated,
            // --- 3. CUNG CẤP TRẠNG THÁI MỚI RA NGOÀI ---
            authInitialized,
            login,
            logout,
            getToken,
            updateUserAvatar,
        }}>
            {children}
        </AuthContext.Provider>
    );
};

// Hàm useAuth được giữ nguyên, không thay đổi
export const useAuth = () => {
    const context = useContext(AuthContext);
    if (!context) {
        throw new Error('useAuth must be used within an AuthProvider');
    }
    return context;
};

// Hàm getAuthToken export riêng được giữ nguyên, không thay đổi
export function getAuthToken() {
    return localStorage.getItem('token') || sessionStorage.getItem('token');
}