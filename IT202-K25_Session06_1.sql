SELECT 
    city, 
    SUM(total_price) AS revenue
FROM Bookings
WHERE status = 'COMPLETED'
GROUP BY city
HAVING SUM(total_price) > 0;

-- Thứ tự thực thi: Database chạy WHERE trước, sau đó mới tới GROUP BY và tính toán hàm tổng hợp (SUM)
-- Tại bước WHERE, dữ liệu vẫn đang ở dạng từng dòng đơn lẻ. Database Engine không thể biết SUM là bao nhiêu vì GROUP BY chưa diễn ra