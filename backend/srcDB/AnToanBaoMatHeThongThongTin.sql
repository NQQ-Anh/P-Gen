SET NAMES 'utf8mb4';

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Mô hình tổng quát đảm bảo an toàn thông tin và hệ thống thông tin thường gồm các lớp:', '', 'Active', 1, 1, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('An ninh tổ chức, An ninh mạng và Điều khiển truy cập', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('An ninh tổ chức, Tưởng lửa và Điều khiển truy cập', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('An ninh tổ chức, An ninh mạng và An toàn hệ điều hành và ứng dụng', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('An ninh tổ chức, An ninh mạng và An ninh hệ thống', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('An toàn thông tin gồm hai lĩnh vực chính là:', '', 'Active', 1, 1, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('An ninh mạng và An toàn hệ thống', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('An toàn máy tính và An toàn Internet', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('An toàn máy tính và An ninh mạng', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('An toàn công nghệ thông tin và Đảm bảo thông tin', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tại sao cần phải đảm bảo an toàn cho thông tin?', '', 'Active', 1, 1, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Do có nhiều thiết bị kết nối mạng Internet với nhiều nguy cơ và đe dọa', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Do có quá nhiều phần mềm độc hại', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Do có quá nhiều nguy cơ tấn công mạng', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Do có nhiều thiết bị kết nối mạng Internet', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('An toàn hệ thống thông tin là:', '', 'Active', 1, 1, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Việc đảm bảo thông tin trong hệ thống không bị đánh cắp', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Việc đảm bảo cho hệ thống thông tin hoạt động trơn tru, ổn định', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Việc đảm bảo cho hệ thống thông tin không bị tấn công', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Việc đảm bảo các thuộc tính an ninh, an toàn của hệ thống thông tin', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Người sử dụng hệ thống thông tin quản lý trong mô hình 4 loại hệ thống thông tin là:', '', 'Active', 1, 1, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Quản lý cao cấp', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Giám đốc điều hành', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Nhân viên', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Quản lý bộ phận', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nguyên tắc cơ bản cho đảm bảo an toàn thông tin, hệ thống và mạng là:', '', 'Active', 1, 1, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Phòng vệ nhiều lớp có chiều sâu', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cần đầu tư trang thiết bị và chuyên gia đảm bảo an toàn', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cần mua sắm và lắp đặt nhiều thiết bị an ninh chuyên dụng', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cân bằng giữa tính hữu dụng, chi phí và tính năng', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Một trong các nội dung rất quan trọng của quản lý an toàn thông tin là:', '', 'Active', 1, 1, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Quản lý các ứng dụng', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Quản lý hệ thống', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Quản lý hệ điều hành', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Quản lý rủi ro', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Một thông điệp có nội dung nhạy cảm truyền trên mạng bị sửa đổi. Các thuộc tính an toàn thông tin nào bị vi phạm?', '', 'Active', 1, 1, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Bí mật, Toàn vẹn và sẵn dùng', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Bí mật và Toàn vẹn', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Bí mật', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Toàn vẹn', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nguy cơ bị tấn công từ chối dịch vụ (DoS) và từ chối dịch vụ phân tán (DDoS) thường gặp ở vùng nào trong 7 vùng cơ sở hạ tầng CNTT?', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Vùng máy trạm', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Vùng mạng WAN', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Vùng mạng LAN-to-WAN', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Vùng mạng LAN', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('An toàn thông tin (Information Security) là gì?', '', 'Active', 1, 1, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Là việc phòng chống đánh cắp thông tin', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Là việc bảo vệ chống truy nhập, sử dụng, tiết lộ, sửa đổi, hoặc phá hủy thông tin một cách trái phép', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Là việc bảo vệ chống sử dụng, tiết lộ, sửa đổi, vận chuyển hoặc phá hủy thông tin một cách trái phép', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Là việc phòng chống tấn công mạng', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tìm phát biểu đúng trong các phát biểu sau:', '', 'Active', 1, 1, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mối đe dọa là bất kỳ một hành động tấn công nào vào hệ thống mạng.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mối đe dọa là bất kỳ một hành động nào có thể gây hư hại đến các tài nguyên hệ thống.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mối đe dọa là bất kỳ một hành động tấn công nào vào hệ thống máy tính.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mối đe dọa là bất kỳ một hành động tấn công nào vào hệ thống máy tính và mạng.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Đây là một trong các biện pháp phòng chống tấn công khai thác lỗi tràn bộ đệm?', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Sử dụng tường lửa', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Sử dụng công nghệ xác thực mạnh', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Sử dụng các kỹ thuật mật mã', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Sử dụng cơ chế cẩm thực hiện mã trong dữ liệu', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Trong tấn công khai thác lỗi tràn bộ đệm, tin tặc thường sử dụng một số lệnh NOP (No Operation) ở phần đầu của mã tấn công. Mục đích của việc này là để:', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tăng khả năng phá hoại của mã tấn công', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tăng khả năng gây tràn bộ đệm', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tăng khả năng mã tấn công được thực hiện', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tăng khả năng gây lỗi chương trình', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tìm phát biểu đúng trong các phát biểu sau:', '', 'Active', 1, 1, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Điểm yếu hệ thống chỉ xuất hiện trong các mô đun phần mềm', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Điểm yếu chỉ xuất hiện khi hệ thống bị tấn công', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Điểm yếu hệ thống có thể xuất hiện trong cả các mô đun phần cứng và phần mềm', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Điểm yếu hệ thống chỉ xuất hiện trong các mô đun phần cứng', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Các vùng bộ nhớ thường bị tràn gồm:', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Ngăn xếp (Stack) và vùng nhớ cấp phát động (Heap)', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Ngăn xếp (Stack) và Bộ nhớ đệm (Cache)', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Hàng đợi (Queue) và vùng nhớ cấp phát động (Heap)', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Hàng đợi (Queue) và Ngăn xếp (Stack)', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Các thành phần chính của hệ thống máy tính gồm:', '', 'Active', 1, 1, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('CPU, Bộ nhớ, HDD, hệ điều hành và các ứng dụng', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('CPU, hệ điều hành và các ứng dụng', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Hệ thống phần cứng và Hệ thống phần mềm', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('CPU, Bộ nhớ, HDD và Hệ thống bus truyền dẫn', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nguyên nhân của sự tồn tại các điểm yếu trong hệ thống có thể do:', '', 'Active', 1, 1, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Lỗi thiết kế, lỗi cài đặt và lập trình', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tất cả các khâu trong quá trình phát triển và vận hành', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Lỗi quản trị', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Lỗi cấu hình hoạt động', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Trên thực tế, có thể giảm khả năng bị tấn công nếu có thể...', '', 'Active', 1, 1, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Triệt tiêu được hết các nguy cơ', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Triệt tiêu được hết các mối đe dọa', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Giảm thiểu các lỗ hổng bảo mật', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Kiểm soát chặt chẽ người dùng', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Sâu SQL Slammer tấn công khai thác lỗi tràn bộ đệm trong hệ quản trị cơ sở dữ liệu:', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('SQL Server 2012', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('SQL Server 2000', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('SQL Server 2008', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('SQL Server 2003', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Các lỗ hổng bảo mật thường tồn tại nhiều nhất trong thành phần nào của hệ thống:', '', 'Active', 1, 1, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Hệ điều hành', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Các dịch vụ mạng', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Các ứng dụng', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Các thành phần phần cứng', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Các kỹ thuật và công cụ thường được sử dụng trong an ninh mạng bao gồm:', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('VPN, SSL/TLS, PGP', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Điều khiển truy nhập', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Điều khiển truy nhập, tường lửa, proxy và các giao thức bảo mật, ứng dụng dựa trên mật mã', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tường lửa, proxy', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Các thành phần của an toàn thông tin gồm:', '', 'Active', 1, 1, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('An toàn máy tính, An ninh mạng, Quản lý ATTT và Chính sách ATTT', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('An toàn máy tính và dữ liệu, An ninh mạng, Quản lý ATTT và Chính sách ATTT', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('An toàn máy tính, An ninh mạng, Quản lý rủi ro ATTT và Chính sách ATTT', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('An toàn máy tính, An toàn dữ liệu, An ninh mạng, Quản lý ATTT', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Trong tấn công khai thác lỗi tràn bộ đệm, tin tặc thường sử dụng shellcode. Shellcode đó là dạng:', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mã Java', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mã C/C++', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mã máy', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mã Hợp ngữ', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Các yêu cầu cơ bản trong đảm bảo an toàn thông tin và an toàn hệ thống thông tin gồm:', '', 'Active', 1, 1, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Bảo mật, Toàn vẹn và Khả dụng', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Bảo mật, Toàn vẹn và Sẵn dùng', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Bí mật, Toàn vẹn và Sẵn dùng', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Bí mật, Toàn vẹn và không chối bỏ', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Việc thực thi quản lý ATTT cần được thực hiện theo chu trình lặp lại là do', '', 'Active', 1, 5, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Các điều kiện bên trong và bên ngoài hệ thống thay đổi theo thời gian', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Trình độ cao của tin tặc và công cụ tấn công ngày càng phổ biến', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Số lượng và khả năng phá hoại của các phần mềm độc hại ngày càng tăng', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Máy tính, hệ điều hành và các phần mềm được nâng cấp nhanh chóng', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Hệ thống thông tin là:', '', 'Active', 1, 1, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Một hệ thống tích hợp các thành phần nhằm phục vụ việc thu thập, lưu trữ, xử lý thông tin, chuyển giao thông tin, tri thức và các sản phẩm số', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Một hệ thống gồm các thành phần phần cứng và phần mềm nhằm phục vụ việc thu thập, lưu trữ, xử lý thông tin, chuyển giao thông tin', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Một hệ thống gồm các thành phần phần cứng nhằm phục vụ việc thu thập, lưu trữ, xử lý thông tin, chuyển giao thông tin, tri thức và các sản phẩm số', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Một hệ thống gồm các thành phần phần mềm nhằm phục vụ việc thu thập, lưu trữ, xử lý thông tin, chuyển giao thông tin, tri thức và các sản phẩm số', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tính bí mật của thông tin có thể được đảm bảo bằng:', '', 'Active', 1, 3, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Bảo vệ vật lý', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Các kỹ thuật mã hóa', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('sử dụng VPN', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Bảo vệ vật lý, VPN, hoặc mã hóa', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Lỗ hổng bảo mật (Security vulnerability) là một điểm yếu tồn tại trong một hệ thống cho phép tin tặc:', '', 'Active', 1, 1, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Khai thác nhằm đánh cắp các thông tin trong hệ thống', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Khai thác gây tổn hại đến các thuộc tính an ninh của hệ thống đó', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Khai thác, tấn công phá hoại và gây tê liệt hệ thống', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Khai thác nhằm chiếm quyền điều khiển hệ thống', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Đảm bảo thông tin (Information assurance) thường được thực hiện bằng cách:', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Sử dụng kỹ thuật tạo dự phòng ra đĩa cứng', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Sử dụng kỹ thuật tạo dự phòng ra băng từ', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Sử dụng kỹ thuật tạo dự phòng ngoại vi', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Sử dụng kỹ thuật tạo dự phòng cục bộ', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Lỗi tràn bộ đệm là lỗi trong khâu:', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Kiểm thử phần mềm', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Thiết kế phần mềm', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Lập trình phần mềm', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Quản trị phần mềm', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Đâu là dạng lỗ hổng bảo mật thường gặp trong hệ điều hành và các phần mềm ứng dụng?', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Lỗi tràn bộ đệm', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Lỗi quản trị', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Lỗi cấu hình', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Lỗi thiết kế', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Quản lý các bản vá và cập nhật phần mềm là phần việc thuộc lớp bảo vệ nào trong mô hình tổng thể đảm bảo an toàn hệ thống thông tin?', '', 'Active', 1, 1, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Lớp an ninh mạng', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Lớp an ninh hệ thống', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Lớp an ninh cơ quan/tổ chức', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Lớp an ninh hệ điều hành và phần mềm', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khi khai thác lỗi tràn bộ đệm, tin tặc thường chèn mã độc, gây tràn và ghi đè để sửa đổi thành phần nào sau đây của bộ nhớ Ngăn xếp để chuyển hướng nhằm thực hiện mã độc của mình:', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Các biển đầu vào của hàm', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Bộ đệm hoặc biển cục bộ của hàm', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Con trỏ khung ngăn xếp (sfp)', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Địa chỉ trở về của hàm', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khác biệt cơ bản của vi rút và sâu là:', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Vi rút có khả năng tự lây lan mà không cần tương tác của người dùng', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Sâu có khả năng tự lây lan mà không cần tương tác của người dùng', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Sâu Có khả năng phá hoại lớn lơn', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Vi rút có khả năng phá hoại lớn lớn', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Dạng tấn công gây ngắt quãng dịch vụ hoặc kênh truyền thông cho người dùng bình thường là:', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Interceptions', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Fabrications', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Interruptions', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Modifications', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tấn công nghe lén là kiểu tấn công:', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Thụ động', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Chủ động', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Chiếm quyền điều khiển', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Chủ động và bị động', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Dạng tấn công chặn bắt thông tin truyền trên mạng để sửa đổi hoặc lạm dụng là:', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Fabrications', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Modifications', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Interruptions', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Interceptions', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Có thể phòng chống tấn công Smurf bằng cách cấu hình các máy và router không trả lời...', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Các yêu cầu ICMP hoặc các yêu cầu phát quảng bá', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Các yêu cầu TCP hoặc các yêu cầu phát quảng bá', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Các yêu cầu UPD hoặc các yêu cầu phát quảng bá', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Các yêu cầu HTTP hoặc các yêu cầu phát quảng bá', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Đâu là một kỹ thuật tấn công Dos?', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('UDP Ping', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('DNS Cache Poisoning', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Smurf', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('DNS spoofing', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Dạng tấn công giả mạo thông tin thường để đánh lừa người dùng thông thường là:', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Modifications', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Fabrications', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Interruptions', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Interceptions', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Kỹ thuật tấn công Smurf sử dụng giao thức ICMP và Cơ chế gửi…', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Unicast', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Multicast', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Anycast', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Broadcast', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Trong tấn công DDoS phản chiếu hay gián tiếp, có sự tham gia của một số lượng lớn máy chủ trên mạng Internet không bị tin tặc chiếm quyền điều khiển. Các máy chủ này được gọi là…', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Reflectors', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Injectors', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Requesters', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Forwarders', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Pharming là kiểu tấn công vào…', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Máy chủ web', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Máy chủ cơ sở dữ liệu của trang web', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Máy chủ và máy khách web', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Máy khách/trình duyệt web', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Đây là một công cụ kiểm tra lỗ hổng tấn công chèn mã SQL trên các website:', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('SQLCheck', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('SQL Server', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('SQLmap', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('SQLite', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khác biệt cơ bản giữa tấn công DoS và DDoS là:', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Phạm vi tấn công', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mức độ gây hại', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Kỹ thuật tấn công', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tần suất tấn công', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Mục đích chính của tấn công giả mạo địa chỉ IP là:', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Để vượt qua các hệ thống IPS và IDS', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Để vượt qua các hàng rào kiểm soát an ninh', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Để đánh cắp các dữ liệu nhạy cảm trên máy trạm', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Để đánh cắp các dữ liệu nhạy cảm trên máy chủ', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Các máy tính ma/máy tính bị chiếm quyền điều khiển thường được tin tặc sử dụng để...', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Gửi các yêu cầu tấn công chèn mã', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đánh cắp dữ liệu từ máy chủ cơ sở dữ liệu', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Gửi thư rác, thư quảng cáo', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Thực hiện tấn công tràn bộ đệm.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Trong dạng tấn công vào mật khẩu dựa trên từ điển, tin tặc đánh cắp mật khẩu của người dùng bằng cách:', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tìm mật khẩu trong từ điển các mật khẩu', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Thử các từ có tần suất sử dụng cao làm mật khẩu trong từ điển', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Vét cận các mật khẩu có thể có', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Lắng nghe trên đường truyền để đánh cắp mật khẩu', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Một trong các phương thức lây lan thường gặp của sâu mạng là:', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Lây lan thông qua sao chép các file', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Lây lan thông qua dịch vụ POP', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Lây lan thông qua khả năng thực thi từ xa', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Lây lan thông qua Microsoft Office', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Đây là một kỹ thuật tấn công Dos?', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('SYN requests', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('DNS spoofing', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('IP spoofing', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Ping of death', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tấn công từ chối dịch vụ (Dos - Denial of Service Attacks) là dạng tấn công có khả năng...', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Gây hư hỏng phần cứng máy chủ', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cản trở người dùng hợp pháp truy nhập các tài nguyên hệ thống', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đánh cắp dữ liệu trong hệ thống', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cản trở người dùng hợp pháp truy nhập các file dữ liệu của hệ thống', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Mật khẩu an toàn trong thời điểm hiện tại là mật khẩu có:', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Chứa các ký tự từ nhiều dạng ký tự', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Khả năng chống tấn công phát lại và chứa các ký tự từ nhiều dạng ký tự', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Độ dài từ 8 ký tự trở lên, gồm chữ cái hoa, thường, chữ số và ký tự đặc biệt', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Độ dài lớn hơn hoặc bằng 8 ký tự', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Một trong các mối đe dọa an toàn thông tin thường gặp là:', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Phần mềm nghe lén', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Phần mềm quảng cáo', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Phần mềm phá mã', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Phần mềm độc hại', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nguy cơ cao nhất mà một cuộc tấn công chèn mã SQL có thể gây ra cho một hệ thống là:', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đánh cắp các thông tin trong cơ sở dữ liệu', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Chèn, xóa hoặc sửa đổi dữ liệu', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Vượt qua các khâu xác thực người dùng', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Chiếm quyền điều khiển hệ thống', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Một trong các biện pháp có thể sử dụng để phòng chống tấn công người đứng giữa là:', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Sử dụng các hệ thống IPS/IDS', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Sử dụng chứng chỉ số để xác thực thông tin nhận dạng các bên', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Sử dụng mã hóa để đảm bảo tính bí mật các thông điệp truyền', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Sử dụng tường lửa để ngăn chặn', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Macro viruses là loại viruses thường lây nhiễm vào…', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Các file tài liệu của bộ phần mềm Open Office', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Các file tài liệu của bộ phần mềm Microsoft Exchange', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Các file tài liệu của bộ phần mềm Microsoft SQL', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Các file tài liệu của bộ phần mềm Microsoft Office', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tấn công kiểu Social Engineering là dạng tấn công khai thác yếu tố nào sau đây trong hệ thống?', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Máy trạm', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Người dùng', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Máy chủ', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Hệ điều hành & ứng dụng', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Câu lệnh SQL nào tin tặc thường sử dụng trong tấn công chèn mã SQL để đánh cắp các thông tin trong cơ sở dữ liệu?', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('UNION INSERT', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('UNION SELECT', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('SELECT UNION', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('INSERT SELECT', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Phishing là một dạng của loại tấn công sử dụng...', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Kỹ thuật chèn mã', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Kỹ thuật giả mạo địa chỉ IP', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Kỹ thuật gây tràn bộ đệm', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Kỹ thuật xã hội', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Các dạng phần mềm độc hại (malware) có khả năng tự nhân bản gồm:', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Virus, zombie, spyware', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Virus, trojan, zombie', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Virus, worm, trojan', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Virus, worm, zombie', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Một trong các cách virus thường sử dụng để lây nhiễm vào các chương trình khác là:', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Ẩn mã của virus', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Thay thế các chương trình', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Xáo trộn mã của virus', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Sửa đổi các chương trình', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Trong tấn công DDoS phản chiếu hay gián tiếp, có sự tham gia của một số lượng lớn máy chủ trên mạng Internet không bị tin tặc chiếm quyền điều khiển. Các máy chủ này được gọi là...', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Reflectors', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Requesters', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Forwarders', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Injectors', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Mục đích chính của tấn công giả mạo địa chỉ IP là:', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Để vượt qua các hệ thống IPS và IDS', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Để vượt qua các hàng rào kiểm soát an ninh', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Để đánh cắp các dữ liệu nhạy cảm trên máy trạm', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Để đánh cắp các dữ liệu nhạy cảm trên máy chủ', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Trojan horses là dạng phần mềm độc hại thường giành quyền truy nhập vào các file của người dùng khai thác cơ chế điều khiển truy nhập...', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('МАС', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Role-Based', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Rule-Based', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('DAC', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('PGP đảm bảo tính bí mật thông điệp bằng cách sử dụng:', '', 'Active', 1, 3, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mã hóa khóa bất đối xứng sử dụng khóa phiên', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mã hóa khóa đối xứng sử dụng khóa phiên', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mã hóa khóa bất đối xứng sử dụng khóa công khai', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mã hóa khóa đối xứng sử dụng khóa công khai', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Số lượng thao tác trong mỗi vòng xử lý của hàm băm MD5 là:', '', 'Active', 1, 3, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('14', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('16', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('18', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('12', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Giao thức SSL sử dụng giao thức con SSL Handshake để khởi tạo phiên làm việc. SSL Handshake thực hiện việc trao đổi các khóa phiên dùng cho phiên làm việc dựa trên:', '', 'Active', 1, 3, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Chữ ký số', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mã hóa khóa bí mật', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mã hóa khóa công khai', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Chứng chỉ số', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Các thuộc tính cơ bản của chứng chỉ số khóa công khai (Public key digital certificate) gồm:', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Số nhận dạng, khóa riêng của chủ thể, chữ ký của nhà cung cấp CA', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Khóa công khai của chủ thể, thông tin địa chỉ chủ thể, thuật toán chữ ký sử dụng', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Số nhận dạng, khóa riêng của chủ thể, thông tin định danh chủ thể', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Khóa công khai của chủ thể, thông tin định danh chủ thể, chữ ký của nhà cung cấp (CA)', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Một hệ mã hóa (cryptosystem) được cấu thành từ hai thành phần chính gồm:', '', 'Active', 1, 3, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Phương pháp mã hóa và chia khối', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Giải thuật mã hóa và ký số', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Phương pháp mã hóa và không gian khóa', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Giải thuật mã hóa và giải mã', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Đây là một phương pháp mã hóa', '', 'Active', 1, 3, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('OR', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('AND', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('NOT', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('XOR', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Kích thước khối dữ liệu xử lý của giải thuật mã hóa AES là:', '', 'Active', 1, 3, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('160 bit', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('64 bit', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('192 bít', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('128 bit', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Điểm khác nhau chính giữa hai loại hàm băm MDC và MAC là:', '', 'Active', 1, 3, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('MDC là loại hàm băm không khóa, còn MAC là loại hàm băm có khóa', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('MDC có khả năng chống đụng độ cao hơn MAC', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('MDC an toàn hơn MAC', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('MAC an toàn hơn MDC', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Chữ ký số (sử dụng riêng) thường được sử dụng để đảm bảo thuộc tính nào sau đây của thông điệp truyền đưa:', '', 'Active', 1, 3, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tính bí mật', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tính không chối bỏ', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tính sẵn dùng', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tính toàn vẹn', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Trong hệ chữ ký số RSA, việc tạo chữ ký số cho một thông điệp cần sử dụng một khóa. Khóa đó là:', '', 'Active', 1, 3, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Khóa riêng của người nhận', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Khóa công khai của người nhận', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Khóa công khai của người gửi', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Khóa riêng của người gửi', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Một trong các điểm yếu của các hệ mã hóa khóa công khai là:', '', 'Active', 1, 3, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Khó cài đặt trên thực tế', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Khó khăn trong quản lý và phân phối khóa', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tốc độ chậm', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Độ an toàn thấp', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Phát biểu nào sau đây về chữ ký số là chính xác:', '', 'Active', 1, 3, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Chữ ký số là một chuỗi dữ liệu được tạo ra bằng cách mã hóa thông điệp sử dụng khóa bí mật', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Chữ ký số là một chuỗi dữ liệu liên kết với một thông điệp và thực thể tạo ra thông điệp', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Chữ ký số được sử dụng để đảm bảo tính bí mật và toàn vẹn thông điệp', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Chữ ký số được sử dụng để đảm bảo tính bí mật, toàn vẹn và xác thực thông điệp', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Hai thuộc tính cơ bản quan trọng nhất của một hàm băm là:', '', 'Active', 1, 3, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Nén và một chiều', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Dễ tính toán và có đầu ra cố định', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Một chiều và đầu ra cố định', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Nén và dễ tính toán', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Độ an toàn của hệ mật mã RSA dựa trên...', '', 'Active', 1, 3, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Độ phức tạp cao của giải thuật RSA', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Chi phí tính toán lớn', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tính khó của việc phân tích số nguyên rất lớn', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Khóa có kích thước lớn', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khi sinh cặp khóa RSA, các số nguyên tố p và q nên được chọn với kích thước…', '', 'Active', 1, 3, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('p càng lớn càng tốt', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Bằng khoảng một nửa kích thước của modulo n', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Không có yêu cầu về kích thước của p và q', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('q càng lớn càng tốt', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tìm phát biểu đúng về mã hóa khóa bất đối xứng (Asymmetric key cryptography):', '', 'Active', 1, 3, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('An toàn hơn mã hóa khóa bí mật', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Sử dụng một khóa quá trình mã hóa và một khóa khác cho giải mã', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Chỉ sử dụng kỹ thuật mã hóa khối', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Sử dụng một khóa chung cho cả quá trình mã hóa và giải mã', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tìm phát biểu đúng về mã hóa khóa đối xứng (Symmetric key cryptography):', '', 'Active', 1, 3, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Sử dụng một khóa chung cho cả quá trình mã hóa và giải mã', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Sử dụng một khóa quá trình mã hóa và một khóa khác cho giải mã', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('An toàn hơn mã hóa khóa công khai', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Chỉ sử dụng kỹ thuật mã hóa khối', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Sử dụng kết hợp chứng chỉ số khóa công khai và chữ ký số có thể đảm bảo:', '', 'Active', 1, 3, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Xác thực thực thể và toàn vẹn thông tin truyền', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Xác thực thực thể và bí mật thông tin truyền', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Bí mật và xác thực nguồn gốc thông tin truyền', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Bí mật và toàn vẹn thông tin truyền', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Số lượng vòng lặp chính thực hiện xáo trộn dữ liệu theo hàm Feistel (F) trong giải thuật DES là:', '', 'Active', 1, 3, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('14', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('16', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('18', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('20', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Các hộp thay thế s-box trong giải thuật DES có số bít đầu vào và đầu ra tương ứng là:', '', 'Active', 1, 3, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Vào 4 bít và ra 4 bít', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Vào 6 bít và ra 6 bít', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Vào 8 bít và ra 6 bít', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Vào 6 bít và ra 4 bít', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Một trong các ứng dụng phổ biến của các hàm băm là để tạo chuỗi...', '', 'Active', 1, 3, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('CheckError', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('CheckTotal', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('CheckNum', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Checksum', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('PGP đảm bảo tính bí mật thông điệp bằng cách sử dụng:', '', 'Active', 1, 3, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mã hóa khóa bất đối xứng sử dụng khóa công khai', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mã hóa khóa đối xứng sử dụng khóa phiên', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mã hóa khóa đối xứng sử dụng khóa công khai', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mã hóa khóa bất đối xứng sử dụng khóa phiên', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Trong quá trình xử lý thông điệp đầu vào tạo chuỗi băm, số lượng vòng xử lý của hàm băm SHA1 là:', '', 'Active', 1, 3, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('80', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('90', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('60', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('70', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Giải thuật mã hóa AES được thiết kế dựa trên…', '', 'Active', 1, 3, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('mạng hoán vị-vernam', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('mạng xor-thay thế', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('mạng hoán vị-thay thế', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('mạng hoán vị-xor', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Một trong các điểm yếu của các hệ mã hóa khóa đối xứng là:', '', 'Active', 1, 3, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Chi phí tính toán lớn', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Khó khăn trong quản lý và phân phối khóa', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Độ an toàn thấp', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Khó khăn trong cài đặt và triển khai hệ thống', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Số vòng lặp chuyển đổi cần thực hiện để chuyển bản rõ thành bản mã của giải thuật mã hóa AES với khóa 192 bít là:', '', 'Active', 1, 3, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('10', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('12', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('16', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('14', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Phát biểu nào sau đây về chữ ký số là chính xác:', '', 'Active', 1, 3, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Chữ ký số là một chuỗi dữ liệu được tạo ra bằng cách mã hóa thông điệp sử dụng khóa bí mật', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Chữ ký số là một chuỗi dữ liệu liên kết với một thông điệp và thực thể tạo ra thông điệp', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Chữ ký số được sử dụng để đảm bảo tính bí mật, toàn vẹn và xác thực thông điệp', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Chữ ký số được sử dụng để đảm bảo tính bí mật và toàn vẹn thông điệp', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Một trong các ứng dụng phổ biến của các hàm băm một chiều là để...', '', 'Active', 1, 3, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mã hóa thẻ tín dụng', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mã hóa địa chỉ', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mã hóa mật khẩu', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mã hóa tên tài khoản', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Giao thức SSL sử dụng giao thức con SSL Handshake để khởi tạo phiên làm việc. SSL Handshake thực hiện việc xác thực thực thể dựa trên:', '', 'Active', 1, 3, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Chứng chỉ số khóa công khai', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mã hóa khóa bí mật', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mã hóa khóa công khai', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Chữ ký số', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('PGP đảm bảo tính xác thực thông điệp bằng cách:', '', 'Active', 1, 3, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mã hóa/giải mã thông điệp', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Sử dụng hàm băm có khóa MAC', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Sử dụng hàm băm không khóa MDC', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tạo và kiểm tra chữ ký số', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nguyên tắc bảo mật tài nguyên của mô hình Bell-La Padula là:', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đọc lên và ghi lên', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đọc xuống và ghi xuống', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đọc xuống và ghi lên', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đọc lên và ghi xuống', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tính bảo mật của kỹ thuật điều khiển truy nhập sử dụng mật khẩu dựa trên:', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tần suất sử dụng mật khẩu', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Kích thước của mật khẩu', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Độ khó đoán và tuổi thọ của mật khẩu', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Số loại ký tự dùng trong mật khẩu', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Phát hiện tấn công, xâm nhập dựa trên bất thường có tiềm năng phát hiện các loại tấn công, xâm nhập mới là do:', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Không yêu cầu biết trước thông tin về chúng', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đã có chữ ký của các tấn công, xâm nhập mới', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Các tấn công, xâm nhập mới thường dễ nhận biết', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Không yêu cầu xây dựng cơ sở dữ liệu các chữ ký', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Một trong các điểm yếu làm giảm hiệu quả của phát hiện tấn công, xâm nhập dựa trên bất thường là:', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Không có khả năng ngăn chặn tấn công, đột nhập', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Không có khả năng phát hiện các cuộc tấn công Dos', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tỷ lệ cảnh báo sai cao', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Không có khả năng phát hiện tấn công, xâm nhập mới', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Phát hiện tấn công, xâm nhập dựa trên bất thường dựa trên giá thiết:', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Các hành vi tấn công, xâm nhập thường có quan hệ chặt chẽ với các hành vi bất thường', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Các hành vi tấn công, xâm nhập gây ngắt quãng dịch vụ cung cấp cho người dùng', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Các hành vi tấn công, xâm nhập có quan hệ chặt chẽ với các dịch vụ được cung cấp', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Các hành vi tấn công, xâm nhập gây tổn hại nghiêm trọng cho hệ thống', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Ưu điểm của điều khiển truy nhập dựa trên các đặc điểm sinh trắc học là:', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Bảo mật cao và độ ổn định cao', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Bảo mật cao và chi phí thấp', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Bảo mật cao và luôn đi cùng với chủ thể', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Bảo mật cao và được hỗ trợ rộng rãi', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Một ưu điểm của tường lửa có trạng thái so với tường lửa không trạng thái là:', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Lọc nội dung gói tốt hơn', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Nhận dạng được các dạng tấn công và các phần mềm độc hại', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Chạy nhanh hơn', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Phân biệt được các gói tin thuộc về các kết nối mạng khác nhau', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Các phương pháp xử lý, phân tích dữ liệu và mô hình hoá trong phát hiện tấn công, xâm nhập dựa trên bất thường, gồm:', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Thống kê, học máy, khai phá dữ liệu', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Học máy, khai phá dữ liệu, agents', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Thống kê, học máy, đồ thị', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Thống kê, đối sánh chuỗi, đồ thị', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Phát biểu nào sau đây đúng với cơ chế điều khiển truy nhập dựa trên vai trò - RBAC:', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('RBAC cho phép người tạo ra đối tượng có thể cấp quyền truy nhập cho người dùng khác', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('RBAC là cơ chế điều khiển truy nhập được sử dụng rộng rãi nhất', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('RBAC cấp quyền truy nhập dựa trên vai trò của người dùng trong tổ chức', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('RBAC cấp quyền truy nhập dựa trên tính nhạy cảm của thông tin và chính sách quản trị', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Phát biểu nào sau đây đúng với cơ chế điều khiển truy nhập DAC:', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('DAC cho phép người tạo ra đối tượng có thể cấp quyền truy nhập cho người dùng khác', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('DAC cấp quyền truy nhập dựa trên tính nhạy cảm của thông tin và chính sách quản trị', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('DAC là cơ chế điều khiển truy nhập được sử dụng rộng rãi nhất', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('DAC quản lý quyền truy nhập chặt chẽ hơn các cơ chế khác', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Đâu là một công cụ có khả năng rà quét các lỗ hổng chèn mã SQL cho các trang web?', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('nmap', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Microsoft Baseline Security Analyzer', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Nessus vulnerability scanner', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Acunetix Web Vulnerability Scanner', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Danh sách điều khiển truy nhập ACL thực hiện việc quản lý quyền truy nhập đến các đối tượng cho người dùng bằng cách:', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Các quyền truy nhập vào đối tượng cho mỗi người dùng được quản lý trong một ma trận', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Các quyền truy nhập vào đối tượng cho mỗi người dùng được quản lý riêng rẽ', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mỗi người dùng được gán một danh sách các đối tượng kèm theo quyền truy nhập', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mỗi đối tượng được gán một danh sách người dùng kèm theo quyền truy nhập', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tường lửa không thể chống lại...', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Các hiểm họa từ bên trong', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Các hiểm họa từ bên ngoài', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tấn công giả mạo địa chỉ', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tấn công từ mạng Internet', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Sự khác biệt chính giữa hệ thống ngăn chặn xâm nhập (IPS) và hệ thống phát hiện xâm nhập (IDS) là:', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('IPS phát hiện xâm nhập hiệu quả hơn', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('IPS có khả năng chủ động ngăn chặn xâm nhập', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('IDS phát hiện xâm nhập hiệu quả hơn', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('IDS có khả năng chủ động ngăn chặn xâm nhập', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tường lửa lọc gói có thể lọc các thông tin nào trong gói tin?', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Chỉ các thông tin trong header của gói tin', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Chỉ các thông tin trong payload của gói tin', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Chỉ lọc địa chỉ IP trong gói tin', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cả thông tin trong header và payload của gói tin', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Không nên sử dụng nhiều hơn 1 phần mềm quét virus chạy ở chế độ quét theo thời gian thực trên một máy tính vì:', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Các phần mềm quét virus xung đột với nhau', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Các phần mềm quét virus không thể hoạt động', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Các phần mềm quét virus chiếm nhiều tài nguyên', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Các phần mềm quét virus tấn công lẫn nhau', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Phát biểu nào sau đây đúng với cơ chế điều khiển truy nhập bắt buộc MAC:', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('MAC cho phép người tạo ra đối tượng có thể cấp quyền truy nhập cho người dùng khác', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('MAC quản lý quyền truy nhập chặt chẽ hơn các cơ chế khác', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('MAC cấp quyền truy nhập dựa trên tính nhạy cảm của thông tin và chính sách quản trị', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('MAC là cơ chế điều khiển truy nhập được sử dụng rộng rãi nhất', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Đâu là một loại tường lửa?', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Server gateway', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Application server', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Application-level gateway', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Gateway server', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Ví điện tử Paypal là một dạng...', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Khóa mã (encrypted key)', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('The ATM', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Thẻ bài (token)', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Thẻ thông minh (smart card)', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Dạng xác thực sử dụng các thông tin nào dưới đây đảm bảo độ an toàn cao hơn?', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Thẻ ATM và tên truy nhập', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tên truy nhập và số PIN', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Thẻ ATM và số PIN', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tên truy nhập và mật khẩu', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Một trong các dạng khóa mã (encrypted keys) được sử dụng rộng rãi trong điều khiển truy nhập là:', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('E-token', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Chứng chỉ số khóa công khai', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('The ATM', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mobile-token', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tại sao một hệ thống phát hiện xâm nhập dựa trên chữ ký không thể phát hiện các tấn công, xâm nhập mới?', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Do chữ ký của chúng chưa tồn tại trong hệ thống', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Do các tấn công, xâm nhập mới không có chữ ký', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Do các tấn công, xâm nhập mới không gây ra bất thường', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Do các tấn công, xâm nhập mới chỉ gây thiệt hại nhỏ', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Ưu điểm của thẻ bài (token) so với thẻ thông minh (smart card) trong điều khiển truy nhập là:', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Có cơ chế xác thực mạnh hơn', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Có cơ chế xác thực đa dạng hơn', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Được sử dụng rộng rãi hơn', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Có chi phí rẻ hơn', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Phương pháp xác thực nào dưới đây có thể cung cấp khả năng xác thực có độ an toàn cao nhất?', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Sử dụng Smartcard', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Sử dụng vân tay', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Sử dụng chứng chỉ số', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Sử dụng mật khẩu', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Đâu là các tính năng của kiểm soát truy nhập sử dụng tường lửa?', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Kiểm soát dịch vụ và các phần mềm', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Kiểm soát người dùng và tin tặc', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Kiểm soát dịch vụ và hướng', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Kiểm soát virus và các malware khác', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Ba cơ chế điều khiển truy nhập thông dụng gồm:', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('DAC, MAC và RRAC', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('DAC, BAC và RBAC', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('DAC, MAC và BAC', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('DAC, MAC và RBAC', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Mục đích chính của điều khiển truy nhập là để đảm bảo các thuộc tính an ninh của thông tin, hệ thống và các tài nguyên, gồm:', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tính bảo mật, tính toàn vẹn và tính xác thực', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tính bí mật, tính toàn vẹn và tính xác thực', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tính bảo mật, tính toàn vẹn và tính sẵn dùng', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tính bí mật, tính toàn vẹn và tính sẵn dùng', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Số lượng nhân tố (factor) xác thực sử dụng trong điều khiển truy nhập dựa trên thẻ thông minh là:', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('1', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('3', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('2', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('4', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Một nhiệm vụ chính của các hệ thống IDS/IPS là:', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Truy tìm và tấn công ngược lại hệ thống của tin tặc', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Giám sát lưu lượng mạng hoặc các hành vi trên một hệ thống để nhận dạng các dấu hiệu của tấn công, xâm nhập', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Giám sát lưu lượng mạng nhận dạng các dấu hiệu của tấn công, xâm nhập', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Giám sát các hành vi trên một hệ thống để nhận dạng các dấu hiệu của tấn công, xâm nhập', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Hai dịch vụ quan trọng nhất của một hệ thống điều khiển truy nhập là:', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Authentication và Authorization', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Authenticator và Administrator', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Administrator và Authorization', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Authentication và Administrator', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tìm phát biểu đúng về phát hiện xâm nhập dựa trên chữ ký và phát hiện xâm nhập dựa trên bất thường:', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Phát hiện xâm nhập dựa trên chữ ký thường có tỷ lệ phát hiện đúng cao hơn', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tính bảo mật, tính toàn vẹn và tính xác thực', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tính bảo mật, tính toàn vẹn và tính sẵn dùng', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tính bí mật, tính toàn vẹn và tính sẵn dùng', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tìm phát biểu đúng về dịch vụ xác thực trong điều khiển truy nhập:', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Là quá trình xác minh tính chân thực của thông tin nhận dạng người dùng cung cấp', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Là quá trình xác minh nhận dạng của chủ thể', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Là quá trình xác minh các thông tin nhận dạng của chủ thể yêu cầu truy nhập đối tượng', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Là quá trình xác minh nhận dạng của người dùng', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Loại tấn công nào sau đây chiếm quyền truy nhập đến tài nguyên lợi dụng cơ chế điều khiển truy nhập DAC?', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Spoofing', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Trojan horse', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Man in the middle', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Phishing', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Đâu là tên viết đúng của Hệ thống phát hiện đột nhập/xâm nhập?', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Intrusion Detector System', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Intrusion Detecting System', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Intrusion Detection System', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Instruction Detection System', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Một trong các nhược điểm chính của điều khiển truy nhập dựa trên các đặc điểm sinh trắc học là:', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Không được hỗ trợ rộng rãi', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Chi phí đắt', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Khó sử dụng', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Công nghệ phức tạp', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Ưu điểm của mật khẩu một lần (OTP-One Time Password) so với mật khẩu truyền thống là:', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Chống được tấn công từ điển', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Chống được tấn công vét cạn', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Chống được tấn công phá mã', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Chống được tấn công phát lại', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Kỹ thuật tấn công SYN Floods khai thác điểm yếu trong khâu nào trong bộ giao thức TCP/IP?', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Bắt tay 3 bước', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Bắt tay 2 bước', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Xác thực người dùng', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Truyền dữ liệu', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tấn công từ chối dịch vụ (Dos - Denial of Service Attacks) là dạng tấn công có khả năng…', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('a. Cản trở người dùng hợp pháp truy nhập các file dữ liệu của hệthống', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('b. Cản trở người dùng hợp pháp truy nhập các tài nguyên hệ thống', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('c. Đánh cắp dữ liệu trong hệ thống', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('d. Gây hư hỏng phần cứng máy chủ', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Một trong các mối đe dọa an toàn thông tin thường gặp là:', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('a.Phần mềm độc hại', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('b. Phần mềm quảng cáo', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('c. Phần mềm nghe lén', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('d Phần mềm phá mã', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Các dạng phần mềm độc hại (malware) có khả năng tự nhân bản gồm:', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('a. Virus, zombie, spyware', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('b. Virus, trojan, zombie', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('c. virus, worm, zombie', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('d. Virus, worm, trojan', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Pharming là kiểu tấn công vào...', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('a. Máy khách/trình duyệt web', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('b. Máy chủ và máy khách web', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('c. Máy chủ web.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('d.  Máy chủ cơ sở dữ liệu của trang web', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Các máy tính ma/máy tính bị chiếm quyền điều khiển thường được tin tặc sử dụng để...', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('a. Gửi các yêu cầu tấn công chèn mã', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('b. Đánh cấp dữ liệu từ máy chủ cơ sở dữ liệu', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('c. Thực hiện tấn công tràn bộ đệm', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('d. Gửi thư rác, thư quảng cáo', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Đâu là một kỹ thuật tấn công DoS?', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('a. DNS spoofing', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('b. UDP Ping', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('c. Smurf', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('d. DNS Cache Poisoning', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Đâu là một biện pháp phòng chống tấn công SYN Floods?', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('a. SYN Firewall', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('b. SYN IDS', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('c. SYN Proxy', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('d. SYN Cache', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Kỹ thuật tấn công Smurf sử dụng giao thức ICMP và cơ chế gửi…', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('a. Multicast', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('b. Anycast', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('c. Broadcast', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('d. Unicast', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tấn công nghe lén là kiểu tấn công:', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('a. Chủ động và bị động', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('b. Thụ động', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('c. Chủ động', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('d. Chiếm quyền điều khiến', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Trong dạng tấn công vào mật khẩu dựa trên từ điển, tin tặc đánh cấp mật khẩu của người dùng bằng cách:', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('a. vét cạn các mật khẩu có thể có', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('b. Tìm mật khẩu trong từ điển các mật khẩu', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('c. Lắng nghe trên đường truyền để đánh cấp mật khẩu', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('d. Thử các từ có tần suất sử dụng cao làm mật khẩu trong từ điển', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Dạng tấn công chặn bắt thông tin truyền trên mạng để sửa đổi hoặc lạm dụng là:', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('a. Fabrications', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('b. Modifications', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('c. Interruptions', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('d. Interceptions', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Mật khẩu an toàn trong thời điểm hiện tại là mật khẩu có :', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('a. Khả năng chống tấn công phát lại và chứa các ký tự từ nhiều dạng kýtự', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('b. Chứa các ký tự từ nhiều dạng ký tự', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('c.  Độ dài lớn hơn hoặc bằng 8 ký tự', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('d. Độ dài từ 8 ký tự trở lên , gồm chữ cái hoa , thường , chữ số và kýtự đặc biệt', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tấn công bằng mã độc có thể gồm:', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('a. Chèn mã XSS, CSRF', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('b. Chèn mã SQL', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('c. Tràn bộ đệm', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('d.SQLi , XSS , CSRF và Buffer overflow', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tấn công kiểu Social Engineering có thể cho phép tin tặc :', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('a Phá hỏng máy chủ', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('b. Đánh cắp toàn bộ cơ sở dữ liệu trên máy chủ', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('c. Đánh cắp thông tin nhạy cảm của người dùng', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('d.  Đánh cắp thông tin nhạy cảm trong cơ sở dữ liệu trên máy chủ', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khác biệt cơ bản giữa tấn công DoS và DDoS là:', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('a.  Phạm vi tấn công', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('b. Tần suất tấn công', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('c. Mức độ gây hại', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('d.  Kỹ thuật tấn công', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Một trong các cách virus thường sử dụng để lây nhiễm vào các chương trình khác là:', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('a. Thay thế các chương trình', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('b. Xáo trộn mã của virus', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('c. Sửa đổi các chương trình', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('d.  Ăn mã của virus', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Trojan horses là dạng phần mềm độc hại thường giành quyền truy nhập vào các file của người dùng khai thác Cơ chỉ điều khiển truy nhập.', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('a. Rule - Based', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('b. DAC', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('c. MAC', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('d. Role - Based', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tại sao việc sử dụng thủ tục cơ sở dữ liệu (Stored procedure ) là một trong các biện pháp hiệu quả để ngăn chặn triệt để tấn công chèn mã SQL ?', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('a. Thủ tục cơ sở dữ liệu có khả năng cẩm chèn mã', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('b. Thủ tục cơ sở dữ liệu độc lập với các ứng dụng', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('c. Thủ tục cơ sở dữ liệu cho phép tách mã lệnh SQL khỏi dữ liệu ngườidùng', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('d. Thủ tục cơ sở dữ liệu lưu trong cơ sở dữ liệu và chạy nhanh hơn câulệnh trực tiếp', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Có thể phòng chống tấn công Smurf bằng cách cấu hình các máy và router không trả lời.', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('a. các yêu cầu UPD hoặc các yêu cầu phát quảng bá', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('b. các yêu cầu TCP hoặc các yêu cầu phát quảng bá', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('c. các yêu cầu HTTP hoặc các yêu cầu phát quảng bá', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('d. các yêu cầu ICMP hoặc các yêu cầu phát quảng bá', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Đây là một công cụ kiểm tra lỗ hổng tấn công chèn mã SQL trên các website:', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('a. SQLmap', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('b. SQLite', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('c. SQLCheck', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('d. SQL Server', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Một trong các biện pháp hiệu quả để phòng chống macro viruses là:', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('a. Sử dụng IPS/IDS.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('b. Sử dụng tường lửa', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('c.Cấm tự động thực hiện macro trong Microsoft Office', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('d.Cấm tự động thực hiện macro trong Microsoft Exchange', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Đâu là một kỹ thuật tấn công DoS?', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('a. SYN requests', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('b. IP spoofing', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('c.DNS spoofing', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('d.Ping of death', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Đâu là một trong các biện pháp chống tấn công khai thác lỗi tràn bộ đệm?', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('a. Sử dụng công nghệ xác minh mạnh', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('b. Sử dụng cơ chế cấm thực hiện mã trong dữ liệu', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('c.Sử dụng tường lửa', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('d.Sử dụng các kỹ thuật mật mã', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tấn công chặn bắt thường liên quan đến việc nghe lén trên đường truyền và chuyển hướng thông tin để sử dụng trái phép?', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Fabrications', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Interceptions', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Interruptions', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Modifications', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tấn công gây ngắt quãng làm ngắt, hoặc chậm kênh truyền thông, hoặc làm quá tải hệ thống, ngăn cản việc truy nhập dịch vụ của người dùng hợp pháp:', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Fabrications', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Interceptions', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Interruptions', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Modifications', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Trong các vùng hạ tầng CNTT, vùng nào có các lỗ hổng trong quản lý phần mềm ứng dụng của máy chủ?', '', 'Active', 1, 1, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('vùng máy trạm', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('vùng mạng LAN-to-WAN', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('vùng truy nhập từ xa', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('vùng hệ thống và ứng dụng', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Trong các vùng hạ tầng CNTT, vùng nào có nhiều mối đe dọa nguy cơ nhất?', '', 'Active', 1, 1, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('vùng người dùng', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('vùng máy trạm', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('vùng mạng LAN', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('vùng mạng LAN-to-WAN', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Trong các vùng hạ tầng CNTT, vùng nào dễ bị tấn công DoS, DDoS nhất?', '', 'Active', 1, 1, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('vùng người dùng', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('vùng mạng LAN', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('vùng mạng WAN', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('vùng mạng LAN-to-WAN', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('An toàn thông tin được chia làm những thành phần nào?', '', 'Active', 1, 1, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('an toàn máy tính và dữ liệu, an toàn mạng, quản lý an toàn thông tin', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('an toàn mạng, quản lý an toàn thông tin, chính sách an toàn thông tin', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('an toàn mạng, an toàn máy tính và dữ liệu, chính sách an toàn thông tin', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('an toàn máy tính và dữ liệu, quản lý an toàn thông tin, chính sách an toàn thông tin', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nếu dữ liệu bị sửa đổi thì đã vi phạm yêu cầu gì?', '', 'Active', 1, 1, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('toàn vẹn, sẵn dùng', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('bí mật, sẵn dùng', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('toàn vẹn, bí mật', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('an toàn. bí mật', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('An toàn thông tin gồm các lĩnh vực nào?', '', 'Active', 1, 1, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('an toàn cntt, đảm bảo thông tin', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('đảm bảo thông tin, an toàn mạng', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Trong tấn công khai thác lỗi tràn bộ đệm tin tắc thường sử dụng một số lệnh NOP (No Operation) ở phần đầu của mã tấn công. Mục đích của việc này là gì:', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('tăng khả năng gây tràn bộ đệm', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tăng khả năng gây lỗi chương trình', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tăng khả năng phá hoại của mã tấn công', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tăng khả năng mã tấn công được thực hiện', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Sâu SQL Slammer được phát hiện vào năm nào?', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('2002', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('1997', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('2007', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('2003', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Dạng tấn công chèn mã được tin tặc sử dụng phổ biến trên các trang web nhắm đến các cơ sở dữ liệu là:', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tấn công chèn mã SQL', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tấn công chèn mã XSS', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tấn công chèn mã CSRF', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tấn công chèn mã HTML', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Các lỗ hổng bảo mật thường tồn tại nhiều nhất trong thành phần nào của hệ thống:', '', 'Active', 1, 1, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Các thành phần phần cứng', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Các ứng dụng', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Hệ điều hành', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Các dịch vụ mạng', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Lỗi tràn bộ đệm là lỗi trong khâu:', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Quản trị phần mềm', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Lập trình phần mềm', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Thiết kế phần mềm', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Kiểm thử phần mềm', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Đâu là một trong các biện pháp phòng chống tấn công khai thác lỗi tràn bộ đệm?', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Sử dụng các thư viện lập trình an toàn //or sử dụng cơ chế cấm thựchiện mã trong dữ liệu (DEP)', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Sử dụng tường lửa', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Sử dụng các kỹ thuật mật mã', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Sử dụng công nghệ xác thực mạnh', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Một điểm yếu điển hình trong hệ thống điều khiển truy cập là việc sử dụng mật khẩu dễ đoán hoặc mật khẩu được lưu ở dạng rõ. Đây là điểm yếu thuộc khâu:', '', 'Active', 1, 1, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Quản trị', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Xác thực', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Trao quyền', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Xác thực và Trao quyền', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Lỗ hổng bảo mật (Security vulnerability) là một điểm yếu tồn tại trong một hệ thống cho phép tin tặc:', '', 'Active', 1, 1, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Khai thác nhằm đánh cắp các thông tin trong hệ thống', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Khai thác nhằm chiếm quyền điều khiển hệ thống', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Khai thác, tấn công phá hoại và gây tê liệt hệ thống', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Khai thác gây tổn hại đến các thuộc tính an ninh của hệ thống đó', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Trong tấn công khai thác lỗi tràn bộ đệm, tin tặc thường sử dụng shellcode. Shellcode đó là dạng:', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mã Java', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mã Hợp ngữ', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mã C/C++', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mã máy', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tấn công kiểu Social Engineering có thể cho phép tin tặc:', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đánh cắp thông tin nhạy cảm trong cơ sở dữ liệu trên máychủ', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đánh cắp toàn bộ cơ sở dữ liệu trên máy chủ', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đánh cắp thông tin nhạy cảm của người dùng', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Phá hỏng máy chủ', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Một trong các mối đe dọa an toàn thông tin thường gặp là:', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Phần mềm nghe lén', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Phần mềm phá mã', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Phần mềm quảng cáo', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Phần mềm độc hại', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tấn công kiểu Social Engineering là dạng tấn công khai thác yếu tố nào sau đây trong hệ thống?', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Người dùng', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Hệ điều hành & ứng dụng', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Máy trạm', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Máy chủ', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Dạng tấn công giả mạo thông tin thường để đánh lừa người dùng thông thường là:', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Interruptions', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Interceptions', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Fabrications', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Modifications', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Trong tấn công DDoS phản chiếu hay gián tiếp, có sự tham gia của một số lượng lớn máy chủ trên mạng Internet không bị tin tặc chiếm quyền điều khiển. Các máy chủ này được gọi là…', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Requesters', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Reflectors', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Injectors', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Forwarders', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Các vùng bộ nhớ thường bị tràn gồm:', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Ngăn xếp (Stack) và Bộ nhớ đệm (Cache)', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Hàng đợi (Queue) và Vùng nhớ cấp phát động (Heap)', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Ngăn xếp (Stack) và Vùng nhớ cấp phát động (Heap)', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Hàng đợi (Queue) và Ngăn xếp (Stack)', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Để đảm bảo an toàn cho hệ thống điều khiển truy cập, một trong các biện pháp phòng chống hiệu quả là:', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Không mở các email của người lạ hoặc email quảng cáo', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Không cho phép chạy các chương trình điều khiển từ xa', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Không cài đặt và chạy các chương trình tải từ các nguồn khôngtin cậy', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Không dùng tài khoản có quyền quản trị để chạy các chương trình ứngdụng', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Để thực hiện tấn công Smurf, tin tặc phải giả mạo địa chỉ gói tin ICMP trong yêu cầu tấn công. Tin tặc sử dụng…', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Địa chỉ máy nạn nhân làm địa đích của gói tin', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Địa chỉ router làm địa đích của gói tin', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Địa chỉ máy nạn nhân làm địa nguồn của gói tin', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Địa chỉ router làm địa nguồn của gói tin', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Macro viruses là loại viruses thường lây nhiễm vào…', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Các file tài liệu của bộ phần mềm Open Office', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Các file tài liệu của bộ phần mềm Microsoft SQL', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Các file tài liệu của bộ phần mềm Microsoft Office', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Các file tài liệu của bộ phần mềm Microsoft Exchange', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khác biệt cơ bản của vi rút và sâu là:', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Vi rút có khả năng phá hoại lớn hơn', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Sâu có khả năng phá hoại lớn hơn', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Vi rút có khả năng tự lây lan mà không cần tương tác của ngườidùng', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Sâu có khả năng tự lây lan mà không cần tương tác của người dùng', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Mục đích chính của tấn công giả mạo địa chỉ IP là:', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Để đánh cắp các dữ liệu nhạy cảm trên máy trạm', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Để vượt qua các hệ thống IPS và IDS', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Để vượt qua các hàng rào kiểm soát an ninh', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Để đánh cắp các dữ liệu nhạy cảm trên máy chủ', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Việc quản lý, khắc phục các lỗ hổng bảo mật và tăng cường khả năng đề kháng cho hệ thống cần được thực hiện theo nguyên tắc chung là:', '', 'Active', 1, 1, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cân bằng giữa An toàn, Hữu dụng và Tin cậy', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cân bằng giữa An toàn, Rẻ tiền và Chất lượng', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cân bằng giữa An toàn, Hữu dụng và Rẻ tiền', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cân bằng giữa An toàn, Tin cậy và Rẻ tiền', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Một trong các biện pháp cụ thể cho quản lý, khắc phục các lỗ hổng bảo mật và tăng cường khả năng đề kháng cho hệ thống là:', '', 'Active', 1, 1, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Định kỳ cập nhật thông tin về các lỗ hổng từ các trang web chínhthức', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Định kỳ cập nhật các bản vá và nâng cấp hệ điều hành', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Định kỳ nâng cấp hệ thống phần mềm', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Định kỳ nâng cấp hệ thống phần cứng', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Có thể phòng chống tấn công Smurf bằng cách cấu hình các máy và router không trả lời…', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('các yêu cầu UPD hoặc các yêu cầu phát quảng bá', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('các yêu cầu ICMP hoặc các yêu cầu phát quảng bá', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('các yêu cầu TCP hoặc các yêu cầu phát quảng bá', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('các yêu cầu HTTP hoặc các yêu cầu phát quảng bá', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Các thành phần chính của hệ thống máy tính gồm:', '', 'Active', 1, 1, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Hệ thống phần cứng và Hệ thống phần mềm', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('CPU, Bộ nhớ, HDD, hệ điều hành và các ứng dụng', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('CPU, Bộ nhớ, HDD và Hệ thống bus truyền dẫn', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('CPU, hệ điều hành và các ứng dụng', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Đâu là dạng lỗ hổng bảo mật thường gặp trong hệ điều hành và các phần mềm ứng dụng', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Lỗi tràn bộ đệm', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Lỗi quản trị', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Lỗi thiết kế', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Lỗi cấu hình', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Đâu là một công cụ có khả năng rà quét các lỗ hổng chèn mã SQL cho các trang web?', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Microsoft Baseline Security Analyzer', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Acunetix Web Vulnerability Scanner', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('nmap', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Nessus vulnerability scanner', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Điều khiển truy nhập dựa trên luật (Rule-based access control) được sử dụng phổ biến trong:', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('VPN', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Firewall', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('SSL/TLS', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Kerberos', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Phát hiện tấn công, xâm nhập dựa trên bất thường dựa trên giả thiết:', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Các hành vi tấn công, xâm nhập gây tổn hại nghiêm trọng cho hệthống', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Các hành vi tấn công, xâm nhập thường có quan hệ chặt chẽ với các hànhvi bất thường', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Các hành vi tấn công, xâm nhập có quan hệ chặt chẽ với các dịch vụ đượccung cấp', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Các hành vi tấn công, xâm nhập gây ngắt quãng dịch vụ cung cấp chongười dùng', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Một trong các nhược điểm chính của điều khiển truy nhập dựa trên các đặc điểm sinh trắc học là:', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Không được hỗ trợ rộng rãi', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Công nghệ phức tạp', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Chi phí đắt', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Khó sử dụng', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Phát biểu nào sau đây đúng với cơ chế điều khiển truy nhập DAC:', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('DAC cho phép người tạo ra đối tượng có thể cấp quyền truy nhập chongười dùng khác', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('DAC quản lý quyền truy nhập chặt chẽ hơn các cơ chế khác', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('DAC cấp quyền truy nhập dựa trên tính nhạy cảm của thông tin và chínhsách quản trị', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('DAC là cơ chế điều khiển truy nhập được sử dụng rộng rãi nhất', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Phát biểu nào sau đây đúng với cơ chế điều khiển truy nhập bắt buộc MAC:', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('MAC quản lý quyền truy nhập chặt chẽ hơn các cơ chế khác', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('MAC cấp quyền truy nhập dựa trên tính nhạy cảm của thông tin và chínhsách quản trị', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('MAC là cơ chế điều khiển truy nhập được sử dụng rộng rãi nhất', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('MAC cho phép người tạo ra đối tượng có thể cấp quyền truy nhập chongười dùng khác', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tìm phát biểu đúng về dịch vụ xác thực trong điều khiển truy nhập:', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Là quá trình xác minh nhận dạng của chủ thể', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Là quá trình xác minh nhận dạng của người dùng', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Là quá trình xác minh các thông tin nhận dạng của chủ thể yêu cầu truynhập đối tượng', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Là quá trình xác minh tính chân thực của thông tin nhận dạng người dùngcung cấp', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Hai dịch vụ quan trọng nhất của một hệ thống điều khiển truy nhập là:', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Authenticator và Administrator', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Authentication và Authorization', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Authentication và Administrator', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Administrator và Authorization', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Mục đích chính của điều khiển truy nhập là để đảm bảo các thuộc tính an ninh của thông tin, hệ thống và các tài nguyên, gồm:', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tính bí mật, tính toàn vẹn và tính sẵn dùng', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tính bảo mật, tính toàn vẹn và tính xác thực', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tính bí mật, tính toàn vẹn và tính xác thực', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tính bảo mật, tính toàn vẹn và tính sẵn dùng', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tại sao một hệ thống phát hiện xâm nhập dựa trên chữ ký không thể phát hiện các tấn công, xâm nhập mới?', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Do chữ ký của chúng chưa tồn tại trong hệ thống', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Do các tấn công, xâm nhập mới chỉ gây thiệt hại nhỏ', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Do các tấn công, xâm nhập mới không có chữ ký', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Do các tấn công, xâm nhập mới không gây ra bất thường', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Ưu điểm của điều khiển truy nhập dựa trên các đặc điểm sinh trắc học là:', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Bảo mật cao và được hỗ trợ rộng rãi', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Bảo mật cao và độ ổn định cao', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Bảo mật cao và chi phí thấp', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Bảo mật cao và luôn đi cùng với chủ thể', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Các hệ thống phát hiện xâm nhập có thể thu thập dữ liệu đầu vào từ…', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Các host', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mạng và các host', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mạng', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Các router', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Dạng xác thực sử dụng các thông tin nào dưới đây đảm bảo độ an toàn cao hơn?', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Thẻ ATM và số PIN', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tên truy nhập và mật khẩu', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tên truy nhập và số PIN', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Thẻ ATM và tên truy nhập', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Phương pháp xác thực nào dưới đây có thể cung cấp khả năng xác thực có độ an toàn cao nhất?', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Sử dụng Smartcard', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Sử dụng chứng chỉ số', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Sử dụng mật khẩu', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Sử dụng vân tay', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tìm phát biểu đúng về phát hiện xâm nhập dựa trên chữ ký và phát hiện xâm nhập dựa trên bất thường:', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Phát hiện xâm nhập dựa trên bất thường không thể phát hiện các tấncông, xâm nhập mới', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Phát hiện xâm nhập dựa trên chữ ký có thể phát hiện các tấn công, xâmnhập mới', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Phát hiện xâm nhập dựa trên chữ ký thường có tỷ lệ phát hiện đúng caohơn', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Phát hiện xâm nhập dựa trên bất thường thường có tỷ lệ phát hiện đúngcao hơn', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Đâu là một loại tường lửa?', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Gateway server', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Application server', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Server gateway', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Application-level gateway', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Loại tấn công nào sau đây chiếm quyền truy nhập đến tài nguyên lợi dụng cơ chế điều khiển truy nhập DAC?', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Man in the middle', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Phishing', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Trojan horse', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Spoofing', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Số lượng nhân tố (factor) xác thực sử dụng trong điều khiển truy nhập dựa trên thẻ thông minh là:', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('3', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('4', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('1', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('2', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Ưu điểm của thẻ bài (token) so với thẻ thông minh (smart card) trong điều khiển truy nhập là:', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Được sử dụng rộng rãi hơn', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Có chi phí rẻ hơn', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Có cơ chế xác thực mạnh hơn', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Có cơ chế xác thực đa dạng hơn', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Danh sách điều khiển truy nhập ACL thực hiện việc quản lý quyền truy nhập đến các đối tượng cho người dùng bằng cách:', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Các quyền truy nhập vào đối tượng cho mỗi người dùng được quản lý riêngrẽ', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mỗi người dùng được gán một danh sách các đối tượng kèm theo quyền truynhập', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mỗi đối tượng được gán một danh sách người dùng kèm theo quyền truynhập', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Các quyền truy nhập vào đối tượng cho mỗi người dùng được quản lý trongmột ma trận', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tìm phát biểu đúng về mã hóa khóa bất đối xứng (Asymmetric key cryptography):', '', 'Active', 1, 3, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Sử dụng một khóa quá trình mã hóa và một khóa khác cho giải mã', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('An toàn hơn mã hóa khóa bí mật', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Sử dụng một khóa chung cho cả quá trình mã hóa và giải mã', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Chỉ sử dụng kỹ thuật mã hóa khối', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Độ an toàn của hệ mật mã RSA dựa trên...', '', 'Active', 1, 3, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Khóa có kích thước lớn', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Độ phức tạp cao của giải thuật RSA', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tính khó của việc phân tích số nguyên rất lớn', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Chi phí tính toán lớn', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Những chữ đầu của nhóm từ ACL là tên viết tắt của:', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Arbitrary Code Language', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Access Control Library', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Access Control List', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Allowed Computer List', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nên cài mức truy cập mặc định là mức nào sau đây?', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Full access', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('No access', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Read access', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Write access', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Sau khi một user được định danh và xác thực hệ thống, để cho phép user sử dụng tài nguyên bạn phải thực hiện điều gì?', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Phải được ủy quyền', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Được truyền lại', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Được mã hóa', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Được enable', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Quyền truy cập nào cho phép ta lưu giữ một tập tin?', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đọc', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Sao chép', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Hiệu chỉnh', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Ghi', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Quyền truy cập nào cho phép ta hiệu chỉnh thuộc tính của một tập tin?', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Hiệu chỉnh (Modify)', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Sao chép (Copy)', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Thay đổi (Change)', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Biên tập ( Edit)', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Các quyền truy cập tối đa nên dành cho user là gì ?', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Ít nhất là quyền đọc và ghi', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Không có quyền truy cập', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đủ để thực hiện công việc theo chức trách', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Toàn quyền', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Chính sách tài khoản nào nên được thiết lập để ngăn chặn các cuộc tấn công ác ý vào tài khoản của user?', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Disable tài khoản không dùng đến', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Hạn chế thời gian', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Ngày hết hạn tài khoản', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Giới hạn số lần logon', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Sau khi một user đã được định danh (identifed), điều gì cần phải làm trước khi họ log vào một mạng máy tính ?', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Xác thực với mật khẩu', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Họ phải nhập user ID đã được mã hóa', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Được phép truy cập với mức ưu tiên được thiết lập', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Người quản trị phải enable để gõ vào', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Chiều dài tối thiểu của mật khẩu cần phải là :', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('12 đến 15 ký tự', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('3 đến 5 ký tự', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('8 ký tự', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('1 đến 3 ký tự', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Điều gì cần được thực hiện đối với tập tin mật khẩu để ngăn chặn một người dùng trái phép crack vào các nội dung ?', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Hủy bỏ tất cả các quyền truy cập', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mã hóa tập tin mật khẩu', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Di chuyển ngoại tuyến đến một đĩa mềm', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Sao chép đến một tập tin bù nhìn với một tên khác', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Một IP flood theo các host phát tán trực tiếp đến một Web server là một ví dụ của loại tấn công gì ?', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Trojan Hors', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Sâu', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tấn công IP', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('DoS phân tán (DDoS)', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Để ngăn tấn công DoS, một quản trị mạng chặn nguồn IP với tường lửa, nhưng tấn công vẫn tiếp diễn. Điều gì có khả năng xảy ra nhất ?', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Sâu DoS đã lây nhiễm cục bộ', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tấn công đang đến từ nhiều host (DDoS)', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Một tường lửa không thể ngăn chặn tấn công DoS', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Phần mềm Antivirus cần được cài đặt trên máy chủ đích', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cách bảo vệ nào sau đây là tốt nhất để chống lại tấn công DoS kiểu làm tràn băng thông và bộ đệm của hệ thống', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Subnet mask', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cài đặt phần mềm bảo vệ Antivirus', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Disable web server', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Chặn giao thức ICMP', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Các loại khoá mật mã nào sau đây dễ bị crack nhất ?', '', 'Active', 1, 3, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('128 bit', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('40 bit', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('256 bit', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('56 bit', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cách nào sau đây là tốt nhất để chống lại điểm yếu bảo mật trong phần mềm HĐH ?', '', 'Active', 1, 1, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cài đặt bản service pack mới nhất', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cài đặt lại HĐH thông dụng', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Sao lưu hệ thống thường xuyên', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Shut down hệ thống khi không sử dụng', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Các mật khẩu nào sau đây là khó phá nhất đối với một hacker ?', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('password83', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('reception', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('!$aLtNb83', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('LaT3r', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Một người dùng đã mua một máy tính xách tay đã nhiễm virus.Trên máy không chứa phần mềm Antivirus và chưa được kết nối với mạng.Cách tốt nhất để sửa chữa máy tính xách tay là gì ?', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Nối mạng máy tính xách tay và download phần mềm antivirus từ máy chủ', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Khởi động máy tính xách tay với đĩa antivirus', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Nối mạng máy tính xách tay và download phần mềm antivirus từ Internet', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Kết nối máy tính xách tay đến một máy tính cá nhân khác và diệt virus từ đó', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Các tập tin nào sau đây có khả năng chứa virus nhất ?', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('database.dat', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('bigpic.jpeg', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('note.txt', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('picture.gif.exe', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Loại mã nguồn độc hại nào có thể được cài đặt song không gây tác hại cho đến khi một hoạt động nào đó được kích hoạt ?', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Sâu', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Ngựa trojan', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Logic bomb', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Stealth virus', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Trong suốt quá trình kiểm định một bản ghi hệ thống máy chủ, các mục nào sau đây có thể được xem như là một khả năng đe dọa bảo mật ?', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Năm lần nổ lực login thất bại trên tài khoản “jsmith”', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Hai lần login thành công với tài khoản Administrator', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Năm trăm ngàn công việc in được gởi đến một máy in', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Ba tập tin mới được lưu trong tài khoản thư mục bởi người sử dụng là “finance”', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Phương pháp thông tin truy cập từ xa nào được xem như kết nối điển hình đến Internet mọi lúc, nó làm gia tăng rủi ro bảo mật do luôn mở đối với mọi cuộc tấn công ?', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cable modem & DSL', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Dial-up', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Wireless', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('SSH', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tính năng bảo mật nào có thể được sử dụng đối với một máy trạm quay số truy cập từ xa sử dụng một username và mật khẩu ?', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mã hóa số điện thoại', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Kiểm tra chuỗi modem', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Hiển thị gọi', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Gọi lại ( Call back)', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tiện ích nào sau đây là một phương thức bảo mật truy cập từ xa tốt hơn telnet ?', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('SSL', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('SSH', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('IPSec', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('VPN', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Các giao thức đường hầm nào sau đây chỉ làm việc trên các mạng IP ?', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('SLIP', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('IPX', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('L2TP', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('PPTP', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Mục đích của một máy chủ RADIUS là', '', 'Active', 1, 5, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Packet Sniffing', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mã hóa', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Xác thực', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Thỏa thuận tốc độ kết nối', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Các giao thức xác thực nào sau đây được sử dụng trong các mạng không dây ?', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('802.1X', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('802.11b', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('802.11a', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('803.1', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Các giao thức nào sau đây làm việc trên lớp IP để bảo vệ thông tin IP trên mạng?', '', 'Active', 1, 3, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('IPX', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('IPSec', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('SSH', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('TACACS+', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('LAC ( L2TP Access Control) và LNS ( L2TP Network Server)) là các thành phần của giao thức đường hầm nào ?', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('IPSec', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('PPP', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('PPTP', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('L2TP', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Giao thức được sử dụng rộng rãi nhất để truy cập kiểu quay số đến một máy chủ từ xa là', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('SLIP', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('PPP', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('RAS', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Telnet', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Kỹ thuật nào được sử dụng để bảo đảm thông tin liên lạc qua một mạng không được bảo mật ?', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Telnet', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('SLIP', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('VPN', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('PPP', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Các thiết bị nào sau đây có thể sử dụng được trên mạng không dây ?', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Máy vi tính để bàn', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Máy tính xách tay', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('PDA', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tất cả các loại trên', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Thiết bị nào được sử dụng để cho phép các máy trạm không dây truy cập vào một mạng LAN rộng ?', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('802.11b', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tường lửa', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Điểm truy cập không dây (Wiless Access Point)', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('VPN', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Các chuẩn giao thức mạng không dây nào sau đây phân phối nội dung Wireless Markup Language (WML) đến các ứng dụng Web trên các thiết bị cầm tay (PDA)?', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('WAP', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('WEP', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('802.11g', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('SSL', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Các chuẩn giao thức mạng không dây IEEE nào sau đây là phổ biến nhất ?', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('803.11b', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('802.11g', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('802.11a', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('802.11b', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Mức mã hóa WEP nào nên được thiết lập trên một mạng 802.11b ?', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('128 bit', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('40 bit', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('28 bit', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('16 bit', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cơ cấu bảo mật mạng không dây nào sau đây là ít an toàn nhất ?', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('VPN', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mã hóa WEP 40 bit', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Bảo mật định danh mạng', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mã hóa WEP 128 bit', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Bộ lọc địa chỉ MAC được định nghĩa như :', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Được phép truy cập đến một địa chỉ MAC nhất định.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Ngăn chặn truy cập từ một địa chỉ MAC nhất định.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mã hóa địa chỉ MAC của thiết bị không dây.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tường lửa cá nhân', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Phương pháp điều khiển truy cập có hiệu quả và an toàn nhất đối với mạng không dây là:', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mã hóa WEP 40 bit', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('VPN', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mã hóa WEP kết hợp với lọc địa chỉ MAC', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Nhận dạng bảo mật mạng', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cơ cấu bảo mật nào sau đây được sử dụng với chuẩn không dây WAP ?', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('WTLS', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('SSL', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('HTTPS', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mã hóa WEP', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Thiết bị nào sử dụng bộ lọc gói và các quy tắc truy cập để kiểm soát truy cập đến các mạng riêng từ các mạng công cộng , như là Internet ?', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Điểm truy cập không dây', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Router', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tường lửa', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Switch', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Thiết bị nào cho phép ta kết nối đến một mạng LAN của công ty qua Internet thông qua một kênh được mã hóa an toàn ?', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('VPN', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('WEP', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Modem', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Telnet', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Ứng dụng mạng nào có thể được sử dụng để phân tích và kiểm tra lưu lượng mạng ?', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('IDS', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('FTP', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Router', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Sniffer', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cần phải làm gì để bảo vệ dữ liệu trên một máy tính xách tay nếu nó bị lấy cắp ?', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Khóa đĩa mềm', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Enable khi login và tạo mật khẩu trên HĐH', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Lưu trữ đều đặn trên CD-ROM', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mã hóa dữ liệu', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Ta phải làm gì để ngăn chặn một ai đó tình cờ ghi đè lên dữ liệu trên một băng từ ?', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Xóa nó bằng nam châm', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Dán nhãn cẩn thận', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Thiết lập tab “Write-protect ”', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Lưu giữ nó tại chỗ', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Phương tiện nào sau đây không bị ảnh hưởng bởi từ tính ?', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đĩa mềm', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('CD-ROM', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Flash card', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Băng từ', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Yếu tố nào cần được sử dụng kết hợp với một thẻ thông minh để xác thực ?', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('PIN', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Quét võng mạc', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mã hóa khóa', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Thẻ nhớ', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Loại media nào sau đây không phải là một thiết bị cơ động được ?', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đĩa mềm', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Ổ đĩa đĩa CD', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Thẻ thông minh', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Băng từ', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Các thiết bị hay các ứng dụng bảo mật nào sau đây nên được sử dụng để theo dõi và cảnh báo các quản trị mạng về truy cập trái phép ?', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Chương trình Antivirus', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Switch', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Hệ thống phát hiện xâm nhập (IDS)', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Dụng cụ phân tích mạng', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Vùng nào của cấu trúc liên kết bảo mật mạng chứa các máy chủ Intenet, như là web, FTP, và các máy chủ email ?', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('DMZ', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('VLAN', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('VPN', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Intranet', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Loại mạng nào mô tả cấu hình mạng bên trong của một công ty dùng cho mô hình kinh doanh B2B ( Business to Business) ?', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('VLAN', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Intranet', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Extranet', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('VPN', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Dịch vụ mạng nào cho phép các địa chỉ mạng bên trong được “che dấu”( hidden) khỏi các mạng bên ngoài và cho phép vài host của mạng bên trong sử dụng các địa chỉ trùng với mạng bên ngoài ?', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('NAT', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('VPN', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('VLAN', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('IP spoofing', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Công nghệ nào được sử dụng để chia một mạng bên trong thành mạng logic nhỏ hơn, dễ sử dụng hơn ?', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('NAT', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tunneling', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('VPN', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('VLAN', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Không sử dụng một liên kết chuyên dụng , phương pháp tốt nhất để kết nối hai mạng được định vị trong các văn phòng có khoảng cách địa lý xa nhau là gì ?', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('VLAN', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tường lửa', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('DMZ', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('VPN', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Sau khi cố gắng login đến một trạm làm việc trong 3 lần, một user thấy đã bị khóa bên ngoài hệ thống và không thể thực hiện bất kỳ nổ lực nào hơn nữa. Vấn đề này phù hợp nhất với điều gì ?', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cổng mạng disable', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tường lửa disable khi truy cập đến host', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('User quên mật khẩu của họ', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Hệ thống phát hiện xâm nhập disable tài khoản của user', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Đặc tính nào của các thiết bị mạng như router hay switch, cho phép điều khiển truy cập dữ liệu trên mạng ?', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Giao thức DNS', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cập nhật vi chương trình ( Firmware)', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tường lửa', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Danh sách điều khiển truy cập (ACL)', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Phần nào của một thiết bị phần cứng có thể được nâng cấp để cung cấp khả năng bảo mật tốt hơn và đáng tin hơn ?', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Vi chương trình (firmware)', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Quét cổng', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Flash memory', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cấu hình tập tin', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Giao thức nào sau đây cần xóa trên thiết bị mạng quan trọng như router ?', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('TCP/IP', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('ICMP', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('IPX/SPX', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('RIP', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Các giao thức nào sau đây cần xóa trên một máy chủ email để ngăn chặn một user trái phép khai thác các điểm yếu bảo mật từ phần mềm giám sát mạng ?', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('IMAP', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('POP3', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('TCP/IP', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('SNMP', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Điều gì cần được thực hiện với một email server để ngăn chặn user bên ngoài gởi email thông qua nó ?', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cài đặt phần mềm antivirus và antispam.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Hạn chế chuyên tiếp tín hiệu SMTP.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Xoá quyền truy cập POP3 và IMAP', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Enable login được mã hóa', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Điều gì có thể được thiết lập trên một server DHCP để ngăn chặn các máy trạm trái phép lấy được một địa chỉ IP từ server ?', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Quét cổng', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Thiết lập “Danh sách truy cập thư mục LDAP”', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Phát hiện xâm nhập', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('DNS', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Văn bản sau khi được mã hóa, được gọi là gì ?', '', 'Active', 1, 3, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Chứng chỉ', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mật mã đối xứng', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Khóa công khai', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Văn bản mã', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Đặc tính nào sau đây không thuộc chức năng bảo mật thông tin trong các hệ thống mật mã ?', '', 'Active', 1, 3, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Hiệu quả', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Bảo mật', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Toàn vẹn', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Không chối từ', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Ở hệ mật mã nào người gửi và người nhận thông điệp sử dụng cùng một khóa mã khi mã hóa và giải mã ?', '', 'Active', 1, 3, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Không đối xứng', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đối xứng', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('RSA', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Diffie-Hellman', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Chuẩn nào sau đây được chính phủ Mỹ sử dụng thay thế cho DES như là một chuẩn mã hoá dữ liệu?', '', 'Active', 1, 3, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('DSA', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('ECC', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('3DES', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('AES', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Ở hệ mật mã nào người gửi và người nhận thông điệp sử dụng các khóa khác nhau khi mã hóa và giải mã ?', '', 'Active', 1, 3, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Skipjack', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Blowfish', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Không đối xứng', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đối xứng', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Các giao thức mã hóa và các thuật toán nào sau đây được sử dụng như là nền tảng của hạ tầng cơ sở hạ tầng khóa công khai (PKI)?', '', 'Active', 1, 3, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('MD4', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('SHA', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Diffie-Hellman', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Skipjack', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khi giá trị hàm băm của hai thông điệp khác nhau có giá trị tương tự nhau, ta gọi hiện tượng này là gì ?', '', 'Active', 1, 3, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tấn công vào ngày sinh', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Xung đột', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Chữ ký số', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Khóa công khai', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Thực thể nào sau đây cho phép phát hành , quản lý, và phân phối các chứng chỉ số ?', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Quyền cấp chứng chỉ (Certificate Authority)', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Quyền đang ký (Registation Authority)', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Chính phủ (NSA)', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('PKI', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tính hợp lệ của một chứng chỉ dựa vào điều gì ?', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tính hợp lệ của Quyền cấp chứng chỉ (CA)', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tính hợp lệ của người sở hữu', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tính hợp lệ của khóa công khai', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Giai đoạn chứng chỉ được sử dụng', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Trong một mô hình phân cấp ủy thác giữa các tổ chức chứng thực và các người dùng cuối, mô hình nào sau đây được coi là xu hướng chung của việc phát hành chứng chỉ?', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Các chính sách thu hồi chứng chỉ', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Các ngày hợp lệ', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Khóa cá nhân', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Chứng thực gốc ( Root Certificate)', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khi ta lưu giữ một khóa cá nhân trên đĩa cứng cục bộ, làm thế nào để bảo đảm là nó được bảo mật ?', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cần bảo vệ bằng mật khẩu', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Lưu trữ dữ liệu sao lưu vào đĩa mềm', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Lưu trữ bản sao trong bì thư', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Lưu trữ nó trong một thư mục tương tự như khóa công khai', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cách nào sau đây được coi là an toàn nhất để lưu trữ một khóa cá nhân ?', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Lưu nó trên ổ cứng ở dạng bản rõ', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Niêm phong nó trong một bao thư và để nó trong ngăn bàn', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mã hóa nó trên một thẻ thông minh', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Lưu nó trên một thiết bị USB di dộng ở dạng bản rõ', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Một quản trị mạng mới đây đã bị sa thải khỏi công ty. Cần phải làm gì với chứng chỉ hiện hành của họ ?', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Làm mới lại đối với người quản trị mới', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Thu hồi lại chứng chỉ', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đình chỉ tạm thời', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Hết hiệu lực', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Các phương pháp sinh trắc học nào sau đây được coi là an toàn nhất ?', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Phân tích chữ ký', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Quét tiếng nói', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Lấy dấu bàn tay / Lấy dấu ngón tay', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Không quan trọng', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khi kết thúc công việc trên máy tính xách tay và ra ngoài khoảng 1 tiếng vào buổi trưa. Ta nên làm gì trước khi ra ngoài ?', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Nói với đồng nghiệp để mắt đến máy tính xách tay', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Log out khỏi máy tính xách tay', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Shut down và đóng máy lại', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Chắc chắn rằng máy tính xách tay của ta được bảo vệ trên bàn làm việc hay được khóa trong cabin', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Một user gọi điện đến cho ta (với tư cách là người quản lý) thông báo họ bị mất mật khẩu và cần truy cập ngay lập tức. Ta nên làm gì ?', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cung cấp truy cập ngay lập tức, và sau đó kiểm tra chứng cứ của họ', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tạo một login và mật khẩu tạm thời để họ sử dụng', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Xác minh định danh của họ trước khi cấp quyền truy cập', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cho họ một mật khẩu riêng tạm thời', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Trong khoảng thời gian nguồn điện bị sụt áp do quá tải bất thường, các thiết bị nào sau đây là hữu dụng nhất trong việc duy trì các mức nguồn điện thích hợp ?', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Dự phòng nguồn điện của máy phát điện', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('UPS', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Ổn áp', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Thanh nguồn điện', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Quản trị văn phòng của bạn đang được huấn luyện để thực hiện sao lưu máy chủ. Phương pháp xác thực nào là lý tưởng đối với tình huống này ?', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('MAC', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('DAC', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('RBAC', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Các mã thông báo bảo mật', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Phương pháp xác thực nào sử dụng một KDC để thực hiện xác thực ?', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Chap', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Kerberos', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Sinh trắc học', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Thẻ thông minh', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Phương pháp xác thực nào gởi trả lại một “yêu cầu” (request) cho máy trạm và” yêu cầu” đó được mã hóa và gởi trở lại máy chủ ?', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Kerberos', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Các mã thông báo bảo mật', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('DAC', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('CHAP', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Qui trình xác thực nào sử dụng nhiều hơn một yếu tố xác thực để logon ?', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đa yếu tố ( multi-factor)', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Sinh trắc học', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Thẻ thông minh', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Keberos', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Các giao thức hay các dịch vụ nào sau đây nên loại bỏ trong mạng nếu có thể ?', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Email', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Telnet', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('WWW', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('ICMP', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Mạng nào sau đây không phải là một vùng bảo mật ?', '', 'Active', 1, 1, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Internet', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Intranet', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Extranet', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('NAT', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Các giao thức nào sau đây cho phép một tổ chức đưa một địa chỉ TCP/IP đơn lên Internet ?', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('NAT', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('VLAN', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('DMZ', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Extranet', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Phương pháp quét võng mạc thích hợp nhất đối với các dịch vụ nào sau đây ?', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Kiểm định', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Xác thực', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Kiểm soát truy cập', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Bảo mật dữ liệu', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Công nghệ nào sau đây dựa vào thuộc tính vật lý của user để xác thực ?', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Thẻ thông minh', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Sinh trắc học', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Xác thực lẫn nhau', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Các mã thông báo', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Kỹ thuật cho phép tạo kết nối ảo giữa hai mạng sử dụng một giao thức bảo mật được gọi là gì ?', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tunelling', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('VLAN', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Internet', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Extranet', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Qui trình quyết định giá trị của thông tin hay thiết bị trong một tổ chức được gọi là gì?', '', 'Active', 1, 1, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đánh giá tài nguyên thông tin', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đánh giá rủi ro', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Nhận dạng chuỗi', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Quét các điểm yếu', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khi được hỏi về các mối đe dọa cho công ty từ phía các hacker. Loại thông tin nào sau đây sẽ giúp ích nhiều nhất ?', '', 'Active', 1, 1, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Xác minh tài sản sở hữu', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đánh giá rủi ro', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Nhận dạng mối đe dọa', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Các điểm yếu', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khi một user báo cáo rằng hệ thống của anh ta đã phát hiện một virus mới. Điều gì sau đây cần làm như là bước đầu tiên để xử lý tình huống này ?', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Kiểm tra lại tập tin diệt virus hiện hành', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Định dạng lại đĩa cứng', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cài đặt lại hệ điều hành', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Disable tài khoản email của anh ta', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Yếu tố nào sau đây được coi là hữu ích nhất trong việc kiểm soát truy cập khi bị tấn công từ bên ngoài ?', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đăng nhập hệ thống ( System logs)', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Phần mềm antivirus', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Kerberos', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Sinh trắc học', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Ta muốn cài đặt một máy chủ cung cấp các dịch vụ Web đến các máy trạm thông qua Internet. Ta không muốn để lộ mạng bên trong để tránh rủi ro. Phương pháp nào để thực hiện điều này ?', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cài đặt máy chủ trong mạng Intranet', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cài đặt máy chủ trong một DMZ', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cài đặt máy chủ trong một VLAN', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cài đặt máy chủ trong mạng Extranet', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Phương pháp xác thực nào cung cấp tài liệu đáng tin cậy có hiệu lực trong suốt một phiên làm việc đơn ?', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Các mã thông báo', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Chứng chỉ', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Thẻ thông minh', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Kerberos', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Loại tấn công nào làm việc truy cập của user đến các tài nguyên mạng bị từ chối?', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('DoS', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Sâu', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Logic Bomb (bomb ngập lụt đường truyền)', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Social engineering (Khai thác giao tiếp)', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Loại tấn công nào sử dụng nhiều hơn một máy tính để tấn công nạn nhân ?', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('DoS', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('DDoS', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Sâu', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tấn công UDP', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Một máy chủ trên mạng có một chương trình đang chạy vượt quá thẩm quyền. Loại tấn công nào đã xảy ra ?', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('DoS', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('DDoS', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Back door', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Social engineering (Khai thác giao tiếp)', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nổ lực tấn công để can thiệp vào một phiên liên lạc bằng việc thêm vào một máy tính giữa hai hệ thống được gọi là một …….?', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tấn công dạng “Man in the middle”', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tấn công cửa sau', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Sâu', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('TCP/IP hijacking', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Ta đã phát hiện ra một chứng chỉ đã hết hiệu lực vẫn đang được sử dụng nhiều lần để giành được quyền logon. Đây là loại tấn công nào ?', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tấn công dạng “Man in the middle”', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tấn công cửa sau', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tấn công chuyển tiếp (Relay Attack)', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('TCP/IP hijacking', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Một kẻ tấn công cố gắng dùng địa chỉ IP để tạo một hệ thống khác trong mạng của ta nhằm giành quyền kiểm soát truy cập . Đây là loại tấn công nào ?', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tấn công dạng “Man in the middle”', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tấn công cửa sau', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Sâu', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('TCP/IP hijacking', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Một máy chủ trên mạng không chấp nhận các kết nối TCP nữa. Máy chủ thông báo rằng nó đã vượt quá giới hạn của phiên làm việc. Loại tấn công nào có thể đang xảy ra ?', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tấn công TCP ACK (tấn công kiểu SYNACK)', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tấn công smurf', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tấn công virus', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('TCP/IP hijacking', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tấn công smurf sử dụng giao thức nào để kiểm soát ?', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('TCP', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('IP', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('UDP', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('ICMP', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tổ đặc trách thông báo rằng họ đã nhận một cuộc gọi khẩn cấp từ phó chủ tịch đêm qua yêu cầu logon vào ID và mật khẩu của ông ta. Đây là loại tấn công gì ?', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Giả mạo', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tấn công chuyển tiếp', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Social engineering (Khai thác giao tiếp)', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Trojan', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Hệ thống của bạn đã ngừng phản ứng lại với các lệnh của bàn phím. Lưu ý rằng điều này xảy ra khi mở bảng tính và đã quay số qua internet. Loại tấn công nào có thể đã xảy ra ?', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Logic Bomb', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Sâu', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Virus', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tấn công ACK', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Loại virus tự che giấu nó bằng cách ẩn trong mã nguồn của các phần mềm antivirus được gọi là gì ?', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Armored virus', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Polymorphic virus', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Sâu', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Stealth virus (Virus ẩn danh)', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Một virus được đính kèm chính nó vào boot sector của đĩa cứng và thông báo thông tin sai về kích thước các tập tin được gọi là gì ?', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Virus Trojan', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Stealth virus (virus ẩn danh)', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Sâu', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Polymorphic virus', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Một chương trình nằm trong một chương trình khác được cài vào hệ thống gọi là một …….', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Trojan Horse', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Polymorphic virus', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Sâu', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Armored virus', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Các user nội bộ báo cáo hệ thống của họ bị lây nhiễm nhiều lần. Trong mọi trường hợp virus có vẻ là cùng một loại. Thủ phạm thích hợp nhất là gì ?', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Máy chủ có thể là vật mang virus', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Ta có một sâu virus', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Phần mềm antivirus của ta bị sự cố', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tấn công DoS đang thực hiện', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Các log file trên hệ thống của bạn phát hiện một nổ lực giành quyền truy cập đến một tài khoản đơn. Nổ lực này đã không thành công vào thời điểm đó. Theo kinh nghiệm của bạn thì loại tấn công thích hợp nhất là gì ?', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tấn công đoán mật khẩu (Password Guessing)', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tấn công cửa sau', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tấn công bằng sâu', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('TCP/IP hijacking', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Một user báo cáo là anh ta đang nhận một lỗi chỉ ra rằng địa chỉ TCP/IP của anh ta đã bị sử dụng khi anh ta bật máy tính. Tấn công nào có thể đang thực hiện ?', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tấn công dạng “Man in the middle”', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tấn công cửa sau', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Sâu', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('TCP/IP hijacking', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Một đêm làm việc khuya và bạn phát hiện rằng ổ cứng của bạn hoạt động rất tích cực mặc dù bạn không thực hiện bất kỳ thao tác nào trên máy tính. Bạn nghi ngờ điều gì?', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Khả năng ổ đĩa ngừng hoạt động sắp xảy ra', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Một virus đang phát tán rộng trong hệ thống', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Hệ thống của bạn đang chịu tác động của tấn công DoS', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tấn công TCP/IP hijacking đang cố gắng thực hiện', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Bản ghi lỗi hệ thống email của bạn báo cáo một số lượng lớn các nổ lực logon không thành công. Loại tấn công nào có thể đang xảy ra ?', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tấn công khai thác phần mềm (Software exploitation attack)', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tấn công cửa sau ( Back door Attack))', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Sâu (Worm)', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('TCP/IP hijacking', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Bộ lọc gói thực hiện chức năng nào ?', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Ngăn chặn các gói trái phép đi vào từ mạng bên ngoài', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cho phép tất cả các gói rời mạng', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cho phép tất cả các gói đi vào mạng', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Loại trừ sự xung đột trong mạng', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Thiết bị nào lưu trữ thông tin về đích đến trong mạng ?', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Hub', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Modem', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Firewall', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Router', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Giao thức nào được sử dụng rộng rãi hiện nay như là một giao thức truyền tải đối với các kết nối quay số trên Internet ?', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('SLIP', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('PPP', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('PPTP', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('L2TP', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Giao thức nào sau đây không phù hợp đối với các kết nối VPN WAN ?', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('PPP', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('PPTP', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('L2TP', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('IPSec', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Giao thức nào sau đây tuy không phải là một giao thức đường hầm nhưng nó sử dụng các giao thức đường hầm để bảo mật trên mạng?', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('IPSec', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('PPTP', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('L2TP', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('L2F', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Một socket là sự kết hợp của các thành phần nào ?', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('TCP và port number', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('UDP và port number', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('IP và session number', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('IP và port number', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Thiết bị nào giám sát lưu lượng mạng theo cách thụ động ?', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Sniffer', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('IDS', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Firewall', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Web browser', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Hệ thống nào chủ động thực hiện việc giám sát mạng, phân tích và có thể thực hiện các bước phòng ngừa , bảo vệ mạng ?', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('IDS', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Sniffer', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Router', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Switch', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Hệ thống nào được cài đặt trên Host để cung cấp một tính năng IDS ?', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Network sniffer', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('N-IDS (Network-based IDS)', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('H-IDS (Host-based IDS)', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('VPN', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khi kết nối giữa các thiết bị không dây đã hoàn tất , giao thức nào được sử dụng?', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('WEP', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('WTLS', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('WAP', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('WOP', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Giao thức nào hoạt động trên 2.4GHz và có một dải băng thông rộng 1Mbps hay 2Mbps ?', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('802.11 //1Mbps hoặc 2Mbps với băng thông 2.4GHz', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('802.11a //54Mbps trong dải tần 5GHz', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('802.11b //11Mbps trong băng thông 2.4GHz WIFI', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('802.11g //Tốc độ hơn 20Mbps trên băng thông 2.4GHz', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Giao thức nào được thiết kế để cung cấp bảo mật cho mạng không dây tương đương với việc bảo mật của một mạng diện rộng ?', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('WAP', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('WTLS', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('WEP', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('IR', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Điểm yếu nào sau đây là chủ yếu của môi trường mạng không dây ?', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Phần mềm giải mã (Decryption software)', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('IP spoofing (Giả mạo IP)', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('A gap in the WAP (Một khe hở trong WAP)', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Định vị nơi làm việc (Site survey)', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nếu ta muốn xác thực chữ ký của một người khác, khóa nào phải được sử dụng?', '', 'Active', 1, 3, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Khóa công khai của bạn', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Khoá cá nhân của bạn', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Khoá cá nhân của người cần xác thực', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Khoá công khai của người cần xác thực', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Chữ ký số được sử dụng cho mục đích gì?', '', 'Active', 1, 3, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Để bảo mật tài liệu sao cho người ngoài không đọc được', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Để kiểm tra định danh người gửi', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cung cấp chứng chỉ', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Thu hồi một chứng chỉ', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nếu muốn xem một tài liệu “bảo mật”được mã hóa trên hệ mật bất đối xứng do người khác gởi đến , bạn phải sử dụng khóa nào để giải mật tài liệu?', '', 'Active', 1, 3, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Khoá công khai của bạn', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Khoá công khai của bên gửi', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Khoá cá nhân của bên gửi', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Khoá cá nhân của bạn', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nếu ta muốn ký một tài liệu và sau đó gởi đến một người khác, khóa nào phải được sử dụng?', '', 'Active', 1, 3, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Khoá công khai của bạn', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Khoá công khai của bên nhận', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Khoá cá nhân của bên nhận', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Khoá cá nhân của bạn', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Bạn nhận được một email từ Microsoft, trong đó có một file đính kèm. Trong thư nói rằng có một số lỗi đã được phát hiện và sửa chữa , bạn phải chạy chương trình được đính kèm trong thư để sửa những lỗi đó. Trong trường hợp này bạn sẽ làm gì để bảo đảm an toàn?', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Lưu chương trình đó lại và dùng chương trình diệt virus để quét, nếu không phát hiện thấy virus, sẽ chạy chương trình đó để sửa lỗi.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mở chương trình và chạy nó ngay. Chương trình đó thật sự an toàn vì nó được gửi từ Microsoft', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Xoá email đó ngay. Mocrosoft và các nhà cung cấp không bao giờ gửi chương trình sửa lỗi qua email.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('xxx', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Hệ mật DES sử dụng khối khoá được tạo bởi :', '', 'Active', 1, 3, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('56 bit ngẫu nhiên', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('64 bit ngẫu nhiên', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('128 bit ngẫu nhiên', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('56 bit ngẫu nhiên và 8 bit kiểm tra “Parity”', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Hệ mật DES xử lý từng khối “ plain text ” có độ dài :', '', 'Active', 1, 3, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('56 bit', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('32 bit', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('64 bit', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('48 bit', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Thuật giải SHA là :', '', 'Active', 1, 3, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Hàm băm một chiều', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Dùng trong thuật giải tạo chữ ký số', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cho giá trị băm 160 bit', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tất cả đều đúng', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('DSA là thuật giải :', '', 'Active', 1, 3, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Lấy dấu tay “PrintingFinger”', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tạo chữ ký số (DS)', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Phân phối khoá trước', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Bảo mật thông điệp', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Thuật giải MD5 cho ta một giá trị băm có độ dài :', '', 'Active', 1, 3, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('156 bit', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('256 bit', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('128 bit', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('512 bit', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Trong các cặp khoá sau đây của hệ mật RSA với p=5 ; q=7 , cặp khóa nào có khả năng đúng nhất :', '', 'Active', 1, 3, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('(e = 12 , d =11)', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('(e = 4 , d =11)', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('( e = 7 , d =23)', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('( e = 3 , d =18)', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Thuật giải Difie Hellman dùng để :', '', 'Active', 1, 3, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Bảo mật thông điệp', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Xác thực thông điệp', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Phân phối khoá trước cho hệ mật đối xứng', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Lấy chữ ký sô', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('MAC là một từ cấu tạo bằng những chữ đầu của một nhóm nào liên quan đến mật mã ?', '', 'Active', 1, 3, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Kiểm soát truy cập phương tiện (Media access control)', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Kiểm soát truy cập bắt buộc (Mandatory access control)', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mã xác thực thông điệp (Message authentication code)', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Các ủy ban đa tư vấn (Multiple advisory committees)', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nội dung nào sau đây không cần sử dụng mật mã ?', '', 'Active', 1, 1, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Bảo mật', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Xác thực', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Toàn vẹn', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Truy cập', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('PKC được thực hiện bằng cách sử dụng các chức năng nào ?', '', 'Active', 1, 3, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Chuyển giao các khóa công khai an toàn', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Chuy��n giao các khóa cá nhân an toàn', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Bảo mật dữ liệu ở hai đầu mút', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Sử dụng hai khóa khác nhau để mã hóa và giải mã', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khái niệm nào sau đây được sử dụng để mô tả sự không thể chối từ của người gửi khi gửi thông điệp ?', '', 'Active', 1, 3, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Toàn vẹn', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tính không chối từ ( non-repudiation)', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Xác thực', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Bảo mật', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khái niệm nào sau đây được dùng để xác định chuẩn thực thi các hệ thống mã hóa diện rộng?', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('PKE', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('PKI', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đối xứng', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Không đối xứng', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tổ chức chính cấp phát chứng chỉ được gọi là :', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('CA', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('RA', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('LRA', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('CRL', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Hầu hết định dạng chứng chỉ công cộng được sử dụng trong môi trường PKI là gì ?', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('X.509', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('X.508', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('PKE', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('RSA', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Quy trình mã hoá nào sử dụng cùng một khoá mã ở cả hai phía của một phiên làm việc ?', '', 'Active', 1, 3, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Symmetrical', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Asymmetrical', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('PKCS', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Split key', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('PKCS sử dụng cặp khoá nào để mã hoá?', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Symmetric', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Public/private', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Asymmetric/symmetric', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Private/private', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Giao thức nào sau đây tương tự như SSL và được đề nghị sử dụng bổ sung vào các giao thức bảo mật ?', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('TLS', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('SSH', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('RSH', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('X.509', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Vấn đề gì nảy sinh khi sử dụng qui trình sinh khóa mã tập trung ?', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Bảo mật mạng', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Truyền khóa', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Thu hồi chứng chỉ', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Bảo mật khóa cá nhân', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Giao thức nào sau đây cung cấp dịch vụ bảo mật cho các phiên làm việc trên thiết bị đầu cuối của hệ thống UNIX từ xa ?', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('SSL', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('TLS', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('SSH', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('PKI', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Dịch vụ nào sau đây là một dịch vụ đơn hay một máy phục vụ để lưu trữ, phân phối, và quản lý các khóa phiên mật mã ?', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('KDC', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('KEA', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('PKI', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('PKCS', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Bạn có một fille dữ liệu trên đĩa cứng , phương pháp nào theo bạn là tốt nhất để bảo mật dữ liệu đó', '', 'Active', 1, 3, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('RSA', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('DES', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('DSA', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('SHA', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Thuật giải SHA-1 dùng để :', '', 'Active', 1, 3, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tạo khoá đối xứng', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tạo chữ ký số', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tạo một giá trị băm có độ dài cố định 160 bit', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tạo một giá trị băm có độ dài cố định 256 bit', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Thuật giải MD5 dùng để :', '', 'Active', 1, 3, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Bảo mật một thông điệp', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Xác thực một thông điệp', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Phân phối khoá mật mã', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Kiểm tra tính toàn vẹn dữ liệu', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Trong DES mỗi hàm chọn Si được dùng để :', '', 'Active', 1, 3, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Biến đổi khối dữ liệu mã 48 bit thành 32 bit', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Biến đổi khối dữ liệu mã 6 bít thành 4 bít', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Biến đổi khối dữ liệu mã 16 bít thành 4 bít', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Biến đổi khối dữ liệu mã 32 bít thành 4 bít', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Trong hệ mã công khai RSA , để tạo một chữ ký điện tử của văn bản M ta dùng:', '', 'Active', 1, 3, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('S = E( ek ,M)', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('S = D( dk ,M)', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('S = D(ek,M)', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('S = E ( dk ,M)', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Trong hệ mã công khai RSA , để chứng thực chữ ký điện tử S của văn bản M ta dùng:', '', 'Active', 1, 3, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('M = E( ek , S)', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('M = D( dk ,S)', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('M = D(ek , S)', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('M = E (dk ,S)', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Điều nào sau đây là điểm yếu của IP ?', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mã nguồn độc hại', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Giả mạo IP', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tấn công dạng “Man in the middle”', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tấn công chuyển tiếp', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Qui trình xác định topology của mạng được gọi là gì ?', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('In dấu chân', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Quét mạng', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Thiết bị làm nhiễu', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Liệt kê', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Qui trình xác định vị trí và các thông tin mạng được gọi là gì ?', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('In dấu chân', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Quét', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Thiết bị làm nhiễu', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Liệt kê', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Qui trình chiếm quyền truy cập đến tài nguyên mạng (đặc biệt như là các tập tin user và nhóm) được gọi là gì ?', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('In dấu chân', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Quét', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Thiết bị làm nhiễu', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Liệt kê', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Qui trình phá vỡ một phiên làm việc IM được gọi là gì ?', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Thiết bị làm nhiễu', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Truyền rộng rãi', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Phản ứng với rắc rối', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Khảo sát định vị', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Bạn mới nhận cuộc gọi từ một user IM trong văn phòng mà user này đang ghé thăm một website quảng cáo. User này đang phàn nàn rằng hệ thống của anh ta không phản ứng và hàng triệu trang web đang mở trên màn hình của anh ta. Loại tấn công này là gì ?', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('DoS', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mã nguồn độc hại', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Giả mạo IP', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Khảo sát định vị', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Có thể sử dụng mật mã để nhận biết tài liệu đã bị thay đổi hay không?', '', 'Active', 1, 3, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Có', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Không', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nguyên tắc đảm bảo an toàn thông tin, hệ thống và mạng là:', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Sử dụng các phần cứng hệ thống và mạng đắt tiền', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Sử dụng tường lửa và các phần mềm quét virus', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Sử dụng các hệ thống ngăn chặn và phát hiện tấn công, đột nhập', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Sử dụng nhiều lớp bảo vệ có chiều sâu', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Đâu là một phương pháp mã hóa:', '', 'Active', 1, 3, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Thay thế', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đổi chỗ/ hoán vị', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Vernam', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tất cả các phương án trên', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Giao thức bảo mật SSL đảm bảo tính bí mật, toàn vẹn và xác thực thông điệp bằng các kỹ thuật nào sau đây:', '', 'Active', 1, 3, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mã hóa khóa bí mật và hàm băm có khóa MAC', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mã hóa khóa bí mật và chữ ký số', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mã hóa khóa bí mật và mã hóa khóa công khai', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mã hóa khóa bí mật và hàm băm không khóa MDC', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Các hệ mã hóa khóa công khai sử dụn một cặp khóa: public key và private key. Các yêu cầu đối với public key và private key là:', '', 'Active', 1, 3, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cả public key và private key đều cần giữ bí mật', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Có thể công khai public key và cần giữ bí mật private key', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Có thể công khai private key và cần giữ bí mật public key', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Có thể công khai public key nhưng phải đảm bảo tính xác thực và cần giữ bí mật private key', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Sâu SQL Slammer là sâu tấn công các hệ thống mạng lợi dụng lỗ hổng tràn bộ đệm ở:', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Máy chủ CSDL Microsoft SQL Server 2008', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Hệ điều hành Microsoft Windows 2003', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Máy chủ CSDL Microsoft SQL Server 2005', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Máy chủ CSDL Microsoft SQL Server 2000', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Kích thức khóa có thể của hệ mã hóa AES là:', '', 'Active', 1, 3, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('128, 160 và 192 bit', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('64, 128 và 192 bit', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('128, 256 và 512 bit', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('128, 256 và 384 bit', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Các lỗ hổng tồn tại phổ biến trong hệ điều hành và các phần mềm ứng dụng là:', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Lỗi tràn bộ đệm và lỗi không kiểm tra đầu vào', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Lỗi tràn bộ đệm và cấu hình', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Lỗi cài đặt và quản trị', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Lỗi cài đặt và cấu hình', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Phát biểu nào sau đây mô tả đúng nhất về kỹ thuật tấn công Smurf:', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Giả mạo địa chỉ IP nguồn trong gói tin ICMP là địa chỉ máy đích và chúng gửi đến tất cả các máy trong mạng', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Giả mạo địa chỉ IP nguồn trong gói tin ICMP là địa chỉ máy đích và chúng gửi đến địa chỉ quảng bá của mạng', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Giả mạo địa chỉ IP nguồn trong gói tin ICMP là địa chỉ quảng bá và chúng gửi đến máy đích', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tạo và gửi rất nhiều gòi tin ICMP giả mạo có kích thước lớn đến máy đích', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('An toàn hệ thống thông tin là việc làm đảm bảo các thuộc tính an ninh, an toàn nào của hệ thống thông tin:', '', 'Active', 1, 1, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Bí mật, xác thực và điều khiển', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Bí mật, toàn vẹn và không chối bỏ', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Bí mật, xác thực và không chối bỏ', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Bí mật, toàn vẹn và sẵn dùng', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Trong quá trình thiết lập một phiên kết nối TCP (TCP three-way handshake) thứ tự các gói tin được gửi đi như thế nào?', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('SYN, URG, ACK', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('SYN, ACK, SYN-ACK', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('SYN, SYN-ACK, ACK', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('FIN, FIN-ACK, ACK', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khi một website tồn tại lỗ hổng SQL Injection, nguy cơ cao nhất có thể xảy ra là:', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Chiếm quyền điều khiển hệ thống', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Chèn, xóa hoặc sửa đổi dữ liệu', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đánh cắp các thông tin trong CSDL', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tấn công thay đổi hình ảnh giao diện', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Đặc trưng cơ bản khác biệ của worm với virus là:', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Có khả năng phá hoại lớn hơn so với virus', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Có khả năng tự lay lan mà không cần vật chủ hoặc tác nhân', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Có khả năng lây lan nhanh chóng bằng nhiều phương pháp khác nhau', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Có khả năng chiếm quyền điều khiển hệ thống', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Sự khác biệt giữa hệ chữ ký số RSA và DSA là:', '', 'Active', 1, 3, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('RSA an toàn hơn DSA', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('DSA an toàn hơn RSA', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('DSA có chi phí tính toán thấp hơn RSA', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Giải thuật DSA đơn giản hơn giải thuật RSA', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Kích thước khóa hiệu dụng của hệ mã hóa DES là:', '', 'Active', 1, 3, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('64 bit', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('48 bit', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('56 bit', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('128 bit', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Phần xử lý chính của SHA1 làm việc trên một chuỗi được gọi là state. Kích thước của state là:', '', 'Active', 1, 3, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('160 bit', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('170 bit', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('150 bit', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('180 bit', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Sự khác biệt cơ bản giữa tấn công DoS và tấn công DDoS là:', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('DoS chỉ gây ngập lụt đường truyền', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('DDoS chỉ làm cạn kiệt tài nguyên máy chủ', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Số hosts tham gia tấn công', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cơ chế tấn công DDoS phức tạp hơn', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Số lượng vòng lặp chuyển đổi cần thực hiện để chuyển bản rõ thành bản mã trong hệ mã hóa AES khóa 128 bit là:', '', 'Active', 1, 3, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('14', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('10', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('16', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('12', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Loại tấn công nào sau đây cung cấp cho tin tặc những thông tin hữu ích về các dịch vụ đang chạy trên hệ thống?', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Vulnerability Scan', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Session Hijacking', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Port Scan', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('IP sweep', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Bước MixColumns (trộn cột) trong vòng lặp chuyển đổi trong hệ mã hóa AES thực hiện việc:', '', 'Active', 1, 3, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Trộn hai cột kề nhau của ma trận state', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mỗi cột của ma trận state được nhân với một đa thức', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Trộn các cột tương ứng của ma trận state với khóa', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Trộn các dòng tương ứng của ma trận state với khóa', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tấn công dựa trên từ điển là:', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Sử dụng từ điển để tấn công đánh cắp mật khẩu của người dùng', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tấn công vào thói quen sử dụng các từ đơn giản có trong từ điển làm mật khẩu', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Nghe trộm để đánh cắp mật khẩu', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Thử tất cả các khả năng kiểu vét cạn để tìm mật khẩu của người dùng', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Các phần mềm độc hại nào sau đây có khả năng tự nhân bản:', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Virus, worm, adware', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Virus, backdoor, worm', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Virus, worm, zombie', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Virus, trojan horse, worm', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('SET là giao thức bảo mật dùng trong các giao dịch điện tử. Với SET, những bên nào tham gia giao dịch phải có chứng chỉ số:', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tất cả các bên', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Khách hàng', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cổng giao dịch', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Người bán', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Phát biểu nào sau đây đúng với cơ chế điều khiển truy cập MAC:', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('MAC cấp quyền truy cập dựa trên tính nhạy cảm của những thông tin và chính sách quản trị', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('MAC là cơ chế điều khiển truy cập được sử dụng rộng rãi nhất', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('MAC cho phép người tạo ra đối tượng có thể cấp quyền truy cập cho người dùng khác', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('MAC quản lý truyền quy cập chặt chẽ hơn các cơ chế khác', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Phát biểu nào sau đây đúng với kỹ thuật mã hóa khóa bí mật', '', 'Active', 1, 3, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mã hóa khóa bí mật an toàn hơn mã hóa khóa công khai', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mã hóa khóa bí mật chỉ hoạt động theo chế độ mã hóa khối', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mã hóa khóa bí mật sử dụng một mã (key) cho cả quá trình mã hóa và giải mã', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mã hóa khóa bí mật có thuật toán đơn giản hơn mã hóa khóa công khai', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Phát biểu nào sau đây đúng với cơ chế điều khiển truy cập RBAC:', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('RBAC cho phép người tạo ra đối tượng có thể cấp quyền truy cập cho người dùng khác', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('RBAC cấp quyền truy cập dựa trên tính nhạy cảm của thông tin và chính sách quản trị', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('RBAC cấp quyền truy cập dựa trên vai trò của người dùng trong tổ chức', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('RBAC là cơ chế điều khiển truy cập được sử dụng rộng rãi nhất', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('An toàn thông tin (Information Security) là:', '', 'Active', 1, 1, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Việc đảm bảo an toàn cho hệ thống máy tính', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Việc phòng chống tấn công, đột nhập vào hệ thống máy tính và mạng', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Việc bảo vệ chống truy nhập, sử dụng, tiết lộ, sử đổi, hoặc phá hủy thông tin một cách trái phép', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Việc đảm bảo an toàn cho hệ thống mạng', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nguyên nhân chính của lỗ hổng an ninh cho phép tấn công thực hiện mã từ xa là:', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Lỗi thiết kế phần mềm', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Lỗi quản trị hệ thống', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Lỗi lập trình phần mềm', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Lỗi tích hợp hệ thống', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Danh sách điều khiển truy nhập ACL thực hiện việc cấp quyền truy cập đến các đối tượng cho người dùng bằng cách:', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Các quyền truy cập vào đối tượng cho mỗi người dùng được quản lý riêng rẽ', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mỗi người dùng được gán một danh sách các đối tượng kèm theo quyền truy cập', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Các quyền truy cập vào đối tượng cho mỗi người dùng được quản lý trong một ma trận', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mỗi đối tượng được gán một danh sách người dùng kèm theo quyền truy cập', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Phát biểu nào sau đây đúng với cơ chế điều khiển truy cập DAC:', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('DAC cho phép người tạo ra đối tượng có thể cấp quyền quy cập ch o người dùng khác', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('DAC cấp quyền truy cập dựa trên tính nhạy cảm của thông tin và chính sách quản trị', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('DAC quản lý quyền truy cập chặt chẽ hơn các cơ chế khác', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('DAC là cơ chế điều khiển truy cập được sử dụng rộng rãi nhất', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Loại tấn công nào sau đây chiếm quyền truy cập đến tài nguyên lợi dụng cơ chế điều khiển truy cập DAC?', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Phishing', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('DAC cấp quyền truy cập dựa trên tính nhạy cảm của thông tin và Trojan horse', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Spoofing', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Man in the middle', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Phương pháp xác thực nào dưới đây cung cấp khả năng xác thực có độ an toàn cao nhất?', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Sử dụng mật khẩu', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Sử dụng Smartcard', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Sử dụng chứng chỉ số', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Sử dụng vân tay', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Macro virus là virus lây nhiễm trong:', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Các file tài liệu dạng PDF', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Các file tài liệu của bộ chương trình Open Office', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Các file ảnh dạng JPG', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Các file tài liệu của bộ chương trình MS Office', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Phát biểu nào sau đây đúng với tường lửa', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tường lửa không thể ngăn chặn các tấn công hướng dữ liệu', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tường lửa có thể ngăn chặn mọi loại tấn công, đột nhập', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tường lửa có thể ngăn chặn mọi virus và phần mềm độc hại', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tường lửa có thể ngăn chặn các loại thư rác', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Trong quá trình xử lý dữ liệu tạo chuỗi băm, số lượng vòng xử lý của SHA1 là:', '', 'Active', 1, 3, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('60', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('70', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('80', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('90', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Một trong các biện pháp hiệu quả phòng chống tấn công SQL Injection là:', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Luôn kiểm tra và cập nhật các bản vá an ninh cho hệ điều hành và các phần mềm ứng dụng', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Kiểm tra tất cả các dữ liệu đầu vào, đặc biệt dữ liệu nhập từ người dùng và từ các nguồn không tin cậy', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cấu hình máy chủ CSDL không cho thực thi lệnh từ xa', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Không cho phép người dùng nhập mã vào các form.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Trong hệ thống Kerberos gồm 3 thực thể: client A, máy chủ Kerberos T, máy chủ ứng dụng B, mục đích của hệ thống là để:', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('T hỗ trợ A xác thực thông tin nhận dạng với B, kèm theo thiết lập khóa', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('T xác thực B', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('T xác thực A và B', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('T xác thực A', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('SSL sử dụng giao thực SSL Handshake để khởi tạo phiên làm việc. SSL Handshake thực hiện việc xác thực thực thể dựa trên:', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Chữ ký số', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Chứng chỉ số', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mã hóa khóa công khai', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mã hóa khóa bí mật', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Điểm khác nhau chính giữa hai loại hàm băm MDC và MAC là:', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('MDC an toàn hơn MAC', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('MAC an toàn hơn MDC', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('MDC có khả năng chống đụng độ cao hơn MAC', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('MDC là loại hàm băm không khóa, còn MAC là loại hàm băm có khóa', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Một hệ thống điều khiển truy nhập có thể được cấu thành từ các dịch vụ nào sau đây:', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Xác thực, đăng nhập và kiểm toán (auditing)', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Xác thực, đăng nhập và trao quyền', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Xác thực, trao quyền và kiểm toán (auditing)', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Xác thực, trao quyền và quản trị', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Ưu điểm của kỹ thuật mã hóa khóa công khai so với mã hóa khóa bí mật là:', '', 'Active', 1, 3, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Có độ an toàn cao hơn', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Trao đổi khóa dễ dàng hơn', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Chi phí tính toán thấp hơn', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Quản lý dễ dàng hơn', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Độ an toàn của hệ mã hóa RSA dựa trên:', '', 'Active', 1, 3, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Khóa có kích thước lớn', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Giải thuật rất phức tạp', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Chi phí tính toán lớn', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tính khó của việc phân tích số nguyên lớn', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Trong hệ mã hóa RSA, quan hệ toán học giữa khóa bí mật d và khóa công khai e được gọi là:', '', 'Active', 1, 3, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('d và e là 2 số nguyên tố cùng nhau', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('d là modulo nghịch đảo của e', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('d là modulo của e', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('d và e không có quan hệ với nhau', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Trong hệ thống phân phối khóa sử dụng KTC gồm có n thực thể (không tính KTC), số lượng khóa dài hạn mỗi thực thể và KTC phải lưu là:', '', 'Active', 1, 3, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mỗi thực thể phải lưu 1 khóa, KTC phải lưu n2 khóa', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mỗi thực thể phải lưu 1 khóa, KTC phải lưu n khóa', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mỗi thực thể phải lưu n-1 khóa, KTC phải lưu n khóa', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mỗi thực thể phải lưu 1 khóa, KTC phải lưu 1 khóa', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Số lượng các khóa phụ (subkey) cần được tạo ra từ khóa chính trong giải thuật DES là:', '', 'Active', 1, 3, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('18', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('16', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('14', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('12', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Các thuộc tính cơ bản của chứng chỉ số (Digital certificate) gồm:', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Số nhận dạng, khóa công khai của chủ thể, thông tin định danh chủ thể', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Khóa công khai của chủ thể, thông tin định danh chủ thể, thuật toán chữ ký sử dụng', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Số nhận dạng, khóa công khai của chủ thể, chữ ký của nhà cung cấp CA', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Khóa công khai của chủ thể, thông tin định danh chủ thể, chữ ký của nhà cung cấp CA', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Công cụ Vulnerability scanner cho phép tin tặc:', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tìm các cổng dịch vụ đang mở trên hệ thống', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Thu thập các thông tin về các điểm yếu/lỗ hổng đã biết của hệ thống máy tính hoặc mạng', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Nghe trộm và bắt các gói tin khi chúng được truyền trên mạng', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Chặn bắt và sửa đổi thông tin', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Sự khác biệt giữa trung tâm phân phối khóa KDC và trung tâm dịch khóa KTC là:', '', 'Active', 1, 3, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('KDC an toàn hơn KTC', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('KTC an toàn hơn KDC', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('KDC sinh khóa tập trung, còn KTC sinh khóa phân tán', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('KDC yêu cầu có một máy chủ tin cậy, còn KTC không yêu cầu có một máy chủ tin cậy', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tấn công lợi dụng lỗi tràn bộ đệm có thể giúp tin tặc chèn và thực hiện mã độc trên hệ thống nạn nhân thông qua cơ chế nào sau đây:', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Chèn mã độc vào thay thế mã trong chương trình có lỗi tràn bộ đệm', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tất cả các đáp án trên đều đúng', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Chèn mã độc vào bộ đệm và lợi dụng cơ chế trở về từ chương trình con để thực hiện mã độc đã chèn', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Chèn mã độc vào bộ đệm và lợi dụng cơ chế gọi thực hiện chương trình con để thực hiện mã độc đã chèn', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Phát biểu nào sau đây về chữ ký số là chính xác:', '', 'Active', 1, 3, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Chữ ký số được tạo ra bằng cách mã hóa thông điệp sử dụng khóa riêng của chủ thể', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Chữ ký số được sử dụng để đảm bảo tính bí mật và toàn vẹn thông điệp', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Chữ ký số được sử dụng để đảm bảo tính bí mật, toàn vẹn và xác thực thông điệp', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Chữ ký số là một chuỗi dữ liệu liên kết với một thông điệp và thực thể tạo ra thông điệp', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Số lượng thao tác trong mỗi vòng xử lý của MD5 là:', '', 'Active', 1, 3, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('12', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('16', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('14', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('18', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Lỗ hổng an ninh trong một hệ thống là:', '', 'Active', 1, 1, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Bất kỳ điểm yếu nào trong hệ thống cho phép mối đe dọa có thể gây tác hại', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Các điểm yếu trong hệ điều hành', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tất cả điểm yếu hoặc khiếm khuyết trong hệ thống', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Các điểm yếu trong các phần mềm ứng dụng', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Hai lĩnh vực chính của an toàn thông tin là:', '', 'Active', 1, 1, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mật mã và An ninh mạng', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('An toàn công nghệ thông tin và An ninh mạng', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('An ninh máy tính và An ninh mạng', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('An toàn công nghệ thông tin và Đảm bảo thông tin', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Các hệ điều hành Microsoft Windows và Linux sử dụng các mô hình điều khiển truy cập nào dưới đây?', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('DAC và Role-BAC', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('DAC và MAC', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('MAC và Role-BAC', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('MAC và Rule-BAC', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('SSL sử dụng giao thực SSL Handshake để khởi tạo phiên làm việc. SSL Handshake thực hiện việc trao đổi các khóa phiên dùng cho phiên làm việc dựa trên:', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Chữ ký số', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Chứng chỉ số', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mã hóa khóa công khai', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mã hóa khóa bí mật', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tấn công bằng mã độc bao gồm các dạng tấn công:', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cả A và B', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cài đặt và thực hiện các phần mềm độc hại trên hệ thống nạn nhân', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Lợi dụng các lỗ hổng an ninh để đánh cắp thông tin nhạy cảm', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Lợi dụng các lỗ hổng an ninh để chèn và thực hiện mã độc trên hệ thống nạn nhân', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tấn công Phishing là dạng tấn công vào:', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Người quản trị và người dùng thông thường', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Hệ điều hành và các ứng dụng', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Các hệ thống mạng', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Các phần mềm máy chủ', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Điểm khác nhau chính giữa các hệ thống ngăn chặn đột nhập (IPS) và phát hiện đột nhập (IDS) là:', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('IPS có khả năng phát hiện và ngăn chặn tấn công tốt hơn IDS', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('IDS có khả năng phát hiện và ngăn chặn tấn công tốt hơn IPS', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('IPS có khả năng chủ động ngăn chặn tấn công so với IDS', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('IPS có chi phí lớn hơn IDS', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Gửi một gói tin ICMP có kích thước lớn hơn 64Kb là một ví dụ của kiểu tấn công nào sau đây?', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Buffer overflow', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Syn flood', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Teardrop', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Ping of Death', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Chữ ký số (dùng riêng) thường được sử dụng để đảm bảo thuộc tính nào sau đây của thông điệp truyền:', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tính bí mật', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tính toàn vẹn', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tính xác thực', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tính không chối bỏ', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tấn công DoS là dạng tấn công cho phép tin tặc:', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Gây ngắt quãng dịch vụ cung cấp cho người dùng bình thường', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đánh cắp dữ liệu trên máy chủ', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đánh cắp dữ liệu trên máy khách', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Sửa đổi dữ liệu trong CSDL', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Yêu cầu để đảm bảo sử dụng mã hóa đối xứng là', '', 'Active', 1, 3, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Có thuật tóan encryption tốt,có một khóa bí mật được biết bởi người nhận/gởi và kênh truyền bí mật để phân phát key', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Có một kênh truyền phù hợp và một khóa bí mật được biết bởi người nhận/gởi', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Có thuật tóan encryption tốt và có một khóa bí mật được biết bởi người nhận/gởi', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tất cả đều đúng', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Các thuật tóan nào sau đây là thuật tóan mã hóa đối xứng', '', 'Active', 1, 3, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Triple –DES, RC4, RC5, Blowfish', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Triple –DES, RC4, RC5, IDEA', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('RC4, RC5, IDEA, Blowfish', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('IDEA, Blowfish, AES, Elliptic Cure', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Các phát biểu sau đây phát biểu nào đúng', '', 'Active', 1, 3, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Hầu hết các thuật tóan mã hóa đối xứng đều dựa trên cấu trúc thuật toán Feistel', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tấn công thông điệp thì thời gian giải mã tỷ lệ với kích thước khóa', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Hầu hết các thuật tóan mã hóa khối đều đối xứng', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tất cả đều đúng', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cơ chế bảo mật SSL hoạt động trên tầng', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Network, Transport', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Network, Session', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Application, Session', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tất cả đều sai', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Keberos là dịch vụ ủy thác', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Xác thực trên Web', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Xác thực X.509', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Xác thực trên Server', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Xác thực trên các máy trạm với nhau', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('PGP là giao thức để xác thực', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Quyền đăng cập vào hệ thống máy chủ Window', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Bảo mật cho thư điện tử', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Thực hiện mã hóa thông điệp theo thuật tóan RSA', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Địa chỉ của máy trạm khi kết nối vào Internet', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Công cụ/cơ chế bảo mật cho mạng không dây là', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('SSL', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('TSL', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Giao thức PGP', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('WEP', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Giao thức SSL và TSL hoạt động ở tầng nào của mô hình OSI', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Network', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Sesion', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Transport', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Từ tầng Transport trở lên', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Giao thức SSL dùng để', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cung cấp bảo mật cho dữ liệu lưu thông trên dịch vụ HTTP', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cung cấp bảo mật cho thư điện tử', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cung cấp bảo mật cho Web', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cung cấp bảo mật cho xác thực người dùng vào các hệ thống vận hành trên Platform Window', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Chức năng chính của Virus là', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Lây nhiễm và sinh sản', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Sống ký sinh và lây nhiễm', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tự phát triển độc lập và lây nhiễm', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tất cả đều đúng', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Hoạt động của virus có 4 giai đoạn', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Nằm im, lây nhiễm, tàn phá và tự hủy', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Lây nhiễm, tấn công, hủy diệt và tự hủy', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Nằm im, lây nhiễm, khởi sự và tàn phá', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Lây nhiễm, khởi sự, tàn phát, kích họat lại', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Các dạng sau đây, dạng nào là của virus', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('stealth, cư trú bộ nhớ, macro, lưỡng tính, file', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('virus ký sinh, file, boot sector, stealth, cư trú bộ nhớ, macro', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('virus ký sinh, cư trú bộ nhớ, boot sector, Stealth, đa hình, macro', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Virus Macro chỉ có khả năng tấn công vào các file', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('MS.Exel, MX Word, MS.Power Point', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('stealth, cư trú bộ nhớ, macro, lưỡng tính, file', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('MS.Exel, MX Word, Yahoo Mail', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tất cả các loại file', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Các giao thức bảo mật trên Internet như SSL, TLS và SSH hoạt động ở tầng nào trên mô hình OSI', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tầng Network', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tầng Transport', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Từ tầng Transport trở lên đến tầng 7', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tầng Session', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Kỹ thuật tấn công phổ biến trên Web là', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Chiếm hữu phiên làm việc.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tràn bộ đệm.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Từ chối dịch vụ (DoS)', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Chèn câu truy vấn SQL.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Các lỗ hổng bảo mật trên hệ thống là do', '', 'Active', 1, 1, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Dịch vụ cung cấp', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Bản thân hệ điều hành', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Con người tạo ra', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tất cả đều đúng', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cho biết câu nào đúng trong các câu sau', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tất cả Firewall đều có chung thuộc tính là cho phép phân biệt hay đối xử khả năng từ chối hay truy nhập dựa vào địa chỉ nguồn', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Chức năng chính của Firewall là kiểm sóat luồng thông tin giữa mạng cần bảo vệ và Internet thông qua các chính sách truy nhập đã được thiết lập', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Hệ thống Firewall thường bao g��m cả phần cứng lẫn phần mềm', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tất cả đều đúng', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Loại Firewall nào sau đây cho phép hoạt động ở lớp phiên ( session) của mô hình OSI', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Packet filtering firewall(lop mang)', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Circuit level firewall(lop phien)', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Application level firewall(lop ung dung)', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Stateful multilayer inspection firewall', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Những giao thức WAN nào có thể được định hình trên một kết nối tuần tự không đồng bộ (Chọn 2)', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('PPP', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('ATM', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('HDLC', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('SDLC', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khi thuê một giải pháp VPN, những loại tấn công nào bạn cần phải xét đến ?', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Denial of Service (DoS) attacks, Internet Viruses', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Distributed Denial of Service (DDoS) attacks.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Data confidentiality, IP Spoofing.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Network mapping, Internet Viruses.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Các phát biểu sau đây phát biểu là là đúng nhất', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Fire wal là một vành đai phòng thủ cho máy tính hoặc hệ thống trước những tấn công', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Là một điểm chặn của trong quá trình điều khiển và giám sát.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Là một phần mềm hoặc phần ứng có khả năng ngăn chặn tấn công từ bên trong và bên ngoài vào hệ thống.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Là một giải pháp giúp hệ thống phát hiện và ngăn chặn các truy cập trái phép', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Bảo mật thư điện tử là nhằm đảm bảo', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tính tin cẩn (confidentiality), Tính xác nhận, Toàn vẹn thông điệp(integrity), Sự thối thác ban đầu (non-repudiation of origin)', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tính xác nhận,Toàn vẹn thông điệp(integrity), Sự thối thác ban đầu (nonrepudiation of origin), tính bền vững', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Sự thối thác ban đầu (non-repudiation of origin), tính bền vững, tính ổn khi gởi và nhận', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tất cả đều đúng', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Các giao thức được để bảo mật thư điện tử là', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('GPG, S/MINE', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('SHA-1, S/MINE', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('CAST-128 / IDEA/3DES', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Keboros, X.509', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Chữ ký điện tử (digital signature) sử dụng thuật tóan nào sau đây', '', 'Active', 1, 3, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('RSA,MD5', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('RSA,MD5, Keboros', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('MD5, SHA,RSA', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Không dùng thuật tóan nào nêu trên', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Chữ ký điện tử (digital signature) sử dụng thuật tóan nào sau đâyChữ ký điện tử là', '', 'Active', 1, 3, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Là một chuỗi đã được mã hóa theo thuật tóan băm và đính kèm với văn bản gốc trước khi gởi.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đoạn dữ liệu ngắn đính kèm với văn bản gốc để chứng thực tác giả của văn bản và giúp người nhận kiểm tra tính toàn vẹn của nội dung văn bản gốc.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('a và b đều đúng', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tất cả cả đều sai', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Các bước mã hóa của chứ ký điện tử', '', 'Active', 1, 3, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Dùng giải thuật băm để thay đổi thông điệp cần truyền đi, Sử dụng khóa private key của người gửi để mã hóa message digest thu được ở bước trên, sau đó gộp digital signature vào message ban đầu.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Dùng giải thuật băm để thay đổi thông điệp cần truyền đi, sử dụng khóa private key của người gửi để mã hóa message digest thu được ở bước trên, sau đó gộp digital signature vào message ban đầu và nén dữ liệu gởi đi.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Chỉ sử dụng giải thuật băm để thay đổi thông điệp cần truyền đi và sử dụng khóa private key của người gửi để mã hóa message digest thu được ở bước trên.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tất cả đều đúng', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Các bước kiểm tra của chứ ký điện tử', '', 'Active', 1, 3, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Gồm các bước 1.Dùng public key của người gửi (khóa này được thông báo đến mọi người) để giải mã chữ ký số của message, 2.Dùng giải thuật (MD5 hoặc SHA) băm message đính kèm, So sánh kết quả thu được ở bước 1 và 2. 3.Nếu trùng nhau, ta kết luận message này không bị thay đổi trong quá trình truyền và message này là của người gửi.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Chỉ có bước 1 và 2', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Gồm các bước 1.Dùng public key của người gửi (khóa này được thông báo đến mọi người) để giải mã chữ ký số của message, 2.Dùng giải thuật (MD5 hoặc SHA) băm message đính kèm, So sánh kết quả thu được ở bước 1 và 2. 3.Nén dữ liệu rồi gởi đi', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('d.Không có bước nào ở trên là đúng', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Việc xác thực người dùng khi đăng cập vào hệ thống Window XP, 2000 hoặc 2003 sử dụng giải thuật', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('RSA', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Keberos', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('MD5', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('SHATR', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Để thực hiện tấn công bằng Trojan, kẻ tấn công chỉ cần', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tạo 1 file chạy (*.exe, *.com) vận hành trên máy nạn nhân là đủ', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cho máy nạn nhân lây nhiễm một loại virus bất kỳ nào đó.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Thực hiện đồng thời 2 file, một file vận hành trên máy nạn nhân, file còn lại họat động điều khiển trên máy kẻ tấn công.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Không có điều nào đúng.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Giao thức bảo mật IPSec họat động ở tầng', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Chỉ ở tầng transport ở mô hình OSI', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Từ tầng 4 tới tầng 7 ở mô hình OSI', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Network Layer ở mô hình OSI', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tất cả đều sai', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cho biết phát biểu sau đây phát biểu nào là đúng nhất về registry', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Regỉstry là một cơ sở dữ liệu dùng để lưu trữ thông tin về những sự thay đổi, những lựa chọn, những thiết lập từ người sử dụng Windows.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Regỉstry là một phần mềm tiện ích hỗ trợ cho người dùng thay đổii cấu hình Window khi cần thiết', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Regỉstry là một thành phần của hệ điều hành Window', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tất cả đều đúng', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Có bao nhiêu kiểu dữ liệu trong Registry', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('5', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('4', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('6', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('7', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Các kiểu dữ liệu dùng trong registry là', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('interger, real,text,string', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('HKEY_CLASSES_ROOT, -USER, HKEY_LOCAL_MACHINE, HKEY_USERS, HKEY_CURRENT_CONFIG, HKEY_DYN_DATA', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('HKEY_CLASSES_ROOT, -USER, HKEY_LOCAL_MACHINE, REG_BINARY', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('REG_BINARY, REG_DWORD, REG_EXPAND_SZ, REG_MULTI_SZ, REG_SZ', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Để ẩn tất cả các ổ đĩa trong registry (A,B,C,D ) thì biến REG_DWORD trong Userkey và Systemkey có giá trị là bao nhiêu', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('65656000', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('67188270', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('67108863', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tất cả đều sai', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Để sử dụng xác thực Keberos V5 ở tất cả máy trạm Window98, người ta thực hiện :', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Update window 98 lên XP hoặc Window 2000', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cài đặt tiện ích Distributed Security Client trên tất cả các máy chạy Window 98', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Chỉ cần cài đặt Active Directory trên Server hệ thống', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Không thể thực hiện được', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khi cài đặt Window 2000 Server trên hệ thống NTFS, nhưng không thấy có hiển thị mục Security ở Security tables vì ?', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Update Window 2000 mà không remote trước khi cài đặt', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cài đ��t Window 2000 nhiều lần trên Server', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Bản Window 2000 không có bản quyền', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tất cả đều đúng', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Dịch vụ Active Directory thực hiện các chức năng sau', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tổ chức và xây dựng các domain; xác thực và cấp quyền cho các đối tượng', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Duy các hoạt động của các dịch vụ bảo mật cho Window Server và xác thực, cấp quyền cho các đối tượng', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Chỉ thực hiện việc xác thực và cấp các quyền cho users và groups', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Quản lý tài nguyên và người dùng; xác thực và cấp các quyền cho users và groups; giám sát họat động của các user', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Thuật tóan thực hiện trong cơ chế bảo mật IP (IPSec) ở Window sử dụng là', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('MD5 và SHA1', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Kerberos và DES', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('DES hoặc 3DES (triple DES).', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tất cả đều sai', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Trong Window 98,XP Registry được lưu trữ ở đâu ?', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Được lưu trong file Classes.dat trong thư mục Windows', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Được lưu trong thư mục ''Windows System32 Config''', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Trong 2 file: user.dat và system.dat trong thư mục Windows', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tất cả đều sai', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Để thực hiện sửa đổi cấu hình trên registry ta thực hiện như sau:', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Gõ regedit vào cửa sổ Run', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Bấm Ctrl+ Esc+ r rồi bấm Enter', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('a và b đúng', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tất cả đều sai', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Quy trình crack một sản phẩm phần mềm đơn giản gồm mấy bước', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('3', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('4', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('5', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('3 hoặc 4', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Hai giao thức sử dụng trong IPSec (IPSec Protocol) gồm', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('IP Authentication Header, TCP/IP', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('TCP/IP, IP Encapsulating Security Payload', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('IP Authentication Header, IP Encapsulating Security Payload', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tất cả đều đúng', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Các điểm khác nhau cơ bản giữa dịch vụ X.509 và Kerberos là', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Dựa trên mã hóa đối xứng', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Được sử dụng trong dịch vụ mail', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Xác thực nhiều chiều', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tất cả đều đúng', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Các chức năng cơ bản của kỹ thuật tấn công Sniffer', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tự động chụp các tên người sử dụng (Username) và mật khẩu không được mã hoá, Chuyển đổi dữ liệu trên đường truyền, phân tích những lỗi đang mắc phải trên hệ thống lưu lượng của mạng.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Bắt gói tin trên đường truyền, phân tích lỗi và giải mã gói tin', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Bắt gói tin trên đường truyền, mã hóa vag giải mã dữ liệu', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tất cả đều đúng', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Các bước tấn công của Web Server theo trình tự sau :', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Thăm dò, Scan, Giành quyền truy cập, Duy trì truy cập, Xóa vết', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Scan, Thăm dò, Giành quyền truy cập, Duy trì truy cập, Xóa vết', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Thăm dò, Scan, Duy trì truy cập, Giành quyền truy cập, Xóa vết', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Giành quyền truy cập, Duy trì truy cập, Scan, Thăm dò', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Hiện tượng này do loại chương trình nguy hiểm nào gây ra : Làm mất một số file, làm phân mãnh ổ đĩa, gây tác hại vào những ngày, tháng đặc biệt v.v', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Virrus, Zombie', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Worm, Virus', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Logicbomb, Virus', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Trapdoors, Trojan', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Để đánh giá điểm mạnh của hệ thống IDS người ta dựa vào các yếu tố sau :', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Khởi sự, Cách thực hiện, biểu hiện mà nó ghi nhận', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Khởi sự, giám sát v�� trí, những đặc trưng ghép nối hoặc tích hợp', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cách thực hiện, biểu hiện mà nó ghi nhận, những đặc trưng ghép nối hoặc tích hợp', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tất cả đều đúng', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Hai cơ chế chính của hệ thống IDS Trigger để phát hiện khi có một kẻ xâm nhập tấn công mạng là:', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Phát hiện biểu hiện không bình thường, phát hiện sử dụng không đúng', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Phát hiện hiện tượng trùng lặp, phát hiện không bình thường', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Phát hiện thay đổi, phát hiện sử dụng bất bình thường', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tất cả đều đúng', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Mục tiêu là phân tích mật mã là gì?', '', 'Active', 1, 3, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Để xác định thế mạnh của các thuật toán một', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Để tăng cường chức năng thay thế trong một thuật toán mật mã', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Để giảm chức năng transposition trong một thuật toán mật mã', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Để xác định hoán vị sử dụng', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Điều gì sẽ xãy ra khi một thông báo đã được sửa đổi?', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Khoá công cộng đã được thay đổi', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Chìa khóa cá nhân đã được thay đổi', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Thông điệp số đã được thay đổi', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tin nhắn đã được mã hóa đúng cách', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Mã hóa nào sau đây là một tiêu chuẩn dùng để phát triển cho việc tạo ra thông điệp an toàn?', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Data Encryption Standard', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Digital Signature Standard', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Secure Hash Algorithm', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Chữ kí dữ liệu tiêu chuẩn', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nếu kẻ tấn công lấy trộm một mật khẩu có chứa một chiều mật khẩu đã mật mã, loại tấn công, cô sẽ thực hiện để tìm mật khẩu đã mật mã?', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tấn công Man-in-the-middle', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tấn công Birthday', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tấn công Denial of Service', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tấn công Dictionary', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Lợi thế của RSA là gì so với DSS?', '', 'Active', 1, 3, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Nó có thể cung cấp cho chữ ký số và mã hóa các chức năng', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Nó sử dụng nguồn tài nguyên ít hơn và mã hóa nhanh hơn bởi vì nó sử dụng các phím đối xứng', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Nó là một thuật toán mật mã khối so với một thuật toán mật mã dòng', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Nó sử dụng một lần mã hóa pad', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Những gì được sử dụng để tạo ra một chữ ký điện tử?', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Khóa riêng của người nhận', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Khóa công khai của người gửi', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Khóa riêng của người gửi', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Khóa công khai của người nhận', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Phương thức nào sau đây là tốt nhất mô tả một chữ ký điện tử?', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Một phương thức chuyển giao một chữ ký viết tay vào một tài liệu điện tử', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Một phương pháp mã hóa thông tin bí mật', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Một phương pháp để cung cấp một chữ ký điện tử và mã hóa', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Một phương pháp để cho những người nhận của tin nhắn chứng minh nguồn gốc và sự toàn vẹn của một tin nhắn', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Sử dụng nhiêu bit với DES để có hiệu quả?', '', 'Active', 1, 3, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('56', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('64', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('32', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('16', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Các yếu tố ảnh hưởng đến quá trình mã hóa', '', 'Active', 1, 3, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Thuật toán mã hóa, giải mã, và tính an toàn của kênh truyền', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Thời gian thực hiện mã hóa và giải mã', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Thực hiện mã hóa khối, mở rộng số bít xử lý', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tất cả đều sai', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Đối với Firewall lọc gói, hình thức tấn công nào sau đây được thực hiện', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Nhái địa chỉ IP, tấn công giữa, tấn công biên', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Nhái địa chỉ IP, tấn công đường đi nguồn, tấn công từng mẫu nhỏ', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Nhái địa chỉ IP, tấn công vượt firewall,tấn công từng mẫu nhỏ', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Nhái địa chỉ IP, tấn công vượt firewall, tấn công đường đi nguồn', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Ai là người tham gia vào việc phát triển đầu tiên hệ thống mã hóa khóa công?', '', 'Active', 1, 3, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Adi Shamir', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Ross Anderson', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Bruce Schneier', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Martin Hellman', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('DES là viết tắt của từ nào ?', '', 'Active', 1, 3, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Data encryption system', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Data encryption standard', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Data encoding standard', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Data encryption signature', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Các phát biểu sau đây, phát biểu nào tốt nhất mô tả một hacker mũ trắng?', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Chuyên gia bảo mật', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cựu Hacker mũ đen', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cựu Hacker mũ xám', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Hacker hiểm độc', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Giai đoạn đầu của hacking là gì?', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Duy trì truy cập', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Gaining truy cập', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Trinh sát', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Dò tìm (Scanning)', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khi một hacker cố gắng tấn công một máy chủ qua Internet nó được gọi là loại tấn công?', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tấn công từ xa', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tấn công truy cập vật lý', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Truy cập địa phương', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tấn công tấn công nội', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Công cụ nào sau đây đúng là một công cụ để thực hiện footprinting không bị phát hiện?', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Whois search', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Traceroute', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Ping sweep', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Host scanning', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Bước tiếp theo sẽ được thực hiện sau khi footprinting là gì?', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Scanning', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Enumeration', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('System hacking', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Active information gathering', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Footprinting là gì?', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('đo dấu vết của một hacker có đạo đức', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('tích luỹ dữ liệu bằng cách thu thập thông tin về một mục tiêu', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('quét một mạng lưới mục tiêu để phát hiện hệ điều hành các loại', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('sơ đồ bố trí vật lý của một mạng của mục tiêu', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Lý do tốt nhất để thực hiện một chính sách bảo mật là gì?', '', 'Active', 1, 5, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tăng an ninh.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Nó làm cho khó hơn việc thi hành bảo mật', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Hạn chế quyền hạn của nhân viên', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Làm giảm an ninh.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('FTP sử dụng cổng gì ?', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('21', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('25', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('23', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('80', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cổng nào được HTTPS sử dụng?', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('443', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('80', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('53', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('21', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Trojan Horse là gì?', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('một chương trình độc hại mà lấy cắp tên người dùng và mật khẩu của bạn', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('gây hại như mã giả mạo hoặc thay thế mã hợp pháp', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Một người sử dụng trái phép những người thu truy cập vào cơ sở dữ liệu người dùng của bạn và cho biết thêm mình như một người sử dụng', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Một máy chủ đó là phải hy sinh cho tất cả các hacking nỗ lực để đăng nhập và giám sát các hoạt động hacking', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('John muốn cài đặt một ứng dụng mới vào máy chủ của Windows 2000. Ông muốn đảm bảo rằng các ứng dụng bất kỳ ông sử dụng chưa được cài Trojan. Ông có thể làm gì để giúp đảm bảo điều này?', '', 'Active', 1, 3, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('So sánh chữ ký MD5 của tập tin với một trong những công bố trên các phương tiện truyền thông phân tán', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Xin các ứng dụng thông qua SSL', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('So sánh chữ ký virus của file với một trong những công bố trên các phương tiện truyền thông', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cài đặt các ứng dụng từ đĩa CD-ROM', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Hầu hết các lỗi SQL Injection đều là do (chọn 2 phương án)', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('câu lệnh SQL sai', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('trình duyệt Web không hỗ trợ', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('User làm cho câu lệnh SQL sai', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Sử dụng Hệ quản trị CSDL không có bản quyền', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Chính sách bảo mật là', '', 'Active', 1, 5, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cơ chế mặc định của hệ điều hành', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('phương thức xác định các hành vi “phù hợp” của các đối tượng tương tác với hệ thống', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('các tập luật được xây dựng nhằm bảo vệ các tấn công bất hợp pháp từ bên ngoài', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tất cả đều đúng', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Các loại mục tiêu của chiến tranh thông tin', '', 'Active', 1, 2, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Website, E-commerce server', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Internet Relay Chat (IRC), Domain Name System (DNS)', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('ISP, Email server', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tất cả đều đúng', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khi thực hiện triển khai HIDS khó khăn gặp là', '', 'Active', 1, 4, 4);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Chi phí lắp đặt cao, khó bảo quản và duy trì', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Giới hạn tầm nhìn mạng, phải xử lí với nhiều hệ điều hành khác trên mạng.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Thường xuyên phải cập nhật bảng vá lỗi', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Thường xuyên cài đặt lại phải khi hệ thống mạng thay đổi hệ điều hành', 0, @last_question_id);

