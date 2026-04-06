# Hướng dẫn Chạy Dự án với Docker

Dự án đã được cấu hình để chạy bằng Docker và Docker Compose, giúp việc cài đặt môi trường trở nên dễ dàng và đồng nhất.

## 1. Yêu cầu Hệ thống
- Đã cài đặt **Docker Desktop** (trên Windows/Mac) hoặc Docker Engine & Docker Compose (trên Linux).

## 2. Các thành phần (Services)
- **db**: MySQL 8.0 (Cổng 3306).
- **backend**: Node.js Express API (Cổng 5000).
- **frontend**: React App (Cổng 5001).

## 3. Cách chạy ứng dụng

### Bước 1: Khởi động các Container
Mở terminal tại thư mục gốc của dự án và chạy lệnh:
```bash
docker-compose up --build
```
Lệnh này sẽ tải các image cần thiết, build Dockerfile cho backend/frontend và khởi chạy tất cả các dịch vụ.

### Bước 2: Khởi tạo Cơ sở Dữ liệu (Dành cho lần đầu)
Vì dự án dùng MySQL, bạn cần import các bảng dữ liệu vào container `db`.
- Nếu bạn có file `.sql`, bạn có thể chạy lệnh:
```bash
docker exec -i <tên_container_db> mysql -u root -p0393146946 phuyen_travel_5 < đường/dẫn/đến/file.sql
```
*(Thay `<tên_container_db>` bằng tên thực tế, thường là `nhom-2-congcu-demo-db-1`)*.

### Bước 3: Truy cập Ứng dụng
- **Frontend**: [http://localhost:5001](http://localhost:5001)
- **Backend API**: [http://localhost:5000/api](http://localhost:5000/api)

## 4. Một số lưu ý quan trọng
- **Biến môi trường**: Các biến quan trọng đã được cấu hình mặc định trong `docker-compose.yml`. Bạn có thể chỉnh sửa chúng trực tiếp trong file đó nếu cần.
- **Port**: 
  - Frontend chạy trên cổng **5001** (để tránh xung đột với backend).
  - Backend chạy trên cổng **5000**.
- **Data Persistence**: Dữ liệu MySQL được lưu tại volume `db_data`, nên khi bạn tắt hoặc xóa container, dữ liệu vẫn sẽ được giữ lại.

## 5. Các lệnh hữu ích
- Dừng ứng dụng: `docker-compose down`
- Xem log: `docker-compose logs -f`
- Chạy ngầm (detach): `docker-compose up -d`
