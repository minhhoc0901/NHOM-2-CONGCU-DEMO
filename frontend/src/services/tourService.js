import axios from 'axios';
import { CONFIG } from '../config';

const API_BASE_URL = CONFIG.API_API_URL;

export const tourService = {
    
    async getToursForSale(filters = {}) {
        try {
            // Map frontend filter names to backend parameter names
            const backendParams = {
                page: filters.page || 1,
                limit: filters.limit || 12,
                destination: filters.location || filters.destination || undefined,
                price_min: filters.minPrice || filters.price_min || undefined,
                price_max: filters.maxPrice || filters.price_max || undefined,
                duration: filters.duration || undefined,
                sort_by: filters.sortBy === 'price' ? 'price' : 'latest'
            };

            const queryParams = new URLSearchParams();
            
            Object.keys(backendParams).forEach(key => {
                if (backendParams[key] !== null && backendParams[key] !== undefined && backendParams[key] !== '') {
                    queryParams.append(key, backendParams[key]);
                }
            });

            console.log('Fetching tours with params:', queryParams.toString());
            
            const response = await fetch(`${API_BASE_URL}/tours/for-sale?${queryParams.toString()}`);
            
            if (!response.ok) {
                const errorData = await response.json();
                throw new Error(errorData.message || 'Failed to fetch tours');
            }
            
            const data = await response.json();
            
            // Transform response data to match frontend expectations
            if (data.success && data.data) {
                return {
                    success: true,
                    data: {
                        tours: data.data.tours || [],
                        pagination: {
                            page: data.data.pagination?.page || 1,
                            limit: data.data.pagination?.limit || backendParams.limit,
                            total: data.data.pagination?.total || 0,
                            totalPages: data.data.pagination?.totalPages || 1,
                            hasNext: data.data.pagination?.hasNext ?? false,
                            hasPrev: data.data.pagination?.hasPrev ?? false
                        }
                    }
                };
            }
            
            return data;
        } catch (error) {
            console.error('Error fetching tours:', error);
            throw error;
        }
    },

    // Lấy tours nổi bật
    async getFeaturedTours(limit = 8) {
        try {
            const response = await fetch(`${API_BASE_URL}/tours/featured?limit=${limit}`);
            
            if (!response.ok) {
                throw new Error('Failed to fetch featured tours');
            }
            
            return await response.json();
        } catch (error) {
            console.error('Error fetching featured tours:', error);
            throw error;
        }
    },

    // Lấy chi tiết tour
    async getTourDetail(tourId) {
        try {
            const response = await fetch(`${API_BASE_URL}/tours/detail/${tourId}`);
            
            if (!response.ok) {
                const errorData = await response.json();
                throw new Error(errorData.message || 'Failed to fetch tour details');
            }
            
            return await response.json();
        } catch (error) {
            console.error(`Error fetching details for tour ${tourId}:`, error);
            throw error;
        }
    },
    async getTourDepartures(tourId) {
        try {
            // Sửa lại endpoint cho đúng với backend và sử dụng API_BASE_URL
            const response = await fetch(`${API_BASE_URL}/tour-departures/${tourId}/available`);
            
            if (!response.ok) {
                // Thêm logic xử lý lỗi chi tiết hơn
                const errorData = await response.text(); // Dùng .text() để xem server trả về gì
                console.error("Server response (not JSON):", errorData);
                throw new Error('Không thể tải lịch khởi hành.');
            }
            
            return await response.json();
        } catch (error) {
            console.error(`Error fetching departures for tour ${tourId}:`, error);
            throw error;
        }
    },

    async getTourById(tourId) {
        try {
            const response = await axios.get(`${API_BASE_URL}/tours/${tourId}`);
            return response.data;
        } catch (error) {
            console.error(`Error fetching tour ${tourId}:`, error);
            throw error;
        }
    },

    async createTour(formData, token) {
        try {
            const response = await axios.post(`${API_BASE_URL}/tours`, formData, {
                headers: {
                    Authorization: `Bearer ${token}`,
                },
            });
            return response.data;
        } catch (error) {
            console.error('Error creating tour:', error);
            throw error;
        }
    },

    async updateTour(tourId, formData, token) {
        try {
            const response = await axios.put(`${API_BASE_URL}/tours/${tourId}`, formData, {
                headers: {
                    Authorization: `Bearer ${token}`,
                },
            });
            return response.data;
        } catch (error) {
            console.error(`Error updating tour ${tourId}:`, error);
            throw error;
        }
    },
};