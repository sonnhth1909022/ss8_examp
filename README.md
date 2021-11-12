# WCD Assignment
Hướng dẫn sử dụng:
- Bước 1: mở PHPMyadmin, tạo database mới rỗng (không có dữ liệu), sau đó import file asignment.sql ở trong folder của project và chạy lệnh save.
- Bước 2: Sau khi tạo db và thêm dữ liệu xong, chạy project từ folder ss8_examp
- Bước 3: Đợi 1 lúc cho project load index, khi có thông báo framework detected, click vào configure và nhấn OK.
- Bước 4: vào file persistence.xml thay đổi cấu hình url và username, password (theo db)
- Bước 5: cấu hình tomcat và artifact (nhấn fix nếu có báo đỏ)
 - Bước 6: chạy project

*Troubleshoot: 
- Nếu project không chạy được do lỗi thư viện, nhấn vào file> project structure> artifacts và ấn dấu - để xóa artifact. Sau đó ấn dấu + chọn Web Application Explored> from module và nhấn OK (2 lần).
