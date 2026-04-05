import api from './api';

export const authService = {
    login: async (payload) => {
        const response = await api.post('/auth/login', payload);
        return response.data;
    },

    register: async (payload) => {
        const response = await api.post('/auth/register', payload);
        return response.data;
    },

    sendOtp: async (email, isPasswordReset = false) => {
        const response = await api.post('/auth/send-otp', {
            email,
            isPasswordReset,
        });
        return response.data;
    },

    verifyResetOtp: async (email, otp) => {
        const response = await api.post('/auth/verify-reset-otp', {
            email,
            otp,
        });
        return response.data;
    },

    resetPassword: async (email, otp, newPassword) => {
        const response = await api.post('/auth/reset-password', {
            email,
            otp,
            newPassword,
        });
        return response.data;
    },
};

export default authService;
