SET NAMES 'utf8mb4';

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cho lược đồ Cơ Sở Dữ liệu sau: NhanVien ( MaNV, HoNV, TenNV, DiaChi, ThanhPho ) KhachHang( MaKH, TenKH, DiaChi, ThanhPho, SoDu, GioiHanTinDung) HoaDon( MaHD, NgayLapHoaDon, MaKH, MaNV) ChiTietHoaDon (MaHD, MaSP, SoLuong,GiaBan ) SanPham(MaSP,MoTa, NhomHang, KhoHang,GiaGoc) Dựa vào lược đồ Cơ Sở Dữ liệu trên, Tạo câu truy vấn để liệt kê danh sách các sản phẩm có giá từ 50000 đến 100000?', '', 'Approved', 1, 3, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Select * From SanPham Where GiaGoc>=50000', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Select * From SanPham Where GiaGoc<=100000', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Select * From SanPham Where GiaGoc between 50000 and 100000', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Select * From SanPham Where GiaGoc in(50000,100000)', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cho lược đồ Cơ sở dữ liệu sau: SINHVIEN(MaSV, HoSV, TenSV, Phai, NgaySinh, DiaChi, DienThoai, MaLop) LOP(MaLop, TenLop, MaKhoa, GVCN) KETQUA(MaSV, MaMH, LanThi, Diem) MONHOC(MaMH, TenMH, SoTinChi) Liệt kê danh sách các sinh viên gồm (MaSV, HoSV, TenSV) có điểm thi môn CSDL cao nhất?', '', 'Approved', 1, 3, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Select K.MaSV, HoSV, TenSV From SinhVien S, KetQua K Where S.MASV=K.MASV And MaMH=''CSDL'' And Diem>=ALL (Select Diem From KetQua where MaMH =''CSDL'')', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Select K.MaSV, HoSV, TenSV From SinhVien S, ketqua K Where S.MASV=K.MASV And MaMH=''CSDL'' And Diem= (Select max(Diem)From ketqua where MaMH =''CSDL'')', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Select top 1 with ties K.MaSV, HoSV, TenSV From SinhVien S, KetQua K Where S.MASV=K.MASV And MaMH=''CSDL'' order by diem desc', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả các phương án trên.', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cho lược đồ CSDL sau: NhanVien (MaNV, HoNV, TenNV, DiaChi, ThanhPho) KhachHang (MaKH, TenKH, DiaChi, ThanhPho, SoDu, GioiHanTinDung) HoaDon (MaHD, NgayLapHoaDon, MaKH, MaNV) ChiTietHoaDon (MaHD, MaSP, SoLuong,GiaBan) SanPham(MaSP,MoTa, NhomHang, KhoHang,GiaGoc) Dựa vào lược đồ Cơ Sở Dữ liệu trên, Liệt kê ra sản phẩm có giá lớn hơn giá trung bình cuả các sản phẩm?', '', 'Approved', 1, 3, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Select * From SanPham Where GiaGoc>(Select Avg(GiaGoc) From SanPham)', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Select * From SanPham Where GiaGoc>(Select Avg(GiaGoc) From SanPham Group by MaSP)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Select * From SanPham Where GiaGoc> Avg(GiaGoc)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Select * From SanPham Group by MaSP Having GiaGoc> Avg(GiaGoc)', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cho mô hình thực thể kết hợp (Mô hình ER) như hình bên. Hãy chuyển từ mô hình ER sang lược đồ Cơ sở dữ liệu?', '', 'Approved', 1, 2, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Học Viên (Mã học viên, tên học viên, điạ chỉ, ngày sinh, số điện thoại, ngày nhập học, mã môn học) Môn học(Mã môn học, tên môn học, thời lượng) Khoá chính là Mã môn học Với: khoá chính cuả bảng học viên là Mã học viên và khoá chính cuả bảng môn học là Mã môn học.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Học Viên (Mã học viên, tên học viên, điạ chỉ, ngày sinh, số điện thoại, ngày nhập học,Mã môn học) Môn học(Mã môn học, tên môn học, thời lượng, Mã học viên) Với: khoá chính cuả bảng học viên là Mã học viên, Mã môn học và khoá chính của bảng môn học là Mã môn học, Mã học viên', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Học Viên (Mã học viên, tên học viên, điạ chỉ, ngày sinh, số điện thoại) Môn học(Mã môn học, tên môn học, thời lượng) Học Viên Mon Hoc(Mã học viên, Mã môn học) Với: khoá chính cuả bảng "Học Viên" là Mã học viên Khoá chính cuả bảng "Môn học" là Mã môn học. Khoá chính cuả bảng "Học Viên Mon Hoc" là Mã học viên, Mã môn học.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Học Viên (Mã học viên, tên học viên, điạ chỉ, ngày sinh, số điện thoại) Môn học(Mã môn học, tên môn học, thời lượng, Mã học viên) Với: khoá chính cuả bảng học viên là Mã học viên và khoá chính cuả bảng môn học là Mã môn học.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('_____ của một thực thể trở thành các cột trong một bảng cơ sở dữ liệu', '', 'Approved', 1, 2, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Các thuộc tính', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Các bộ (tuple)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Các file dữ liệu', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Các biểu đồ E-R', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('_____ là sự ngăn chặn người dùng không có quyền được truy cập cơ sở dữ liệu.', '', 'Approved', 1, 1, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tính độc lập của dữ liệu', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Ràng buộc về tính nguyên vẹn', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tình trạng dư thừa', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bảo mật', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('_____ phổ biến bao gồm Access, Oracle, DB2, và SQL Server.', '', 'Approved', 1, 1, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Các biểu đồ E-R', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Các DBA', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Các file dữ liệu', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Các DBMS', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Ba loại quan hệ 2 ngôi là:', '', 'Approved', 1, 2, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('1:1, 1:N, N:M', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Entity, class, instance.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Unique, non-unique, associated.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả đều sai.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Bạn đang thiết kế một mô hình cơ sở dữ liệu để quản lý sinh viên. Mỗi sinh viên có thể học nhiều hơn một lớp, mỗi lớp có nhiều sinh viên nhưng chỉ được 1 giáo viên dạy. Bạn có 3 thực thể Lớp, Sinh viên, giáo viên trong cơ sở dữ liệu. Dạng quan hệ nào sau đây phải có trong quan hệ giữa Sinh viên và lớp học?', '', 'Approved', 1, 2, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Một - Nhiều', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhiều - Nhiều', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Một - Một', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Không - Nhiều', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Các bảng tính, tài liệu, và trang Web được lưu trong _____.', '', 'Approved', 1, 1, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cơ sở dữ liệu', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Các file', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Các thực thể', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Các thuộc tính', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Các bộ dữ liệu trong một quan hệ phải có tính chất:', '', 'Approved', 1, 2, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả các bộ dữ liệu phải khác nhau', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Với hai bộ dữ liệu bất kỳ, chúng phải khác nhau trên một hoặc nhiều cột', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Mỗi quan hệ phải có khóa', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả các phương án trên.', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Các mối kết hợp có trong mô hình là (Hình bên)?', '', 'Approved', 1, 2, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('NH N VIÊN, QUẢN LÝ TRỰC TIẾP, QUẢN LÝ, THAM GIA, THUỘC', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('NH N VIÊN, LĨNH VỰC,QUẢN LÝ, THAM GIA, THUỘC', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('QUẢN LÝ, QUẢN LÝ TRỰC TIẾP, THAM GIA, THUỘC', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả đều sai', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Các yếu tố cơ bản nào được sử dụng trong mô hình E-R?', '', 'Approved', 1, 2, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thực thể', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Các thuộc tính tương ứng của thực thể', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Các mối kết hợp giữa các thực thể', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả các phương án trên.', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Các yếu tố liên quan đến thuộc tính của đối tượng là?', '', 'Approved', 1, 2, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tên gọi của thuộc tính', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Miền giá trị của thuộc tính', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Kiểu dữ liệu của thuộc tính', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả các phương án trên', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cách nhanh nhất để xác định số dòng trong một bảng là:', '', 'Approved', 1, 3, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tạo một kịch bản đưa ra danh sách và hiển thị mỗi dòng.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dựa vào số lớn nhất của ID có trong bảng.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sử dụng hàm count để đếm trong câu truy vấn.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dựa vào thuộc tính trong bảng.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Câu lệnh nào sau đây sẽ tước quyền của người dùng đối với cơ sở dữ liệu?', '', 'Approved', 1, 1, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('SELECT', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('INDEX', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('GRANT', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('REVOKE', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Câu lệnh SQL sau đây làm gì? Select * From Customer Where Cust_Type = "Best"', '', 'Approved', 1, 3, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Danh sách gồm tất cả các cột trong bảng Customer mà mỗi dòng đều có nhãn khách hàng(Cust_Type) là "best".', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Danh sách gồm cột có cột tên là "*" trong bảng Customer mà mỗi dòng đều có nhãn khách hàng là "best".', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Danh sách gồm tất cả các cột có một dấu "*" trong bảng Customer.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Danh sách gồm tất cả các cột trong bảng Customer mà mỗi dòng đều có nhãn khách hàng là "*".', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Câu lệnh truy vấn nào sau đây cho kết quả là cột ProductID trong Table Oder_detail, mỗi ProductID chỉ hiễn thị một lần?', '', 'Approved', 1, 3, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('SELECT DISTINCT ProductID FROM order_details', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('SELECT UNIQUE ProductID FROM order_details', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('SELECT ProductID FROM order_details', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('SELECT ProductID FROM order_details ONLY ONCE', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Câu lệnh truy vấn nào sau đây dùng để xác định các Productname có ProductID là 10, 11 hoặc 42?', '', 'Approved', 1, 3, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('SELECT ProductName FROM products WHERE ProductID IN (10,11,42)', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('SELECT ProductName FROM products WHERE ProductID = (10,11,42)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('SELECT ProductName FROM products WHERE ProductID IS (10,11,42)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('SELECT ProductName FROM products WHERE ProductID IN 10 OR 11 OR 42', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Câu lệnh truy vấn nào sau đây dùng để xác định standard prices nhỏ nhất trong table product_v', '', 'Approved', 1, 3, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('select standard_price from min(product_v)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('select standard_price from product_v where standard_price = min', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('select min(standard_price) from product_v', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('select min(standard_price) from product_v where standard_price = min(standard_price)', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Câu lệnh truy vấn nào sau đây là sai cú pháp?', '', 'Approved', 1, 3, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('SELECT ProductName FROM products WHERE (UnitPrice < 10) , (UnitsInStock > 5)', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('SELECT ProductName FROM products WHERE (UnitPrice < 10) OR NOT (UnitsInStock > 5)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('SELECT ProductName FROM products WHERE UnitPrice < 10 OR UnitsInStock > 5', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('SELECT ProductName FROM products WHERE UnitPrice < 10 AND UnitsInStock > 5', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Câu lệnh truy vấn nào sau đây là sai?', '', 'Approved', 1, 3, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('SELECT * FROM emp WHERE empid = 493945', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('SELECT empid FROM emp', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('SELECT empid FROM emp WHERE empid= 493945', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('SELECT empid WHERE empid = 56949 AND lastname = ''SMITH''', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Câu nào dưới đây đúng?', '', 'Approved', 1, 1, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Trong một môi trường hướng file, phi cơ sở dữ liệu, dữ liệu thường bị tách thành một vài hệ thống rời rạc, mỗi hệ thống có một tập hợp các file riêng.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dữ liệu người dùng không thể được kết hợp và chia sẻ giữa những người dùng có quyền.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Những người dùng cơ sở dữ liệu không nên truy cập cùng thông tin.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thường có thể loại bỏ tình trạng dư thừa.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Câu nào sau đây dùng để xoá bảng KhachHang ra khỏi một lược đồ cơ sở dữ liệu?', '', 'Approved', 1, 3, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Delete table Khachhang', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Drop table Khachhang', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cả 2 phương án: 1 và 2', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Remove table KhachHang', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cấu trúc của một mô hình quan hệ được định nghĩa bởi:', '', 'Approved', 1, 1, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quan hệ, bộ và thuộc tính', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bảng, dòng và cột', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tập tin, mẫu tin và trường', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả đều đúng', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Câu truy vấn nào sau đây chứa một lỗi?', '', 'Approved', 1, 3, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('SELECT * FROM emp WHERE empid = 493945;', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('SELECT empid FROM emp WHERE empid= 493945;', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('SELECT empid WHERE empid = 56949 AND lastname = ''SMITH'';', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('SELECT empid FROM emp;', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cho lược đồ quan hệ D(H, K, I, Y, Z) và tập phụ thuộc hàm C={H K->I Z, K->Y , Y->H }. Phụ thuộc hàm nào sau đây không được suy diễn từ C:', '', 'Approved', 1, 4, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('H Y->I Z', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('K Z->H I', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('H K->Y H', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('K->H', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cho 1 bảng với cấu trúc sau: NhanVien(MaNV, TenNV, Luong, NgayBatDauVaoLam), Tạo câu truy vấn SQL để tìm nhân viên có lương cao nhất', '', 'Approved', 1, 3, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('SELECT * FROM NhanVien ORDER BY Luong DESC;', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('SELECT top 1 * FROM NhanVien ORDER BY Luong;', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('SELECT top 1 * FROM NhanVien ORDER BY Luong DESC;', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('SELECT top 1 * FROM NhanVien;', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cho 1 bảng với cấu trúc sau: NhanVien(MaNV, TenNV, Luong, NgayBatDauVaoLam), Tạo câu truy vấn SQL để tìm tất cả các nhân viên bắt đầu vào làm việc trong năm 2005?', '', 'Approved', 1, 3, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('SELECT * FROM NhanVien WHERE NgayBatDauVaoLam=2005;', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('SELECT * FROM NhanVien WHERE NgayBatDauVaoLam>=''01/01/2005'';', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('SELECT * FROM NhanVien WHERE year(NgayBatDauVaoLam)=2005;', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('SELECT * FROM NhanVien WHERE NgayBatDauVaoLam< ''01/01/2006'';', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cho 1 bảng với cấu trúc sau: NhanVien(MaNV, TenNV, Luong, NgayBatDauVaoLam). Tạo câu truy vấn SQL để tìm tất cả các nhân viên mà có ký tự đầu cuả tên là ''S''?', '', 'Approved', 1, 3, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('SELECT * FROM NhanVien WHERE TenNV IN [''S''];', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('SELECT * FROM NhanVien WHERE TenNV LIKE ''S%'';', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('SELECT * FROM TenNV WHERE NhanVien LIKE ''S*'';', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('SELECT EmpNo FROM NhanVien WHERE TenNV LIKE ''S'';', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cho 2 bảng sau: PhongBan(MaPB,TenPB,TruongPhong,DonVi, ViTri) NhanVien(MaNV, HoTen, MaPB,CongViec, NamSinh,Luong) Tạo truy vấn để liệt kê danh sách các phòng ban và họ tên trưởng phòng cuả phòng ban đó. Danh sách gồm MaPB, MaNV, HoTen.', '', 'Approved', 1, 3, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Select n.MaPB, MaNV, Tennv From nhanvien n,phongban p Where n.manv=p.truongphong', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Select n.MaPB, MaNV, Tennv From nhanvien n,phongban p Where n.mapb=p.mapb', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Select n.MaPB, MaNV, Tennv From nhanvien n,phongban p Where n.mapb=p.mapb Group by n.MaPB, MaNV, Tennv', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Select n.MaPB, MaNV, Tennv From nhanvien n,phongban p Where n.mapb=p.mapb Order by n.MaPB', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cho bảng SanPham(MaSP, TenSP, DonGia) có khóa chính là [MaSP]. Tạo câu truy vấn để xem giá thấp nhất trong bảng SanPham là bao nhiêu?', '', 'Approved', 1, 3, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Select DonGia from SanPham where DonGia = min;', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Select min(DonGia) from SanPham;', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Select min(DonGia) from SanPham where DonGia = min(DonGia);', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Select DonGia from SanPham where DonGia = min(DonGia);', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cho bảng sau: DonHang(MaDH,MaSP,SoLuong,GiaBan) Để tạo khoá chính cho bảng Donhang (khoá chính gồm 2 Field là MaDH và MaSP). Câu nào sau đây là đúng?', '', 'Approved', 1, 3, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Alter table DonHang Add Primary Key (MaDH,MaSP)', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Alter table DonHang Add Primary Key (DonHang,MaDH,MaSP)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Alter table DonHang Add Primary (MaDH,MaSP)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Alter table DonHang Add Key (MaDH,MaSP)', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cho bảng sau: SanPham(MaSP,MoTa, NhomHang, KhoHang,GiaGoc, SoLuongTon) Cho biết có bao nhiêu sản phẩm thuộc nhóm hàng ''HW''?', '', 'Approved', 1, 3, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Select sum(MaSP) From SanPham Where NhomHang=''HW''', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Select Count(*) From SanPham Where NhomHang=''HW''', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Select Count From SanPham Where NhomHang=''HW''', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Select Count * From SanPham Where NhomHang=''HW''', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cho bảng sau: SanPham(MaSP,MoTa, NhomHang, KhoHang,GiaGoc, SoLuongTon) Liệt kê danh sách các sản phẩm chưá trong kho số 3 và có Số Lượng Tồn lớn hơn 30?', '', 'Approved', 1, 3, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Select * From SanPham', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Select * From SanPham Where KhoHang=3 and SoLuongTon>30', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Select * From SanPham Where KhoHang=3 or SoLuongTon>30', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Select sum(MaSP) as SLTon From SanPham Where KhoHang=3 Group by MaSP Having SLTon>30', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cho bảng sau: SanPham(MaSP,MoTa, NhomHang, KhoHang,GiaGoc, SoLuongTon) Liệt kê danh sách các sản phẩm không chưá trong kho số 3?', '', 'Approved', 1, 3, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Select * From SanPham Where KhoHang<>3', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Select * From SanPham Where KhoHang!=3', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cả 2 phương án: 1 và 2', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Select * From SanPham here KhoHang not in 3', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cho bảng sau: SinhVien(MaSV,MaKhoaHoc,SoDu) Liệt kê danh sách các sinh viên có số dư trong tài khoản lớn hơn bằng 100000 và nhỏ hơn bằng 500000?', '', 'Approved', 1, 3, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Select * From SinhVien Where SoDu like 100000 and 500000', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Select * From SinhVien Where SoDu Between 100000 and 500000', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Select * From SinhVien Where SoDu in 100000 and 500000', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Select * From SinhVien Where SoDu Having 100000 and 500000', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cho bảng SinhVien(MaSV,TenSV,ChuyenNganh) với khóa chính là [Masv, ChuyenNganh]. Các sinh viên có thể học nhiều chuyên ngành khác nhau. Tạo câu truy vấn liệt kê danh sách các sinh viên không thuộc chuyên ngành CNTT.', '', 'Approved', 1, 3, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('SELECT * FROM SinhVien HAVING ChuyenNganh <> ''CNTT"', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('SELECT * FROM SinhVien GROUP BY ChuyenNganh HAVING ChuyenNganh <> ''CNTT"', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('SELECT * FROM SinhVien WHERE MaSV NOT IN (SELECT MaSV FROM SinhVien WHERE ChuyenNganh = ''CNTT'')', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('SELECT * FROM SinhVien WHERE MaSV NOT IN (SELECT MaSV FROM SinhVien Having ChuyenNganh = ''CNTT'')', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cho bảng SinhVien(MaSV,TenSV,ThanhPho,ChuyenNganh) với khóa chính là [Masv, ChuyenNganh]. Các sinh viên có thể học nhiều chuyên ngành khác nhau. Cho câu lệnh SELECT của SQL sau: Select MaSV, ChuyenNganh From SinhVien GROUP BY MaSV, ChuyenNganh HAVING ThanhPho=''VungTau'' Chọn câu trả lời đúng?', '', 'Approved', 1, 3, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Câu lệnh trên bị lỗi.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Trả về danh sách gồm MaSV, ChuyenNganh của các sinh viên có thành phố là VungTau.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Trả về một bảng gồm các chuyên ngành của từng sinh viên.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Trả về 1 dòng gồm MaSV, ChuyenNganh của sinh viên có thành phố là VungTau.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cho bảng T(P,O,C) và các phụ thuộc hàm sau: P->O, P->C, C->O. Loại phụ thuộc hàm tồn tại trong lược đồ CSDL trên:', '', 'Approved', 1, 4, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phụ thuộc bắc cầu.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phụ thuộc riêng phần.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phụ thuộc đầy đủ.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phụ thuộc hàm hiển nhiên.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cho bảng TT {Q , I , C , E , B } và tập phụ thuộc hàm sau:Q -> E,B; E -> I,C; Q,C -> I; Bao đóng của {I E B} là:', '', 'Approved', 1, 4, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('{I C E B}', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('{B E C Q}', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('{Q E I C}', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('{Q I C E}', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cho bảng TT {Q , K , J , U , H } và tập phụ thuộc hàm sau: Q -> U,H; U -> K,J; Q,J -> K; Bao đóng của {Q U} là:', '', 'Approved', 1, 4, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('{Q K J U H}', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('{K J U H}', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('{Q K U H}', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('{Q K J U}', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cho bảng TT {V , S , J , A , E , D , N } và tập phụ thuộc hàm sau: V, S -> D, N; E -> V , S, J; J, D -> A, N; A, N,J -> D; V, N, S -> E; Bao đóng của {V S} là', '', 'Approved', 1, 4, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('{V S J A N E D}', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('{V S J N E D}', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('{V S J A N E}', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('{V J A N E D}', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cho bảng Z(U, B, Q, T, A) và tập phụ thuộc hàm sau: H={ U->B Q; Q T->A; U Q-A; B->T; A->U B } Có 4 khóa dự tuyển trong Z là:', '', 'Approved', 1, 4, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('U; BQ; Q T; A', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('T; Q U; T U; Q', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Q; U B; Q T ; A', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('T; B Q U; Q T ; U A', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cho bảng: NhanVien MaNV TenNV 1 An 2 Hoa Cho câu truy vấn sau SELECT * FROM NhanVien, thứ tự các dòng trả về sẽ dựa trên?', '', 'Approved', 1, 1, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Không có thứ tự.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thứ tự dựa trên khóa chính.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Theo giá trị của cột MaNV, rồi đến cột TenNV', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dựa vào thứ tự của các dòng khi chèn vào bảng, dòng nào chèn trước sẽ xếp trước.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cho biết kết quả của câu truy vấn bằng SQL sau? Select customer_name, telephone from customers where city in (‘Boston’,’New York’,’Denver’);', '', 'Approved', 1, 3, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Danh sách các customer_name và telephone của tất cả các khách hàng có trong bảng customers.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Danh sách các customer_name và telephone của tất cả các khách hàng đang sống ở Boston, New York hoặc Denver.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Danh sách các customer_name của tất cả các khách hàng đang sống ở Boston, New York hoặc Denver.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Danh sách các customer_name và telephone của tất cả các khách hàng đang sống ở Boston và New York và Denver.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cho biết kết quả của câu truy vấn bằng SQL sau? Select item_no, description from item where weight > 100 and weight < 200;', '', 'Approved', 1, 3, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Danh sách các item_no và description của tất cả các món mà có trọng lượng (weight) nhỏ hơn 100.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Danh sách các item_no của tất cả các món mà có trọng lượng từ 101 đến 199..', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Danh sách của tất cả các món mà có trọng lượng lớn hơn 200.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Danh sách các item_no và description của tất cả các món mà có trọng lượng từ 101 đến 199..', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cho biết kết quả của câu truy vấn bằng SQL sau? Select min(MoTaSanPham) from SanPham;', '', 'Approved', 1, 3, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Trả về giá trị nhỏ nhất của cột MoTaSanPham.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Câu lệnh trên bị lỗi.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Không có câu nào đúng.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Trả về dòng có ký tự chữ cái đầu tiên theo thứ tự abc của cột MoTaSanPham trong bảng SanPham.', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cho biết kết quả của câu truy vấn bằng SQL sau? Select sum(DonGia) as TongDonGia from SanPham where LoaiSanPham = ‘Cotton’;', '', 'Approved', 1, 3, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Trả về tổng đơn giá của tất cả các sản phẩm mà có lọai sản phẩm là Cotton.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Trả về tổng đơn giá của tất cả các sản phẩm.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Trả về đơn giá của bất kỳ sản phẩm nào có trong bảng SanPham.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Trả về đơn giá của sản phẩm đầu tiên mà có lọai sản phẩm là "Cotton" trong bảng SanPham.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cho các bảng sau: SinhVien(MaSV,TenSV,DiaChi,MaKhoaHoc) KetQua(MaSV,MaMH,Diem) MonHoc(MaMH,TenMH) Cho câu truy vấn SQL sau: SELECT TenSV, AVG(Diem) FROM SinhVien s,KetQua k WHERE s.MaSV=k.MaSV GROUP BY TenSV HAVING avg(Diem) >70 Kết quả nào sau đây là đúng cho câu truy vấn trên?', '', 'Approved', 1, 3, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Câu truy vấn trên không đúng cú pháp.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Câu truy vấn trên trả về tên sinh viên và điểm trung bình cuả sinh viên đó.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Câu truy vấn trên trả về Tên của những sinh viên có điểm trung bình lớn hơn 70.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả đều sai.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cho các bảng sau: KhachHang (MaKH, TenKH, ThanhPho) SanPham(MaSP, TenSP, SoLuong, DonGia) DaiLy (MaDL, TenDL, ThanhPho, HueHong) DatHang (MaDH, NgayDH, MaKH, MaDL, MaSP, SoLuong, ThanhTien). Chọn câu lệnh SQL để giải quyết câu truy vấn sau: Tăng giá cuả mỗi sản phẩm trong bảng SanPham lên 10% cho tất cả các sản phẩm mà khách hàng ''C01'' đặt mua.', '', 'Approved', 1, 3, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Update SanPham set DonGia= DonGia * 1.1 where DatHang.MaKH = ''C01'';', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Update SanPham, DatHang set SanPham.DonGia = SanPham.DonGia * 10% where DatHang.MaKH = ''C01'';', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Update SanPham set DonGia = 1.1 * DonGia where MaSP in (select MaSP from DatHang where MaKH = ''C01'');', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Update SanPham set DonGia = 0.1 * DonGia where MaSP in (select MaSP from DatHang where MaKH = ''C01'');', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cho các bảng sau: KhachHang (MaKH, TenKH, ThanhPho) SanPham(MaSP, TenSP, SoLuong, DonGia) DaiLy (MaDL, TenDL, ThanhPho, HueHong) DatHang (MaDH, NgayDH, MaKH, MaDL, MaSP, SoLuong, ThanhTien) Chọn câu lệnh SQL để giải quyết câu query sau. Liệt kê danh sách tên các khách hàng đặt mua sản phẩm ''P02'' hoặc đặt mua thông qua đaị lý ''A04''.', '', 'Approved', 1, 3, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Select TenKH from KhachHang where MaKH in (select MaKH from DatHang where MaSP = ''P02'' OR MaDL = ''A04'')', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Select TenKH from KhachHang where MaKH in (select o1.MaKH from DatHang o1, DatHang o2 Where o1.MaSP = ''P02'' and o2.MaDL = ''A04'' and o1.MaSP = o2.MaSP);', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Select TenKH from KhachHang c, DatHang o1, DatHang o2 where c.MaKH = o1.MaKH and c.MaKH = o2.MaKH and MaSP = ''P02'' and MaDL = ''A04'';', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Select TenKH from KhachHang c, DatHang o1, DatHang o2 where MaSP = ''P02'' and MaDL = ''A04'';', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cho các lựơc đồ quan hệ sau: NhaCungCap(MaNCC,TenNCC,ThanhPho) SanPham(MaSP,TenSP,Mau) CungCap(MaNCC,MaSP,SoLuong) Hãy cho biết ý nghĩa của lệnh truy vấn sau: Select TenNCC From NhaCungCap X Where Not Exists (Select * From CungCap Y Where X.MaNCC = Y.MaNCC)', '', 'Approved', 1, 3, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Trả về tên cuả nhà cung cấp mà không tồn tại trong cơ sở dữ liệu.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Trả về tên cuả nhà cung cấp mà không cung cấp bất kỳ sản phẩm nào.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Trả về tên cuả nhà cung cấp mà không cung cấp tất cả các sản phẩm.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Không có phương án nào.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cho các phụ thuộc hàm (H I -> D, D -> P) của lược đồ quan hệ N(H I D P), phụ thuộc hàm H -> P có thể được suy ra nhờ vào:', '', 'Approved', 1, 4, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Luật phản xạ', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Luật thêm vào', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Luật bắc cầu', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả điều sai.', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cho các phụ thuộc hàm sau F= (Z Q -> A N C, Z -> C), của lược đồ quan hệ B = (Z,Q,A,N,C) ta có thể suy ra:', '', 'Approved', 1, 4, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Z là khóa của lược đồ quan hệ B', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Không có câu nào đúng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Q C là khóa của lược đồ quan hệ B ồ', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Z Q là khóa của lược đồ quan hệ B', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cho các phụ thuộc hàm{B Q -> L, L -> H} của lược đồ quan hệ S(B Q L H), phụ thuộc hàm B -> H có thể được suy ra nhờ vào:', '', 'Approved', 1, 4, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Luật phản xạ', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Luật thêm vào', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Luật bắc cầu', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả điều sai', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cho CSDL gồm các bảng sau: SinhVien(MaSV,TenSV,DiaChi,MaKhoaHoc) KetQua(MaSV,MaMH,Diem) MonHoc(MaMH,TenMH) Cho câu truy vấn SQL sau: SELECT TenMH FROM MonHoc s,KetQua k WHERE s.MaMH=k.MaMH GROUP BY TenMH HAVING Diem >70 Chọn câu trả lời đúng?', '', 'Approved', 1, 3, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Câu truy vấn trên bị lỗi.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Câu truy vấn trên trả về danh sách tất cả các tên môn học.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Câu truy vấn trên trả về danh sách tất cả các tên môn học mà sinh viên học có điểm lớn hơn 70.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Câu truy vấn trên trả về danh sách tất cả các tên môn học mà sinh viên học có điểm trung bình lớn hơn 70.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cho CSDL gồm các bảng sau: KhachHang(MaKH, TenKH, ThanhPho) SanPham(MaSP, TenSP, SoLuong, DonGia) DaiLy (MaDL, TenDL, ThanhPho, HueHong) DatHang (MaDH, NgayDH, MaKH, MaDL, MaSP, SoLuong, ThanhTien) Chọn câu lệnh SQL để giải quyết câu truy vấn sau: Liệt kê danh sách tên các khách hàng mua sản phẩm ''P02''', '', 'Approved', 1, 3, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Select TenKH from KhachHang c, DatHang o where o.MaSP = ''P02'';', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Select TenKH from KhachHang c where DatHang.MaSP = ''P02'';', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Select TenKH from KhachHang c, DatHang o where c.MaKH = o.MaKH and o.MaSP = ''P02'';', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Select TenKH from SanPham where MaSP = ''P02'';', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cho CSDL gồm các bảng sau: SinhVien(MaSV,TenSV,DiaChi,MaKhoaHoc) KetQua(MaSV,MaMH,Diem) MonHoc(MaMH,TenMH) Cho 2 câu truy vấn SQL sau: SELECT MaSV FROM SinhVien WHERE MaSV not in (Select MaSV from KetQua where MaMH=''CSDL'') SELECT MaSV FROM SinhVien s WHERE not exists (Select MaSV from KetQua d where MaMH=''CSDL'' and s.masv=d.masv) Chọn câu trả lời đúng?', '', 'Approved', 1, 3, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Câu truy vấn thứ nhất sẽ trả về số bộ nhiều hơn câu truy vấn thứ hai.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Câu truy vấn thứ nhất sẽ trả về số bộ ít hơn câu truy vấn thứ hai.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cả hai câu truy vấn trên cho cùng một kết quả.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Câu truy vấn thứ hai bị lỗi.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cho CSDL gồm các bảng sau: SinhVien(MaSV,TenSV,DiaChi,MaKhoaHoc) KetQua(MaSV,MaMH,Diem) MonHoc(MaMH,TenMH) Cho câu truy vấn SQL sau: SELECT TenSV FROM SinhVien s,KetQua k WHERE s.MaSV =k.MaSV and Diem is null Chọn câu trả lời đúng?', '', 'Approved', 1, 3, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Câu truy vấn trên không hợp lệ.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nếu sinh viên nào bị trùng tên thì không in ra được kết quả.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Câu truy vấn trên trả về danh sách các tên sinh viên mà chưa có cho điểm của một hoặc vài môn học nào đó.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Câu truy vấn trên trả về danh sách các tên sinh viên mà chưa có cho điểm tất cả các môn học nào đó.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cho CSDL gồm các bảng sau: SinhVien(MaSV,TenSV,DiaChi,MaKhoaHoc) KetQua(MaSV,MaMH,Diem) MonHoc(MaMH,TenMH) Cho câu truy vấn SQL sau: SELECT TenSV,Avg(Diem) FROM SinhVien s,KetQua k WHERE s.MaSV =k.MaSV Chọn câu trả lời đúng?', '', 'Approved', 1, 3, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Câu truy vấn trên bị lỗi, không thể thực hiện được.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Câu truy vấn trên trả về danh sách các tên sinh viên và điểm trung bình của từng sinh viên đó.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Câu truy vấn trên trả về danh sách các tên sinh viên và điểm của từng môn học.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả đều sai.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cho CSDL gồm các bảng: SinhVien(MaSV,TenSV,DiaChi,MaKhoaHoc) KetQua(MaSV,MaMH,Diem) MonHoc(MaMH,TenMH) Cho 2 câu truy vấn SQL sau: SELECT MaSV FROM SinhVien WHERE MaSV not in (Select MaSV from KetQua where MaMH=''CSDL'') SELECT MaSV FROM SinhVien WHERE not exists (Select MaSV from KetQua where MaMH=''CSDL'' ) Chọn câu trả lời đúng?', '', 'Approved', 1, 3, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Câu truy vấn thứ nhất sẽ trả về số bộ nhiều hơn câu truy vấn thứ hai.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Câu truy vấn thứ nhất sẽ trả về số bộ ít hơn câu truy vấn thứ hai.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cả hai câu truy vấn trên cho cùng một kết quả.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Câu truy vấn thứ hai bị lỗi, không thể thực thi được.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cho CSDL gồm các bảng: SinhVien(MaSV,TenSV,DiaChi,MaKhoaHoc) KetQua(MaSV,MaMH,Diem) MonHoc(MaMH,TenMH) Cho câu truy vấn SQL sau: SELECT TenMH, count(*) FROM MonHoc s,KetQua k WHERE s.MaMH=k.MaMH And Diem>40 And k.MaMH in(Select MaMH From KetQua Group by MaMH Having count(*)>5) GROUP BY TenMH Chọn câu trả lời đúng?', '', 'Approved', 1, 3, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Danh sách các tên môn học có trên 5 sinh viên học.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Trả về tên môn học và số sinh viên tham gia học. Mỗi môn học có nhiều hơn 5 sinh viên học và có điểm lớn hơn 40.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Câu truy vấn trên bị lỗi.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Danh sách các tên môn học có trên 5 sinh viên học mà có điểm lớn hơn 40.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('cho hai quan hệ C (N, W) và A (W, D) và các câu query sau: P: SELECT N FROM C, A WHERE C.W=A.W; và T: SELECT N FROM C WHERE W in (SELECT W From A); Câu nào sau đây là đúng?', '', 'Approved', 1, 3, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('P và T trả về kết quả như nhau.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('P và T trả về kết quả khác nhau.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Kết quả cuả P luôn luôn chứa kết quả cuả T.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Kết quả cuả T luôn luôn chứa kết quả cuả P.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cho lược đồ B(P, Z, X, E) đạt BCNF, có khóa chính là P. Phụ thuộc hàm nào sau đây không là của B?', '', 'Approved', 1, 4, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('{P} -->{Z, X, E}', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('{Z} -->{Z}', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('{E}-->{Z}', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('{P} --> {P}', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cho lược đồ Cơ Sở Dữ liệu sau: NhanVien ( MaNV, HoNV, TenNV, DiaChi, ThanhPho ) KhachHang( MaKH, TenKH, DiaChi, ThanhPho, SoDu, GioiHanTinDung) HoaDon( MaHD, NgayLapHoaDon, MaKH, MaNV) ChiTietHoaDon (MaHD, MaSP, SoLuong,GiaBan ) SanPham(MaSP,MoTa, NhomHang, KhoHang,GiaGoc) Dựa vào lược đồ Cơ Sở Dữ liệu trên,Hãy liệt kê tất cả các thông tin Khách hàng có giới hạn tín dụng là 7500.', '', 'Approved', 1, 3, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('SELECT MaNV WHERE GioiHanTinDung=7500', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('SELECT KhachHang WHERE GioiHanTinDung=’7500’', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('SELECT * From KhachHang WHERE GioiHanTinDung=7500', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('SELECT MaKH WHERE GioiHanTinDung=7500', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cho lược đồ Cơ sở dữ liệu sau: SinhVien(MaSV, HoSV, TenSV, Phai, NgaySinh, DiaChi, DienThoai, MaLop) Lop(MaLop, TenLop, MaKhoa, GVCN) KetQua(MaSV, MaMH, LanThi, Diem) MonHoc(MaMH, TenMH, SoTinChi) Liệt kê danh sách các sinh viên có điểm điểm trung bình cao nhất. Danh sách gồm (MaSV, HoSV, TenSV,DiemTrungBinh)?', '', 'Approved', 1, 3, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Select Top 1 K.MaSV, HoSV, TenSV,DiemTrungBinh=Avg(Diem) From SinhVien S, KetQua K Where S.MASV=K.MASV Group by K.MaSV, HoSV, TenSV', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Select K.MaSV, HoSV, TenSV,DiemTrungBinh=Avg(Diem) From SinhVien S, KetQua K Where S.MASV=K.MASV And DiemTrungBinh>=ALL(Select Avg(Diem) From KetQua Group by MaSV )', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Select K.MaSV, HoSV, TenSV,DiemTrungBinh=Avg(Diem) From SinhVien S, KetQua K Where S.MASV=K.MASV And DiemTrungBinh>=ALL(Select Avg(Diem) From KetQua Group by MaSV ) Group by K.MaSV, HoSV, TenSV', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Select K.MaSV, HoSV, TenSV,DiemTrungBinh=Avg(Diem) From SinhVien S, KetQua K Where S.MASV=K.MASV Group by K.MaSV, HoSV, TenSV Having avg(diem)>=ALL(Select Avg(Diem) From KetQua Group by MaSV )', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cho lược đồ Cơ sở dữ liệu sau: SinhVien(MaSV, HoSV, TenSV, Phai, NgaySinh, DiaChi, DienThoai, MaLop) Lop(MaLop, TenLop, MaKhoa, GVCN) KetQua(MaSV, MaMH, LanThi, Diem) MonHoc(MaMH, TenMH, SoTinChi) Tạo query để tính sỉ số thực trên từng lớp. Danh sách bao gồm: MaLop, TenLop và SiSo ?', '', 'Approved', 1, 3, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Select S.Malop,TenLop,SiSo=Sum(MaSV) From Lop L, SinhVien S Group by S.Malop,TenLop', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Select S.Malop,TenLop,SiSo=Sum(MaSV) From Lop L, SinhVien S Where L.Malop=S.MaLop Group by S.Malop,TenLop', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Select S.Malop,TenLop,SiSo=Count(MaSV) From Lop L, SinhVien S Where L.Malop=S.MaLop Group by S.Malop,TenLop', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Select S.Malop,TenLop,SiSo=Count(SinhVien) From Lop L, SinhVien S Where L.Malop=S.MaLop Group by S.Malop,TenLop', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cho lược đồ Cơ sở dữ liệu sau: SinhVien(MaSV, HoSV, TenSV, Phai, NgaySinh, DiaChi, DienThoai, MaLop) Lop(MaLop, TenLop, MaKhoa, GVCN) KetQua(MaSV, MaMH, LanThi, Diem) MonHoc(MaMH, TenMH, SoTinChi) Liệt kê danh sách các sinh viên gồm (MaSV, HoSV, TenSV) đăng ký ít nhất là 3 môn học.', '', 'Approved', 1, 3, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Select K.MaSV, HoSV, TenSV From SinhVien S, KetQua K Where S.MASV=K.MASV And count(MaMH)>=3', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Select K.MaSV, HoSV, TenSV From SinhVien S, KetQua K Where S.MaSV=K.MaSV Having count(MaMH)>=3', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Select K.MaSV, HoSV, TenSV From SinhVien S, KetQua K Where S.MaSV=K.MaSV Group by K.MaSV, HoSV, TenSV Having count(MaMH)>=3', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Select K.MaSV, HoSV, TenSV From SinhVien S, KetQua K Where S.MASV=K.MASV And count(MaMH)>=3 Group by K.MaSV, HoSV, TenSV', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cho lược đồ CSDL gồm các bảng sau: KhachHang(MaKH, TenKH, ThanhPho) SanPham(MaSP, TenSP, SoLuong, DonGia) DaiLy (MaDL, TenDL, ThanhPho, HueHong) DatHang(MaDH, NgayDH, MaKH, MaDL, MaSP, SoLuong, ThanhTien) Chọn câu lệnh SQL để giải quyết câu truy vấn sau. Liệt kê tên các sản phẩm mà có từ hai khách hàng trở lên đặt hàng.', '', 'Approved', 1, 3, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Select TenSP from SanPham where MaSP in (select MaSP from DatHang where MaKH = ''c01'' and MaKH = ''c02'');', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Select TenSP from SanPham where MaSP in (select o1.MaSP from DatHang o1, DatHang o2 where o1.MaKH = ''c01'' and o2.MaKH = ''c02'' and o1.MaSP =o2.MaSP);', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Select TenSP from SanPham p, DatHang o1, DatHang o2 where p.MaSP =o1.MaSP and p.MaSP = o2.MaSP;', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Select distinct TenSP from SanPham p, DatHang o1, DatHang o2 where p.MaSP = o1.MaSP and p.MaSP = o2.MaSP and o1.MaKH <> o2.MaKH;', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cho lược đồ CSDL sau: NhanVien ( MaNV, HoNV, TenNV, DiaChi, ThanhPho ) KhachHang( MaKH, TenKH, DiaChi, ThanhPho, SoDu, GioiHanTinDung) HoaDon( MaHD, NgayLapHoaDon, MaKH, MaNV) ChiTietHoaDon (MaHD, MaSP, SoLuong,GiaBan ) SanPham(MaSP,MoTa, NhomHang, KhoHang,GiaGoc) Dựa vào lược đồ Cơ Sở Dữ liệu trên, Liệt kê ra sản phẩm có giá lớn nhất?', '', 'Approved', 1, 3, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Select * From SanPham Where GiaGoc=Max(GiaGoc)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Select * From SanPham Where GiaGoc=(Select Max(GiaGoc) From SanPham)', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Select Top 1 * From SanPham Order by GiaGoc', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả các phương án trên là đúng.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cho lược đồ quan hệ R(patient, consultant, hospital, address, date, time) với Khoa chính: (patient, consultant). Xác định dạng chuẩn cao nhất của R?', '', 'Approved', 1, 4, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dạng chuẩn 3 (3NF)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dạng chuẩn 2 (2NF)', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dạng chuẩn 1(1NF)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dạng chuẩn Boyee-Codd (BCNF)', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cho lược đồ quan hệ gồm: NhaCungCap(MaNCC,TenNCC,ThanhPho) HangHoa(MaHang,TenHang,MauSac) CungUng(MaNCC,MaHang,SoLuong) Dùng SQL để tạo câu truy vấn sau: Liệt kê danh sách gồm MaHang,TenHang và số nhà cung cấp đến từ Atlanta mà cung cấp các sản phẩm có số lượng >100?', '', 'Approved', 1, 3, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Select Y.MaHang, Y.TenHang, Count(*) From NhaCungCap X, HangHoa Y, CungUng Z Where X.MaNCC = Z.MaNCC and Z.MaHang = Y.MaHang and X.ThanhPho= ''Atlanta'' and Z.SoLuong > 100;', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Select Y.MaHang, Y.TenHang, Count(*) From NhaCungCap X, HangHoa Y, CungUng Z Where X.MaNCC = Z.MaNCC and Z.MaHang = Y.MaHang and X.ThanhPho= ''Atlanta'' Group by Y.MaHang, Y.TenHang Having Count(*) > 100 Order by Y.MaHang ;', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Select Y.MaHang, Y.TenHang, Count(*) From NhaCungCap X, HangHoa Y, CungUng Z Where X.MaNCC = Z.MaNCC and Z.MaHang = Y.MaHang and X.ThanhPho= ''Atlanta'' and Z.SoLuong > 100 Group by Y.MaHang, Y.TenHang Order by Y.MaHang ;', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Select Y.MaHang, Y.TenHang, Count(*) From NhaCungCap X, HangHoa Y, CungUng Z Where X.MaNCC = Z.MaNCC and Z.MaHang = Y.MaHang and X.ThanhPho= ''Atlanta'' and Z.SoLuong > 100 Order by Y.MaHang ;', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cho lược đồ quan hệ gồm: NhaCungCap(MaNCC,TenNCC,ThanhPho) HangHoa(MaHang,TenHang,MauSac) CungUng(MaNCC,MaHang,SoLuong) Tạo câu truy vấn SQL để tìm các sản phẩm được cung ứng bởi tất cả các nhà cung cấp.', '', 'Approved', 1, 3, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Select MaHang From CungUng Group By MaHang Having Count(*) = (Select Max(Count(*)) From CungUng Group By MaHang)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Select Max(X.MaHang) From CungUng X, NhaCungCap Y Where X.MaNCC = Y.MaNCC', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Select P.MaHang From HangHoa P, CungUng S Where P.MaHang = S.MaHang', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Select MaHang From CungUng Group By MaHang Having Count(*) = (Select Count(*) From NhaCungCap)', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cho lược đồ quan hệ gồm: NhaCungCap(MaNCC,TenNCC,ThanhPho) HangHoa(MaHang,TenHang,MauSac) CungUng(MaNCC,MaHang,SoLuong) Tạo câu truy vấn SQL để tính tổng số lượng của từng sản phẩm đã cung ứng?', '', 'Approved', 1, 3, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Select MaHang,sum(SoLuong) From CungUng Group By MaHang;', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Select MaNCC, MaHang, sum(SoLuong) From HangHoa H, CungUng C Where H.MaHang = C.MaHang Group by MaNCC, MaHang;', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Select MaHang,SoLuong From CungUng;', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Select sum(SoLuong) From CungUng;', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cho lược đồ quan hệ gồm: PhongBan(MaPB,TenPB,NganSach) NhanVien(MaNV,TenNV,ThanhPho,Luong,MaPB) Dùng SQL để tạo câu truy vấn sau: Liệt kê tên các phòng ban có ngân sách ít hơn tổng tiền lương của các nhân viên làm việc trong phòng ban đó?', '', 'Approved', 1, 3, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Select TenPB From PhongBan P, NhanVien N Where N.MaPB=P.MaPB AND NganSach <Luong', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Select TenPB From PhongBan P Where NganSach< (Select sum(Luong) From NhanVien N Where N.MaPB = P.MaPB)', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Select TenPB From PhongBan Where NganSach< (Select sum(Luong) From NhanVien)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Select TenPB From PhongBan P, NhanVien N Where N.MaPB=P.MaPB AND NganSach <(Select sum(Luong) From NhanVien Group By MaPB)', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cho lược đồ quan hệ Q(A,B,C,D) và tập phụ thuộc hàm F={AB->C, B->D,BC->A}. Hỏi Q đạt dạng chuẩn nào?', '', 'Approved', 1, 4, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dạng chuẩn 1 (1NF)', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dạng chuẩn 2 (2NF)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dạng chuẩn 3 (3NF)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dạng chuẩn Boyee-Codd (BCNF)', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cho lược đồ quan hệ Q(A,B,C,D) và tập phụ thuộc hàm F={AB->C, D->B,C->ABD}. Hỏi Q đạt dạng chuẩn nào?', '', 'Approved', 1, 4, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dạng chuẩn 1 (1NF)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dạng chuẩn 2 (2NF)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dạng chuẩn 3 (3NF)', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dạng chuẩn Boyee-Codd (BCNF)', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cho lược đồ quan hệ Q(A,B,C,D) và tập phụ thuộc hàm F={AB->CD, B->C,C->D}. Phụ thuộc hàm nào là dư thừa?', '', 'Approved', 1, 4, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('AB->CD', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('B->C', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('C->D', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Không có phụ thuộc hàm dư thừa', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cho lược đồ quan hệ Q(A,B,C,D,E,G) và tập phụ thuộc hàm F={A->BC, C->DE,E- >G}. Hỏi Q đạt dạng chuẩn nào?', '', 'Approved', 1, 4, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dạng chuẩn 1 (1NF)', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dạng chuẩn 2 (2NF)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dạng chuẩn 3 (3NF)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dạng chuẩn Boyee-Codd (BCNF)', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cho lược đồ quan hệ Q(A,B,C,D,E,G,H) và tập phụ thuộc hàm F={A->BC,D->E,H- >G}. Hỏi Q đạt dạng chuẩn nào?', '', 'Approved', 1, 4, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dạng chuẩn 1 (1NF)', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dạng chuẩn 2 (2NF)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dạng chuẩn 3 (3NF)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dạng chuẩn Boyee-Codd (BCNF)', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cho lược đồ quan hệ Q(A,B,C,D,E,G,H) và tập phụ thuộc hàm F={C->AB,D->E,B- >G}. Hỏi Q đạt dạng chuẩn nào?', '', 'Approved', 1, 4, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dạng chuẩn 1 (1NF)', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dạng chuẩn 2 (2NF)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dạng chuẩn 3 (3NF)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dạng chuẩn Boyee-Codd (BCNF)', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cho lược đồ quan hệ Q(A,B,C,D,E,I) và tập phụ thuộc hàm F={ACD->EBI, CE->AD}. Hỏi Q đạt dạng chuẩn nào?', '', 'Approved', 1, 4, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dạng chuẩn 1 (1NF)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dạng chuẩn 2 (2NF)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dạng chuẩn 3 (3NF)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dạng chuẩn Boyee-Codd (BCNF)', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cho lược đồ quan hệ Q(C,S,Z) và tập phụ thuộc hàm F={CS->Z,Z->C}. Hỏi Q đạt dạng chuẩn nào?', '', 'Approved', 1, 4, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dạng chuẩn 1 (1NF)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dạng chuẩn 2 (2NF)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dạng chuẩn 3 (3NF)', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dạng chuẩn Boyee-Codd (BCNF)', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cho lược đồ quan hệ R và tập các phụ thuộc hàm F={AB->E, AG->I, BE->I, E->G, GI->H}. Phụ thuộc hàm nào sau đây được suy ra từ F?', '', 'Approved', 1, 4, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('AB->GH', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A->G', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('B->I', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A->I', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cho lược đồ quan hệ R(A,B,C,D) và tập phụ thuộc hàm F={A->BC, B->D,AB->D}. Phụ thuộc hàm nào là dư thưà?', '', 'Approved', 1, 4, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A->BC', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('B->D', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('AB->D', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Không có phụ thuộc hàm dư thừa', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cho lược đồ quan hệ R(B,K,Q,A,O) với tập phụ thuộc hàm F={BK->QO, K->A, A- >B}. Phụ thuộc hàm nào sau đây không được dẫn xuất ra từ F?', '', 'Approved', 1, 4, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('K->AQO', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('B->KQO', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A->QO', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('K->B', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cho lược đồ quan hệ R(Emp#,Dept#,City) và khóa K(Emp#,Dept#), tập phụ thuộc hàm F: F = {Emp# -> City, Emp# -> Dept#, Dept# -> City, Emp#,Dept# -> City}, Tập phụ thuộc hàm nào sau đây là phủ tối thiểu của F?', '', 'Approved', 1, 4, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('{Emp#, Dept# -> City, Emp# -> Dept}', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('{Emp# -> Dept#, Dept# -> City}', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('{Emp# -> City, Dept# -> City}', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('{Emp# -> City, Emp# -> Dept#}', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cho lược đồ quan hệ R(I,V,H,P,O,F,M) với tập phụ thuộc hàm F={IV->FM, O->IVH, HF->PM, HPM->F, IVM->O}. Bao đóng của {I V} là:', '', 'Approved', 1, 4, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('{I H P M O F}', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('{I V H P M O F}', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('{I V H M O F}', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('{I V H P M O}', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cho lược đồ quan hệ R(J, F, Z, G) với tập phụ thuộc hàm F={J F->Z G, F Z->J G}. Bao đóng của {J F} là:', '', 'Approved', 1, 4, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('{J F Z}', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('{G J Z}', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('{J F G}', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('{F Z J G}', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cho lược đồ quan hệ R(N,W,R,B,C) với tập phụ thuộc hàm F={N->W, W->R, N->B, C->N, B->C}. Tập thuộc tính nào sau đây không phải là khóa?', '', 'Approved', 1, 4, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('B', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('W, R', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('N', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('C', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cho lược đồ quan hệ R(P, G, I, F, O) với tập phụ thuộc hàm F={P->G, G->I, GI->P, P->F, O->P, F->O}. Tập thuộc tính nào sau đây không phải là khóa?', '', 'Approved', 1, 4, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('G, I', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('F', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('P', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('O', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cho lược đồ quan hệ R(V,Z,W,Y,F) với tập phụ thuộc hàm F={UX->VB, X->N, N->U}. Phụ thuộc hàm nào sau đây không được suy diễn từ F:', '', 'Approved', 1, 4, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('VZ->V', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('VY->WZ', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('ZW->YF', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Z->F', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cho lược đồ quan hệ R(W,B,F,K,A) với tập phụ thuộc hàm F={WB->F, FK->A, F->W, A->K}. Bao đóng của tập thuộc tính {W, B, A} đối với F là:', '', 'Approved', 1, 4, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('{W B A}', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('{W B A K}', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('{W B F K A}', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('{W B A F}', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cho lược đồ quan hệ sau: Sach(TenSach,TacGia,NamXB,NhaXB) Chúng ta có thể suy ra phụ thuộc hàm:', '', 'Approved', 1, 4, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('TacGia,NhaXB -> NhaXB', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('TacGia -> NhaXB', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('TenSach-> TacGia', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('NamXB -> NhaXB', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cho mô hình thực thể kết hợp (Mô hình ER) như hình bên. Hãy chuyển từ mô hình ER sang lược đồ Cơ sở dữ liệu?', '', 'Approved', 1, 2, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Học Viên (Mã học viên, tên học viên, địa chỉ, ngày sinh, số điện thoại, ngày nhập học, mã môn học) Môn học(Mã môn học, tên môn học, thời lượng) Khóa chính là Mã môn học Với: khoá chính của bảng học viên là Mã học viên và khoá chính của bảng môn học là Mã môn học.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Học Viên (Mã học viên, tên học viên, địa chỉ, ngày sinh, số điện thoại, ngày nhập học,Mã môn học) Môn học(Mã môn học, tên môn học, thời lượng, Mã học viên) Với: khóa chính của bảng học viên là Mã học viên, Mã môn học và khóa chính của bảng môn học là Mã môn học, Mã học viên.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Học Viên (Mã học viên, tên học viên, địa chỉ, ngày sinh, số điện thoại, ngày nhập học) Môn học(Mã môn học, tên môn học, thời lượng) GhiDanh(Mã học viên, Mã môn học) Với: khoá chính của bảng học viên là Mã học viên và khoá chính của bảng môn học là Mã môn học.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Học Viên (Mã học viên, tên học viên, địa chỉ, ngày sinh, số điện thoại, ngày nhập học) Môn học(Mã học viên, tên môn học, thời lượng, Mã học viên) Với: khóa chính của bảng học viên là Mã học viên và khoá chính của bảng môn học là Mã môn học.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cho quan hệ student(sno, sname, cname, cno) với tập các khóa của student K={ (sno, cno),(sname, cname)}. Xác định dạng chuẩn cao nhất của student:', '', 'Approved', 1, 4, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dạng chuẩn 1 (1NF)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dạng chuẩn 2 (2NF)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('BCNF', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('3NF', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cho quan hệ (A,B,C), nếu A -> B, A -> C, và B -> C , câu nào sau đây đúng?', '', 'Approved', 1, 4, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quan hệ không ở dạng chuẩn 2NF', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('B là 1 khóa chính', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('C là 1 định danh', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quan hệ giữa A và B là 1 khóa chính', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cho quan hệ CungUng(MaNCC,MaHang,SoLuong) câu truy vấn SQL nào sao đây tương đương với phép chiếu (project) trong đại số quan hệ dựa trên cột MaNCC?', '', 'Approved', 1, 3, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Select MaNCC From CungUng;', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Select MaNCC From CungUng Order by MaNCC;', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Select * From CungUng;', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Select Distinct MaNCC From CungUng;', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cho quan hệ CungUng(MaNCC,MaHang,SoLuong) Câu truy vấn SQL nào sao đây tương ứng với phép chiếu (project) và phép chọn (selection) trong đại số quan hệ?', '', 'Approved', 1, 3, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Select MaNCC From CungUng;', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Select * From CungUng;', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Select Distinct S1.MaNCC From CungUng S1, CungUng S2 Where S1.SoLuong > S2.SoLuong;', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Select Distinct MaNCC From CungUng Where SoLuong> 35;', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cho quan hệ R([F,Z],C,K,S) ít nhất là đạt dạng chuẩn 3. Phụ thuộc hàm nào sau đây bị vi phạm?', '', 'Approved', 1, 4, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('FC->S', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('CK->S', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('FZ->C', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('FZ->K', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Để giới hạn số dòng bị trùng trong câu truy vấn, Từ khóa nào nào sao đây được sử dụng trong câu lệnh Select?', '', 'Approved', 1, 3, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Check', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Alter', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Distinct', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Specific', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Để lấy tất cả các dòng trong hai Table A và B ta dùng toán tử?', '', 'Approved', 1, 3, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('product', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('intersection', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('union', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('difference', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Để sửa đổi cấu trúc của bảng ta sử dụng lệnh:', '', 'Approved', 1, 3, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('ALTER DATABASE', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('ALTER TABLE', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('ALTER COLUMN', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lựa chọn khác', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Để tạo bảng CSDL ta sử dụng lệnh:', '', 'Approved', 1, 3, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('CREATE DATABASE', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('CREATE TABLE', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('ALTER TABLE', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lựa chọn khác', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Để thay đổi dữ liệu hiện thời trong một bảng, bạn sẽ sử dụng lệnh _____.', '', 'Approved', 1, 3, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('DELETE', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('CHANGE', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('SELECT', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('UPDATE', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Đếm (Count), Tổng (Sum), Trung bình (Avg), Tối đa (Max), và Tối thiểu (Min) là một số trong các hàm thống kê (statistics) sẵn có hoặc các hàm _____ có thể được sử dụng trong một truy vấn.', '', 'Approved', 1, 3, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Accumulated (tổng)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Allowed (được phép)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Primary (chính)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Aggregate (gộp nhóm)', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Điều kiện nào sau đây trong một quan hệ luôn luôn đạt dạng chuẩn 2 (2NF)', '', 'Approved', 1, 4, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nếu có phụ thuộc bắc cầu.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nếu tất cả các khóa của quan hệ này chỉ gồm một thuộc tính.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nếu chỉ có một khóa.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nếu tất cả các phụ thuộc hàm là riêng phần.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Điều kiện để 2 bảng có thể kết (join) với nhau là:', '', 'Approved', 1, 3, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hai bảng phải có cùng số cột.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hai bảng phải có chung giá trị trong các dòng.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hai bảng phải có chung ít nhất một cột.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hai bảng phải có khóa chính.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Dữ liệu mô tả đầy đủ về một đối tượng gọi là?', '', 'Approved', 1, 1, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quan hệ', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bộ dữ liệu', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lược đồ quan hệ', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lựa chọn khác', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Giả sử bảng Employee có n dòng dữ liệu (n>1). Hãy cho biết kết quả lệnh truy vấn sau có bao nhiêu dòng? SELECT e1.name, e2.name FROM employee e1, employee e2', '', 'Approved', 1, 3, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('0', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('>n', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('n', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('< n', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Giả sử lược đồ quan hệ R(A,B,C,D) đạt 3NF. Phụ thuộc hàm nào sau đây là không thuộc tâp phụ thuộc hàm F của R?', '', 'Approved', 1, 4, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('BC->D', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('C->D', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('C->C', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cả 3 lựa chọn trên', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Giả sử quan hệ R([K, W], U ,I, Z) đạt 3NF. Phụ thuộc hàm nào sau đây là sai?', '', 'Approved', 1, 4, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('K, W->U', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('U, I->Z', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lựa chọn khác', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('K, W->I', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Hai thực thể kết hợp với nhau theo mối kết hợp 1-n (không có phát sinh thuộc tính trong mối kết hợp) thì khi chuyển sang quan hệ số quan hệ sẽ là?', '', 'Approved', 1, 2, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('2', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('3', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('1', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả đều sai', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Hai thực thể kết hợp với nhau theo mối kết hợp n-n thì khi chuyển sang quan hệ số quan hệ sẽ là?', '', 'Approved', 1, 2, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('2', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('3', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('1', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả đều sai', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Hàm dùng để tính tổng các giá trị của cột kiểu number là:', '', 'Approved', 1, 3, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('ADD', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('TOTAL', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('AVERAGE', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('SUM', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Hàm nào sau đây dùng để tính tổng các giá trị của cột thuộc kiểu number?', '', 'Approved', 1, 3, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('TOTAL', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('SUM', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('ADD', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('AVERAGE', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Hãy chuyển từ mô hình ER sang lược đồ Cơ sở dữ liệu? Với mô hình thực thể kết hợp (Mô hình ER) như hình bên.', '', 'Approved', 1, 2, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Học Viên (Mã học viên, tên học viên, địa chỉ, ngày sinh, số điện thoại, ngày nhập học, mã môn học) Môn học(Mã môn học, tên môn học, thời lượng) Với: khoá chính của bảng học viên là Mã học viên Khoá chính của bảng "Môn học" là Mã môn học Khoá chính của bảng "Phiếu Ghi Danh" là Mã học viên, Mã môn học', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Học Viên (Mã học viên, tên học viên, điạ chỉ, ngày sinh, số điện thoại) Môn học(Mã môn học, tên môn học, thời lượng) Phiếu Ghi Danh(Mã học viên,Mã môn học,Ngày nhập học ) Với: khoá chính của bảng "Học Viên" là Mã học viên Khoá chính của bảng "Môn học" là Mã môn học Khoá chính của bảng "Phiếu Ghi Danh" là Mã học viên, Mã môn học', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Học Viên (Mã học viên, tên học viên, địa chỉ, ngày sinh, số điện thoại, ngày nhập học, Mã môn học) Môn học(Mã môn học, tên môn học, thời lượng) GhiDanh(Mã học viên, Mã môn học) Với: khoá chính của bảng học viên là Mã học viên Khoá chính của bảng "Môn học" là Mã môn học Khoá chính của bảng "Phiếu Ghi Danh" là Mã học viên, Mã môn học', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Học Viên (Mã học viên, tên học viên, địa chỉ, ngày sinh, số điện thoại, ngày nhập học) Môn học(Mã môn học, tên môn học, thời lượng, Mã học viên) Với: khóa chính của bảng học viên là Mã học viên Khoá chính của bảng "Môn học" là Mã môn học Khoá chính của bảng "Phiếu Ghi Danh" là Mã học viên, Mã môn học', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Họ tên, ngày sinh, số CMND của một người là ví dụ cho:', '', 'Approved', 1, 1, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thực thể', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thuộc tính', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quan hệ', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lựa chọn khác', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khi chuyển mô hình ERD ở trên sang mô hình quan hệ thì số quan hệ là? (hình bên)', '', 'Approved', 1, 2, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('5', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('6', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('7', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('4', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khi chuyển sang mô hình quan hệ mối kết hợp giữa NH N VIÊN và DỰ ÁN thì sẽ có số quan hệ là? (Hình bên)', '', 'Approved', 1, 2, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('3', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('2', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('4', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('5', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khi chuyển sang mô hình quan hệ toàn bộ mô hình ERD ở trên thì sẽ có số quan hệ là (Hình bên)?', '', 'Approved', 1, 2, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('3', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('6', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('4', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('5', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khi hai hoặc nhiều bảng kết với nhau thì có bao nhiêu lần từ khóa WHERE được dùng?', '', 'Approved', 1, 3, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Mỗi bảng 1 lần. n bảng sẽ có n từ khóa WHERE được sử dụng.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hai.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Một.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả đều sai.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khi mỗi một thuộc tính không khoá đều được xác định bởi cả khoá chính, thì quan hệ này ít nhất cũng thuộc dạng chuẩn sau:', '', 'Approved', 1, 4, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dạng chuẩn 1 (1NF)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dạng chuẩn 2 (2NF)', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dạng chuẩn 3 (3NF)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dạng chuẩn Boyee-Codd (BCNF)', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khi ta nói đến một quan hệ gồm có n-bộ (tuple), n ở đây có nghĩa là:', '', 'Approved', 1, 1, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Số bộ trong quan hệ.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Số byte trong một bộ.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Số thuộc tính trong quan hệ.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Số quan hệ trong Cơ sở dữ liệu.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khi tạo một khóa ngoại, chúng ta cũng tạo một?', '', 'Approved', 1, 3, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Ràng buộc tham chiếu khóa ngoại', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Ràng buộc kiểu con', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Ràng buộc khóa ngoại', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('ràng buộc khóa chính', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khi thực hiện câu lệnh SQL để xóa cấu trúc của một bảng, điều gì xảy ra đối với dữ liệu chứa trong bảng đó?', '', 'Approved', 1, 3, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nếu bảng bị xóa là bảng cha, thì dữ liệu sẽ được đưa vào bảng con tương ứng.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nếu bảng bị xóa là bảng con, thì dữ liệu sẽ đưa vào bảng cha tương ứng.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Không thể xóa được. Chỉ xóa được cấu trúc của bảng khi tất cả dữ liệu trong bảng đó đã bị xóa.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dữ liệu trong bảng đó cũng bị xóa theo.', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khoá _____ của một bảng là cột hoặc một tập hợp các cột mà các cột này chỉ xác định một dòng đã cho trong bảng đó.', '', 'Approved', 1, 1, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Primary (chính)', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Secondary (phụ)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Foreign (ngoại)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Minor (nhỏ)', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khoá được định nghiã trên một thuộc tính hoặc một tập thuộc tính như sau:', '', 'Approved', 1, 4, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là một tập hợp nhỏ nhất các thuộc tính', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bao đóng chưá tất cả các thuộc tính cuả bảng đó', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là tập hợp nhỏ nhất các thuộc tính mà nó xác định được tất cả các thuộc tính còn lại trong bảng đó.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nó xác định giá trị cuả tất cả các thuộc tính còn lại trong bảng.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Không có mệnh đề Where trong một câu lệnh Delete có ảnh hưởng gì?', '', 'Approved', 1, 3, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Câu lệnh Delete sẽ lỗi do không có dòng nào được xóa.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Câu lệnh Delete sẽ thông báo cho người sử dụng nhập điều kiện để xóa.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Câu lệnh Delete sẽ xóa tất cả các mẩu tin trong bảng.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Câu lệnh Delete sẽ lỗi do sai cú pháp.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Ký hiệu X->Y được đọc là?', '', 'Approved', 1, 4, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('X xác định Y', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Y phụ thuộc X', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cả 2 phương án: 1 và 2', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lựa chọn khác', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Ký tự nào sau đây được dùng để thay thế cho tất cả các cột trong mệnh đề SELECT:', '', 'Approved', 1, 3, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('&', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('@', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('#', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('*', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Lệnh nào sau đây được dùng để thiết lập khóa ngoại:', '', 'Approved', 1, 3, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Add foreign key MaPB to table NhanVien', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Insert MaPB into table NhanVien', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Create foreign key (MaPB) references NhanVien', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Alter table NhanVien add foreign key (MaPB) references PhongBan(MaPB)', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cho bảng NhanVien(MaNV, HoTenNV, MaPB, Luong). Liệt kê danh sách tất cả các nhân viên và được sắp xếp giảm dần theo lương?', '', 'Approved', 1, 3, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('SELECT * FROM NhanVien SORT BY Luong DESCENDING;', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('SELECT * FROM NhanVien IN ORDER OF Luong;', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('SELECT * FROM NhanVien ORDER BY Luong DESC;', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('SELECT * FROM NhanVien ORDER BY Luong;', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Lược đồ ER giúp chúng ta trong việc?', '', 'Approved', 1, 2, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thiết kế hàm', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thiết kế cơ sở dữ liệu', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thiết kế modul', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thiết kế thủ tục', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Lược đồ quan hệ (Relation Schema) là:', '', 'Approved', 1, 4, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Một tập hợp các bộ.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tập hợp tất cả các thuộc tính cần quản lý cuả một đối tượng cùng với mối quan hệ giữa chúng.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Một tập hợp giá trị dữ liệu.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Mô hình thực thể kết hợp.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Lược đồ quan hệ R đạt dạng chuẩn 3 nếu:', '', 'Approved', 1, 4, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('R đạt dạng chuẩn 2 và mọi thuộc tính không khoá cuả R đều không phụ thuộc bắc cầu vào khoá chính.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Mỗi thuộc tính không khoá cuả R đều phụ thuộc đầy đủ vào khoá', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cuả các thuộc tính cuả R có miền giá trị.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('R chứa chỉ 3 khoá.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Mệnh đề FROM trong ngôn ngữ truy vấn dữ liệu SQL có tác dụng:', '', 'Approved', 1, 3, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giới hạn số dòng trong kết quả', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thiết lập điều kiện', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Xác định nguồn dữ liệu trong truy vấn', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lựa chọn khác', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Mệnh đề gì để giới hạn giá trị đã thống kê của một cột nào đó cho lớn hơn một giá trị cho trước? Kết quả thống kê là các giá trị có thuộc tính là số.', '', 'Approved', 1, 3, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('SELECT', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('GROUP BY', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('HAVING', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('WHERE', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Mệnh đề nào sau đây được dùng để đặt điều kiện chọn nhóm trong câu lệnh truy vấn dữ liệu:', '', 'Approved', 1, 3, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Select', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Where', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Find', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Having', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Mệnh đề nào sau đây được dùng để nhập dữ liệu vào bảng publishers', '', 'Approved', 1, 3, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('insert into publishers data (''0010'', ''Pragmatics'', ''4 4th ln.'', ''Chicago'', ''IL'')', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('insert into publishers entities (''0010'', ''Pragmatics'', ''4 4th ln.'', ''Chicago'', ''IL'')', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('insert into publishers values (''0010'', ''Pragmatics'', ''4 4th ln.'', ''Chicago'', ''IL'')', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('insert into publishers tuples (''0010'', ''Pragmatics'', ''4 4th ln.'', ''Chicago'', ''IL'')', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Mệnh đề nào trong câu truy vấn giới hạn số cột sẽ trả về?', '', 'Approved', 1, 3, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('SELECT', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('ORDER BY', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('FROM', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('WHERE', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Mệnh đề Order By trong câu lệnh SQL dùng để sắp sếp dữ liệu kết quả truy vấn. Ta có những phương pháp sắp xếp nào?', '', 'Approved', 1, 3, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('ACS/DECS', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('ASC/DESC', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('ABS/DESC', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lựa chọn khác', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Mệnh đề SELECT trong ngôn ngữ truy vấn dữ liệu SQL có tác dụng:', '', 'Approved', 1, 3, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giới hạn số dòng trong kết quả', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giới hạn số cột trong kết quả', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thiết lập điều kiện', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lựa chọn khác', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Mệnh đề WHERE trong ngôn ngữ truy vấn dữ liệu SQL có tác dụng:', '', 'Approved', 1, 3, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giới hạn số cột trong kết quả', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thiết lập điều kiện', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Xác định nguồn dữ liệu trong truy vấn', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lựa chọn khác', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Mô hình chuẩn để thiết kế hệ thống thông tin là mô hình nào sau đây?', '', 'Approved', 1, 1, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Mô hình E-R', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Mô hình dữ liệu quan hệ', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lựa chọn khác', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả lựa chọn trên', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Mô hình dữ liệu sử dụng trong các hệ quản trị cơ sở dữ liệu là mô hình nào?', '', 'Approved', 1, 1, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Mô hình thực thể mối kết hợp', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Mô hình dữ liệu quan hệ', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cả hai mô hình trên', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lựa chọn khác', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Mối kết hợp “Quản lý trực tiếp” được gọi là (Hình bên)?', '', 'Approved', 1, 2, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Mối kết hợp được sinh ra từ một mối kết hợp khác', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhiều mối kết hợp khác nhau trên một cặp thực thể', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Mối kết hợp đệ qui', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả đều sai', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Mối kết hợp “Quản lý trực tiếp” là mối kết hợp (Hình bên)', '', 'Approved', 1, 2, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('1-0', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('0-n', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('1-1', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('1-n', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Mối kết hợp “Quản lý” là mối kết hợp (Hình bên)?', '', 'Approved', 1, 2, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('0-1', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('0-n', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('1-1', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('1-n', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Mối kết hợp “Tham gia” là mối kết hợp (Hình bên)?', '', 'Approved', 1, 2, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('1-n', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('n-1', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('1-1', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('n-n', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Mối kết hợp “Thuộc” là mối kết hợp (Hình bên)?', '', 'Approved', 1, 2, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('1-1', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('1-n', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('n-n', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('n-1', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Mối kết hợp giữa hai thực thể NH N VIÊN và LĨNH VỰC là mối kết hợp(Hình bên)', '', 'Approved', 1, 2, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('1-1', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('1-n', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('n-n', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả đều sai', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Mối kết hợp giữa hai thực thể SINH VIÊN và MÔN HỌC được diễn giải như sau: mỗi sinh viên phải đăng ký ít nhất một môn học và có thể đăng ký nhiều môn. Mỗi môn học có thể có nhiều sinh viên đăng ký, nhưng có thể không có sinh viên nào đăng ký. Như vậy mối kết hợp giữa SINH VIÊN và MÔN HỌC là ?', '', 'Approved', 1, 2, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('1-1', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('1-n', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('n-n', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('0-n', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Mối kết hợp giữa SÁCH và TÁC GIẢ là mối kết hợp? (hình bên)', '', 'Approved', 1, 2, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('1-n', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('1-1', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('n-1', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('n-n', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Một lược đồ quan hệ đạt BCNF thì sẽ đạt chuẩn:', '', 'Approved', 1, 4, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dạng chuẩn 3 (3NF)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dạng chuẩn Boyce-Codd (BCNF)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cả 2 phương án: 1 và 2', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lựa chọn khác', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Một _____ có thể gán các mật khẩu cho những người dùng có quyền, và chỉ những người dùng đó mới có thể truy cập cơ sở dữ liệu khi nhập mật khẩu được chấp nhận.', '', 'Approved', 1, 1, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('DBA', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('người thiết kế cơ sở dữ liệu', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Switchboard (bảng mạch chuyển đổi)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('biểu đồ E-R', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Một bảng có một khoá duy nhất (unique key). Một câu truy vấn thực hiện một phép kết bằng trên bảng này với chính nó thông qua khoá này. Bảng này có n dòng. Một dòng có giá trị khoá là rỗng (null). Kết quả cuả câu truy vấn trả về bao nhiêu dòng?', '', 'Approved', 1, 3, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('ít hơn n dòng.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhiều hơn n dòng.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Không có dòng nào cả.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('n dòng', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Một bảng có một khoá duy nhất. Một câu truy vấn thực hiện thao tác kết trên bảng sử dụng khoá này. Bảng có n hàng. Một hàng có 1 giá trị cuả khoá là rỗng (''null'') . Query trả về kết quả là bao nhiêu dòng?', '', 'Approved', 1, 3, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Ít hơn n dòng.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Không có dòng nào', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('n dòng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhiều hơn n dòng.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Một bảng đạt dạng chuẩn 1 (1NF):', '', 'Approved', 1, 4, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Không có sự lặp lại các thuộc tính và các nhóm trị.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Không rỗng.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Không rỗng và toàn bộ các thuộc tính cuả mọi bộ đều mang giá trị đơn.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Không rỗng và chỉ chứa các trị nguyên tố.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Một bảng đạt dạng chuẩn 3 (3NF):', '', 'Approved', 1, 4, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Toàn bộ các thuộc tính cuả mọi bộ đều mang giá trị đơn.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Không phụ thuộc bắc cầu.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('tất cả các lựa chọn trên.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả các thuộc tính không khoá đều phụ thuộc đầy đủ vào khoá chính', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Một bảng đạt dạng chuẩn BC (BCNF) nếu:', '', 'Approved', 1, 4, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Không có phụ thuộc hàm bắc cầu', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bảng này đạt dạng chuẩn 3', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bảng này đạt dạng chuẩn 2', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Mỗi phụ thuộc hàm đều có phiá bên trái cuả phụ thuộc hàm là siêu khoá', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Một bảng đạt dạng chuẩn thứ nhất (1NF) nếu _____. 1. Nó không chứa các nhóm lặ', '', 'Approved', 1, 4, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nó không chứa các nhóm lặp', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nó không chứa một khoá ngoại', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nó không chứa một khoá chính', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nó không chứa các khoá dự tuyển.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Một bảng mà không có sự lặp lại ở một nhóm trị, với khoá chính chỉ có một thuộc tính, và có một phụ thuộc bắc cầu vi phạm. Vậy bảng này ở dạng chuẩn nào?', '', 'Approved', 1, 4, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dạng chuẩn 1 (1NF)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dạng chuẩn 2 (2NF)', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dạng chuẩn 3 (3NF)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dạng chuẩn Boyce-Codd (BCNF)', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Một cơ sở dữ liệu có _____ nếu dữ liệu trong nó thoả mãn tất cả các ràng buộc về tính nguyên vẹn nhất định.', '', 'Approved', 1, 1, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tình trạng dư thừa', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tính nguyên vẹn', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tính độc lập của dữ liệu', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thiết kế cơ sở dữ liệu', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Một cột không là khóa chính trong lược đồ quan hệ này mà là khóa chính trong lược đồ quan hệ khác gọi là:', '', 'Approved', 1, 1, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('quan hệ', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('khóa', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('khóa ngoại', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('khóa dự tuyển', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Một cột không phải là cột khoá nếu nó _____.', '', 'Approved', 1, 4, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Không phải là một phần của khoá chính.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là một phần của khoá chính.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nằm trong dạng chuẩn 1 (1NF)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nằm trong dạng chuẩn 2 (2NF)', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Một field dùng để định danh 1 dòng dữ liệu trong bảng gọi là?', '', 'Approved', 1, 1, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Định danh query', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Khóa chính', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dòng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tiêu đề', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Một giá trị ''null'' được gán vào một thuộc tính nào đó hàm ý là:', '', 'Approved', 1, 1, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thuộc tính đó là khoá chính hoặc khoá ngoại.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thuộc tính giới hạn ràng buộc cơ sở dữ liệu.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giá trị thực không quan trọng ở thời điểm hiện tại.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giá trị cuả thuộc tính này chỉ có người thiết kế CSDL mới biết.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Một hệ quản trị cơ sở dữ liệu là phần mềm:', '', 'Approved', 1, 1, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phải quy định những đặc điểm nổi bậc cuả một từ điển dữ liệu.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cung cấp các dịch vụ phục hồi và xử lý dữ liệu.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả điều đúng', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cung cấp miền giá trị để lưu trữ dữ liệu.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Một kết hợp giữa các thực thể được gọi là một _____.', '', 'Approved', 1, 1, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('mối quan hệ', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Ràng buộc về tính nguyên vẹn', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cơ sở dữ liệu', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('File dữ liệu', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Một khoá tối tiểu mà có thể thay thế cho khoá chính của một bảng được gọi là gì?', '', 'Approved', 1, 1, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Khoá chính', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Khoá dự tuyển', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Khoá ngoại', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thuộc tính khoá', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Một loại query được đặc trong mệnh đề WHERE hoặc HAVING cuả một câu Query khác được gọi là:', '', 'Approved', 1, 3, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('master query.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('subquery.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('multi-query.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('superquery.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Một lược đồ quan hệ có khóa là một thuộc tính thì ít nhất là đạt chuẩn:', '', 'Approved', 1, 4, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dạng chuẩn 1 (1NF)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dạng chuẩn 2 (2NF)', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dạng chuẩn 3 (3NF)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dạng chuẩn Boyce-Codd (BCNF)', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Một lược đồ quan hệ đạt 2NF thì sẽ đạt chuẩn:', '', 'Approved', 1, 4, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dạng chuẩn 1 (1NF)', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dạng chuẩn 3 (3NF)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('BCNF', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Các lựa chọn trên đều đúng', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Một lược đồ quan hệ đạt 3NF thì sẽ đạt chuẩn:', '', 'Approved', 1, 4, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('BCNF', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dạng chuẩn 2 (2NF)', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cả 2 phương án: 1 và 2', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lựa chọn khác', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Một lược đồ quan hệ gồm:', '', 'Approved', 1, 1, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tập hợp các giá trị', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tập hợp các bộ dữ liệu', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tên lược đồ và các thuộc tính của nó', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lựa chọn khác', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Một lược đồ quan hệ mà các thuôc tính đều mang giá trị đơn thì sẽ đạt chuẩn:', '', 'Approved', 1, 4, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dạng chuẩn 1 (1NF)', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dạng chuẩn 2 (2NF)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dạng chuẩn 3 (3NF)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dạng chuẩn Boyce-Codd (BCNF)', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Một lược đồ quan hệ mà các thuộc tính không khóa đều phụ thuộc đầy đủ vào khóa thì sẽ đạt chuẩn:', '', 'Approved', 1, 4, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dạng chuẩn 1 (1NF)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dạng chuẩn 2 (2NF)', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dạng chuẩn 3 (3NF)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dạng chuẩn Boyce-Codd (BCNF)', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Một lược đồ quan hệ mà các thuộc tính không khóa không phụ thuộc bắc cầu vào khóa thì sẽ đạt chuẩn:', '', 'Approved', 1, 4, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dạng chuẩn 1 (1NF)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dạng chuẩn 2 (2NF)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dạng chuẩn 3 (3NF)', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dạng chuẩn Boyce-Codd (BCNF)', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Một nhân viên quản lý một nhân viên khác là ví dụ tốt nhất của?', '', 'Approved', 1, 2, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thực thể phụ thuộc', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quan hệ ba ngôi', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quan hệ một ngôi', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quan hệ hai ngôi', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Một nhược điểm của một hệ thống cơ sở dữ liệu là _____.', '', 'Approved', 1, 1, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('một cỡ file lớn hơn', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Khiến cho dữ liệu bị phụ thuộc', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tính nguyên vẹn bị giảm', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Năng suất giảm', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Một số mô hình dữ liệu sử dụng cho hệ thống cơ sở dữ liệu là?', '', 'Approved', 1, 2, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Mô hình E-R', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Mô hình dữ liệu quan hệ', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Mô hình dữ liệu mạng, phân cấp, hướng đối tượng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả các phương án trên.', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Một thuộc tính nguyên tố là một thuộc tính mà:', '', 'Approved', 1, 4, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là thành phần cuả một khoá ngoại', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là một giá trị đơn', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là thành phần cuả ít nhất một khoá dự tuyển.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là thành phần cuả khoá chính.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Một truy vấn làm thay đổi dữ liệu là một truy vấn _____.', '', 'Approved', 1, 1, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Addition (thêm)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Update (cập nhật)', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Select (lựa chọn)', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nếu có các phụ thuộc hàm sau (A->B, B->C) trong lược đồ CSDL R(A,B) và S(B,C) thì phép kết giữa R và S sẽ:', '', 'Approved', 1, 4, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Không bảo toàn thông tin.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Mất dữ liệu.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bảo toàn thông tin.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả đều sai.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nếu không có thuộc tính không khóa nào là không phụ thuộc vào một phần của khóa chính, thì quan hệ đó phải ở dạng chuẩn:', '', 'Approved', 1, 4, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dạng chuẩn 1 (1NF)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dạng chuẩn 2 (2NF)', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dạng chuẩn 3 (3NF)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả các câu đều sai.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nếu lược đồ R(A,B,C), có phụ thuộc hàm A->B và B->C. Thuộc tính nào mang ý nghĩa quyết định?', '', 'Approved', 1, 4, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('B, C', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A, B', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A, B, C', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nếu một lược đồ quan hệ có 5 thuộc tính, khóa của lược đồ gồm 3 thuộc tính. Khi đó ta sẽ có bao nhiêu siêu khóa:', '', 'Approved', 1, 4, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('2', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('5', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('4', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('3', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nếu NK->ME là một phụ thuộc hàm của lược đồ quan hệ H(N,K,M,E), thì:', '', 'Approved', 1, 4, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('NK là khóa của H', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('NK là khóa chính của H', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Không thể tồn tại 2 bộ trong H mà có cùng giá trị của N và K', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả các câu đều đúng', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nếu quan hệ R được phân rã thành {R1, R2, R3, …,Rn} và sự phân rã này bảo toàn thông tin thì:', '', 'Approved', 1, 4, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phép kết tự nhiên giữa R1, R2, ..., Rn sẽ trả về số bộ bằng với số bộ của quan hệ R ban đầu', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Mỗi quan hệ R1, R2, ...,Rn đều đạt dạng chuẩn 3NF', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phép kết tự nhiên giữa R1, R2, ..., Rn sẽ trả về số bộ nhiều hơn số bộ của quan hệ R ban đầu', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Không có câu nào đúng', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Người sử dụng có thể hiểu được một cơ sở dữ liệu thông qua một tập hợp các bảng, đó gọi là mô hình gì?', '', 'Approved', 1, 2, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quan hệ', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phân cấp', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Mạng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hướng đối tượng', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nguyên tắc chỉ đạo trong thiết kế CSDL là:', '', 'Approved', 1, 1, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giảm thiểu sự bất thường khi thêm hoặc xoá dữ liệu', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giảm thiểu sự bất thường khi cập nhật dữ liệu', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giảm thiểu dư thừa dữ liệu', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả điều đúng', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nguyên tắc chỉ đạo trong việc chuẩn hoá CSDL:', '', 'Approved', 1, 1, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giảm thiểu sự bất thường khi thêm hoặc xoá dữ liệu.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giảm thiểu sự bất thường khi cập nhật dữ liệu.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giảm thiểu dư thừa dữ liệu.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả điều đúng.', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Những đặc tính cơ bản để phân biệt DBMS với các hệ thống lập trình khác?', '', 'Approved', 1, 1, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Khả năng quản lý dữ liệu', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Khả năng truy xuất dữ liệu', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quản lý giao tác', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả các phương án trên', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nơi có thể lưu trữ dữ liệu của các ứng dụng. Trong hệ thống CSDL gọi là:', '', 'Approved', 1, 1, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('DBMS', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Database', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('CPU', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hard drive', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Phát biểu nào sau đây không phải là một lược đồ quan hệ?', '', 'Approved', 1, 4, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Y(D, E, F)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Z(J, K(L, M))', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('X(B, C)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('W(A)', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Phép toán nào sau đây trong đại số quan hệ yêu cầu tất cả các bảng phải có cùng tập thuộc tính?', '', 'Approved', 1, 3, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phép kết (Join), Phép chiếu (Projection), Phép kết tự nhiên (natural join)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phép chia (Division), Phép giao (Intersection), Phép nhân(Multiplication)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phép chia (Division), Phép giao (Intersection), Phép trừ (Minus)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phép hợp (Union), Phép giao (Intersection), Phép trừ (Minus)', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Phép toán nào trong đại số học (algebra) bao gồm từ OVER, tiếp đó là một danh sách các cột?', '', 'Approved', 1, 3, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('DELETE (Phép Xoá)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('PROJECT (Phép chiếu)', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('INTERSECT (Phép giao)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Union (Phép hợp)', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Phép toán nào trong đại số học quan hệ lấy một tập hợp con dọc của một bảng?', '', 'Approved', 1, 3, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('SELECT', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('DELETE', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('PROGRAM', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('PROJECT (Phép chiếu)', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Phép toán nào trong đại số quan hệ được sử dụng để lấy một tập kết hợp gồm mọi dòng trong bảng thứ nhất với mọi dòng trong bảng thứ hai.', '', 'Approved', 1, 3, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Union (Phép hợp)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Difference (Phép trừ)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Product (Phép tích Descartes)', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Intersection (Phép giao)', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Quan hệ (Relation), bộ (Tuple), thuộc tính (Attribute) thì đồng nghĩa tương ứng theo thứ tự sau:', '', 'Approved', 1, 1, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bảng (Table), cột(column), dòng(row)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Mẫu tin (Record), tập tin (File), trường(Field)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tập tin (File), mẫu tin (record), trường (field)', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dòng(row), cột(column) và giá trị (Value).', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Quan hệ nhiều-nhiều (n-n) trong lược đồ ERD có thể được trình bày trong mô hình quan hệ bởi:', '', 'Approved', 1, 2, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Một khoá chính', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Một thuộc tính duy nhất', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Một miền giá trị', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Một quan hệ với hai khoá ngoại', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Ràng buộc CHECK có thể được cài đặt trong câu lệnh nào sau đây?', '', 'Approved', 1, 3, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Create table', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Alter table', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cả 2 phương án: 1 và 2', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Drop table', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Ràng buộc tòan vẹn nào sao đây sẽ tự động tạo ra một chỉ mục (index) khi được định nghĩa?', '', 'Approved', 1, 3, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Ràng buộc khóa ngoại (Foreign keys)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Ràng buộc miền giá trị (Check Constraint)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Ràng buộc khóa chính (Primary keys)', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Ràng buộc NOT NULL', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('SinhVien (MaSV, HoSV, TenSV, DiaChi, ThanhPho,MaVung) Dựa vào lược đồ quan hệ trên, Liệt kê danh sách các sinh viên có tên bắt đầu là N?', '', 'Approved', 1, 3, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Select * From SinhVien Where TenSV like ''N%''', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Select * From SinhVien Where left(TenSV,1)= ''N', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Select * From SinhVien Where TenSV in (select tensv from SinhVien Where tensv like ''N%'' )', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả các phương án trên', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('SinhVien (MaSV, HoSV, TenSV, DiaChi, ThanhPho,MaVung) Dựa vào lược đồ quan hệ trên, Liệt kê tất cả các thông tin cuả sinh viên mà có mã sinh viên từ 1100 đến 1200?', '', 'Approved', 1, 3, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Select * From SinhVien', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Select * From SinhVien Where MaSV between 1100 and 1200', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Select SinhVien Where MaSV between 1100 and 1200', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Select Masv From SinhVien Where MaSV >=1100', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('SinhVien (MaSV, HoSV, TenSV, DiaChi, ThanhPho,MaVung) Dựa vào lược đồ quan hệ trên, thay đổi mã vùng cuả của sinh viên ở Tp.HCM thành 08?', '', 'Approved', 1, 3, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Update SinhVien Set MaVung=''08'' Where ThanhPho=''Tp.HCM''', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Update MaVung=''08'' Where ThanhPho=''Tp.HCM''', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Update SinhVien Where ThanhPho=''Tp.HCM'' And MaVung=''08''', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả các phương án trên', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Sự phân biệt giữa dữ liệu và thông tin nào sau đây là chính xác nhất?', '', 'Approved', 1, 1, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dữ liệu và thông tin về bản chất là hoàn toàn giống nhau', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dữ liệu được lưu trữ ở mức thô, thông tin là đã được qua xử lý', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Không có sự phân biệt giữa dữ liệu và thông tin', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lựa chọn khác', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Sự thể hiện (Bảng hai chiều) của lược đồ quan hệ Q tại thời điểm bất kỳ gọi là?', '', 'Approved', 1, 1, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quan hệ', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bộ dữ liệu', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lược đồ quan hệ', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lựa chọn khác', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tạo lập một Cơ Sở dữ liệu là quá trình:', '', 'Approved', 1, 1, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cấu trúc Cơ Sở dữ liệu', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Xử lý Cơ Sở dữ liệu', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thiết kế Cơ Sở dữ liệu', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Truy vấn Cơ Sở dữ liệu', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tập tất cả các thuộc tính của đối tượng cùng với các mối liên hệ giữa chúng gọi là?', '', 'Approved', 1, 1, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quan hệ', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bộ dữ liệu', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lược đồ quan hệ', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lựa chọn khác', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tất cả các hàm sau đây được xây dựng sẳn trong SQL, ngoại trừ:', '', 'Approved', 1, 3, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('COUNT', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('TOTAL', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('AVG', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('MIN', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Phép toán nào sau đây, chỉ có hiệu lực khi thực hiện trên các quan hệ trong cùng lược đồ CSDL', '', 'Approved', 1, 3, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Intersection (Phép giao)', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Không có phương án nào', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Equi-Join (Phép kết bằng)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cartesian product (Tích Descartes)', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Thuộc tính mà xác định duy nhất một bộ trong một quan hệ được gọi là:', '', 'Approved', 1, 1, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Khoá ngoại.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Khoá dự tuyển và khoá chính.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Khoá chính', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Khoá dự tuyển', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Phép toán nào sau đây dùng để lấy các dòng dữ liệu có trong cả hai Table A và B', '', 'Approved', 1, 3, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('union (Phép hợp)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Intersection (Phép giao)', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('product (Phép tích)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('difference (Phép trừ)', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Trong câu lệnh truy vấn dữ liệu, để đặt bí danh (alias) cho bảng, cột ta sử dụng từ khóa gì?', '', 'Approved', 1, 3, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('=', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('as', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('&', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('->', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Trong câu lệnh truy vấn dữ liệu, mệnh đề nào dùng để giới hạn số cột?', '', 'Approved', 1, 3, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Select', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('From', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Where', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Having', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Trong lệnh cập nhật dữ liệu, nếu ta không dùng mệnh đề WHERE thì:', '', 'Approved', 1, 3, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sẽ không thực hiện lệnh cập nhật', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chỉ một số dòng được cập nhật', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Không có dòng nào được cập nhật', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả các dòng sẽ được cập nhật', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Trong mô hình dữ liệu quan hệ, các đặc trưng riêng của đối tượng được gọi là?', '', 'Approved', 1, 1, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thuộc tính', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('đặc trưng riêng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('quan hệ', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lựa chọn khác', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Trong SQL để định nghĩa một số DECIMAL có tối đa 7 số, có 4 chữ số thập phân. Ta khai báo:', '', 'Approved', 1, 3, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('DECIMAL (7,3)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('DECIMAL (4,3)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('DECIMAL (7,4)', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('DECIMAL (8,3)', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Trong SQL, tên bảng (Table Name) phải duy nhất', '', 'Approved', 1, 3, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('cho tất cả các người sử dụng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('trong phạm vi của một database', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('cho tất cả các database', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('trong tất cả các bảng mà được tạo ra bởi một người sử dụng nào đó', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Xét hai quan hệ R và S. Hãy cho biết kết quả của lệnh truy vấn sau: Select A From R Where B = ANY (Select B From S) R A B C ----------- a1 b1 c1 a1 b2 c2 a2 b1 c1 a2 b3 c2 a2 b3 c3 a4 b3 c3 S B C --------- b1 c1 b2 c2 b4 c3 b5 c2', '', 'Approved', 1, 3, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Một bảng gồm 1 cột A có 3 dòng (a1), (a1) và (a2) ồ', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Một bảng gồm 1 cột B và 2 dòng (b1) và (b2)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Một bảng gồm 1 cột A có 3 dòng (a1), (a1) và (a4)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Một bảng gồm 1 cột A có 5 dòng (a1), (a1), (a2), (a2) và (a2)', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Xét lược đồ quan hệ R(T,V,X,P,K) với tập phụ hàm F={T V - >X, X P - >K, X - >T, K ->P} .Bao đóng của tậpf {T, V, K} là:', '', 'Approved', 1, 4, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('{T V K P}', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('{T V X P K}', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('{T V K X}', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('{T V K}', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Xét lược đồ quan hệ R = (I ,A,N,G,X) với tập phụ thuộc hàm F= {I A -> N G X , I -> X} .Khóa của R là:', '', 'Approved', 1, 4, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('I', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A X', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('I A', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('lựa chọn khác', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Xét lược đồ quan hệ R(A,B,C,D) với tập phụ hàm F={A->BC, B->D}. Gỉa sử tập khóa K={A}. R sẽ đạt thấp nhất là dạng chuẩn nào?', '', 'Approved', 1, 4, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dạng chuẩn 1 (1NF)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dạng chuẩn 2 (2NF)', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dạng chuẩn 3 (3NF)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dạng chuẩn Boyce-Codd (BCNF)', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Xét lược đồ quan hệ R(A,B,C,D) với tập phụ hàm F={A->BCD}. Gỉa sử tập khóa K={A}. R sẽ đạt thấp nhất là dạng chuẩn nào?', '', 'Approved', 1, 4, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dạng chuẩn 1 (1NF)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dạng chuẩn 2 (2NF)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dạng chuẩn 3 (3NF)', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dạng chuẩn Boyce-Codd (BCNF)', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Xét quan hệ R với tâp thuộc tính B C V K M. Với tập phụ thuộc hàm: B->C, C V->M và M K->B. Hãy xác định tất cả các khóa của R', '', 'Approved', 1, 4, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('B V K, C V K và V K M', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('B V M, C V K và V K M', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('V K, B Kvà V K M', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('B V, C K và V M', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Xét quan hệ R(A B C D E F H) với tập phụ thuộc hàm: A -> D, AE -> H, DF -> BC, E -> C, H -> E Phân rã R thành 3 quan hệ: (AD) (EC) (ABEFH). Phép phân rã đạt chuẩn:', '', 'Approved', 1, 4, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dạng chuẩn Boyce-Codd (BCNF)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dạng chuẩn 3 (3NF)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lựa chọn khác', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dạng chuẩn 1 (1NF)', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Xét quan hệ student(sno, sname, cname, cno). Gỉa sử các khóa của Student là (sno, cno) , (sname, cname) . Xác định dạng chuẩn của student:', '', 'Approved', 1, 4, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dạng chuẩn 1 (1NF)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dạng chuẩn Boyce-Codd (BCNF)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dạng chuẩn 3 (3NF)', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dạng chuẩn 2 (2NF)', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Xét R(A,B,C) với tập phụ thuộc hàm F={A->BC; A->C; B->C}. Phụ thuộc hàm nào trrong F là dư thừa?', '', 'Approved', 1, 4, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A->BC', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A->C', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('B->C', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lựa chọn khác', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Xét R(A,B,C,D) có khóa chính là A, là 2NF nhưng không đạt 3NF. Phụ thuộc hàm nào sau đây là không đúng:', '', 'Approved', 1, 4, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('B->C', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A->B', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('C->A', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A->C', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Xét R(E,J,C,Q,G). Phụ thuộc hàm sau đây trong tập F= {E -> J; E Q -> C; Q J -> G; J -> C} là dư thừa:', '', 'Approved', 1, 4, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('J -> C', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Q J -> G', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('E Q-> C', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('E -> J', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Xét R(K,G,B,H,Z,C) Với tập phụ thuộc hàm F={K -> G, K -> B, B H -> Z, B H -> C, G -> Z}. Phụ thuộc hàm nào sau đây không được suy ra từ F?', '', 'Approved', 1, 4, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('K -> Z', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('B H -> Z C', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('K H -> C', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('G -> B H', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Xét R{K , O , U , F , T } với tập phụ thuộc hàm F={ K -> F,T ;F-> O,U; K,U -> O }. Xác định dạng chuẩn của R?', '', 'Approved', 1, 4, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dạng chuẩn 1 (1NF)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dạng chuẩn 2 (2NF)', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dạng chuẩn 3 (3NF)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dạng chuẩn Boyce-Codd (BCNF)', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cho lược đồ quan hệ NhanVien(MaNV, HoTenNV, Luong, MaPB, NguoiQL, NgaySinh) và tập phụ thuộc hàm {MaNV->HoTenNV, Luong, MaPB, MaTruongPhong, NgaySinh; MaPB->MaTruongPhong}. Xác định dạng chuẩn cao nhất cuả bảng nhân viên.', '', 'Approved', 1, 4, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dạng chuẩn 1 (1NF)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dạng chuẩn 2 (2NF)', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dạng chuẩn 3 (3NF)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dạng chuẩn Boyce-Codd (BCNF)', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cho lược đồ quan hệ R(A,B,C,D) và tập phụ thuộc hàm F={AB->C,D->B,C->ABD}. Xác định dạng chuẩn cao nhất cuả lược đồ quan hệ R.', '', 'Approved', 1, 4, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dạng chuẩn 1 (1NF)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dạng chuẩn 2 (2NF)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dạng chuẩn 3 (3NF)', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dạng chuẩn Boyce-Codd (BCNF)', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cho lược đồ quan hệ R(A,B,C,D,E,H) và tập phụ thuộc hàm F={A->E,C->D,E- >DH}. Xác định dạng chuẩn cao nhất cuả lược đồ quan hệ R.', '', 'Approved', 1, 4, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dạng chuẩn 1 (1NF)', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dạng chuẩn 2 (2NF)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dạng chuẩn 3 (3NF)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dạng chuẩn Boyce-Codd (BCNF)', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cho lược đồ quan hệ R(A,B,C,D,E,I) và tập phụ thuộc hàm F={ACD->EBI,CE- >AD}. Xác định dạng chuẩn cao nhất cuả lược đồ quan hệ R.', '', 'Approved', 1, 4, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dạng chuẩn 1 (1NF)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dạng chuẩn 2 (2NF)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dạng chuẩn 3 (3NF)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dạng chuẩn Boyce-Codd (BCNF)', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cho lược đồ quan hệ R(B,F,D,H,I) và tập phụ thuộc hàm T={B->HI,H->FD,BD->F}. Tìm bao đóng cuả tập thuộc tính {BH}.', '', 'Approved', 1, 4, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('{FDHI}', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('{BFDH}', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('{BFDHI}', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('{BFHI}', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cho lược đồ quan hệ R(B,P,V,L,H) và tập phụ thuộc hàm F={B->P, P->V, PV->B,B- >L,H->B, L->H}. Tập thuộc tính nào sau đây không phải là khoá?', '', 'Approved', 1, 4, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('L', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('B', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('H', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả các phương án trên đều là khoá', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cho lược đồ quan hệ R(C,A,M,I,Z) và tập phụ thuộc hàm T={C->IZ,I->AM,CM->A}. Tìm bao đóng cuả tập thuộc tính {AIZ}.', '', 'Approved', 1, 4, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('{CAMI}', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('{AMIZ}', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('{CIAM}', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('{ZIMC}', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cho lược đồ quan hệ R(C,F,O,A,K) và tập phụ thuộc hàm T={C->AK,A->FO,CO- >F}. Xác định dạng chuẩn cao nhất cuả lược đồ quan hệ R.', '', 'Approved', 1, 4, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dạng chuẩn 1 (1NF)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dạng chuẩn 2 (2NF)', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dạng chuẩn 3 (3NF)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dạng chuẩn Boyce-Codd (BCNF)', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cho lược đồ quan hệ R(E,S,J,W,N) và tập phụ thuộc hàm F={ES->JN, S->W, W- >E}. Phụ thuộc hàm nào sau đây không được suy diễn ra từ tập F?', '', 'Approved', 1, 4, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('SJ->WN', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('S->N', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('ES->E', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('EW->JN', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cho lược đồ quan hệ R(F,B,K,C,I) và tập phụ thuộc hàm T={FB->KI, B->C, C->F}. Phụ thuộc hàm nào sau đây không được suy diễn ra từ tập T?', '', 'Approved', 1, 4, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('FC->KI', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('B->I', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('BK->CI', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('FB->F', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cho lược đồ quan hệ R(G,M,V,N,H,P) và tập phụ thuộc hàm F={G->M,G->N, G->H, G->P , M->V, NHP->M}. Xác định dạng chuẩn cao nhất cuả lược đồ quan hệ R.', '', 'Approved', 1, 4, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dạng chuẩn 1 (1NF)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dạng chuẩn 2 (2NF)', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dạng chuẩn 3 (3NF)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dạng chuẩn Boyce-Codd (BCNF)', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cho lược đồ quan hệ R(I,Q,N,C,H) và tập phụ thuộc hàm F={IQ->NH, Q->C, C->I}. Phụ thuộc hàm nào sau đây không được suy diễn ra từ tập F?', '', 'Approved', 1, 4, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('QN->CH', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('IC->NH', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('IQ->I', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Q->H', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cho lược đồ quan hệ R(N,G,P,M) và tập phụ thuộc hàm F={NGP->M, M->P}. Xác định dạng chuẩn cao nhất cuả lược đồ quan hệ R', '', 'Approved', 1, 4, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dạng chuẩn 1 (1NF)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dạng chuẩn 2 (2NF)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dạng chuẩn 3 (3NF)', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('4. Dạng chuẩn Boyce-Codd (BCNF)', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cho lược đồ quan hệ R(S,G,F,Y,N) và tập phụ thuộc hàm T={S->G, G->F, GF->S,S- >Y,S->N,N->S}. Tập thuộc tính nào sau đây không phải là khoá?', '', 'Approved', 1, 4, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('N', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('GF', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Y', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('S', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('SQL cung cấp một số các hàm thống kê theo nhóm. Hàm nào sau đây không có trong SQL?', '', 'Approved', 1, 3, 6);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('MIN', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('MAX', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('COUNT', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Average', 1, @last_question_id);

