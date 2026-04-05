SET NAMES 'utf8mb4';

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Các mạng máy tính được thiết kế và cài đặt theo quan điểm:', '', 'Approved', 1, 1, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Có cấu trúc đa tầng', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhiều tầng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Theo lớp', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tập hợp', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khi sử dụng mạng máy tính ta sẽ thu được các lợi ích:', '', 'Approved', 1, 1, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chia sẻ tài nguyên (ổ cứng, cơ sở dữ liệu, máy in, các phần mềm tiện ích...)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quản lý tập trung', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tận dụng năng lực xử lý của các máy tính rỗi kết hợp lại để thực hiện các công việc lớn', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả đều đúng', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Đơn vị cơ bản đo tốc độ truyền dữ liệu là:', '', 'Approved', 1, 1, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bit', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Byte', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bps (bit per second)', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hz', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Quá trình dữ liệu di chuyển từ hệ thống máy tính này sang hệ thống máy tính khác phải trải qua giai đoạn nào:', '', 'Approved', 1, 1, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phân tích dữ liệu', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nén dữ liệu', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đóng gói', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lọc dữ liệu', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Kết nối mạng sử dụng các giao thức khác nhau bằng các:', '', 'Approved', 1, 1, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bộ chuyển tiếp', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cổng giao tiếp', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('SONET', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bộ định tuyến', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nhược điểm của mạng dạng hình sao (Star) là:', '', 'Approved', 1, 1, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Khó cài đặt và bảo trì', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Khó khắc phục khi lỗi cáp xảy ra, và ảnh hưởng tới các nút mạng khác', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cần quá nhiều cáp để kết nối tới nút mạng trung tâm', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Không có khả năng thay đổi khi đã lắp đặt', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Đặc điểm của mạng dạng Bus:', '', 'Approved', 1, 1, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả các nút mạng kết nối vào nút mạng trung tâm (ví dụ như Hub)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả các nút kết nối trên cùng một đường truyền vật lý', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả các nút mạng đều kết nối trực tiếp với nhau', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Mỗi nút mạng kết nối với 2 nút mạng còn lại', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Trong kỹ thuật chuyển mạch kênh, trước khi trao đổi thông tin, hệ thống sẽ thiết lập kết nối giữa 2 thực thể bằng một', '', 'Approved', 1, 1, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đường truyền vật lý', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Kết nối ảo', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đường ảo', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đường truyền logic', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Kết nối liên mạng các mạng LAN, WAN, MAN độc lập với nhau bằng các thiết bị có chức năng:', '', 'Approved', 1, 1, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Kiểm soát lỗi, kiểm soát luồng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Định tuyến', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Điều khiển liên kết', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Điều khiển lưu lượng và đồng bộ hoá', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cáp UTP Cat5e sử dụng đầu nối:', '', 'Approved', 1, 1, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('RJ - 58', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('BNC', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('RJ - 45', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('ST', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cáp UTP Cat 5 có bao nhiêu đôi cáp:', '', 'Approved', 1, 1, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('2', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('4', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('6', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('8', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Đặc điểm quan trọng của kiến trúc mạng client/server (khách/chủ):', '', 'Approved', 1, 1, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Client/server là kiến trúc phân cấp, client đóng vai trò yêu cầu và server đáp ứng lại các yêu cầu đó.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Server là host luôn hoạt động, thường có IP cố định, có nhóm các server để chia sẻ công việc. Client có kết nối không liên tục, địa chỉ IP có thể thay đổi, truyền thông với server và thường không truyền thông trực tiếp với client khác.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Câu A và B đều đúng', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Câu A và B đều sai', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khẳng định nào sau đây là đúng khi nói về mạng có cấu trúc điểm- điểm:', '', 'Approved', 1, 1, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Mạng quảng bá', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nối từng cặp node lại với nhau theo một hình học xác định', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Mạng lưu và chuyển tiếp (Store - and - Forward)', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Các node trung gian: tiếp nhận, lưu trữ tạm thời và gửi tiếp thông tin', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khẳng định nào sau đây là đúng khi nói về nhược điểm của mạng có cấu trúc điểm- điểm:', '', 'Approved', 1, 1, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Khả năng đụng độ thông tin (collision) thấp', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hiệu suất sử dụng đường truyền thấp, chiếm dụng nhiều tài nguyên', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Độ trễ lớn, tốn nhiều thời gian để thiết lập đường truyền và xử lý tại các node', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tốc độ trao đổi thông tin thấp', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khẳng định nào sau đây là đúng khi nói về đặc trưng của mạng quảng bá:', '', 'Approved', 1, 1, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả các node cùng truy nhập chung trên một đường truyền vật lý', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nối từng cặp node lại với nhau theo một hình học xác định', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Các node trung gian: tiếp nhận, lưu trữ tạm thời và gửi tiếp thông tin', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Khả năng đụng độ thông tin (collision) thấp', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khẳng định nào sau đây là đúng khi nói về mạng chuyển mạch kênh:', '', 'Approved', 1, 1, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thiết lập liên kết vật lý, truyền dữ liệu và giải phóng liên kết giữa 2 thực thể', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thiết lập liên kết logic, truyền dữ liệu và giải phóng liên kết giữa 2 thực thể', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Truyền dữ liệu giữa 2 thực thể', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thiết lập liên kết và giải phóng liên kết giữa 2 thực thể', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khẳng định nào sau đây là đúng khi nói về mạng chuyển mạch gói:', '', 'Approved', 1, 1, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Gói tin lưu chuyển trên các kết nối logic', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Gói tin lưu chuyển trên các kết nối vật lý', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Gói tin lưu chuyển độc lập hướng đích', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Gói tin lưu chuyển trên các kết nối logic hướng đích và trên một đường có thể có nhiều gói tin cùng lưu chuyển', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khẳng định nào sau đây là đúng khi nói về quá trình phân mảnh gói tin:', '', 'Approved', 1, 1, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Làm giảm thời gian xử lý', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Làm tăng tính linh hoạt của mạng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Ảnh hưởng đến tốc độ trao đổi dữ liệu trong mạng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tăng tốc độ trao đổi thông tin trong mạng', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khẳng định nào sau đây là đúng khi nói về truyền dữ liệu theo phương thức hướng liên kết:', '', 'Approved', 1, 1, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Có độ tin cậy cao, đảm bảo chất lượng dịch vụ và có xác nhận', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Có xác nhận, không kiểm soát lỗi, kiểm soát luồng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Độ tin cậy cao, không xác nhận', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khẳng định nào sau đây là đúng nói về cấu trúc vật lý của mạng:', '', 'Approved', 1, 1, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giao thức mạng (Protocol)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hình trạng mạng (Topology )', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phương tiện truyền', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Các dịch vụ mạng', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Mạng Internet là:', '', 'Approved', 1, 1, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Mạng của các máy tính toàn cầu kết nối lại với nhau theo giao thức TCP/IP', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Mạng diện rộng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Mạng máy tính toàn cầu', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Mạng của các mạng con kết nối lại với nhau', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Trong mạng hình BUS, tất cả các trạm truy nhập ngẫu nhiên vào:', '', 'Approved', 1, 1, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đường truyền chung', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Máy chủ mạng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bộ nhớ đệm', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Các thiết bị kết nối mạng', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Mạng LAN hình sao (STAR) khi có sự cố:', '', 'Approved', 1, 1, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sẽ ngừng hoạt động toàn bộ hệ thống', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Không ảnh hưởng tới hoạt động toàn bộ hệ thống', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chỉ ảnh hướng đến trạm có sự cố', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chỉ ảnh hướng đến một phần của hệ thống', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Với kiểu kết nối mạng theo dạng hình sao (Star), khi một trạm trong mạng ngưng hoạt động thì các trạm còn lại:', '', 'Approved', 1, 1, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hoạt động bình thường', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đều ngưng hoạt động', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hoạt động không ổn định', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Các câu trên đều sai', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Hình trạng mạng nào cho phép tất cả các cặp thiết bị đều có 1 đường nối vật lý trực tiếp:', '', 'Approved', 1, 1, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Star (dạng sao)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bus (dạng đường trục)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Mesh (dạng lưới)', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hierarchical (dạng phân cấp)', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Về nguyên tắc cơ bản, dùng cáp UTP Cat5e nào sau đây để kết nối trực tiếp giữa 2 PC với nhau:', '', 'Approved', 1, 1, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cáp thẳng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cáp chéo', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cáp cuộn', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cả 3 loại trên', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Kết quả nào sau đây không đúng:', '', 'Approved', 1, 1, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('163 chuyển sang nhị phân sẽ có giá trị là: 10100011', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('111 chuyển sang nhị phân sẽ có giá trị là : 01110011', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('125 chuyển sang nhị phân sẽ có giá trị là : 01111101', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('178 chuyển sang nhị phân sẽ có giá trị là : 10110010', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Kiểu mạng nào được hạn chế ở cấp tòa cao ốc hay một công sở:', '', 'Approved', 1, 1, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('GAN', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('WAN', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('MAN', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('LAN', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Chiều dài tối đa của một đoạn trong kiến trúc 100Base-TX:', '', 'Approved', 1, 1, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('3 km', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('100 mét', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('550 mét', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('25 mét', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Xét về tỷ lệ lỗi trên đường truyền dữ liệu thì loại mạng nào cao nhất:', '', 'Approved', 1, 1, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('MAN', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('WAN', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Internet', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('LAN', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Độ dài tối đa cho phép khi sử dụng dây cáp mạng UTP là bao nhiêu mét:', '', 'Approved', 1, 1, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('100', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('200', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('350', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('400', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Quá trình dữ liệu di chuyển từ hệ thống máy tính này sang hệ thống máy tính khác phải trải qua giai đoạn nào:', '', 'Approved', 1, 1, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phân tích dữ liệu', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lọc dữ liệu', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đóng gói dữ liệu', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Kiểm thử dữ liệu', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khi nối mạng giữa 2 máy tính, thường sử dụng loại cáp nào để nối trực tiếp giữa chúng:', '', 'Approved', 1, 1, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cáp quang', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cáp UTP thẳng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cáp STP', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cáp UTP chéo', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Các quy tắc điều quản việc truyền thông máy tính được gọi là:', '', 'Approved', 1, 1, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Các giao thức', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Các dịch vụ', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Các hệ điều hành mạng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Các thiết bị mang tải', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Hai kiểu máy tính khác nhau có thể truyền thông nếu:', '', 'Approved', 1, 1, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chúng cài đặt cùng hệ điều hành mạng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chúng tuân thủ theo mô hình OSI', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chúng cùng dùng giao thức TCP/IP', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chúng có phần cứng giống nhau', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Để kết nối hai máy tính với nhau ta có thể sử dụng:', '', 'Approved', 1, 1, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hub', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Switch', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nối cáp trực tiếp', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả đều đúng', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Biễu diễn số 125 từ cơ số decimal sang cơ số binary:', '', 'Approved', 1, 1, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('01111101', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('01101111', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('01011111', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('1111101', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Số nhị phân nào dưới đây có giá trị là 164:', '', 'Approved', 1, 1, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('10100100', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('10010010', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('11000100', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('10101010', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Thiết bị nào hoạt động ở tầng Vật lý:', '', 'Approved', 1, 1, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Switch', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Card mạng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hub và repeater', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Router', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Môi trường truyền tin thông thuờng trong mạng máy tính là:', '', 'Approved', 1, 1, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Các loại cáp như: UTP, STP, cáp điện thoại, cáp quang,...', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sóng hồng ngoại', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả môi trường nêu trên', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Không cái gì đúng', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Các thành phần tạo nên mạng là:', '', 'Approved', 1, 1, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Máy tính, hub, switch', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Network adapter, cable', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Protocol', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả đều đúng', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khẳng định nào sau đây là đúng khi nói về đặc tính để phân biệt một tế bào (cell) và một gói tin:', '', 'Approved', 1, 1, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Các tế bào nhỏ hơn một gói tin', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Các tế bào không có địa chỉ vật lý', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Các tế bào có độ dài cố định', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Các gói tin có độ dài cố định', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Protocol là:', '', 'Approved', 1, 1, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Các qui tắc để cho phép các máy tính có thể giao tiếp được với nhau', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Một trong những thành phần không thể thiếu trong hệ thống mạng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A và B sai', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A và B đúng', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Thiết bị nào sau đây được sử dụng tại trung tâm của mạng hình sao:', '', 'Approved', 1, 1, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Switch, Brigde', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Netcard', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Port', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Repeater', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Kiến trúc một mạng LAN có thể là:', '', 'Approved', 1, 1, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('RING', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('BUS', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('STAR', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Có thể sử dụng riêng hoặc phối hợp cả A, B và C', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Giá trị của 11101101 (giá trị các bit nhị phân) trong cơ số 16 là:', '', 'Approved', 1, 1, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('CB', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('ED', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('CF', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('EC', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Mô tả nào sau đây dành cho mạng hình sao (star):', '', 'Approved', 1, 1, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Truyền dữ liệu qua cáp đồng trục', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Mỗi nút mạng đều kết nối trực tiếp với tất cả các nút khác', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Có một nút trung tâm và các nút mạng khác kết nối đến', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Các nút mạng sử dụng chung một đường cáp', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Loại cáp nào được sử dụng phổ biến nhất hiện nay:', '', 'Approved', 1, 1, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cáp đồng trục', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cáp STP', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cáp UTP (CAT 5)', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cáp quang', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Giao thức mạng nào dưới đây được sử dụng trong mạng cục bộ LAN:', '', 'Approved', 1, 1, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('TCP/IP', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('NetBIOS', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('IPX', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả các câu trên', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khẳng định nào sau đây là đúng khi nói về giao thức sử dụng trên cáp sợi quang:', '', 'Approved', 1, 1, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Frame Relay', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('FDDI', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('SONET', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cả B và C đều đúng', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Các chuẩn Internet là:', '', 'Approved', 1, 1, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('TCP và UDP', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('ACK và NAK', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('RFC và IETF', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('FDM và TDM', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Các chuẩn Internet là:', '', 'Approved', 1, 1, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('TCP và UDP', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('ACK và NAK', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('RFC và IETF', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('FDM và TDM', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Giải thông (bandwidth) là:', '', 'Approved', 1, 1, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tốc độ truyền dữ liệu trên đường truyền', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Độ đo phạm vi tần số mà đường truyền có thể đáp ứng được', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Độ đo sự yếu đi của tín hiệu trên đường truyền', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Độ đo sự ảnh hưởng của tiếng ồn điện từ bên ngoài đến tín hiệu đường truyền', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Thông lượng (throughput) là:', '', 'Approved', 1, 1, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tốc độ truyền dữ liệu trên đường truyền', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Độ đo phạm vi tần số mà đường truyền có thể đáp ứng được', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Độ đo sự yếu đi của tín hiệu trên đường truyền', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Độ đo sự ảnh hưởng của tiếng ồn điện từ bên ngoài đến tín hiệu đường truyền', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Độ suy hao là:', '', 'Approved', 1, 1, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tốc độ truyền dữ liệu trên đường truyền', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Độ đo phạm vi tần số mà đường truyền có thể đáp ứng được', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Độ đo sự yếu đi của tín hiệu trên đường truyền', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Độ đo sự ảnh hưởng của tiếng ồn điện từ bên ngoài đến tín hiệu đường truyền', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Độ nhiễu điện từ là:', '', 'Approved', 1, 1, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tốc độ truyền dữ liệu trên đường truyền', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Độ đo phạm vi tần số mà đường truyền có thể đáp ứng được', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Độ đo sự yếu đi của tín hiệu trên đường truyền', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Độ đo sự ảnh hưởng của tiếng ồn điện từ bên ngoài đến tín hiệu đường truyền', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Truyền dẫn theo dải cơ sở (baseband):', '', 'Approved', 1, 1, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Toàn bộ khả năng đường truyền được dành cho một kênh thông duy nhất', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hai kênh truyền thông cùng phân chia giải thông của đường truyền', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Ba kênh truyền thông cùng phân chia giải thông của đường truyền', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhiều kênh truyền thông cùng phân chia giải thông của đường truyền', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Truyền dẫn theo dải rộng (broadband):', '', 'Approved', 1, 1, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Toàn bộ khả năng đường truyền được dành cho một kênh thông duy nhất', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hai kênh truyền thông cùng phân chia giải thông của đường truyền', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Ba kênh truyền thông cùng phân chia giải thông của đường truyền', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhiều kênh truyền thông cùng phân chia giải thông của đường truyền', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Thứ tự của các tầng trong mô hình tham chiếu OSI:', '', 'Approved', 1, 1, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Physical, Data Link, Network, Transport, System, Presentation, Application', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Physical, Data Link, Network, Transport, Session, Presentation, Application', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Physical, Data Link, Network, Transform, Session, Presentation, Application', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Presentation, Data Link, Network, Transport, Session, Physical, Application', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Thứ tự các tầng từ cao đến thấp trong mô hình TCP/IP:', '', 'Approved', 1, 1, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Application, Internet, Transport, Network Access', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Application, Network Access, Transport, Internet', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Application, Transport, Internet, Network Access', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Transport, Internet, Application, Network Access', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Thứ tự đúng của các đơn vị dữ liệu trong mô hình TCP/IP:', '', 'Approved', 1, 1, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Data, Frame, Segment, Packet, Bit', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Data, Segment, Frame, Packet, Bit', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Data, Packet, Frame, Segment, Bit', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Data, Segment, Packet, Frame, Bit', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Thứ tự các tầng của mô hình OSI theo thứ tự từ trên xuống là:', '', 'Approved', 1, 1, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Ứng dụng, Trình diễn, Phiên, Giao vận, Liên kết, Mạng, Vật lý', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Ứng dụng, Trình diễn, Phiên, Mạng, Giao vận, Liên kết, Vật lý', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Ứng dụng, Trình diễn, Phiên, Giao vận, Mạng, Liên kết, Vật lý', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Ứng dụng, Trình diễn, Giao vận, Phiên, Liên kết, Mạng, Vật lý', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Chức năng của tầng trình diễn là chuyển đổi:', '', 'Approved', 1, 1, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Ngôn ngữ người sử dụng về ngôn ngữ chung của mạng', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cấu trúc thông tin về cấu trúc khung', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Khuôn dạng của gói tin', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Các phiên truyền thông giữa các thực thể', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Chức năng của tầng giao vận là:', '', 'Approved', 1, 1, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Vận chuyển thông tin giữa các máy chủ (End to End)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Kiểm soát lỗi và luồng dữ liệu', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đóng gói và vận chuyển thông tin', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phân mảnh và đóng gói dữ liệu', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Chức năng của tầng mạng là:', '', 'Approved', 1, 1, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thực hiện chọn đường', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thực hiện chuyển mạch', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Kiểm soát lỗi và luồng dữ liệu', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đóng gói dữ liệu', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Chức năng của tầng liên kết dữ liệu là:', '', 'Approved', 1, 1, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tạo khung thông tin (Frame)', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đóng gói dữ liệu', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chọn đường', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Vận chuyển thông tin giữa các máy chủ (End to End)', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Chức năng của tầng vật lý là:', '', 'Approved', 1, 1, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đảm bảo các yêu cầu truyền/nhận các chuỗi bit qua các phương tiện vật lý', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Kiểm soát lỗi và luồng dữ liệu', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tạo khung thông tin', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phân mảnh và đóng gói dữ liệu', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khi kết nối máy tính từ nhà vào ISP thông qua đường dây điện thoại, tín hiệu trên đường điện thoại sẽ thuộc về tầng:', '', 'Approved', 1, 1, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giao vận', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Mạng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Liên kết dữ liệu', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Vật lý', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Theo mô hình OSI, định dạng ảnh JPG nằm ở tầng:', '', 'Approved', 1, 1, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Ứng dụng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phiên', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Trình diễn', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Mạng', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Mô hình OSI chia hoạt động truyền thông thành mấy tầng:', '', 'Approved', 1, 1, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('7 tầng', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('5 tầng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('4 tầng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('3 tầng', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Các tầng của mô hình OSI theo thứ tự từ dưới lên là:', '', 'Approved', 1, 1, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Vật lý, TCP, IP, Mạng, Giao vận, Phiên, Trình diễn và Ứng dụng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Vật lý, Liên kết dữ liệu, Giao vận, Mạng, Phiên, Trình diễn và Ứng dụng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Vật lý, Liên kết dữ liệu, Mạng, Giao vận, Phiên, Trình diễn và Ứng dụng', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Vật lý, Liên kết dữ liệu, Mạng, TCP, IP, Phiên và Ứng dụng', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tầng nào xác định giao diện giữa người sử dụng và môi trường OSI:', '', 'Approved', 1, 1, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tầng ứng dụng', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tầng trình diễn', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tầng phiên', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tầng vận chuyển', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tầng nào dưới đây thiết lập, duy trì, huỷ bỏ "các giao dịch" giữa các thực thể đầu cuối:', '', 'Approved', 1, 1, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tầng mạng', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tầng liên kết dữ liệu', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tầng phiên', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tầng vật lý', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tầng nào thực hiện việc chuyển giao các thông điệp giữa các tiến trình trên các thiết bị:', '', 'Approved', 1, 1, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tầng mạng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tầng giao vận', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tầng liên kết dữ liệu', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tầng phiên', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Điều khiển các cuộc liên lạc là chức năng của tầng nào:', '', 'Approved', 1, 1, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Vật lý', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tầng mạng', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tầng phiên', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tầng trình diễn', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Trong mô hình OSI, tầng nào thực hiện việc chọn đường và chuyển tiếp thông tin:', '', 'Approved', 1, 1, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Network', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Transport', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Session', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Data link', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Trong mô hình OSI, việc mở và đóng các cuộc hội thoại giữa các máy tính là trách nhiệm của:', '', 'Approved', 1, 1, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tầng phiên', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tầng giao vận', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tầng liên kết dữ liệu', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tầng vật lý', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Trong mô hình OSI, đâu là mối quan hệ của một tầng (N) đối với tầng bên trên nó (N+1):', '', 'Approved', 1, 1, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tầng N cung cấp các dịch vụ cho tầng N+1', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tầng N+1 bổ sung một phần đầu vào thông tin nhận được từ tầng N', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tầng N vận dụng các dịch vụ do tầng N+1 cung cấp', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tầng N không có tác động gì lên tầng N+1', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Trong mô hình mạng Internet, chuẩn UNICODE (cho việc mã hoá các ký tự) sẽ nằm ở tầng:', '', 'Approved', 1, 1, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Ứng dụng', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giao vận', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Mạng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Liên kết dữ liệu', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Theo mô hình OSI, định dạng ảnh JPG nằm ở tầng:', '', 'Approved', 1, 1, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Ứng dụng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phiên', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Trình diễn', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Mạng', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Đơn vị dữ liệu ở tầng presentation là:', '', 'Approved', 1, 1, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Byte', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Data', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Frame', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Packet', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Chọn chức năng của tầng Presentation:', '', 'Approved', 1, 1, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Mã hoá dữ liệu và nén dữ liệu', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cung cấp các dịch vụ mạng người dùng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đánh địa chỉ', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả đều sai', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tầng nào trong mô hình OSI chịu trách nhiệm mã hoá dữ liệu:', '', 'Approved', 1, 1, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Application', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Presentation', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Session', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Transport', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tầng nào trong mô hình OSI làm việc với các tín hiệu điện:', '', 'Approved', 1, 1, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Data Link', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Network', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Physical', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Transport', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Mô hình TCP/IP chia hoạt động truyền thông thành mấy tầng:', '', 'Approved', 1, 1, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('7 tầng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('6 tầng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('4 tầng', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('3 tầng', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Thứ tự các tầng từ thấp đến cao trong mô hình TCP/IP:', '', 'Approved', 1, 1, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Ứng dụng, Mạng, Giao vận, Truy nhập mạng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Mạng, Giao vận, Truy nhập mạng, Ứng dụng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Truy nhập mạng, Mạng, Giao vận, Ứng dụng', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Truy nhập mạng, Giao vận, Mạng, Ứng dụng', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Đơn vị dữ liệu ở tầng Data link là:', '', 'Approved', 1, 1, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Byte', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Data', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Frame', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Packet', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Đơn vị dữ liệu ở tầng Internet là:', '', 'Approved', 1, 1, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Byte', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Data', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Frame', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Datagram', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Chức năng của tầng ứng dụng là:', '', 'Approved', 1, 1, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tạo khung thông tin (Frame)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đóng gói dữ liệu', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cung cấp các phương tiện để người dùng có thể truy nhập được vào môi trường mạng', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Vận chuyển thông tin giữa các máy chủ (End to End)', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('FTP là từ viết tắt của:', '', 'Approved', 1, 2, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('File Transfer Protocol', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Folder Transfer Protocol', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Protocol Transfer Program', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Protocol Transfer Folder', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('HTTP là từ viết tắt của:', '', 'Approved', 1, 2, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('HyperText Transmision Protocol', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('HyperText Transit Protocol', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('HyperText Transfer Protocol', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('HyperText Treat Protocol', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Giao thức POP3 sử dụng cổng dịch vụ số:', '', 'Approved', 1, 2, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('53', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('23', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('25', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('110', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Dịch vụ DNS có chức năng chính là gì:', '', 'Approved', 1, 2, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phân giải tên netbios', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phân giải tên miền (IP sang tên và ngược lại)', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phân giải địa chỉ MAC', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả đều sai', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nhược điểm nếu xây dựng hệ thống dịch vụ tên miền (DNS) theo mô hình tập trung là:', '', 'Approved', 1, 2, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nếu điểm tập trung bị hỏng, toàn bộ hệ thống sẽ bị tê liệt', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Số lượng yêu cầu phục vụ tại điểm tập trung duy nhất sẽ rất lớn', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chi phí bảo trì hệ thống rất lớn', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả câu trả lời trên', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Số hiệu cổng (port) của giao thức truyền mail SMTP là:', '', 'Approved', 1, 2, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('23', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('25', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('21', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('110', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Giao thức truyền thông trong DNS sử dụng cổng dịch vụ số:', '', 'Approved', 1, 2, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('21', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('25', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('53', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('110', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Trong số các cặp giao thức và cổng dịch vụ sau, cặp nào là sai:', '', 'Approved', 1, 2, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('SMTP:TCP Port 25', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('FTP:UDP Port 22', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('HTTP:TCP Port 80', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('DNS:UDP Port 53', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Giao thức nào sau đây hoạt động trên nền giao thức UDP:', '', 'Approved', 1, 2, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('ARP', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('DNS', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Telnet', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả các câu trên đều đúng', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khẳng định nào sau đây là đúng khi nói về ngôn ngữ đánh dấu siêu văn bản HTML:', '', 'Approved', 1, 2, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là một thủ tục World Wide Web', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phương thức liên kết các file văn bản', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là công cụ soạn thảo trang thông tin Web', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giao diện Web', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khẳng định nào sau đây là đúng khi nói về tên gọi loại máy chủ cung cấp dịch vụ thư điện tử:', '', 'Approved', 1, 2, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Web Server', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Mail Server', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('FTP Server', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Proxy', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khẳng định nào sau đây là đúng khi nói về đơn vị dữ liệu của tầng Ứng dụng (Application):', '', 'Approved', 1, 2, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Message (Thông điệp)', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Segment/ Datagram (Đoạn/Bó dữ liệu)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Packet (Gói dữ liệu)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Frame (Khung dữ liệu)', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('HTTP (Hypertex Transfer Protocol) là:', '', 'Approved', 1, 2, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giao thức ứng dụng cho phép các máy tính giao tiếp với nhau qua Web và có khả năng liên kết các trang Web với nhau.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giao thức tầng vận chuyển cho phép truyền tải các trang Web.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Một thành phần tên miền.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giao diện Web.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Các giao thức ứng dụng hoạt động trên:', '', 'Approved', 1, 2, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tầng trình diễn', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tầng phiên', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tầng ứng dụng', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tầng liên kết dữ liệu', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('HTTP làm nhiệm vụ gì:', '', 'Approved', 1, 2, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cung cấp một cơ chế để lấy dữ liệu từ server chuyển đến client', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hiển thị các trang Web từ xa trên màn hình và giúp người dùng tương tác với chúng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cung cấp giao diện người dùng như các nút bấm, thanh trượt,…', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cung cấp dữ liệu từ server sử dụng giao thức chuyển file (File Transport Protocol)', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Trên Internet, email được gửi từ máy nguồn bằng cách thiết lập một kết nối TCP đến một cổng cụ thể trên máy đích. Cổng đó là:', '', 'Approved', 1, 2, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('80', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('110', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('25', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('404', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Giả sử có một bản ghi của dịch vụ DNS là (cnn.com, r1.infor.cnn.com, CNAME)', '', 'Approved', 1, 2, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('cnn.com là tên viết tắt (rút gọn) của r1.infor.cnn.com', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('r1.infor.cnn.com là tên viết tắt (rút gọn) của cnn.com', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cả A và B đều đún', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cả A và B đều sai', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Giao thức được sử dụng để 2 bên truyền file là:', '', 'Approved', 1, 2, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('HTTP', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('FTP', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('SMTP', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('SNMP', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Giả sử có một bản ghi của dịch vụ DNS là (alpha.com, 123.4.5.7, NS). Chọn câu trả lời đúng:', '', 'Approved', 1, 2, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('123.4.5.7 là địa chỉ IP của máy alpha.com', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('alpha.com là một tên miền, không phải là một máy', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('123.4.5.7 là địa chỉ IP của máy phục vụ thư (mail server) có tên miền là google.com', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả đều sai', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Giả sử tất cả các máy tính thuê bao Internet của FPT khi truy cập vào website google.com đều bị chuyển hướng sang một trang web khác. Các máy tính thuê bao các ISP khác không gặp tình huống này. Nguyên nhân gây ra lỗi lớn nhất sẽ là:', '', 'Approved', 1, 2, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Các máy tính bị nhiễm virus', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Website google bị lỗi', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('DNS server của FPT bị lỗi', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Router ra ngoài của ISP FPT bị lỗi', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Các Web client thường được gọi là gì:', '', 'Approved', 1, 2, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Netscape Navigator', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Browers', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Mosaic', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('HTML interpreter (trình thông dịch HTML)', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Web server thường sử dụng phần mềm chạy trên:', '', 'Approved', 1, 2, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cổng 25', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cổng 404', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cổng 125', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cổng 80', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Để thiết kế một trang Web như chúng ta vẫn thấy trên màn hình (các định dạng font chữ, màu sắc, các hiệu ứng đồ họa, các đường liên kết), người ta đã phát triển một kiểu định dạng đặc biệt. Định dạng trang chuẩn được dùng trong Web là:', '', 'Approved', 1, 2, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('HTTP', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Mosaic', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('HTML', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Netscape', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Phát biểu nào sau đây đúng về giao thức HTTP:', '', 'Approved', 1, 2, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phiên bản giao thức luôn được đặt trong tất cả thông điệp', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả các tiêu đề đều dưới dạng text', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả dữ liệu đều truyền dưới dạng văn bản (text)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A và B', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Trong những thông điệp HTTP trả lời dưới đây, thông điệp nào đúng:', '', 'Approved', 1, 2, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A. 200 "OK"', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('B. 201 "Moved Permanently"', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('C. 404 "Not Modified"', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('D. 20 "Not Implemented"', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Những thông điệp nào dưới đây được giao thức POP3 hỗ trợ:', '', 'Approved', 1, 2, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Kiểm chứng (Authorization)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đọc một thư (Retrieving a message)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Xoá một thư', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả đều đúng', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Giao thức nào thuộc tầng Application:', '', 'Approved', 1, 2, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('IP', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('HTTP', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('NFS', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('TCP', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cho biết ứng dụng nào thuộc loại Client/Server:', '', 'Approved', 1, 2, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('WinWord', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('WWW (World Wide Web)', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Excel', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Photoshop', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Mã 404 trong thông điệp trả lời từ Web server cho Web client có ý nghĩa:', '', 'Approved', 1, 2, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Server không hiểu yêu cầu của client', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đối tượng client yêu cầu không có', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Không có câu trả lời nào đúng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Yêu cầu của Client không hợp lệ', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Giao thức được sử dụng để truyền thư giữa các máy chủ phục vụ thư (Mail server) là:', '', 'Approved', 1, 2, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('HTTP', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('FTP', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('SMTP', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('POP', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Ứng dụng nào sử dụng mô hình client/server:', '', 'Approved', 1, 2, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bit Torrent', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Email, Web', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Skype', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('KaZaA', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Ứng dụng nào sử dụng mô hình P2P:', '', 'Approved', 1, 2, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Telnet', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Email', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Web', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Skype', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Các ứng dụng dùng giao thức TCP:', '', 'Approved', 1, 2, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Web, truyền file, Email', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Web, DNS, điện thoại Internet', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hội thảo từ xa, điện thoại Internet, streaming media', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Telnet, DNS, Email', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Các ứng dụng dùng giao thức UDP:', '', 'Approved', 1, 2, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Web, truyền file, Email', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Web, DNS, điện thoại Internet', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hội thảo từ xa, điện thoại Internet, streaming media', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Telnet, DNS, Email', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Định danh (identifier) của tiến trình bao gồm:', '', 'Approved', 1, 2, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Địa chỉ IP của host', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Địa chỉ IP và số hiệu cổng liên kết với tiến trình trên host', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Địa chỉ IP nguồn và địa chỉ IP đích', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Địa chỉ IP nguồn, số hiệu cổng nguồn, địa chỉ IP đích, số hiệu cổng đích', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Đâu là một URL:', '', 'Approved', 1, 2, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('www.someschool.edu', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('192.168.1.1', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('…/someDept/pic.gif', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('www.someschool.edu/someDept/pic.gif', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('RTT (Round Trip Time) là:', '', 'Approved', 1, 2, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thời gian khởi tạo kết nối TCP', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thời gian để gửi một gói nhỏ đi từ client đến server', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thời gian để gửi một gói nhỏ đi từ client đến server và quay lại', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thời gian truyền file', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Trong cơ sở dữ liệu của DNS lưu trữ các resource record (RR) có dạng:', '', 'Approved', 1, 2, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('(name, value, type, ttl)', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('(value, name, ttl, type)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('(value, ttl, name, type)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('(name, type, ttl, value)', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Những giao thức nào sau đây thuộc tầng vận chuyển (Transport Layer) trong mô hình TCP/IP:', '', 'Approved', 1, 3, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('UDP', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('IP', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('TCP', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cả A và C đều đúng', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Giao thức nào cung cấp tính năng vận chuyển gói tin có độ tin cậy cao:', '', 'Approved', 1, 3, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('UDP', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('TCP', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('ARP', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('IP', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Trường Window trong header của gói TCP liên quan đến:', '', 'Approved', 1, 3, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Kích thước bộ nhớ khả dụng', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hệ điều hành', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Kích thước màn hình', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả đều sai', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Gói tin TCP yêu cầu kết nối sẽ có giá trị của các cờ:', '', 'Approved', 1, 3, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('RST=1, SYN=1', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('ACK=1, SYN=1', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('ACK=0, SYN=1', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('FIN=1, SYN=0', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('TCP và UDP hoạt động ở tầng nào trong mô hình OSI:', '', 'Approved', 1, 3, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Session (Tầng 5)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Transport (Tầng 4)', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Network (Tầng 3)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Data Link (Tầng 2)', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khẳng định nào sau đây là đúng khi nói về kỹ thuật sử dụng băng thông hiệu quả:', '', 'Approved', 1, 3, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Điều khiển luồng cửa sổ tĩnh', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Điều khiển luồng tốc độ đảm bảo', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Điều khiển luồng cửa sổ động', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Điều khiển luồng tốc độ động', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Giao thức TCP hoạt động cùng tầng với những giao thức nào:', '', 'Approved', 1, 3, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('ARP, RARP', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('UDP', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('TELNET, FTP', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('IP, ARP', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Các giao thức TCP và UDP hoạt động ở tầng nào:', '', 'Approved', 1, 3, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Application', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Network', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Transport', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Presentation', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Giao thức UDP được sử dụng cho những ứng dụng:', '', 'Approved', 1, 3, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Có yêu cầu liên kết', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đòi hỏi độ tin cậy cao', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Yêu cầu độ trễ nhỏ', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Không đòi hỏi độ tin cậy cao', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tầng giao vận Host to Host hoạt động bởi giao thức:', '', 'Approved', 1, 3, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('TCP', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('IP', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('ICMP', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('ARP', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Trong gói dữ liệu UDP (UDP segment), vùng dữ liệu thực sự bắt đầu từ byte thứ:', '', 'Approved', 1, 3, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('4', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('5', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('8', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('9', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Đẳng thức nào sau đây mô tả chính xác nhất giao thức UDP:', '', 'Approved', 1, 3, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('UDP = IP', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('UDP = TCP - (tính tin cậy)', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('UDP = ICMP + (phân kênh theo địa chỉ cổng)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('UDP = TCP – IP', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Để phát hiện lỗi trong gói tin, người ta sử dụng kỹ thuật:', '', 'Approved', 1, 3, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Số thứ tự (sequence number)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Số thứ tự ghi nhận (acknowledgement number)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bộ định thời (timer)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Checksum', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khi thực thể TCP gửi một gói SYNACK segment với trường Acknowledgement Number = 100, điều này có nghĩa là:', '', 'Approved', 1, 3, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Gói dữ liệu nó gửi đi bắt đầu bằng byte thứ 100 trong dòng dữ liệu', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Byte dữ liệu đầu tiên trong dòng dữ liệu sẽ gửi đi có số thứ tự là 100', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nó sẽ gửi từ byte thứ 100', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nó hy vọng nhận được dữ liệu bắt đầu bằng byte có số thứ tự 100', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Giao thức giao vận chạy phía trên IP mà không cần thiết lập kết nối trước khi truyền là:', '', 'Approved', 1, 3, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('UDP', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('TCP', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('HTTP', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('FTP', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Giao thức TCP có thể xử lý:', '', 'Approved', 1, 3, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Gói tin bị mất', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Các gói tin bị trùng lặp', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Các gói tin không theo thứ tự', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả các phương án trên', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Checksum trong gói dữ liệu UDP có độ dài:', '', 'Approved', 1, 3, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('4 bit', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('8 bit', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('16 bit', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('32 bit', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Vị trí dữ liệu thực sự trong gói dữ liệu TCP bắt đầu từ byte:', '', 'Approved', 1, 3, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('40', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('32', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('5', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Không xác định', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Giả sử thực thể TCP A cần gửi 1500 byte cho thực thể giao vận B. Gói thứ nhất chứa 1000 byte dữ liệu, trường Sequence Number của gói này là 100. Trường Sequence Number của gói thứ hai sẽ là:', '', 'Approved', 1, 3, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('1101', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('1100', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('500', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('501', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Với giao thức TCP, bên nhận sẽ thông báo lại cho bên gửi về số lượng tối đa dữ liệu mà nó có thể nhận được. Giá trị này được xác định tại trường:', '', 'Approved', 1, 3, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sequence Number', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Acknowledgement Number', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Rcvr Number', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Header length', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Sau khi thực thể TCP gửi đi gói SYN segment với trường Sequence Number = 100, nó nhận được gói ACKSYN với truờng Sequence Number = 200. Trường Acknowledgment Number của gói ACKSYN này sẽ là:', '', 'Approved', 1, 3, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('100', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('101', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('200', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('201', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Giả sử ứng dụng tạo ra một thông điệp 60 byte. Thông điệp này được đặt trong TCP segment rồi sau đó là IP datagram. Giả sử cả gói TCP lẫn gói IP không có trường dữ liệu đặc biệt (Optional = 0). Trong mỗi IP datagram sẽ chứa bao nhiêu phần trăm dữ liệu thật sự:', '', 'Approved', 1, 3, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('20%', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('40%', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('60%', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('80%', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('TCP port mặc định được sử dụng cho FTP server có giá trị là bao nhiêu:', '', 'Approved', 1, 3, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('20 và 21', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('80 và 8080', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('110 và 80', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('8080 và 1080', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Trong gói dữ liệu UDP (UDP segment), địa chỉ dùng để xác định tiến trình nhận nằm ở:', '', 'Approved', 1, 3, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Byte 1 và 2', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Byte 3 và 4', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Byte 5 và 6', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Không xác định', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Các protocol TCP và UDP hoạt động ở tầng nào trong các tầng sau đây:', '', 'Approved', 1, 3, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Transport', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Network', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Application', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Presentation', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Giao thức TCP làm việc ở tầng nào của mô hình OSI:', '', 'Approved', 1, 3, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tầng ứng dụng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tầng giao vận', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tầng mạng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tầng liên kết dữ liệu', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Giao thức nào dưới đây không đảm bảo dữ liệu gửi đi có tới máy nhận hoàn chỉnh hay không:', '', 'Approved', 1, 3, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('TCP', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('ASP', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('UDP', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('ARP', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Các giao thức của tầng giao vận (Transport):', '', 'Approved', 1, 3, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Kiểm soát việc truyền tin giữa hai tiến trình trên mạng máy tính', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Kiểm soát nội dung thông điệp trao đổi giữa hai tiến trình và hành vi của mỗi bên khi nhận được thông điệp', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Kiểm soát việc truyền tin giữa hai máy tính trên mạng máy tính', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Kiểm soát việc truyền dữ liệu giữa hai máy tính trên cùng một môi trường truyền', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Giả sử trường Length của một gói dữ liệu UDP có giá trị 150. Dữ liệu thực sự sẽ có:', '', 'Approved', 1, 3, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('67 byte', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('142 byte', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('150 byte', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('158 byte', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Quan sát một người đang truy cập một trang web, thấy anh ta gõ đường dẫn như sau: http://www.tomang.net:3000. Hãy cho biết Server web mà trang web trên sử dụng TCP port như thế nào:', '', 'Approved', 1, 3, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sử dụng port mặc định', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Không sử dụng port mặc định', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sử dụng port chuẩn', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sử dụng port dành riêng cho Web server', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('UDP socket được xác định bởi:', '', 'Approved', 1, 3, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Địa chỉ IP nguồn, địa chỉ IP đích', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Địa chỉ IP nguồn, số port nguồn', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Địa chỉ IP đích, số port đích', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Địa chỉ IP nguồn, địa chỉ IP đích, số port nguồn, số port đích', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('TCP socket được xác định bởi:', '', 'Approved', 1, 3, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Địa chỉ IP nguồn, địa chỉ IP đích', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Địa chỉ IP nguồn, số port nguồn, địa chỉ IP đích', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Địa chỉ IP nguồn, địa chỉ IP đích, số port đích', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Địa chỉ IP nguồn, số port nguồn, địa chỉ IP đích, số port đích', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Giao thức truyền tin cậy (rdt-reliable data transfer protocol) cần được sử dụng trên:', '', 'Approved', 1, 3, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Các kênh truyền có độ tin cậy cao', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Các kênh truyền không tin cậy', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cả hai trường hợp trên đều đúng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cả hai trường hợp trên đều sai', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Độ phức tạp của giao thức truyền tin cậy (rdt-reliable data transfer protocol) phụ thuộc vào:', '', 'Approved', 1, 3, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Kiến trúc mạng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Các thiết bị mạng (router, switch, hub,…)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Các đặc tính của kênh truyền', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Khoảng cách giữa các hosts', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Byte đầu tiên của một địa chỉ IP có dạng: 11100001. Vậy nó thuộc lớp nào:', '', 'Approved', 1, 4, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lớp B', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lớp C', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lớp D', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lớp E', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Trong mạng máy tính dùng giao thức TCP/IP và đều dùng Subnet Mask là 255.255.255.0 thì cặp máy tính nào sau đây liên thông:', '', 'Approved', 1, 4, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('192.168.1.3 và 192.168.100.1', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('192.168.15.1 và 192.168.15.254', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('192.168.100.15 và 192.186.100.16', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('172.25.11.1 và 172.26.11.2', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cho địa chỉ 192.64.10.0/28. Hãy cho biết số lượng mạng con và số lượng máy trên mỗi mạng con:', '', 'Approved', 1, 4, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('6 mạng con, mỗi mạng con có 30 máy', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('14 mạng con, mỗi mạng con có 14 máy', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('16 mạng con, mỗi mạng con có 16 máy', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('8 mạng con, mỗi mạng con có 32 máy', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Một mạng lớp B cần chia thành 3 mạng con sử dụng Subnet mask nào sau đây:', '', 'Approved', 1, 4, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('255.255.224.0', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('255.0.0.255', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('255.255.192.0', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('255.255.255.224', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cho kết xuất lệnh route print trên máy X như sau: (ảnh) Máy X có địa chỉ IP:', '', 'Approved', 1, 4, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('0.0.0.0', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('172.16.9.12', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('127.0.0.1', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('172.16.9.0', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Các địa chỉ IP cùng mạng con với địa chỉ 131.107.2.56/28:', '', 'Approved', 1, 4, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Từ 131.107.2.48 đến 131.107.2.63', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Từ 131.107.2.49 đến 131.107.2.63', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Từ 131.107.2.48 đến 131.107.2.62', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Từ 131.107.2.55 đến 131.107.2.126', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Địa chỉ IP nào sau đây cùng địa chỉ mạng (Subnet) với địa chỉ IP 192.168.1.10/24:', '', 'Approved', 1, 4, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('192.168.10.1/24', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('192.168.1.256/24', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('192.168.11.12/24', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('192.168.1.33/24', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Để biết một địa chỉ IP thuộc lớp địa chỉ nào, căn cứ vào:', '', 'Approved', 1, 4, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giá trị của octet (byte) đầu', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giao thức ARP', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Số dấu chấm trong địa chỉ', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Địa chỉ của DHCP', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Một địa chỉ mạng lớp C được chia thành 5 mạng con (subnet). Mặt nạ mạng (subnet mask) cần dùng:', '', 'Approved', 1, 4, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('255.255.255.224', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('255.255.255.252', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('255.255.255.240', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('255.255.255.248', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Trong địa chỉ IPv4, có 5 lớp tất cả: A, B, C, D, E. Lớp C là lớp có dãy địa chỉ:', '', 'Approved', 1, 4, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('224.0.0.0 tới 239.255.255.255', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('192.0.0.0 tới 223.255.255.255', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('128.0.0.0 tới 191.255.255.255', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('240.0.0.0 tới 255.255.255.255', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Địa chỉ IP nào sau đây là hợp lệ:', '', 'Approved', 1, 4, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('230.20.30.40', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('192.168.1.2', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('255.255.255.255', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả các câu trên', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cho địa chỉ IP: 192.168.5.39/28. Cho biết địa chỉ mạng của địa chỉ IP này:', '', 'Approved', 1, 4, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('192.168.5.39', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('192.168.5.32', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('192.168.5.0', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả đều sai', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('IPv4 có bao nhiêu địa chỉ IP:', '', 'Approved', 1, 4, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('2^12', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('2^22', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('2^32', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('2^42', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('IPv4, lớp B có số NetIDs/HostIDs sử dụng tương ứng là: (hình ảnh)', '', 'Approved', 1, 4, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('2^11 / 2^21 - 2', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('2^14 / 2^16 - 2', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('2^13 / 2^19 - 2', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('2^10 / 2^22 – 2', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Giao thức OSPF sử dụng thuật toán tìm đường đi nào:', '', 'Approved', 1, 4, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Flooding', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Distance vector routing', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Link state', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bellman-Ford', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Giao thức RIP sử dụng thuật toán tìm đường đi nào:', '', 'Approved', 1, 4, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Flooding', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Distance vector routing', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Link state', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bellman-Ford', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Thông điệp ICMP được đặt trong gói dữ liệu:', '', 'Approved', 1, 4, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('UDP', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('TCP', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('IP', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Không xác định', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Địa chỉ IP nào sau đây là hợp lệ:', '', 'Approved', 1, 4, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('192.168.1.2', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('255.255.255.254', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('10.20.30.40', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A và C đều đúng', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Địa chỉ lớp nào cho phép mượn 15 bits để chia subnets:', '', 'Approved', 1, 4, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lớp A', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lớp B', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lớp C', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Không câu nào đúng', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Giao thức nào sau đây thuộc tầng mạng (Internet Layer) trong mô hình TCP/IP:', '', 'Approved', 1, 4, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('FTP', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('IP', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('ARP', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cả B và C đều đúng', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Việt Nam được trung tâm thông tin Châu Á Thái bình dương APNIC phân địa chỉ IP thuộc lớp nào:', '', 'Approved', 1, 4, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lớp A', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lớp B', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lớp C', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lớp D', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Địa chỉ IP 203.162.0.11 thuộc địa chỉ lớp nào:', '', 'Approved', 1, 4, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lớp A', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lớp B', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lớp C', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lớp D', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Những thuật ngữ nào dùng để mô tả các đơn vị dữ liệu tại tầng mạng:', '', 'Approved', 1, 4, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Datagram', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Khung (Frame)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Gói tin (Packet)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cả A và C đều đúng', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Giao thức IP là giao thức:', '', 'Approved', 1, 4, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hướng liên kết', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Không liên kết', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đòi hỏi độ tin cậy cao trong quá trình trao đổi thông tin', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Yêu cầu kiểm soát luồng và kiểm soát lỗi', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cấu trúc khuôn dạng của địa chỉ IP lớp A là:', '', 'Approved', 1, 4, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bit 1: 0, bit 2- 8: NetID, 9-32: HostID', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bit 1: 0, bit 2- 16: NetID, 17-32: HostID', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bit 1-2: 10, bit 3- 8: NetID, 9 - 32: HostID', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bit 1-2: 10, bit 3- 16: NetID, 17 - 32: HostID', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cấu trúc khuôn dạng của địa chỉ IP lớp B là:', '', 'Approved', 1, 4, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bit 1: 0, bit 2- 8: NetID, 9-32: HostID', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bit 1: 0, bit 2- 16: NetID, 17-32: HostID', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bit 1-2: 10, bit 3- 8: NetID, 9 - 32: HostID', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bit 1-2: 10, bit 3- 16: NetID, 17 - 32: HostID', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Địa chỉ mạng NetID: 192.168.0.32/27 có dãy địa chỉ máy HostIDs sử dụng tương ứng là:', '', 'Approved', 1, 4, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('192.168.0.33 => 192.168.0.63', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('192.168.0.32 => 192.168.0.64', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('192.168.0.32 => 192.168.0.62', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('192.168.0.33 => 192.168.0.62', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Trong Header của IP Packet có chứa:', '', 'Approved', 1, 4, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Địa chỉ nguồn', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Địa chỉ đích', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Không chứa địa chỉ nào cả', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cả địa chỉ nguồn và địa chỉ đích', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Giao thức nào được router hay máy tính sử dụng để thông báo cho các máy tính khác về tình trạng lỗi:', '', 'Approved', 1, 4, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('TCP', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('UDP', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('IP', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('ICMP', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Dịch vụ mạng nào sau đây phải dựa trên ICMP:', '', 'Approved', 1, 4, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('DNS', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Ping', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('SMTP', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('X Windows', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Giải pháp nào sau đây có thể giải quyết tình trạng khan hiếm địa chỉ IP:', '', 'Approved', 1, 4, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('IPv6', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Network Address Translation', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Subnet mask', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả các phương án trên', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Giao thức RIP được triển khai tại:', '', 'Approved', 1, 4, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Máy tính đầu cuối', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Router', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hub', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Switch', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Giao thức nào trong số các giao thức sau thuộc tầng mạng:', '', 'Approved', 1, 4, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('TCP', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Telnet', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('FTP', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('IP', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Trong mạng máy tính dùng giao thức TCP/IP và Subnet Mask là 255.255.255.224 hãy xác định địa chỉ broadcast của mạng nếu biết rằng một máy tính trong mạng có địa chỉ là 192.168.1.1:', '', 'Approved', 1, 4, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('192.168.1.31', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('192.168.1.255', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('192.168.1.15', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('192.168.1.96', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Router hoạt động tại tầng nào trong mô hình OSI:', '', 'Approved', 1, 4, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Network Layer', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Data Link Layer', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Transport Layer', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Application Layer', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nếu 4 PCs kết nối với nhau thông qua HUB thì cần bao nhiêu địa chỉ IP cho 5 trang thiếi bị mạng này:', '', 'Approved', 1, 4, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('1', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('3', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('4', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('2', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Các thiết bị mạng nào sau đây có khả năng duy trì và trao đổi thông tin với nhau về hiện trạng kết nối của toàn bộ mạng trong một xí nghiệp hoặc một khuôn viên:', '', 'Approved', 1, 4, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bridge', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Router', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Repeater', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Connector', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Router là một thiết bị dùng để:', '', 'Approved', 1, 4, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Định tuyến giữa các mạng', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lọc các gói tin dư thừa', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Mở rộng một hệ thống mạng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cả 3 đều đúng', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Thiết bị Router cho phép:', '', 'Approved', 1, 4, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Kéo dài 1 nhánh LAN thông qua việc khuyếch đại tín hiệu truyền đến nó', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Kết nối nhiều máy tính lại với nhau', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Liên kết nhiều mạng LAN lại với nhau, đồng thời ngăn không cho các packet thuộc loại broadcast đi qua nó và giúp việc định tuyến cho các packet', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Định tuyến cho các packet, chia nhỏ các Collision Domain nhưng không chia nhỏ các Broadcast Domain', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tầng Network chịu trách nhiệm:', '', 'Approved', 1, 4, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dựa trên địa chỉ IP đích có trong packet mà quyết định chọn đường thích hợp cho packet', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quyết định đích đến của packet', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phát hiện packet bị mất và cho gửi lại packet mất', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chia nhỏ packet thành các frame', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Các thiết bị mạng nào sau đây có khả năng định tuyến cho một gói tin (chuyển gói tin sang một mạng kế khác nằm trên đường đến mạng đích) bằng cách dựa vào địa chỉ IP của máy27 đích có trong gói tin và thông tin hiện thời về tình trạng mạng được thể hiện trong bảng định tuyến có trong thiết bị:', '', 'Approved', 1, 4, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bridge', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Router', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Switch', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cả A, B và C', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Địa chỉ nào thuộc về lớp A:', '', 'Approved', 1, 4, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('10001100 11001100 11111111 01011010', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('11001111 11110000 10101010 01010101', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('01111010 10100101 11000011 11100011', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('11011010 10101010 01010101 11110011', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nếu lấy một địa chỉ lớp B để chia subnet với netmask là 255.255.240.0 thì có bao nhiêu subnets có thể sử dụng được:', '', 'Approved', 1, 4, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('2', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('6', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('30', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('16', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Địa chỉ nào sau đây thuộc lớp A:', '', 'Approved', 1, 4, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('172.29.14.10', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('10.1.1.1', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('140.8.8.8', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('203.5.6.7', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Máy tính đóng vai trò Router có bao nhiêu địa chỉ IP:', '', 'Approved', 1, 4, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('1', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('2', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('3', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('4', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Chức năng chính của router là:', '', 'Approved', 1, 4, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Kết nối network với network', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chia nhỏ broadcast domain', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A và B đều đúng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A và B đều sai', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Trong các địa chỉ sau, chọn địa chỉ không nằm cùng mạng với các địa chỉ còn lại:', '', 'Approved', 1, 4, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('203.29.100.100/255.255.255.240', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('203.29.100.110/255.255.255.240', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('203.29.103.113/255.255.255.240', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('203.29.100.98/255.255.255.240', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Địa chỉ nào sau đây là địa chỉ broadcast của mạng lớp B:', '', 'Approved', 1, 4, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('149.255.255.255', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('149.6.255.255', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('149.6.7.255', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả đều đúng', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Địa chỉ IP 172.200.25.55/255.255.0.0', '', 'Approved', 1, 4, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thuộc lớp A', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thuộc lớp C', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là địa chỉ riêng', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là địa chỉ broadcast', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Thuật toán chạy trên gateway router là:', '', 'Approved', 1, 4, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Inter-routing', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Intra-routing', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cả hai đều sai', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cả hai đều đúng', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Chức năng chính của Router:', '', 'Approved', 1, 4, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đẩy các gói tin từ kết nối vào đến kết nối ra', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thực hiện các giao thức/giải thuật định tuyến', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cả hai chức năng A và B', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Không thực hiện chức năng nào ở trên', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Kết nối mạng có giá trị MTU là 1500 bytes. Kích thước gói dữ liệu lớn nhất có thể truyền qua kết nối này là:', '', 'Approved', 1, 4, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('1400 bytes', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('1480 bytes', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('1500 bytes', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('1600 bytes', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Có địa chỉ 200.23.16.0/23, giá trị 23 là:', '', 'Approved', 1, 4, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Số bit trong phần subnet của địa chỉ', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Số bit trong phần hostID của địa chỉ', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Số bit xác định lớp A, B, C, D, E', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Không là giá trị nào trong các trường hợp trên', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('IPv6 có không gian địa chỉ là:', '', 'Approved', 1, 4, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('32 bit', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('64 bit', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('128 bit', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('256 bit', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Gói tin IPv6 có bao nhiêu byte trong phần tiêu đề:', '', 'Approved', 1, 4, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('20 byte', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('30 byte', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('40 byte', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('50 byte', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Đâu là biểu diễn của một địa chỉ IPv6:', '', 'Approved', 1, 4, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('1080:0000:0000:0000:0008:0800:200C:417A', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('1080:0000:0000:0008:0800:200C:417A', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('1080:0000:0000:0000:0000:0008:0800:200C:417A', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('1080::0008:0800:200C::417A', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Đâu là biểu diễn dạng rút gọn của địa chỉ IPv6: 2001:0F68:0000:0000:0000:0000:1986:69AF', '', 'Approved', 1, 4, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('2001:F68:0:0:0:0:1986:69AF', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('2001:F68::1986:69AF', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cả hai biểu diễn trên đều đúng', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cả hai biểu diễn trên đều sai', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Frame là dữ liệu ở tầng:', '', 'Approved', 1, 5, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Physical', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Network', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Data Link', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Transport', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Kiểm soát lỗi và kiểm soát luồng dữ liệu được thực hiện bởi:', '', 'Approved', 1, 5, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tầng mạng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tầng liên kết dữ liệu', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tầng vật lý', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tầng phiên', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Giao thức nào dùng để chuyển đổi từ địa chỉ IP sang địa chỉ vật lý MAC:', '', 'Approved', 1, 5, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('ARP', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('RARP', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('ICMP', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('TCP', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tiến trình cho phép host tự động lấy địa chỉ IP cho nó từ server khi kết nối vào mạng:', '', 'Approved', 1, 5, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Host broadcasts thông điệp "DHCP discover" --> DHCP server đáp ứng với "DHCP offer" --> host gửi thông điệp "DHCP request" --> DHCP server gửi "DHCP ack"', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Host gửi thông điệp "DHCP request" --> DHCP server gửi "DHCP ack" --> host broadcasts thông điệp "DHCP discover" --> DHCP server đáp ứng với "DHCP offer"', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Host broadcasts thông điệp "DHCP discover"--> DHCP server gửi "DHCP ack" --> host gửi thông điệp "DHCP request" --> DHCP server đáp ứng với "DHCP offer"', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Host gửi thông điệp "DHCP request" --> DHCP server đáp ứng với "DHCP offer" --> host broadcasts thông điệp "DHCP discover" --> DHCP server gửi "DHCP ack"', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('CSMA/CD là phương pháp truy nhập ngẫu nhiên sử dụng cho mạng có cấu trúc hình:', '', 'Approved', 1, 5, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sao (STAR)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('BUS', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Vòng (RING)', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lai ghép BUS-STAR', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('CSMA/CD là viết tắt của:', '', 'Approved', 1, 5, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Collision Sense Multiple Access/ Collision Detection', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Carrier Sense Multiple Access/ Collision Deterence', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Carrier Sense Multiple Access/ Collision Detection', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Collision Sense Multiple Access/ Carrier Detection', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Ba byte đầu tiên của địa chỉ MAC cho biết thông tin gì:', '', 'Approved', 1, 5, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tên nhà sản xuất card mạng (NIC)', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Vùng địa lý của card mạng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Số hiệu phiên bản của card mạng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả các câu trên đều sai', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Trang thiết bị mạng nào dùng để nối các mạng và kiểm soát được broadcast:', '', 'Approved', 1, 5, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Ethernet switch', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bridge', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Router', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hub', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Địa chỉ nào dưới đây là địa chỉ tầng 2 (địa chỉ MAC):', '', 'Approved', 1, 5, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('192.201.63.251', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('0000.1234.FEG', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('19-22-01-63-25', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('00-00-12-34-FE-AA', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('CSMA/CD là kiểu truy cập nào trong các kiểu sau đây:', '', 'Approved', 1, 5, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phân chia kênh truyền (channel partitioning)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Truy cập ngẫu nhiên (random access)', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lần lượt (taking turn)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả đều sai', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Phương pháp truy nhập nào dưới đây lắng nghe lưu thông mạng trên đường truyền trước khi truyền dữ liệu:', '', 'Approved', 1, 5, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('CSMA/CD', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('CSMA/CA', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Token RING', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Token BUS', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Chuẩn nào dưới đây đặc tả về chuẩn kiến trúc mạng cục bộ cho Ethernet, bao gồm các chuẩn tầng vật lý và tầng con MAC:', '', 'Approved', 1, 5, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('IEEE802.2', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('IEEE802.3', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Token Bus', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Token Ring', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Địa chỉ vật lý (MAC Address) nào sau đây là không đúng:', '', 'Approved', 1, 5, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('00-2A-43-16-23-A8', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('00-2A-43-3E-33-A0', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('00-4G-43-26-36-0D', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('00-C0-9F-C3-27-F6', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Thiết bị Hub cho phép:', '', 'Approved', 1, 5, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Kéo dài 1 nhánh LAN thông qua việc khuyếch đại tín hiệu truyền đến nó', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Ngăn không cho các packet thuộc loại Broadcast đi qua nó', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giúp định tuyến cho các packet', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Kết nối nhiều máy tính lại với nhau để tạo thành một nhánh LAN (segment)', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Máy tính A và Z có địa chỉ trên 2 SUBNET khác nhau. Điều gì xảy ra khi máy tính A gửi broadcasts (ARP request) đi tìm địa chỉ MAC của máy tính Z:', '', 'Approved', 1, 5, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Không có trả lời (no response)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Router sẽ trả lời với địa chỉ MAC của Z', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Router sẽ trả lời với địa chỉ MAC của mình', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Router sẽ gửi tiếp yêu cầu (ARP request) tới subnet của Z và lúc đó Z có thể trả lời A', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Điều gì xảy ra khi máy tính A gửi broadcasts (ARP request) đi tìm địa chỉ MAC của máy tính B trên cùng một mạng:', '', 'Approved', 1, 5, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Máy chủ DNS sẽ trả lời A với địa chỉ MAC của B', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả các máy tính trong mạng đều nhận được yêu cầu (ARP request) và tất cả sẽ trả lời A với địa chỉ MAC của B', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả các máy tính trong mạng đều nhận được yêu cầu (ARP request) nhưng chỉ có B mới trả lời A với địa chỉ MAC của mình', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Các Router gần nhất nhận được yêu cầu (ARP request) sẽ trả lời A với địa chỉ MAC của B hoặc sẽ gửi tiếp yêu cầu này tới các router khác (forwards the request to another router)', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Trong mô hình OSI, việc xác định địa chỉ vật lý từ địa chỉ logic là trách nhiệm của:', '', 'Approved', 1, 5, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tầng ứng dụng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tầng liên kết dữ liệu', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tầng mạng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tầng giao vận', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Dịch vụ nào sau đây mà tầng liên kết dữ liệu phải cung cấp:', '', 'Approved', 1, 5, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đặt gói tin tầng mạng vào các Frame', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Mã hoá các bit thành các tín hiệu vật lý', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tạo đường truyền tin cậy', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Câu A và B đều đúng', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Giả sử người ta sẽ bổ sung 1 bit kiểm tra vào cuối của dòng dữ liệu gửi đi sao cho tổng số bit 1 trong chuỗi mới là một số lẻ. Bên nhận nhận được chuỗi 1000101010001 thì:', '', 'Approved', 1, 5, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chuỗi nhận được bị lỗi', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chuỗi nhận được đúng hoàn toàn', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Có thể phát hiện và sửa được lỗi trong chuỗi bit này', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Không xác định lỗi trong chuỗi nhận được', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Switch là thiết bị hoạt động ở tầng:', '', 'Approved', 1, 5, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Vật lý', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Liên kết dữ liệu', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Mạng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Vận chuyển', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Công nghệ Ethernet sử dụng phương pháp truy nhập đường truyền nào sau đây:', '', 'Approved', 1, 5, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('CSMA', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('ALOHA', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('CSMA/CD', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('TDMA', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Phát biểu nào sau đây là đúng nhất cho Switch:', '', 'Approved', 1, 5, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sử dụng địa chỉ vật lý và hoạt động tại tầng Physical của mô hình OSI', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sử dụng địa chỉ vật lý và hoạt động tại tầng Network của mô hình OSI', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sử dụng địa chỉ vật lý và hoạt động tại tầng DataLink của mô hình OSI', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sử dụng địa chỉ IP và hoạt động tại tầng Network của mô hình OSI', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Điều gì sẽ xảy ra với dữ liệu khi có xung đột (collision) trong quá trình truyền dữ liệu:', '', 'Approved', 1, 5, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hub/Switch sẽ gửi lại dữ liệu', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dữ liệu sẽ bị phá hỏng', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dữ liệu sẽ được khôi phục lại tại máy nhận', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cả A và C đúng', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Công nghệ LAN nào sử dụng kỹ thuật CSMA/CD:', '', 'Approved', 1, 5, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Token Ring', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Ethernet', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('FDDI', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả các câu trên', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Trang thiết bị mạng nào sau đây làm giảm bớt sự xung đột (collisions):', '', 'Approved', 1, 5, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hub', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('NIC', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Switch', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Transceiver', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Để hạn chế sự đụng độ (collision) của các gói tin trên mạng, người ta chia mạng thành các mạng nhỏ hơn và nối kết chúng lại bằng các thiết bị:', '', 'Approved', 1, 5, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Repeater', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hub', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Switch', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Card mạng (NIC)', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Chuỗi số "00-08-ac-41-5d-9f" có thể là:', '', 'Approved', 1, 5, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Địa chỉ IP', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Địa chỉ port', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Địa chỉ MAC', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả đều sai', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Địa chỉ nào được Switch sử dụng khi quyết định gửi data sang cổng (port) nào:', '', 'Approved', 1, 5, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Source MAC address', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Destination MAC address', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Network address', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Subnetwork address', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Dịch vụ nào sau đây mà tầng liên kết dữ liệu phải cung cấp:', '', 'Approved', 1, 5, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đặt gói tin tầng mạng vào các Frame', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Định tuyến', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Mã hoá các bit thành các tín hiệu vật lý', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tạo đường truyền tin cậy', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Giả sử có một Hệ thống 2 LAN segment được nối với nhau qua một router là máy tính. Máy tính đóng vai trò Router có bao nhiêu card mạng:', '', 'Approved', 1, 5, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('1', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('2', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('3', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('4', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Chọn định nghĩa đúng về địa chỉ MAC:', '', 'Approved', 1, 5, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Được ghi sẵn trên card mạng (NIC)', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Do người quản trị mạng khai báo', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Câu A và B đúng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả đều đúng', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Công nghệ nào sau đây có độ đài của khung dữ liệu cố định:', '', 'Approved', 1, 5, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('X25', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Frame Relay', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('ISDN', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('ATM', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Độ dài của khung dữ liệu của ATM là:', '', 'Approved', 1, 5, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('53 byte', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('128 byte', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('512 byte', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('1500 byte', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('ATM có tốc độ trao đổi thông tin từ:', '', 'Approved', 1, 5, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('2 Mbps đến 8 Mbps', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('155 Mbps đến 1 Gbps', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('100 Mbps đến 155 Mbps', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('155 Mbps đến 622 Mbps', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Chuẩn IEEE 802 chia tầng Liên kết dữ liệu của mô hình OSI thành 2 tầng con:', '', 'Approved', 1, 5, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('LLC và MAC', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('TCP và UDP', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('TCP và IP', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('ARP và RARP', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Fast Ethernet còn được gọi là:', '', 'Approved', 1, 5, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('10BaseT', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('100BaseFX', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('10BaseFX', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('100BaseT', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tốc độ truyền dữ liệu của topology 1000Base-FX là:', '', 'Approved', 1, 5, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('10 Mbps', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('100 Mbps', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('1000 Mbps', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('10 Gbps', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Kỹ thuật mạng LAN Fast Ethernet có tốc độ truyền dữ liệu cơ bản là:', '', 'Approved', 1, 5, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('10 Mbps', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('100 Mbps', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('1.000 Mbps', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('10.000 Mbps', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Chuẩn WLAN 802.11b/g có tốc độ truyền dữ liệu tương ứng là:', '', 'Approved', 1, 5, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('11/100 Mbps', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('11/54 Mbps', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('11/108 Mbps', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('2/54 Mbps', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tần số hoạt động của chuẩn WLAN 802.11g là:', '', 'Approved', 1, 5, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('5 Ghz', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('2,3 Ghz', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('2,4 Ghz', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('2,5 Ghz', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Đường truyền tín hiệu tương tự, đường truyền âm thoại chuẩn được sử dụng trong các cuộc giao tiếp qua điện thoại gọi là đường truyền:', '', 'Approved', 1, 5, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quay số', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tín hiệu số trực tiếp', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Any-to-any', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chuyên dụng (thuê bao)', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Chức năng của Proxy là gì:', '', 'Approved', 1, 5, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là máy đại diện cho một nhóm máy đi thực hiện một dịch vụ máy khách (client service) nào đó', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là một thiết bị thống kê lưu lượng mạng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả đều đúng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả đều sai', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Trình điều khiển (driver) là:', '', 'Approved', 1, 5, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phần cứng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phần mềm', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thiết bị ngoại vi', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Card', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Giao thức nào trong các giao thức sau dùng trong mô hình mạng WAN:', '', 'Approved', 1, 5, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('TCP/IP', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('NetBEUI', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('DLC', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả phương án trên', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Giao thức nào trong các giao thức sau dùng trong mô hình mạng LAN:', '', 'Approved', 1, 5, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('TCP/IP', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('IPX/SPX', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('NetBEUI', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Bảo vệ các tài nguyên thông tin trên mạng là cần thiết và cấp bách, vì:', '', 'Approved', 1, 6, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Các máy tính được nối thành mạng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhiều người sử dụng và phân tán về mặt vật lý', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bảo vệ các máy chủ', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chống nghe trộm thông tin', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('An toàn mạng theo nghĩa là bảo vệ và đảm bảo an toàn:', '', 'Approved', 1, 6, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phần mềm trên mạng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tài nguyên của mạng', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phần cứng của mạng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Kho dữ liệu', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Vi phạm an toàn thông tin hiểu theo nghĩa:', '', 'Approved', 1, 6, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Can thiệp vào các hoạt động của mạng', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Can thiệp vào các hoạt động của người sử dụng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nội dung thông tin và luồng thông tin thay đổi', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Từ chối dịch vụ', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Mật mã là quá trình chuyển đối thông tin từ bản rõ sang:', '', 'Approved', 1, 6, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dạng mã hóa', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dạng từ chối dịch vụ', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phủ nhận', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Không được quyền truy xuất', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Firewall là một hệ thống kiểm soát, ngăn chặn:', '', 'Approved', 1, 6, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đột nhập bất hợp pháp từ bên ngoài vào hệ thống', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sử dụng tài nguyên của mạng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quyền truy xuất thông tin', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Gián điệp', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Một bộ lọc packet (cài đặt trên firewall) có thể:', '', 'Approved', 1, 6, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chỉ các máy tính phía trong mới có khả năng khởi tạo các kết nối TCP ra các máy tính ở bên ngoài mạng', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cho phép FTP client ở bên trong có thể truy cập tới FTP server bên ngoài mà máy tính bên trong không bị hack', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cho phép FTP client ở bên ngoài có thể truy cập tới FTP server bên trong mà máy tính bên trong không bị hack', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả đều đúng', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Chứng thực là:', '', 'Approved', 1, 6, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Người gửi mã hóa thông điệp, người nhận giải mã thông điệp', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Người gửi và người nhận xác định là nhận ra nhau', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Người gửi và người nhận muốn đảm bảo thông điệp không bị thay đổi', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Các dịch vụ phải có khả năng truy nhập và sẵn sàng với người dùng', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Sự toàn vẹn thông điệp là:', '', 'Approved', 1, 6, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Người gửi mã hóa thông điệp, người nhận giải mã thông điệp', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Người gửi và người nhận xác định là nhận ra nhau', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Người gửi và người nhận muốn đảm bảo thông điệp không bị thay đổi', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Các dịch vụ phải có khả năng truy nhập và sẵn sàng với người dùng', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('DES (Data Encryption Standard) được sử dụng trong: A. Mã hóa khóa đối xứ', '', 'Approved', 1, 6, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Mã hóa khóa đối xứng', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Mã hóa khóa công khai', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cả mã hóa khóa đối xứng và mã hóa khóa công khai', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả các phương án trên đều sai', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Giải thuật RSA được sử dụng trong:', '', 'Approved', 1, 6, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Mã hóa khóa đối xứng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Mã hóa khóa công khai', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cả mã hóa khóa đối xứng và mã hóa khóa công khai', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả các phương án trên đều sai', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Sử dụng lệnh IPconfig khi muốn:', '', 'Approved', 1, 6, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Xác định đường đi của các gói tin từ nguồn đến đích', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Biết trạng thái cấu hình TCP/IP của máy tính (cấu hình về các card mạng)', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phân tích gói tin nhằm giải quyết một vấn đề cụ thể của mạng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Kiểm tra lỗi mạng', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Lệnh Tracert dùng để:', '', 'Approved', 1, 6, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Xác định đường đi của các gói tin từ nguồn đến đích (qua các nút mạng nào)', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Biết trạng thái cấu hình TCP/IP của máy tính (cấu hình về các card mạng)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phân tích gói tin nhằm giải quyết một vấn đề cụ thể của mạng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Kiểm tra lỗi mạng', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Lệnh Netstat dùng để:', '', 'Approved', 1, 6, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Biết trạng thái cấu hình TCP/IP của máy tính (cấu hình về các card mạng)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phân tích gói tin nhằm giải quyết một vấn đề cụ thể của mạng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Xác định đường đi của các gói tin từ nguồn đến đích', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Liệt kê tất cả các kết nối vào ra máy tính', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Trong cú pháp lệnh telnet ip/host port bao gồm các tham số:', '', 'Approved', 1, 6, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('ip là địa chỉ IP của thiết bị nguồn, host là tên thiết bị đầu cuối, port là cổng giao tiếp với thiết bị đầu cuối', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('ip là địa chỉ IP của thiết bị đầu cuối, host là tên thiết bị đầu cuối, port là cổng để giao tiếp với thiết bị đầu cuối', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('ip là địa chỉ IP của thiết bị nguồn, host là tên thiết bị nguồn, port là cổng nguồn', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('ip là địa chỉ IP của thiết bị nguồn, host là tên thiết bị đầu cuối, port là cổng nguồn', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Wireshark là một công cụ để:', '', 'Approved', 1, 6, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cho biết trạng thái cấu hình của mạng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Xác định đường đi của các gói tin từ nguồn đến đích', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phân tích gói tin nhằm giải quyết một vấn đề cụ thể của mạng', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Truy nhập từ xa', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Lệnh nào sẽ hiển thị kết quả dưới đây:Reply from 74.125.128.102: byte=32 time=50ms TTL=4537 Reply from 74.125.128.102: byte=32 time=51ms TTL=45 Reply from 74.125.128.102: byte=32 time=56ms TTL=45 Reply from 74.125.128.102: byte=32 time=52ms TTL=45 Packets: Sent = 4, Received = 4, Lost = 0 <0% lost> Approximate round trip times in milli-seconds: Minimum = 50ms, Maximum = 56ms, Average = 52ms', '', 'Approved', 1, 6, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Ping', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tracert', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Telnet', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Ipconfig', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Lệnh nào sẽ hiển thị kết quả dưới đây: Proto Local Address Foreign Address State TCP 0.0.0.0:7 nam-PC:0 LISTENING TCP 0.0.0.0:9 nam-PC:0 LISTENING TCP 0.0.0.0:13 nam-PC:0 LISTENING TCP 0.0.0.0:17 nam-PC:0 LISTENING', '', 'Approved', 1, 6, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Ping', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tracert', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Netstat', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Ipconfig', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Công cụ nào sẽ hiển thị các thông tin như dưới đây:', '', 'Approved', 1, 6, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Ping', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tracert', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Netstat', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Wireshark', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Lệnh nào sẽ hiển thị kết quả dưới đây: (hình ảnh))', '', 'Approved', 1, 6, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Ping', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Ping –a', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tracert', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Netstat', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Lệnh nào sau đây cho biết địa chỉ IP của máy tính:', '', 'Approved', 1, 6, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('IP', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('IPCONFIG', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('TCP_IP', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('FTP', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Lệnh PING dùng để:', '', 'Approved', 1, 6, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Kiểm tra các máy tính có đĩa cứng hay không', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Kiểm tra các máy tính trong mạng có liên thông không', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Kiểm tra các máy tính có hoạt động tốt hay không', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Kiểm tra các máy tính có truy cập vào Internet không', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Lệnh nào dưới đây được dùng để xác định đường truyền (trong hệ điều hành Windows):', '', 'Approved', 1, 6, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nslookup', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('ipconfig', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Route', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tracert', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tiện ích TCP/IP nào dùng để kiểm tra sự kết nối mạng:', '', 'Approved', 1, 6, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Route', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('ARP', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Ping', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Netstat', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Những khẳng định nào sau đây là đúng khi nói về các mô hình kết nối ADSL:', '', 'Approved', 1, 6, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Mô hình PPPoA (Point to Point over ATM)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Mô hình PPPoE (Point to Point over Ethernet) RFC 2516', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Mô hình IP over ATM (RFC 1483R)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả đều đúng', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Công nghệ ADSL là công nghệ đường dây thuê bao số truy nhập:', '', 'Approved', 1, 6, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Không đối xứng', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Ngẫu nhiên', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tuần tự', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đối xứng', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khi quên mật khẩu của ADSL Router, làm cách nào để khôi phục mật khẩu mặc định:', '', 'Approved', 1, 6, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tra cứu trong cuốn hướng dẫn sử dụng của nhà cung cấp', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cấp điện cho ADSL Router và ấn giữ nút Reset trong một khoảng thời gian nhất định', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dùng software để dò Username và Password', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Không thể khôi phục mật khẩu mặc định', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Thực hiện cấu hình ADSL Router để kết nối Internet, những thông số cơ bản cần thiết lập là:', '', 'Approved', 1, 6, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('VCI/VPI, LAN IP Address, Tài khoản kết nối đến nhà cung cấp dịch vụ (user, password)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('DHCP Service', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Câu a và b đúng', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả các câu trên đều sai', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Trang thiết bị mạng trung tâm dùng để kết nối các máy tính trong mạng hình sao (STAR):', '', 'Approved', 1, 6, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Switch/Hub', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Router', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Repeater', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('NIC', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Chương trình Traceroute sử dụng các giao thức nào:', '', 'Approved', 1, 6, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('UDP', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('UDP và ICMP', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('TCP và ICMP', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('IGMP', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Thiết bị Bridge cho phép:', '', 'Approved', 1, 6, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giúp định tuyến cho các packet', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Kết nối 2 mạng LAN lại với nhau đồng thời đóng vai trò như một bộ lọc (filter): chỉ cho phép các packet, mà địa chỉ đích nằm ngoài nhánh LAN mà packet xuất phát, đi qua.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tăng cường tín hiệu điện để mở rộng đoạn mạng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cả A, B, C đều đúng', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Modem dùng để:', '', 'Approved', 1, 6, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giao tiếp với mạng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Truyền dữ liệu đi xa', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Truyền dữ liệu trong mạng LAN', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A và B đều đúng', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Bạn đang sử dụng FTP trong Command Promt, bạn muốn tạo một thư mục mang tên "Test" trên máy cục bộ của bạn (bạn vẫn không thoát khỏi FTP). Bạn sẽ sử dụng lệnh gì:', '', 'Approved', 1, 6, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('#md test', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('!md test', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Md Test', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Mkdir test', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Trong các cơ chế sau đây, cơ chế nào được sử dụng để cài đặt Web cache:', '', 'Approved', 1, 6, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Kiểm chứng và Mã kiểm chứng 401 Authorization require', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Trường tiêu đề "Last-Modified" và "If-Modified-Since"', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phương thức yêu cầu POST', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A và B', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Sợi cáp xoắn nối giữa card mạng với hub thì:', '', 'Approved', 1, 6, 2);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bấm thứ tự 2 đầu cáp giống nhau', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đổi vị trí các sợi 1, 2 với sợi 3, 6', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Một đầu bấm theo chuẩn TIA/EIA T-568A, đầu kia theo chuẩn TIA/EIA T568-B', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả đều sai', 0, @last_question_id);

