# Sử dụng Node.js 18 bản alpine nhẹ
FROM node:18-alpine

# Tạo thư mục làm việc
WORKDIR /usr/src/app

# Sao chép file package.json và package-lock.json
COPY package*.json ./

# Cài đặt các gói phụ thuộc
RUN npm install

# Sao chép toàn bộ mã nguồn vào container
COPY . .

# Mở cổng 5001 (như đã thiết lập trong .env của frontend)
EXPOSE 5001

# Lệnh khởi chạy ứng dụng (ở chế độ dev cho demo)
CMD ["npm", "start"]
