import axios from 'axios';

const api = axios.create({
    baseUrl: '192.168.0.108:3333',
});

export default api;