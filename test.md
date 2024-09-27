# Release Notes - Tracking Worker v2.0.0

### Update Features:

- **Mở rộng phạm vi xử lý cho các luồng đơn ghép, đơn gộp:**
  - Đảm bảo việc lấy thông tin chính xác cho từng **ASIN** trong danh sách gói hàng (**package list**).
  - Tương ứng chính xác với **Order ID** và **Tracking Number** để tránh nhầm lẫn trong việc cập nhật thông tin đơn hàng.

- **Mở rộng phạm vi xử lý cho nền tảng Fado:**
  - Cập nhật chính xác từng **item** dựa trên thông tin **amazon_tracking_info**.
  - Nếu một **ASIN** có trong danh sách gói hàng từ Amazon mà được gắn với nhiều đơn hàng trên Fado, hệ thống sẽ cập nhật đúng số lượng đơn tương ứng cho từng **Order ID** liên quan.

- **Xây dựng cơ chế double-check:**
  - Cơ chế này giúp kiểm tra và đối chiếu lại thông tin tracking để đảm bảo dữ liệu được cập nhật chính xác, tránh trùng lặp hoặc sai sót trong quá trình xử lý thông tin từ Amazon và Fado.

- **Cập nhật ghi chú bổ sung:**
  - Hệ thống sẽ tự động ghi chú với format: `"Bot was here: updated tracking for item {item_id}"`, giúp người dùng dễ dàng theo dõi quá trình tự động cập nhật của bot.

---

### Bug Fixes:
- Đã khắc phục một số lỗi nhỏ liên quan đến việc ghép đơn và gộp đơn hàng không chính xác.
- Tăng độ chính xác và độ ổn định khi cập nhật tracking cho các đơn hàng lớn.

---

### Enhancements:
- Cải thiện tốc độ xử lý tracking với các gói hàng có nhiều **ASIN** hoặc **Order ID**.
- Tăng khả năng tương thích với nhiều luồng đơn hàng phức tạp từ Amazon và Fado.

---

**Version:** 2.0.0  
**Release Date:** 27-09-2024
