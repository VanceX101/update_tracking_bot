# 🚀 **Release Notes - Tracking Worker v2.0.0** 

📅 **Release Date:** 27-09-2024  
👤 **Published by:** *Vance Nguyen*

---

## 🎉 **New Features**:

- **🔄 Mở rộng phạm vi xử lý cho các luồng đơn ghép, đơn gộp:**
  - ✅ **Chính xác hơn bao giờ hết**: Đảm bảo lấy đúng thông tin cho từng **ASIN** trong danh sách gói hàng.
  - 🆔 Kết nối chính xác giữa **Order ID** và **Tracking Number** giúp quá trình xử lý đơn hàng liền mạch và không sai sót.

- **🌐 Mở rộng phạm vi xử lý cho nền tảng Fado:**
  - 📦 Cập nhật chính xác **item** từ thông tin **amazon_tracking_info**.
  - 📊 **Thông minh hơn**: Khi một **ASIN** từ Amazon có nhiều đơn hàng trên Fado, hệ thống sẽ tự động xử lý đúng số lượng đơn và cập nhật theo từng **Order ID**.

- **🛡️ Cơ chế Double-check**:
  - 🔍 **Kiểm tra hai lần, đảm bảo chính xác 100%**: Cơ chế double-check giúp xác thực dữ liệu trước khi cập nhật, hạn chế tối đa lỗi xảy ra trong quá trình xử lý.

- **📝 Ghi chú cập nhật:**
  - Bot sẽ tự động thêm ghi chú với định dạng: `"Bot was here: updated tracking for item {item_id}"` giúp bạn dễ dàng theo dõi tiến trình cập nhật.

---

## 🐛 **Bug Fixes**:
- 🔧 **Khắc phục các lỗi nhỏ** liên quan đến việc ghép và gộp đơn không chính xác.
- 🚀 **Tăng độ chính xác** và cải thiện độ ổn định cho hệ thống khi xử lý các đơn hàng lớn.

---

## ⚙️ **Enhancements**:
- 💨 **Tốc độ xử lý nhanh hơn**: Cải thiện hiệu năng xử lý tracking cho các gói hàng phức tạp với nhiều **ASIN** và **Order ID**.
- 🤖 **Tối ưu hóa** khả năng tương thích với các luồng đơn hàng từ Amazon và Fado.

---

🔗 **Version:** 2.0.0  
👨‍💻 **Publisher:** Vance Nguyen  
📅 **Release Date:** 27-09-2024  
