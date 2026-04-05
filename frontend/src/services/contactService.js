import api from './api';

export const submitContactMessage = (data) => api.post('/contact/submit', data);
