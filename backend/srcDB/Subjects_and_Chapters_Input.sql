USE p_gen;

-- =============================================================
-- 1. TƯ TƯỞNG HỒ CHÍ MINH
-- =============================================================
INSERT INTO subjects (subject_name, description, status) 
VALUES ('Tư tưởng Hồ Chí Minh', 'Hệ thống quan điểm toàn diện và sâu sắc về những vấn đề cơ bản của cách mạng Việt Nam','Active');

SET @last_subject_id = LAST_INSERT_ID();

INSERT INTO chapters (chapter_name, order_index, subject_id,status) VALUES 
('Chương 1: Khái niệm, đối tượng, phương pháp nghiên cứu và ý nghĩa học tập môn Tư tưởng Hồ Chí Minh', 1, @last_subject_id,'Active'),
('Chương 2: Cơ sở, quá trình hình thành và phát triển Tư tưởng Hồ Chí Minh', 2, @last_subject_id,'Active'),
('Chương 3: Tư tưởng Hồ Chí Minh về độc lập dân tộc và chủ nghĩa xã hội', 3, @last_subject_id,'Active'),
('Chương 4: Tư tưởng Hồ Chí Minh về Đảng Cộng sản Việt Nam và Nhà nước của dân, do dân, vì dân', 4, @last_subject_id,'Active'),
('Chương 5: Tư tưởng Hồ Chí Minh về đại đoàn kết toàn dân tộc và đoàn kết quốc tế', 5, @last_subject_id,'Active');

-- =============================================================
-- 2. MẠNG MÁY TÍNH
-- =============================================================
INSERT INTO subjects (subject_name, description, status) 
VALUES ('Mạng máy tính', 'Kiến thức về kiến trúc phân tầng, các giao thức và vận hành mạng Internet','Active');

SET @last_subject_id = LAST_INSERT_ID();

INSERT INTO chapters (chapter_name, order_index, subject_id,status) VALUES 
('Chương 1: Tổng quan về mạng máy tính và Internet', 1, @last_subject_id,'Active'),
('Chương 2: Tầng ứng dụng (Application Layer)', 2, @last_subject_id,'Active'),
('Chương 3: Tầng giao vận (Transport Layer)', 3, @last_subject_id,'Active'),
('Chương 4: Tầng mạng (Network Layer)', 4, @last_subject_id,'Active'),
('Chương 5: Tầng liên kết dữ liệu và mạng cục bộ (Link Layer and LANs)', 5, @last_subject_id,'Active'),
('Chương 6: Bảo mật mạng máy tính (Network Security)', 6, @last_subject_id,'Active');

-- =============================================================
-- 3. PHÁP LUẬT ĐẠI CƯƠNG
-- =============================================================
INSERT INTO subjects (subject_name, description,status) 
VALUES ('Pháp Luật Đại Cương', 'Kiến thức cơ bản về Nhà nước và hệ thống pháp luật Việt Nam','Active');

SET @last_subject_id = LAST_INSERT_ID();

INSERT INTO chapters (chapter_name, order_index, subject_id,status) VALUES 
('Chương 1: Lý luận chung về nguồn gốc Nhà nước và Pháp luật', 1, @last_subject_id,'Active'),
('Chương 2: Khái quát chung về Nhà nước và Pháp luật Việt Nam', 2, @last_subject_id,'Active'),
('Chương 3: Bộ máy Nhà nước Cộng hòa xã hội chủ nghĩa Việt Nam', 3, @last_subject_id,'Active'),
('Chương 4: Hình thức pháp luật và Hệ thống văn bản quy phạm pháp luật', 4, @last_subject_id,'Active'),
('Chương 5: Vi phạm pháp luật, Trách nhiệm pháp lý và Pháp chế xã hội chủ nghĩa', 5, @last_subject_id,'Active'),
('Chương 6: Chế định về xử lý vi phạm pháp luật và Trách nhiệm pháp lý', 6, @last_subject_id,'Active'),
('Chương 7: Các ngành luật cơ bản trong hệ thống pháp luật Việt Nam', 7, @last_subject_id,'Active');

-- =============================================================
-- 4. AN TOÀN BẢO MẬT HỆ THỐNG THÔNG TIN
-- =============================================================
INSERT INTO subjects (subject_name, description,status) 
VALUES ('An toàn bảo mật hệ thống thông tin', 'Kiến thức về bảo mật, mã hóa, phòng chống tấn công và chính sách an toàn thông tin','Active');

SET @last_subject_id = LAST_INSERT_ID();

INSERT INTO chapters (chapter_name, order_index, subject_id,status) VALUES 
('Chương 1: Tổng quan về an toàn bảo mật hệ thống thông tin', 1, @last_subject_id,'Active'),
('Chương 2: Các dạng tấn công và phần mềm độc hại', 2, @last_subject_id,'Active'),
('Chương 3: Đảm bảo an toàn thông tin dựa trên mã hóa', 3, @last_subject_id,'Active'),
('Chương 4: Các kỹ thuật và công nghệ đảm bảo an toàn thông tin', 4, @last_subject_id,'Active'),
('Chương 5: Quản lý, chính sách và pháp luật an toàn thông tin', 5, @last_subject_id,'Active');

-- =============================================================
-- 5. KINH TẾ CHÍNH TRỊ MÁC - LÊNIN
-- =============================================================
INSERT INTO subjects (subject_name, description,status) 
VALUES ('Kinh tế chính trị Mác - Lênin', 'Nghiên cứu các quan hệ sản xuất và trao đổi trong phương thức sản xuất mà các quan hệ đó hình thành và phát triển','Active');

SET @last_subject_id = LAST_INSERT_ID();

INSERT INTO chapters (chapter_name, order_index, subject_id,status) VALUES 
('Chương 1: Đối tượng, phương pháp nghiên cứu và chức năng của Kinh tế chính trị Mác - Lênin', 1, @last_subject_id,'Active'),
('Chương 2: Hàng hoá, thị trường và vai trò của các chủ thể tham gia thị trường', 2, @last_subject_id,'Active'),
('Chương 3: Giá trị thặng dư trong nền kinh tế thị trường', 3, @last_subject_id,'Active'),
('Chương 4: Cạnh tranh và độc quyền trong nền kinh tế thị trường', 4, @last_subject_id,'Active'),
('Chương 5: Kinh tế thị trường định hướng xã hội chủ nghĩa và các quan hệ lợi ích kinh tế ở Việt Nam', 5, @last_subject_id,'Active'),
('Chương 6: Công nghiệp hoá, hiện đại hoá và hội nhập kinh tế quốc tế của Việt Nam', 6, @last_subject_id,'Active');

-- =============================================================
-- 6. CƠ SỞ DỮ LIỆU
-- =============================================================
INSERT INTO subjects (subject_name, description,status) 
VALUES ('Cơ sở dữ liệu', 'Kiến thức về kiến trúc hệ CSDL, các mô hình dữ liệu, ngôn ngữ SQL và tư duy thiết kế hệ thống dữ liệu quan hệ','Active');

SET @last_subject_id = LAST_INSERT_ID();

INSERT INTO chapters (chapter_name, order_index, subject_id,status) VALUES 
('Chương 1: Đại cương về các hệ cơ sở dữ liệu', 1, @last_subject_id,'Active'),
('Chương 2: Mô hình dữ liệu', 2, @last_subject_id,'Active'),
('Chương 3: Ngôn ngữ định nghĩa và thao tác dữ liệu', 3, @last_subject_id,'Active'),
('Chương 4: Lý thuyết thiết kế cơ sở dữ liệu quan hệ', 4, @last_subject_id,'Active');
