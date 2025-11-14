SELECT 
    customer_id, 
    amount, 
    payment_date
FROM sakila.payment
WHERE payment_date > '2005-08-01'
  AND amount > 9.00
ORDER BY amount DESC;

SELECT 
    payment_id,
    customer_id,
    staff_id,
    amount
FROM sakila.payment
WHERE amount = 0.00
   OR (staff_id = 1 AND amount > 10.00)
ORDER BY customer_id ASC;

/*
PHÂN TÍCH VÀ NHẬN ĐỊNH KINH DOANH

Khách hàng VIP:
- Kết quả từ Nhiệm vụ 1 cho thấy nhóm khách hàng có các giao dịch lớn (amount > 9.00) thường là những khách hàng chi tiêu mạnh tay.
- Việc sắp xếp theo amount giảm dần (DESC) giúp xác định nhanh nhóm "khách hàng VIP" — những người mang lại doanh thu cao nhất.
- Dữ liệu này hữu ích cho chiến dịch chăm sóc khách hàng thân thiết, khuyến mãi ưu tiên hoặc chương trình tích điểm.

Giao dịch Bất thường:
- Các giao dịch có amount = 0.00 có thể là:
  + Kết quả của các chương trình khuyến mãi (miễn phí thuê phim, tặng phim).
  + Hoặc lỗi hệ thống có sai sót trong quá trình nhập dữ liệu thanh toán.
- Quản lý cửa hàng cần theo dõi kỹ các giao dịch này để đảm bảo hệ thống thanh toán minh bạch, tránh thất thoát doanh thu hoặc sai lệch dữ liệu.

Hiệu suất Nhân viên:
- Nhân viên có staff_id = 1 xử lý các giao dịch có giá trị rất cao (amount > 10.00).
- Đây có thể là dấu hiệu tích cực về hiệu suất, nhưng cần phân tích thêm:
  + Số lượng giao dịch nhân viên đó thực hiện.
  + Tỷ lệ lỗi, hoàn tiền, hay phản hồi từ khách hàng.
- Nếu nhân viên này thường xuyên xử lý giao dịch cao và không có lỗi, có thể xem xét đề xuất khen thưởng.

Tổng kết:
- Báo cáo giúp xác định nhóm khách hàng quan trọng, phát hiện bất thường trong giao dịch, 
và cung cấp cơ sở dữ liệu đáng tin cậy cho việc đánh giá hiệu suất nhân viên và ra quyết định kinh doanh.

