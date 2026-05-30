SET NAMES 'utf8mb4';

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khái niệm “Tư tưởng Hồ Chí Minh” không bao gồm nội dung nào sau', '', 'Active', 1, 1, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Hệ thống các quan điểm lý luận, phản ánh những vấn đề có tính quy luật của cách mạng Việt Nam.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Nguồn gốc tư tưởng, lý luận của tư tưởng Hồ Chí Minh: chủ nghĩa Mác – Lênin; giá trị văn hoá dân tộc, tinh hoa văn hoá nhân loại.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Nội dung cơ bản nhất của tư tưởng Hồ Chí Minh, bao gồm những vấn đề có liên quan trực tiếp đến cách mạng Việt Nam. Tư tưởng Hồ Chí Minh soi đường thắng lợi cho cách mạng Việt Nam, tài sản tinh thần to lớn của Đảng và dân tộc.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Bao gồm những vấn đề có liên quan đến cách mạng thế giới, tài sản tinh thần cho cách mạng thế giới', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Điền vào chỗ trống trong Văn kiện Đại hội lần thứ VI của Đảng Cộng sản Việt Nam (1986): “Muốn đổi mới tư duy, Đảng phải nắm vững bản chất cách mạng và khoa học của chủ nghĩa Mác – Lênin, kế thừa di sản quý báu về ……. của Hồ Chí Minh”:', '', 'Active', 1, 1, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Lý luận và đường lối chính trị.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tư tưởng và đường lối chính trị.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tư tưởng và lý luận cách mạng.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Lý luận và thực tiễn cách mạng.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khái niệm “Tư tưởng Hồ Chí Minh” lần đầu tiên được Đảng Cộng sản Việt Nam đưa ra tại đại hội lần thứ mấy?', '', 'Active', 1, 1, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đại hội lần thứ VI (1986).', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đại hội lần thứ VII (1991).', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đại hội lần thứ VIII (1996).', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đại hội lần thứ IX (2001).', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Đảng Cộng sản Việt Nam khẳng định: Tư tưởng Hồ Chí Minh “là tài sản tinh thần vô cùng to lớn và quý giá của Đảng và dân tộc ta, mãi mãi soi đường cho sự nghiệp cách mạng của nhân dân ta giành thắng lợi” là tại Đại hội lần thứ mấy?', '', 'Active', 1, 1, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đại hội Đảng lần thứ IX (2001).', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đại hội Đảng lần thứ VII (1991).', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đại hội Đảng lần thứ XI (2011).', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đại hội Đảng lần thứ VI (1986).', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Đối tượng nghiên cứu của môn học tư tưởng Hồ Chí Minh là:', '', 'Active', 1, 1, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Nghiên cứu cuộc đời, sự nghiệp của Chủ tịch Hồ Chí Minh.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Nghiên cứu hệ thống quan điểm, quan niệm, lý luận về cách mạng Việt Nam của Hồ Chí Minh.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Nghiên cứu kết quả vận dụng, phát triển sáng tạo tư tưởng Hồ Chí Minh của Đảng Cộng sản Việt Nam qua các giai đoạn cách mạng.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Nghiên cứu những đánh giá của các danh nhân trên thế giới về Hồ Chí Minh.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('“Tư tưởng Hồ Chí Minh là một hệ thống quan điểm toàn diện và sâu sắc về những vấn đề cơ bản của cách mạng Việt Nam”. Những vấn đề cơ bản của cách mạng Việt Nam là:', '', 'Active', 1, 1, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Lực lượng cách mạng.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Phương pháp cách mạng.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mục tiêu, nhiệm vụ cách mạng.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cả ba phương án kia đều đúng.', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Năm 1970, Đảng Cộng sản Việt Nam đưa ra khẩu hiệu tuyên truyền, cổ động về tư tưởng, tấm gương đạo đức Hồ Chí Minh là:', '', 'Active', 1, 1, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Toàn Đảng hãy ra sức học tập đường lối chính trị, tác phong và đạo đức cách mạng của Hồ Chủ tịch.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Toàn Đảng, toàn dân thực hiện cần, kiệm, liêm, chính, chí công, vô tư theo tấm gương của Chủ tịch Hồ Chí Minh vĩ đại.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Sống và làm việc theo gương Bác Hồ vĩ đại.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Sống, chiến đấu, lao động và học tập theo gương Bác Hồ vĩ đại.', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tại Đại hội lần thứ VII (1991), Đảng Cộng sản Việt Nam đã khẳng định Tư tưởng Hồ Chí Minh là:', '', 'Active', 1, 1, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tài sản tinh thần quý báu của Đảng.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tài sản tinh thần quý báu của Đảng và của nhân dân ta.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tài sản tinh thần quý báu của Đảng, dân tộc và nhân dân ta.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tài sản tinh thần quý báu của Đảng và của dân tộc.', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Phương pháp luận nghiên cứu tư tưởng Hồ Chí Minh là:', '', 'Active', 1, 1, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Thống nhất tính Đảng và tính khoa học.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Thống nhất lý luận và thực tiễn.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Quan điểm lịch sử - cụ thể; quan điểm toàn diện và hệ thống.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cả ba phương án kia đều đúng.', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khái niệm “Tư tưởng Hồ Chí Minh là kết quả của sự vận dụng sáng tạo chủ nghĩa Mác - Lênin vào điều kiện cụ thể của nước ta và trong thực tế, tư tưởng Hồ Chí Minh đã trở thành một tài sản tinh thần quý báu của Đảng và của dân tộc” được nêu ra ở Đại hội lần thứ mấy của Đảng Cộng sản Việt Nam?', '', 'Active', 1, 1, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đại hội lần thứ VI (1986).', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đại hội lần thứ VII (1991).', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đại hội lần thứ IX (2001).', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đại hội lần thứ XI (2011).', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Đại hội lần thứ XI của Đảng Cộng sản Việt Nam khẳng định: Tư tưởng Hồ Chí Minh là "một hệ thống quan điểm toàn diện và sâu sắc về những vấn đề cơ bản của cách mạng Việt Nam". Đây là:', '', 'Active', 1, 1, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Nội dung của tư tưởng Hồ Chí Minh.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Nguồn gốc của tư tưởng Hồ Chí Minh.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Giá trị của tư tưởng Hồ Chí Minh.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cả ba phương án kia đều đúng.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Đại hội lần thứ XI của Đảng khẳng định: Tư tưởng Hồ Chí Minh là "kết quả của sự vận dụng và phát triển sáng tạo chủ nghĩa Mác - Lênin vào điều kiện cụ thể của nước ta, kế thừa và phát triển các giá trị truyền thống tốt đẹp của dân tộc, tiếp thu tinh hoa văn hóa nhân loại". Đây là:', '', 'Active', 1, 1, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Nguồn gốc lý luận của tư tưởng Hồ Chí Minh.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Nội dung của tư tưởng Hồ Chí Minh.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Bản chất của tư tưởng Hồ Chí Minh.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Giá trị của tư tưởng Hồ Chí Minh.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Đại hội lần thứ XI của Đảng khẳng định: Tư tưởng Hồ Chí Minh là "là tài sản tinh thần vô cùng to lớn và quý giá của Đảng và dân tộc ta, mãi mãi soi đường cho sự nghiệp cách mạng của nhân dân ta giành thắng lợi". Đây là:', '', 'Active', 1, 1, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Nội dung của tư tưởng Hồ Chí Minh.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Giá trị của tư tưởng Hồ Chí Minh.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Nguồn gốc của tư tưởng Hồ Chí Minh.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nghị quyết số 24C/18.65 về Kỷ niệm 100 năm Ngày sinh của Chủ tịch Hồ Chí Minh của UNESCO đã ghi nhận Chủ tịch Hồ Chí Minh là:', '', 'Active', 1, 1, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('"Anh hùng giải phóng dân tộc và nhà văn hoá kiệt xuất của Việt Nam".', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('"Anh hùng giải phóng dân tộc và nhà văn hoá kiệt xuất của thế giới".', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('"Anh hùng giải phóng dân tộc và nhà văn hoá của Việt Nam".', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('"Anh hùng giải phóng dân tộc và nhà văn hoá của thế giới".', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Ý nghĩa của việc học tập môn học Tư tưởng Hồ Chí Minh là:', '', 'Active', 1, 1, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Góp phần nâng cao năng lực tư duy lý luận.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Củng cố niềm tin khoa học gắn với trau dồi tình cảm cách mạng, bồi dưỡng lòng yêu nước.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Xây dựng, rèn luyện phương pháp và phong cách công tác.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cả ba phương án kia đều đúng', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Phương pháp luận nào của việc nghiên cứu tư tưởng Hồ Chí Minh đã yêu cầu, khi nghiên cứu tư tưởng Hồ Chí Minh phải luôn luôn quán triệt mối liên hệ qua lại của các yếu tố, các bộ phận khác nhau trong sự gắn kết tất yếu của hệ thống tư tưởng đó xung quanh hạt nhân cốt lõi là tư tưởng độc lập, tự do, dân chủ và chủ nghĩa xã hội?', '', 'Active', 1, 1, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Thống nhất lý luận và thực tiễn.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Quan điểm lịch sử - cụ thể.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Quan điểm toàn diện và hệ thống.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Quan điểm kế thừa và phát triển.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Đối tượng nào trong chỗ trống ở đoạn viết sau của Hồ Chí Minh: “Cuối thế kỷ XIX chủ nghĩa đế quốc Pháp xâm lược Việt Nam. Bọn ….. đê tiện và hèn nhát đầu hàng và câu kết với bọn đế quốc để tiếp tục nô dịch nhân dân Việt Nam nhiều hơn”.', '', 'Active', 1, 1, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Vua quan.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Phong kiến.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Vua quan và phong kiến.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Phong kiến và địa chủ.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cuộc cách mạng nào được Hồ Chí Minh đánh giá là “ảnh hưởng đến Việt Nam như tiếng sấm vang trong đêm tối”?', '', 'Active', 1, 1, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Công xã Pari ở Pháp năm 1871.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cách mạng Tân Hợi ở Trung Quốc năm 1911.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cách mạng Tháng Tám ở Việt Nam năm 1945.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cách mạng Tháng Mười ở Nga năm 1917.', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nhận định sau đây của Chủ tịch Hồ Chí Minh trong tác phẩm nào: “Toàn Đảng, toàn dân ta đoàn kết phấn đấu, xây dựng một nước Việt Nam hòa bình, thống nhất, độc lập, dân chủ và giàu mạnh, và góp phần xứng đáng vào sự nghiệp cách mạng thế giới”?', '', 'Active', 1, 1, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Di chúc (1965-1969).', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Ba mươi năm hoạt động của Đảng (1960).', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đạo đức cách mạng (1958).', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đường cách mệnh (1927).', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Chọn đáp án đúng nhất: Tư tưởng Hồ Chí Minh ra đời đã đáp ứng yêu cầu bức thiết của:', '', 'Active', 1, 1, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cách mạng Việt Nam.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cách mạng thế giới.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Bản thân Hồ Chí Minh.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cả ba phương án kia đều đúng.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Lô-gíc phát triển của tư tưởng Hồ Chí Minh là:', '', 'Active', 1, 1, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Giải phóng dân tộc, giải phóng giai cấp, giải phóng con người.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Giải phóng xã hội, giải phóng dân tộc, giải phóng con người.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Giải phóng xã hội, giải phóng con người, giải phóng dân tộc.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Giải phóng con người, giải phóng dân tộc, giải phóng xã hội.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Theo Hồ Chí Minh, ưu điểm lớn nhất của chủ nghĩa Mác là gì?', '', 'Active', 1, 1, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Phương pháp làm việc biện chứng.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Bản chất cách mạng.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Chủ nghĩa nhân đạo triệt để.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Bản chất khoa học.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tính chất, đặc điểm của đại từ “Nó” trong câu sau được Hồ Chí Minh dùng để chỉ đối tượng nào: “Nó dùng những người vô sản da trắng để chinh phục những người vô sản các thuộc địa. Sau đó nó lại tung những người vô sản ở một thuộc địa này đi đánh những người vô sản ở một thuộc địa khác. Sau hết, nó dựa vào những người vô sản ở các thuộc địa để thống trị những người vô sản da trắng”:', '', 'Active', 1, 1, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Chủ nghĩa đế quốc.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Chủ nghĩa thực dân.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Chủ nghĩa tư bản.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Chủ nghĩa phát-xít.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('“Đuổi hổ cửa trước, rước beo cửa sau” là nhận xét của Hồ Chí Minh về chủ trương cứu nước của nhà yêu nước nào?', '', 'Active', 1, 1, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Phan Bội Châu.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Phan Chu Trinh.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Hoàng Hoa Thám.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Nguyễn Thái Học.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('“Mang nặng cốt cách phong kiến” là nhận xét của Hồ Chí Minh về chủ trương cứu nước của nhà yêu nước nào?', '', 'Active', 1, 1, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Hoàng Hoa Thám.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Phan Chu Trinh.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Phan Bội Châu.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Nguyễn Thái Học.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Hồ Chí Minh đã tiếp xúc với “Sơ thảo lần thứ nhất những luận cương về vấn đề dân tộc và vấn đề thuộc địa” của Lênin năm nào?', '', 'Active', 1, 1, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Năm 1920.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Năm 1919.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Năm 1918.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Năm 1917.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Các bài giảng của Hồ Chí Minh tại các lớp huấn luyện cán bộ được Bộ tuyên truyền của Hội Liên hiệp các dân tộc bị áp bức tập hợp lại và xuất bản thành tác phẩm gì?', '', 'Active', 1, 1, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đường cách mệnh (1927).', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Lênin và Phương Đông (1926).', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Con rồng tre (1922).', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Bản án chế độ thực dân Pháp (1925).', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Hồ Chí Minh đã tiếp thu giá trị tích cực nào của văn hóa phương Tây?', '', 'Active', 1, 1, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Giá trị về quyền sống, quyền tự do và quyền mưu cầu hạnh phúc.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tư tưởng vị tha, từ bi, bác ái.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Triết lý nhân sinh, tu thân, tề gia.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tư tưởng dân tộc độc lập, dân quyền tự do, dân sinh hạnh phúc.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tư tưởng Hồ Chí Minh đối với sự phát triển cách mạng thế giới:', '', 'Active', 1, 1, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Phản ánh khát vọng thời đại.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tìm ra các giải pháp đấu tranh giải phóng các nước thuộc địa.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cổ vũ các dân tộc đấu tranh vì những mục tiêu cao cả.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cả ba phương án kia đều đúng.', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Hồ Chí Minh thành lập “Hội Liên hiệp các dân tộc bị áp bức” năm nào? Tại đâu?', '', 'Active', 1, 1, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Năm 1925, tại Quảng Châu (Trung Quốc).', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Năm 1923, tại Mátxcơva (Liên Xô)', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Năm 1926, tại Xiêm (Thái Lan).', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Năm 1920, tại Paris (Pháp).', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Hồ Chí Minh đã thành lập "Hội Việt Nam Thanh niên Cách mạng" năm nào? Tại đâu?', '', 'Active', 1, 1, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Năm 1925, tại Quảng Châu (Trung Quốc)', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Năm 1923, tại Mátxcơva (Liên Xô).', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Năm 1924, tại Hương Cảng (Trung Quốc)', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Năm 1920, tại Paris (Pháp).', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khẩu hiệu chiến lược nổi tiếng “Lao động tất cả các nước, đoàn kết lại” là của ai?', '', 'Active', 1, 1, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mác.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('J. Stalin.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('V.I. Lênin.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Hồ Chí Minh.', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Theo Hồ Chí Minh, ai là người đầu tiên đã đặt cơ sở cho một thời đại mới, thật sự cách mạng trong các nước thuộc địa?', '', 'Active', 1, 1, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mác.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('V.I. Lênin.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Hô-xê-mác-ti.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mác và Ph. Ăngghen.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cơ sở khách quan hình thành tư tưởng Hồ Chí Minh?', '', 'Active', 1, 1, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Xã hội Việt Nam nửa cuối thế kỷ XIX, đầu thế kỷ XX.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Chủ nghĩa tư bản chuyển từ giai đoạn tự do cạnh tranh sang giai đoạn độc quyền (Chủ nghĩa đế quốc).', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cách mạng vô sản Nga (1917) thắng lợi và Quốc tế Cộng sản thành lập (3/1919).', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cả ba phương án kia đều đúng.', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Xã hội Việt Nam khi Hồ Chí Minh ra đi tìm đường cứu nước (1911) là xã hội:', '', 'Active', 1, 1, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Thuộc địa phong kiến.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Phong kiến.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tư bản chủ nghĩa.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Xã hội chủ nghĩa', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Theo Hồ Chí Minh, ưu điểm lớn nhất của chủ nghĩa Tam dân của Tôn Trung Sơn là gì?', '', 'Active', 1, 1, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Phù hợp với điều kiện thực tế nước ta.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Chống phong kiến.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đấu tranh vì tự do, dân chủ.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tư tưởng hòa bình.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tư tưởng yêu nước và chí hướng cách mạng của Hồ Chí Minh hình thành trong thời kỳ nào?', '', 'Active', 1, 1, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Trước 1911.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('1911 - 1920.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('1920 - 1930.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('1930 - 1945.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Hồ Chí Minh khảo nghiệm và tìm thấy con đường cứu nước, giải phóng dân tộc trong thời kỳ nào?', '', 'Active', 1, 1, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('1911 - 1920.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('1890 - 1911.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('1920 - 1930.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('1930 - 1945. nào?', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Thời kỳ phát triển và hoàn thiện tư tưởng Hồ Chí Minh là thời gian', '', 'Active', 1, 1, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('1911 - 1920', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('1921 - 1930.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('1930 - 1945.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('1945 - 1969.', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Hồ Chí Minh ra nước ngoài tìm đường cứu nước vào thời gian nào? Tại đâu?', '', 'Active', 1, 1, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Ngày 5/6/1911, tại Bến cảng Nhà Rồng.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Ngày 15/6/1911, tại Bến cảng Nhà Rồng.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Ngày 25/6/1911, tại Bến cảng Nhà Rồng.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Ngày 6/5/1911, tại Bến cảng Nhà Rồng.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Câu nói: “Quan trường thị nô lệ trung chi nô lệ, hựu nô lệ” là của ai?', '', 'Active', 1, 1, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Nguyễn Sinh Sắc.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Phan Châu Trinh.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Phan Bội Châu.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Vương Thúc Qúy.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Sau những năm tháng bôn ba tìm đường cứu nước, Hồ Chí Minh đã trở về Việt Nam vào thời gian nào? Tại đâu?', '', 'Active', 1, 1, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Ngày 28/01/1941, tại Cao Bằng.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Ngày 02/9/1945, tại Bắc Kạn.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Ngày 06/6/1931, tại Thái Nguyên.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Ngày 08/3/1943, tại Tuyên Quang.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tác phẩm nào sau đây của Hồ Chí Minh xuất bản vào năm 1925?', '', 'Active', 1, 1, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Bản án chế độ thực dân Pháp.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đường cách mệnh.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Lênin và Phương Đông.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Con rồng tre.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tác phẩm nào sau đây của Hồ Chí Minh được xuất bản vào năm 1927?', '', 'Active', 1, 1, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đường cách mệnh.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Bản án chế độ thực dân Pháp.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Con rồng tre.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đạo đức cách mạng.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Hồ Chí Minh dạy học ở trường Dục Thanh thời gian nào?', '', 'Active', 1, 1, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Từ 9/1910 đến 2/1911.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Từ 9/1910 đến 5/1911.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Từ 9/1910 đến 4/1911.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Từ 9/1908 đến 9/1909.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Trong thời gian ở nước ngoài, Hồ Chí Minh đã làm những công việc', '', 'Active', 1, 1, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Phụ bếp, cào tuyết, thợ ảnh, làm bánh, đốt lò, bán báo.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Dạy học, phiên dịch, dẫn chương trình, diễn viên, nội trợ', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Người mẫu ảnh, thợ xây, kỹ sư.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Diễn viên, thợ kim hoàn, phụ hồ, giảng viên.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tại Pác Bó (1941), Hồ Chí Minh dịch ra tiếng Việt cuốn sách nào để làm tài liệu huấn luyện cán bộ?', '', 'Active', 1, 1, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Lịch sử Đảng Cộng sản (b) Nga.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tư Bản.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đội du kích bí mật.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Chiến tranh và hoà bình.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Hồ Chí Minh đã tham dự cuộc biểu tình chống thuế của nông dân tỉnh Thừa Thiên vào thời gian nào?', '', 'Active', 1, 1, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tháng 5/1908.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tháng 5/1906.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tháng 5/1905.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tháng 5/1911.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Hồ Chí Minh ủng hộ phái tả trong Đảng Xã hội Pháp gia nhập Quốc tế III và trở thành một trong những người sáng lập Đảng Cộng sản Pháp, đồng thời là người đảng viên cộng sản đầu tiên của Việt Nam năm nào?', '', 'Active', 1, 1, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Năm 1917.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Năm 1918.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Năm 1919.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Năm 1920.', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nhận định sau đây về Hồ Chí Minh là của ai: “Con người thanh niên mảnh khảnh và đầy sức sống này có thể là người sẽ đặt cây thập tự cáo chung lên nền thống trị của chúng ta ở Đông Dương”?', '', 'Active', 1, 1, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Paul Doumer (Toàn quyền Pháp tại Đông Dương (1897-1902)).', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Vua Khải Định (Vua xứ Annam thuộc Pháp (1916-1925)).', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tsuchihashi (Toàn quyền Nhật Bản tại Đông Dương (1944-1945)).', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Paul Arnoux (Trưởng Ban Đông Dương - Sở Mật thám Pháp).', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tất cả các dân tộc trên thế giới đều sinh ra bình đẳng,dân tộc nào cũng có quyền sống, quyền sung sướng và quyền tự do''''.Câu nói được trích từ tác phẩm nào của Hồ Chí Minh?', '', 'Active', 1, 1, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Bản án chế độ thực dân Pháp', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Chính cương sách lược vắn tắt', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tuyên ngôn độc lập', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đường cách mệnh', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Giá trị của bản Tuyên ngôn độc lập của nước Việt Nam mới được các tác giả giáo trình tư tưởng Hồ Chí Minh đánh giá là', '', 'Active', 1, 1, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Có giá trị bình thường', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Có giá trị lịch sử to lớn', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Có giá trị lịch sử đặc biệt', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Là bản thiên cổ hùng văn', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Đường lối kháng chiến mà chủ tịch Hồ Chí Minh vạch ra là gì?', '', 'Active', 1, 1, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Vừa kháng chiến,vừa kiến quốc', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Kháng chiến toàn dân,toàn diện', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Kháng chiến trường kỳ và tự lực cánh sinh', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cả 3 vấn đề trên', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Thực chất của vấn đề dân tộc thuộc địa trong tư tưởng Hồ Chí Minh là gì?', '', 'Active', 1, 1, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đòi quyền bình đẳng giữa các dân tộc', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đòi quyền tự do dân chủ cho nhân dân', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đòi quyền tự trị dân tộc dưới sự bảo hộ của ngoại bang', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đấu tranh giải phóng dân tộc,thành lập nhà nước dân tộc độc lập,trong đó nhân dân là chủ thể tối cao của quyền lực nhà nước', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Theo Nguyễn Ái Quốc,cách mạng giải phóng dân tộc trong thời đại mới muốn giành được thắng lợi phải đi theo?', '', 'Active', 1, 1, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Con đường cứu nước mà những bậc tiền bối đã đi', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Con đường giành độc lập của người Mỹ', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Con đường giành độc lập của nhân dân Ấn Độ', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Con đường cách mạng vô sản', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cách mạng giải phóng dân tộc trong thời đại mới muốn giành được thắng lợi phải do', '', 'Active', 1, 1, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Giai cấp tư sản lãnh đạo', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Phải do một cá nhân xuất chúng lãnh đạo', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Do tầng lớp trí thức lãnh đạo', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Phải do Đảng Cộng sản lãnh đạo', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cách mạng giải phóng dân tộc là sự nghiệp đoàn kết của?', '', 'Active', 1, 1, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Giai cấp công nhân với tầng lớp giai cấp nông dân', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Giai cấp công nhân với tầng lớp tri thức', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Giai cấp công nhân với nhà công thương giàu có', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Của toàn dân trên cơ sở liên minh của giai cấp công nhân với giai cấp nông dân và trí thức', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cách mạng giải phóng dân tộc muốn giành được thắng lợi, cần phải', '', 'Active', 1, 1, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Được tiến hành 1 cách chủ động và sáng tạo', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Dựa vào các nước có nền kinh tế phát triển cao', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Dựa vào thắng lợi của cách mạng ở chính quốc', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Dựa vào thắng lợi của cách mạng ở các nước thuộc địa khác', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Biện pháp hàng đầu để thắng lợi trong cách mạng dân tộc phải', '', 'Active', 1, 1, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Dựa vào bạo lực vũ trang thuần túy', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Dùng phương pháp đàm phán hòa bình', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Kêu gọi quân đội nước ngoài trợ giúp', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Sử dụng bạo lực cách mạng,kết hợp bạo lực chính trị của quần chúng với bạo lực vũ trang', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Theo tư tưởng Hồ Chí Minh,lực lượng giải phóng dân tộc,giải phóng giai cấp,giải phóng con người là', '', 'Active', 1, 1, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đảng Cộng sản', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Các lực lượng cách mạng thế giới', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Khối đại đoàn kết dân tộc mà nòng cốt là liên minh công nông trí thức', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tất cả các lực lượng trên', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Theo Hồ Chí Minh,ai là người đầu tiên đặt cơ sở cho thời đại mới,thật sự cách mạng trong các nước thuộc địa', '', 'Active', 1, 1, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('C.Mac', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Lenin', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Hoxemacti', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mao Trạch Đông', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cách mạng là phá cái cũ đổi ra cái mới,cái xấu đổi ra cái tốt''''.Câu trên được trích từ tác phẩm nào của Hồ Chí MInh?', '', 'Active', 1, 1, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Sửa đổi lề lối làm việc', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Bản án chế đô thực dân Pháp', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đường Cách mệnh', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đạo đức cách mạng', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Công-nông là cái gốc cách mạng,còn học trò,nhà buôn nhỏ,điền chủ nhỏ... là bầu bạn của cách mạng công-nông''''.Câu trên được trích từ tác phẩm nào của Nguyễn Ái Quốc?', '', 'Active', 1, 1, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Thư gửi ủy ban hành chính các kỳ,bộ.tổng và làng', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Thư gửi đồng bào Nam Bộ', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Sửa đổi lề lối làm việc', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đường Cách mệnh', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Câu ''''Chủ trương làm việc tư sản dân quyền cách mạng và thổ địa cách mạng để đi tới một xã hội cộng sản'''' trích từ văn kiện nào?', '', 'Active', 1, 1, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đường Cách mệnh', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Chánh cương sách lược vắn tắt', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Chương trình tóm tắt của Đảng', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Chương trình của mặt trận Việt Minh', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Trong lúc này,quyền lợi của dân tộc là cao hơn hết thẩy'''', kết luận trên là nội dung của hội nghị nào của ban chấp hành TW Đảng Cộng Sản Đông Dương do Nguyễn Ái Quốc chủ trì?', '', 'Active', 1, 1, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Hội nghị TW 6 (1939)', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Hội nghị TW 7 (1940)', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Hội nghị TW 8 (1941)', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Hội nghị toàn quốc của Đảng(8/1945)', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Hỡi đồng bào yêu quý! Giờ quyết định vận mệnh của dân tộc ta đã đến,toàn quốc đồng bào hãy đứng dậy,đem sức ta mà giải phóng cho ta''''.Lời kêu gọi trên được trích trong tác phẩm nào?', '', 'Active', 1, 1, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Quân lệnh số một của Ủy ban khởi nghĩa toàn quốc', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Lời kêu gọi toàn quốc kháng chiến của chủ tịch Hồ Chí Minh', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Hiệu triệu tổng khởi nghĩa', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tuyên ngôn độc lập', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Bác Hồ căn dặn bộ đội '''' Ngày xưa,các vua Hùng đã có công dựng nước.Ngày nay,Bác cháu ta phải cùng nhau giữ lấy nước''''. Đó là lời bác dặn dò đơn vị nào trước khi vào tiếp quản thủ đô?', '', 'Active', 1, 1, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đại đoàn 312', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đại đoàn 320', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đại đoàn quân tiên phong', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đơn vị bộ đội bảo vệ Bác', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Chân lý '''' không có gì quý hơn độc lập,tự do'''' được Bác khẳng định nhân sự kiện lịch sử nào diễn ra lúc đó?', '', 'Active', 1, 1, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cách mạng tháng 8 thành công', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Bác Hồ và chính phủ từ chiến khu trở về Hà Nội', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đế quốc Mĩ leo thang đánh phá miền Bắc nhằm đưa nước ta trở về thời kỳ đồ đá', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Kỷ niệm 20 năm ngày cách mạng tháng 8 thắng lợi ở Hà Nội', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Chọn phương án trả lời đúng với tư tưởng Hồ Chí Minh', '', 'Active', 1, 1, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cách mạng giải phóng dân tộc giành thắng lợi đồng thời với cách mạng vô sản ở chính quốc', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cách mạng giải phóng dân tộc giành thằng lợi sau cách mạng vô sản ở chính quốc', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cách mạng giải phóng dân tộc có khả năng giành thắng lợi trước cách mạng vô sản ở chính quốc', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Thắng lợi của cách mạng giải phóng dân tộc phụ thuộc vào thắng lợi của cách mạng vô sản ở chính quốc', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Hồ Chí Minh đã dùng hình ảnh nào dưới đây để chỉ chủ nghĩa tư bản?', '', 'Active', 1, 1, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Con bạch tuộc', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Con rồng tre', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Con đỉa 2 vòi', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Con voi', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Ai là người có công lớn giúp Hồ Chí Minh thoát ra khỏi nhà tù của thực dân Anh ở Hồng Kông (1931 - 1933)?', '', 'Active', 1, 2, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Luật sư Francis Henry Loseby.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tống Khánh Linh.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Thống đốc Hồng Kông William Peel.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tổ chức Cứu tế Đỏ quốc tế (Quốc tế Cộng sản).', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Chủ tịch Hồ Chí Minh thay mặt Chính phủ tặng đồng bào miền Nam danh hiệu gì vào tháng 12/1946?', '', 'Active', 1, 2, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Sản xuất giỏi.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Thành đồng Tổ quốc.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Kháng chiến anh dũng.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cả ba phương án kia đều đúng.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('“Di chúc” của Hồ Chí Minh bắt đầu được viết vào thời gian nào?', '', 'Active', 1, 2, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('10/4/1965.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('15/5/1969.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('20/6/1969.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('10/5/1965.', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cống hiến lý luận lớn đầu tiên của Hồ Chí Minh là:', '', 'Active', 1, 2, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Về cách mạng giải phóng dân tộc.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Về cách mạng ruộng đất.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Về cách mạng dân chủ.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Về cách mạng văn hóa. là:', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Thực chất của vấn đề dân tộc thuộc địa trong tư tưởng Hồ Chí Minh', '', 'Active', 1, 2, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Lựa chọn con đường phát triển của dân tộc.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đấu tranh chống chủ nghĩa thực dân, giải phóng dân tộc.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cả hai đáp án kia đều sai.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cả hai đáp án kia đều đúng.', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Hồ Chí Minh chủ trương đứng trên lập trường, quan điểm của giai cấp nào để giải phóng dân tộc?', '', 'Active', 1, 2, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Nông dân.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Công nhân.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tư sản.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Địa chủ.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nguyên tắc phân phối theo lao động thời kỳ quá độ lên chủ nghĩa xã hội ở Việt Nam được Hồ Chí Minh giải thích là:', '', 'Active', 1, 2, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tất cả mọi người đều phải tích cực lao động, sản phẩm xã hội được chia đều.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Làm theo năng lực, hưởng theo nhu cầu.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Ai làm nhiều thì ăn nhiều, ai làm ít thì ăn ít, ai không làm thì không ăn…', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Làm theo năng lực, hưởng theo trách nhiệm được giao.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Trong tác phẩm “Thường thức chính trị”, khi nói về những đặc điểm lớn của chủ nghĩa xã hội, Hồ Chí Minh giải thích nguyên nhân khiến cho trong chủ nghĩa xã hội: “Không có sự đối lập giữa thành thị và thôn quê, giữa lao động chân tay và lao động trí óc” là vì:', '', 'Active', 1, 2, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Vì đô thị hóa rất nhanh, công nghiệp hóa, hiện đại hóa đất nước rất mạnh.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Vì công nhân, nông dân nắm quyền lực chính trị.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Vì thôn quê ngày càng văn minh, công nông ngày càng thông thái.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Vì mọi vùng nông thôn đều trở thành thành thị.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('“Đồng bào Nam bộ là dân nước Việt Nam. Sông có thể cạn, núi có thể mòn, song chân lý đó không bao giờ thay đổi!”. Câu nói trên của Hồ Chí Minh được trích ra từ văn kiện nào?', '', 'Active', 1, 2, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Thư gửi đồng bào Nam bộ.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Bài nói chuyện cùng đồng bào trước khi sang Pháp.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Lời kêu gọi Kiều bào Việt Nam ở Pháp.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Trả lời phóng viên Hãng thông tấn A.F.P.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('“Chúng ta cách mệnh thì cũng phải liên lạc tất cả những đảng cách mệnh trong thế giới để chống lại tư bản và đế quốc chủ nghĩa”. Luận điểm đó được Hồ Chí Minh viết trong tác phẩm nào?', '', 'Active', 1, 2, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Sách lược vắn tắt của Đảng.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Chương trình tóm tắt của Đảng.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đường cách mệnh.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Chánh cương vắn tắt của Đảng.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Chủ trương “làm tư sản dân quyền cách mạng và thổ địa cách mạng để đi tới xã hội cộng sản” được ghi nhận trong văn kiện nào của Hồ Chí Minh?', '', 'Active', 1, 2, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Chánh cương vắn tắt của Đảng.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Chương trình tóm tắt của Đảng.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đường cách mệnh.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Sách lược vắn tắt của Đảng.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Chọn đáp án đúng với tư tưởng Hồ Chí Minh:', '', 'Active', 1, 2, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cách mạng giải phóng dân tộc cần tiến hành chủ động, sáng tạo.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cách mạng giải phóng dân tộc cần tiến hành chủ động, sáng tạo và có khả năng giành thắng lợi trước cách mạng vô sản ở chính quốc.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cách mạng giải phóng dân tộc phụ thuộc vào thắng lợi của cách mạng vô sản ở chính quốc.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cách cách mạng vô sản ở chính quốc giành thắng lợi đồng thời với cách mạng vô sản ở chính quốc.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Quan điểm nào sau đây không phải của Hồ Chí Minh?', '', 'Active', 1, 2, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Trong cuộc đấu tranh chống chủ nghĩa đế quốc, chủ nghĩa thực dân, cách mạng thuộc địa có tầm quan trọng đặc biệt.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Sự giải phóng của giai cấp công nhân phải là sự nghiệp của bản thân giai cấp công nhân.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Công cuộc giải phóng anh em (tức nhân dân thuộc địa) chỉ có thể thực hiện được bằng sự nỗ lực của bản thân anh em.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cuộc đấu tranh của công nhân ở tất cả các nước để tự giải phóng, chỉ có thể thành công được, nếu công nhân cùng nhau đấu tranh chống lại tư bản quốc tế.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Trong “Thư kêu gọi tổng khởi nghĩa” (năm 1945), Hồ Chí Minh viết: “Giờ quyết định cho vận mệnh dân tộc ta đã đến. Toàn quốc đồng bào hãy đứng dậy đem sức ta mà…..”. Chọn phương án đúng điền vào chỗ trống.', '', 'Active', 1, 2, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Xây dựng đất nước ta.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Bảo vệ Tổ quốc ta.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tự giải phóng cho ta.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Giải phóng Tổ quốc ta. là gì?', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Điều mong muốn cuối cùng của Hồ Chí Minh được nêu trong Di chúc', '', 'Active', 1, 2, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Xây dựng một nước Việt Nam độc lập, tự do, hạnh phúc.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Xây dựng một nước Việt Nam giàu mạnh, sánh vai với các cường quốc năm châu.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Xây dựng một nước Việt Nam hoà bình, thống nhất, độc lập, dân chủ và giàu mạnh, và góp phần xứng đáng vào sự nghiệp cách mạng thế giới.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Xây dựng một nước Việt Nam dân giàu, nước mạnh, dân chủ, công bằng, văn minh.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nội dung cốt lõi của vấn đề dân tộc thuộc địa trong tư tưởng Hồ Chí Minh?', '', 'Active', 1, 2, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Độc lập dân tộc.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Ruộng đất cho dân cày.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Dân chủ cho nhân dân.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Xây dựng xã hội xã hội chủ nghĩa.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Theo Hồ Chí Minh, lực lượng của cách mạng giải phóng dân tộc bao gồm lực lượng nào?', '', 'Active', 1, 2, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Toàn dân tộc.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Liên minh công – nông', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Công – nông – trí thức.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Giai cấp vô sản và nhân dân tiến bộ toàn thế giới.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Chọn đáp án đúng ở chỗ trống trong câu sau của Hồ Chí Minh: “… mà không tiết kiệm thì khác nào gió vào nhà trống”:', '', 'Active', 1, 2, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cần cù.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tăng gia sản xuất.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Sản xuất.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Xây dựng chủ nghĩa xã hội.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Theo Hồ Chí Minh, giải phóng dân tộc bằng:', '', 'Active', 1, 2, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đấu tranh nghị trường.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Bạo lực cách mạng.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đàm phán, thương lượng hòa bình.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cả ba phương án kia đều đúng.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Chọn đáp án đúng ở chỗ trống trong câu sau của Hồ Chí Minh: “Toàn quốc đồng bào hãy đứng dậy ….. mà tự giải phóng cho ta”.', '', 'Active', 1, 2, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đem sức ta.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Dưới sự lãnh đạo của Đảng.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đoàn kết đem sức ta.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Dựa vào sự giúp đỡ của quốc tế.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Theo Hồ Chí Minh, giải phóng dân tộc là nhiệm vụ hàng đầu của cách mạng ở các nước thuộc địa vì:', '', 'Active', 1, 2, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Giải phóng dân tộc là tiền đề để giải phóng giai cấp.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mâu thuẫn giữa dân tộc và đế quốc gay gắt hơn mâu thuẫn giữa các giai cấp với nhau.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Trong giải phóng dân tộc đã bao hàm một phần giải phóng giai cấp.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cả ba phương án kia đều đúng.', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Quan điểm: “Tất cả các dân tộc trên thế giới đều sinh ra bình đẳng; dân tộc nào cũng có quyền sống, quyền sung sướng và quyền tự do” được Hồ Chí Minh suy ra từ tuyên ngôn nào?', '', 'Active', 1, 2, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tuyên ngôn thế giới về quyền con người của Liên Hiệp Quốc, năm 1948.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tuyên ngôn của Đảng Cộng sản của', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mác và Ph. Ăngghen, năm 1848. C. Tuyên ngôn Nhân quyền và Dân quyền của Cách mạng Pháp, năm 1791.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tuyên ngôn độc lập của Mỹ, năm 1776.', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('“Chúng ta tranh được tự do, độc lập rồi mà dân cứ chết đói, chết rét, thì tự do, độc lập cũng không làm gì” nói lên quan điểm nào của Hồ Chí Minh về độc lập dân tộc?', '', 'Active', 1, 2, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Độc lập dân tộc phải là nền độc lập thật sự, hoàn toàn và triệt để.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Độc lập dân tộc gắn liền với hòa bình, thống nhất và toàn vẹn lãnh thổ.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Độc lập dân tộc phải gắn liền tự do và hạnh phúc của nhân dân.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cả ba phương án đều đúng.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cuộc cách mạng nào được Hồ Chí Minh nhận xét trong tác phẩm “Đường cách mệnh” (1927): “Cách mệnh thành công đã hơn 150 năm nay, nhưng công nông vẫn cứ cực khổ, vẫn cứ lo tính cách mệnh lần thứ hai”?', '', 'Active', 1, 2, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cách mạng tư sản Pháp năm 1789.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cách mạng tư sản Pháp năm 1848.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cách mạng tư sản Mỹ năm 1776.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cách mạng Tân Hợi (Trung Quốc) năm 1911.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cuộc cách mạng nào được Hồ Chí Minh nhận xét trong tác phẩm “Đường cách mệnh” (1927): “Tiếng là cộng hòa và dân chủ, kỳ thực trong thì nó tước lục công nông, ngoài thì nó áp bức thuộc địa”?', '', 'Active', 1, 2, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cách mạng tư sản Pháp năm 1789.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cách mạng Tân Hợi ở Trung Quốc năm 1911.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cách mạng giải phóng dân tộc Mỹ năm 1776.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Theo quan điểm của Hồ Chí Minh, đối tượng của cách mạng ở thuộc địa là ai?', '', 'Active', 1, 2, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Là giai cấp tư sản bản xứ.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Là giai cấp địa chủ nói chung.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Là chủ nghĩa thực dân và tay sai phản động.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mọi giai cấp, tầng lớp bóc lột trong xã hội.', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Quan điểm sau đây của Hồ Chí Minh được nêu tại Đại hội/Hội nghị của Đảng: “Cuộc cách mạng Đông Dương hiện tại không phải là cuộc cách mạng tư sản dân quyền, cuộc cách mạng phải giải quyết hai vấn đề: phản đế và điền địa nữa, mà là một cuộc cách mạng chỉ phải giải quyết một vấn đề cần kíp “dân tộc giải phóng”?', '', 'Active', 1, 2, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Hội nghị thành lập Đảng (1930).', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đại hội lần thứ nhất của Đảng (3/1935).', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Hội nghị Trung ương Đảng lần thứ 7 (11/1940).', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Hội nghị Trung ương Đảng lần thứ tám (5/1941).', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nhận định sau đây của Hồ Chí Minh trong tác phẩm nào: “Dù sao, chúng ta phải quyết tâm đánh giặc Mỹ đến thắng lợi hoàn toàn. Còn non, còn nước còn người. Thắng giặc Mỹ, ta sẽ xây dựng hơn mười ngày nay!”?', '', 'Active', 1, 2, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Lời kêu gọi của Hồ Chí Minh (17/7/1966).', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đường cách mệnh (1927).', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Di chúc (1965-1969).', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Thư khen đồng bào, chiến sĩ và cán bộ miền Nam (8/9/1968).', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tại Đại hội V Quốc tế cộng sản (1924), Hồ Chí Minh đã chỉ rõ: Vận mệnh của giai cấp vô sản ở các nước đi xâm lược thuộc địa gắn chặt với vận mệnh của ai?', '', 'Active', 1, 2, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Vận mệnh của các dân tộc thuộc địa.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Vận mệnh của giai cấp bị áp bức ở các thuộc địa.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Vận mệnh của giai cấp nông dân ở các thuộc địa.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Vận mệnh của giai cấp vô sản ở các thuộc địa.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Trong cách mạng giải phóng dân tộc, Hồ Chí Minh xác định lực lượng nào là gốc của cách mạng?', '', 'Active', 1, 2, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Công nhân, trí thức.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Nông dân, tư sản.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Công nhân, tiểu tư sản.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Công nhân, nông dân.', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Trong bài “Cách mạng Tháng Mười vĩ đại mở ra con đường giải phóng cho các dân tộc” (năm 1967), Hồ Chí Minh nhận định: “Trong cuộc đấu tranh gian khổ chống kẻ thù của giai cấp và của dân tộc, cần dùng …. chống lại bạo lực phản cách mạng, giành lấy chính quyền và bảo vệ chính quyền”. Chọn phương án đúng điền vào chỗ trống.', '', 'Active', 1, 2, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đấu tranh nghị trường.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Bạo lực cách mạng.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Lực lượng toàn dân.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đấu tranh hòa bình.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Theo Hồ Chí Minh, điều kiện tiên quyết để tiến lên xây dựng chủ nghĩa xã hội là:', '', 'Active', 1, 2, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Độc lập dân tộc.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Có sự lãnh đạo của Đảng.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tiền vốn, khoa học – kỹ thuật.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Sự đoàn kết toàn dân.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Chọn đáp án đúng ở chỗ trống trong câu sau của Hồ Chí Minh: “Chỉ tiêu kế hoạch một phần, …. phải hai phần, cố gắng phải ba phần”:', '', 'Active', 1, 2, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Trách nhiệm.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Sáng kiến.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Quyết tâm.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Biện pháp.', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Mục tiêu cụ thể của về kinh tế trong thời kỳ quá độ lên chủ nghĩa xã hội ở Việt Nam theo tư tưởng Hồ Chí Minh là gì?', '', 'Active', 1, 2, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Công - nông nghiệp hiện đại, khoa học - kỹ thuật tiên tiến.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cách bóc lột theo chủ nghĩa tư bản được bỏ dần.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đời sống vật chất của nhân dân ngày càng được cải thiện.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cả ba phương án kia đều đúng.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Theo Hồ Chí Minh, nhiệm vụ trung tâm của thời kỳ quá độ lên chủ nghĩa xã hội ở Việt Nam là gì?', '', 'Active', 1, 2, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Hợp tác hóa.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Công nghiệp hoá.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Sở hữu tập thể.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cả ba phương án đều đúng.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Theo Hồ Chí Minh, mục tiêu cao nhất của chủ nghĩa xã hội là gì?', '', 'Active', 1, 2, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Khoa học kỹ thuật tiên tiến.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Kinh tế phát triển.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Giải phóng giai cấp, giải phóng con người.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Nâng cao đời sống vật chất và tinh thần cho nhân dân.', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Theo Hồ Chí Minh, mục tiêu chung của chủ nghĩa xã hội là gì?', '', 'Active', 1, 2, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Một nền kinh tế hiện đại.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Phát triển mạnh mẽ khoa học – kỹ thuật.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Độc lập cho dân tộc; tự do, hạnh phúc cho nhân dân.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đảm bảo quyền làm chủ của nhân dân lao động. gì?', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Theo Hồ Chí Minh, động lực quyết định nhất của chủ nghĩa xã hội là', '', 'Active', 1, 2, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Khoa học - kỹ thuật.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Chính trị.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Con người.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Sự giúp đỡ, ủng hộ quốc tế.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Theo tư tưởng Hồ Chí Minh, động lực quan trọng và quyết định của của chủ nghĩa xã hội ở Việt Nam là gì?', '', 'Active', 1, 2, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đấu tranh giai cấp, cải tạo xã hội cũ, xây dựng xã hội mới.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Là con người, là nhân dân lao động mà nòng cốt là công – nông – trí thức.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Thực hiện bình đẳng và công bằng xã hội.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Xóa đói giảm nghèo.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Quan điểm nào sau đây của Hồ Chí Minh?', '', 'Active', 1, 2, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Sự tàn bạo của chủ nghĩa tư bản đã chuẩn bị đất rồi. Chủ nghĩa xã hội chỉ còn phải làm cái việc là gieo hạt giống của công cuộc giải phóng nữa thôi.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Xem xét lại chủ nghĩa Mác về cơ sở lịch sử của nó, củng cố nó bằng dân tộc học phương Đông.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Chủ nghĩa dân tộc là động lực lớn của đất nước.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cả ba phương án kia đều đúng', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Theo Hồ Chí Minh, kẻ thù hung ác của chủ nghĩa xã hội là ai?', '', 'Active', 1, 2, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Giặc ngoại xâm.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Chủ nghĩa tư bản.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Chủ nghĩa đế quốc.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Chủ nghĩa cá nhân.', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Quan điểm của Hồ Chí Minh về động lực xây dựng chủ nghĩa xã hội ở Việt Nam là gì?', '', 'Active', 1, 2, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Động lực bên trong.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Động lực bên ngoài.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Ngăn ngừa “giặc nội xâm” là tham ô, lãng phí, quan liêu, các yếu tố kìm hãm, triệt tiêu nguồn lực vốn có của chủ nghĩa xã hội.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cả ba phương án kia đều đúng.', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Quan điểm của Hồ Chí Minh về động lực quan trọng và quyết định xây dựng chủ nghĩa xã hội ở Việt Nam là gì?', '', 'Active', 1, 2, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Sức mạnh thời đại, của tinh thần đoàn kết quốc tế.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Sức mạnh của các thành quả khoa học - kỹ thuật thế giới.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Sức mạnh vật chất và tinh thần của con người, của nhân dân lao động mà nòng cốt là công - nông - trí thức.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cả ba phương án kia đều đúng.', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Đặc điểm to nhất khi Việt Nam quá độ lên chủ nghĩa xã hội theo tư tưởng Hồ Chí Minh là:', '', 'Active', 1, 2, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Từ một nước thuộc địa, nửa phong kiến, trình độ pháp luật còn kém', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Từ một nước nông nghiệp lạc hậu tiến thẳng lên chủ nghĩa xã hội, không kinh qua giai đoạn phát triển tư bản chủ nghĩa.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Từ một nước lạc hậu, yếu kém về mọi mặt.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Từ một nước thuộc địa, nửa phong kiến, nông nghiệp lạc hậu.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Theo Hồ Chí Minh, động lực quan trọng nhất của cách mạng xã hội chủ nghĩa Việt Nam là:', '', 'Active', 1, 2, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Động lực kinh tế.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đảng – Nhà nước – Mặt trận dân tộc thống nhất.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Con người.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Động lực văn hóa. là gì? dân.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Theo Hồ Chí Minh, mâu thuẫn cơ bản của thời kỳ quá độ ở Việt Nam', '', 'Active', 1, 2, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mâu thuẫn giữa nghèo đói sau chiến tranh và đòi hỏi nâng cao đời sống nhân', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mâu thuẫn giữa nhu cầu phát triển cao của đất nước theo xu hướng tiến bộ và thực trạng kinh tế - xã hội quá thấp kém của nước ta.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mâu thuẫn giữa ổn định xã hội và sự phá hoại của các thế lực thù địch.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mâu thuẫn giữa trình độ khoa học kỹ thuật của ta thấp kém và nhu cầu hội nhập kinh tế thế giới.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Ngày 24/4/1957, khi nói chuyện với cán bộ, công nhân nhà máy dệt Nam Định, Hồ Chí Minh cho rằng: “Chế độ làm khoán là một điều kiện của chủ nghĩa xã hội, nó khuyến khích người công nhân luôn luôn tiến bộ, cho nhà máy tiến bộ. Làm khoán là ……”. Chọn phương án đúng điền vào chỗ trống.', '', 'Active', 1, 2, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tạo điều kiện phát triển sản xuất.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Ích chung và lại lợi riêng.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tăng năng xuất lao động.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cả ba phương án kia đều đúng.', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Theo Hồ Chí Minh, trong điều kiện của nước ta, biện pháp cơ bản, quyết định, lâu dài trong xây dựng chủ nghĩa xã hội là gì?', '', 'Active', 1, 2, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đem tài dân, sức dân, của dân làm lợi cho dân dưới sự lãnh đạo của Đảng.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tiến hành công nghiệp hóa.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Xây dựng đội ngũ lãnh đạo đủ đức và tài.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Phát triển khoa học kỹ thuật.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Theo Hồ Chí Minh, biện pháp để tiến hành xây dựng chủ nghĩa xã hội ở Việt Nam là gì?', '', 'Active', 1, 2, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Thực hiện cải tạo xã hội cũ, xây dựng xã hội mới, kết hợp cải tạo với xây dựng, lấy xây dựng làm chính.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Kết hợp xây dựng và bảo vệ, đồng thời tiến hành hai nhiệm vụ chiến lược ở hai miền Nam - Bắc khác nhau trong phạm vi một quốc gia.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Biện pháp cơ bản, quyết định, lâu dài trong xây dựng chủ nghĩa xã hội là đem của dân, tài dân, sức dân, làm lợi cho dân dưới sự lãnh đạo của Đảng.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cả ba phương án kia đều đúng.', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Quan điểm của Hồ Chí Minh về mối quan hệ giữa nội lực và ngoại lực xây dựng chủ nghĩa xã hội ở Việt Nam?', '', 'Active', 1, 2, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Hồ Chí Minh coi nội lực là quyết định.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Hồ Chí Minh coi ngoại lực là quyết định.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Hồ Chí Minh coi nội lực và ngoại lực là như nhau.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Hồ Chí Minh coi nội lực là quyết định nhất, ngoại lực là rất quan trọng.', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Hồ Chí Minh nói tới văn kiện nào trong câu sau: “Hỡi đồng bào bị đọa đày đau khổ! Đây là cái cần thiết cho chúng ta, đây là con đường giải phóng chúng ta”?', '', 'Active', 1, 3, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Sơ thảo lần thứ nhất những luận cương về vấn đề dân tộc và vấn đề thuộc địa của', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Nghị quyết Đại hội V Quốc tế Cộng sản.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Nghị quyết Đại hội VII Quốc tế cộng sản.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tuyên ngôn của Đảng Cộng sản.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Xã hội có chế độ dân chủ là đặc trưng về mặt nào của xã hội xã hội chủ nghĩa theo tư tưởng Hồ Chí Minh?', '', 'Active', 1, 3, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Kinh tế.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Chính trị.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Văn hóa.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Xã hội.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tư tưởng "Đem tài dân, sức dân, của dân làm lợi cho dân" là nói đến mặt nào trong đặc trưng xã hội xã hội chủ nghĩa của Hồ Chí Minh?', '', 'Active', 1, 3, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Kinh tế.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Chính trị.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Văn hóa, đạo đức và các quan hệ xã hội.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Chủ thể xây dựng chủ nghĩa xã hội.', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Trong vận dụng kinh nghiệm thực tiễn thế giới vào xây dựng chủ nghĩa xã hội, Hồ Chí Minh đã yêu cầu phải chống khuynh hướng nào?', '', 'Active', 1, 3, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('"Giáo điều" và "xét lại".', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('"Giáo điều" và "máy móc".', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('"Xét lại" và "đổi mới".', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('"Máy móc" và "đổi mới".', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Kẻ địch bên trong của mỗi người cần phải chống trong xây dựng chủ nghĩa xã hội theo Hồ Chí Minh là:', '', 'Active', 1, 3, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Quan liêu, mệnh lệnh.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tham nhũng, lãng phí.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Lợi ích cá nhân.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Chủ nghĩa cá nhân.', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Đại hội lần thứ mấy của Đảng Cộng sản Việt Nam đã đề ra Cương lĩnh xây dựng đất nước trong thời kỳ quá độ lên chủ nghĩa xã hội?', '', 'Active', 1, 3, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đại hội lần thứ VI (1986).', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đại hội lần thứ VII (1991).', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đại hội lần thứ IX (2001).', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đại hội lần thứ X (2006).', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Quan điểm sau đây về quy luật hình thành Đảng Cộng sản là của ai: “Đảng Cộng sản ra đời là sản phẩm của sự kết hợp giữa chủ nghĩa Mác với phong trào công nhân”.', '', 'Active', 1, 3, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mác.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Ph. Ăngghen.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('V.I. Lênin.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Hồ Chí Minh.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Theo Hồ Chí Minh, cách mạng Việt Nam cần phải có Đảng để làm gì?', '', 'Active', 1, 3, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Xác định đường lối cách mạng đúng đắn và phương pháp cách mạng thích hơp.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tổ chức dân chúng thực hiện đường lối, cách mạng do Đảng đề ra.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Gắn cách mạng Việt Nam với cách mạng thế giới nhằm tạo sức mạnh tổng hợp cho cách mạng Việt Nam.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cả ba phương án kia đều đúng.', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Theo Hồ Chí Minh thì Đảng Lao động Việt Nam là Đảng của ai?', '', 'Active', 1, 3, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đảng Lao động Việt Nam là Đảng của giai cấp công nhân Việt Nam.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đảng Lao động Việt Nam là Đảng của giai cấp nông dân Việt Nam.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đảng Lao động Việt Nam là Đảng của công nhân và trí thức Việt Nam.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đảng Lao động Việt Nam là Đảng của giai cấp công nhân và nhân dân lao động, cho nên nó phải là Đảng của dân tộc Việt Nam.', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Hồ Chí Minh yêu cầu Đảng phải là đạo đức, là văn minh, mỗi đảng viên và cán bộ phải thật sự thấm nhuần đạo đức cách mạng, thật sự cần kiệm liêm chính, chí công vô tư. Phải giữ gìn Đảng ta thật trong sạch, phải xứng đáng là người lãnh đạo, người đầy tớ thật trung thành của ai?', '', 'Active', 1, 3, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Của giai cấp công nhân.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Của giai cấp công nhân và giai cấp nông dân.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Của nhân dân.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Của công – nông – trí thức. nào?', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Thuật ngữ “Đảng cầm quyền” được Hồ Chí Minh viết trong tác phẩm', '', 'Active', 1, 3, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Vi hành.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Di chúc.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đường cách mệnh.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Bản án chế độ thực dân Pháp.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Đảng ta trở thành Đảng cầm quyền từ năm nào?', '', 'Active', 1, 3, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Năm 1930.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Năm 1935.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Năm 1945.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Năm 1946.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Chọn đáp án đúng điền vào chỗ trống trong câu nói sau của Hồ Chí Minh: “Trước hết phải có Đảng cách mạng để trong thì vận động và ...... quần chúng, ngoài thì ..... với dân tộc bị áp bức và vô sản giai cấp ở mọi nơi ....... có vững cách mạng mới thành công”:', '', 'Active', 1, 3, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tập hợp - hợp tác - đoàn thể.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Lôi cuốn - liên lạc - Đảng.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tổ chức - liên lạc - Đảng.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Liên lạc - đoàn kết - Đảng.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nhà nước do dân theo tư tưởng Hồ Chí Minh là:', '', 'Active', 1, 3, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Nhà nước do dân lập nên, do dân ủng hộ, nuôi dưỡng.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Nhà nước chỉ giúp kế hoạch.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Dân tự làm, tự lo vì Nhà nước không làm thay cho dân.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cả ba phương án kia đều đúng.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Theo Hồ Chí Minh, đâu là dây chuyền của bộ máy, là khâu trung gian nối liền giữa Đảng, Nhà nước với nhân dân?', '', 'Active', 1, 3, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đảng viên.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cán bộ.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Giai cấp công nhân.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đội ngũ trí thức.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Theo Hồ Chí Minh, công tác gốc của Đảng là công tác gì?', '', 'Active', 1, 3, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Công tác chính trị.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Công tác tư tưởng.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Công tác cán bộ.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Công tác lý luận.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Phương án nào không thuộc các nguyên tắc tổ chức sinh hoạt Đảng theo tư tưởng Hồ Chí Minh?', '', 'Active', 1, 3, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tập trung dân chủ.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tập thể lãnh đạo, cá nhân phụ trách.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tự phê bình và phê bình; Kỷ luật nghiêm minh, tự giác.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Thẳng thắn, có tinh thần trách nhiệm.', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Theo Hồ Chí Minh, tổ chức nào là “hạt nhân”, quyết định chất lượng lãnh đạo của Đảng, là môi trường tu dưỡng, rèn luyện và cũng là nơi giám sát đảng viên?', '', 'Active', 1, 3, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Bộ Chính trị.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đảng bộ.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đảng ủy.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Chi bộ.', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Quan điểm sau đây được trích trong văn bản nào: “Tất cả quyền bính trong nước đều là của toàn thể nhân dân Việt Nam, không phân biệt nòi giống, gái trai, giàu nghèo, giai cấp, tôn giáo”.', '', 'Active', 1, 3, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Điều 1 - Hiến pháp nước Việt Nam Dân chủ Cộng hòa (1946).', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Lời nói đầu - Hiến pháp nước Việt Nam Dân chủ Cộng hòa (1946).', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tuyên ngôn độc lập (1945).', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Lời kêu gọi toàn quốc kháng chiến (1946).', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Theo tư tưởng Hồ Chí Minh, muốn trừ sạch bệnh tham ô, lãng phí thì trước mắt phải tẩy sạch bệnh gì?', '', 'Active', 1, 3, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Bệnh trái phép, cậy thế, cậy quyền.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Bệnh tư túng, chia rẽ.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Bệnh quan liêu.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Bệnh kiêu ngạo cộng sản.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Chọn đáp án đúng điền vào chỗ trống trong câu sau của Hồ Chí Minh: “Đảng của giai cấp công nhân và nhân dân lao động, nghĩa là những người ...... , dân cày và lao động trí óc kiên quyết nhất, hăng hái nhất, trong sạch nhất, tận tâm tận lực phụng sự Tổ quốc và nhân dân”?', '', 'Active', 1, 3, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Vô sản.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Thợ thủ công.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Thợ thuyền.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tiểu thương.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Đây là nguyên tắc mà Hồ Chí Minh cho là nguyên tắc lãnh đạo, có thể xem xét toàn diện mọi mặt, tránh ỷ lại, phát huy tính chủ động:', '', 'Active', 1, 3, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tập trung dân chủ.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Kỷ luật nghiêm minh, tự giác.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đoàn kết thống nhất.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tập thể lãnh đạo, cá nhân phụ trách.', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Theo Hồ Chí Minh, Đảng lãnh đạo Nhà nước bằng phương thức nào?', '', 'Active', 1, 3, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đường lối, chủ trương.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Công tác kiểm tra.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Qua các tổ chức Đảng, đảng viên trong bộ máy Nhà nước.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cả ba phương án kia đều đúng.', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Theo Hồ Chí Minh, trong quan hệ với dân thì cán bộ Nhà nước là:', '', 'Active', 1, 3, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Người đầy tớ của dân.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Người lãnh đạo của dân.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cha mẹ của dân, dạy dỗ và sai bảo dân.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Vừa là người lãnh đạo vừa là người đầy tớ thật trung thành của nhân dân.', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Để bộ máy Nhà nước trong sạch, vững mạnh, Hồ Chí Minh chủ trương thực hiện “3 chống”, đó là:', '', 'Active', 1, 3, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tham ô, lãng phí, quan liêu.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đặc quyền, đặc lợi, hống hách.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cục bộ, địa phương, bè phái.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tư túng, chia rẽ, kiêu ngạo.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Chọn đáp án đúng nhất theo tư tưởng Hồ Chí Minh về bản chất của Nhà nước Việt Nam Dân chủ Cộng hòa:', '', 'Active', 1, 3, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mang bản chất giai cấp công nhân.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mang tính nhân dân sâu sắc.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mang tính dân tộc.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Có sự thống nhất giữa bản chất giai cấp công nhân với tính nhân dân và tính dân tộc.', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Theo Hồ Chí Minh, việc gốc để xây dựng đội ngũ cán bộ vững mạnh', '', 'Active', 1, 3, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Huấn luyện cán bộ.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Thi tuyển cán bộ.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Chính sách cán bộ.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Xác định tiêu chuẩn cán bộ.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Điền vào chỗ trống trong câu nói sau của Hồ Chí Minh: “Muôn việc thành công hay thất bại đều do…”', '', 'Active', 1, 3, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đường lối đúng hay sai.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đảng mạnh hay yếu.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đoàn kết rộng hay hẹp.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cán bộ tốt hay kém.', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Theo Hồ Chí Minh nguyên tắc nào sau đây là quy luật phát triển của', '', 'Active', 1, 3, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tập trung dân chủ.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tập thể lãnh đạo - cá nhân phụ trách.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đoàn kết thống nhất trong Đảng.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tự phê bình và phê bình.', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Chọn đáp án đúng điền vào chỗ trống trong câu sau của Hồ Chí Minh: “Để lãnh đạo cách mạng, Đảng phải mạnh. Đảng mạnh là do....... tốt. Chi bộ tốt là do các ...... đều tốt”.', '', 'Active', 1, 3, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tổng bí thư/ đồng chí', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Chi bộ/ đảng viên', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Chi ủy/ ủy viên', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đảng bộ/bí thư', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Câu Chọn đáp án đúng điền vào chỗ trống trong câu sau của Hồ Chí Minh: “Nếu Chính phủ làm hại dân thì dân có quyền … Chính phủ”', '', 'Active', 1, 3, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Lật đổ.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đuổi.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Góp ý.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Kiểm soát, phê bình.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Theo Hồ Chí Minh, Nhà nước có hiệu lực pháp lý mạnh mẽ là:', '', 'Active', 1, 3, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Nhà nước quản lý xã hội chủ yếu bằng pháp luật.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Nhà nước hợp pháp, hợp hiến.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Nhà nước chú trọng đưa pháp luật vào cuộc sống.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cả ba phương án kia đều đúng.', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Theo Hồ Chí Minh, Nhà nước thể hiện quyền là chủ và làm chủ của nhân dân thì Nhà nước đó phải là:', '', 'Active', 1, 3, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Do dân', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Vì Dân.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Của dân', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cả ba phương án kia đều đúng.', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Chọn đáp án đúng điền vào chỗ trống trong Di chúc của Hồ Chí Minh: “Các đồng chí từ trung ương đến các ..... cần phải giữ gìn ….. như giữ gìn con ngươi của mắt mình”', '', 'Active', 1, 3, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Chi bộ / sự đoàn kết nhất trí của Đảng.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cơ sở / đạo đức cách mạng', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Địa phương / sự toàn vẹn lãnh thổ.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Chi bộ / tư cách của người đảng viên.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Để xây dựng Nhà nước trong sạch, hoạt động có hiệu quả, Hồ Chí Minh chủ trương:', '', 'Active', 1, 3, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Xây dựng đội ngũ cán bộ, công chức đủ đức và tài.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tăng cường tính nghiêm minh của pháp luật đi đôi với đẩy mạnh giáo dục đạo đức cách mạng.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đề phòng và khắc phục những tiêu cực trong hoạt động của Nhà nước.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cả ba phương án kia đều đúng.', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Hồ Chí Minh nêu lên những yêu cầu gì về việc xây dựng đội ngũ cán bộ, công chức nhà nước?', '', 'Active', 1, 3, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tuyệt đối trung thành với cách mạng; Hăng hái, thành thạo công việc, giỏi chuyên môn, nghiệp vụ; Liên hệ mật thiết với nhân dân.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Dám phụ trách, dám quyết đoán, dám chịu trách nhiệm, nhất là trong những tình huống khó khăn, “thắng không kiêu, bại không nản”.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Phải thường xuyên tự phê bình và phê bình, luôn luôn có ý thức và hạnh động vì sự lớn mạnh, trong sạch của Nhà nước.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tất cả những yêu cầu kia.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tổ chức thanh niên mà Hồ Chí Minh chủ trương thành lập vào năm 1925 có tên gọi chính thức trong điều lệ của tổ chức này là:', '', 'Active', 1, 3, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Hội Việt Nam Cách mạng Thanh niên.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Việt Nam Thanh niên cách mạng đồng chí hội.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Thanh niên xung phong.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Lần đầu tiên ở nước ta, Tổng tuyển cử với chế độ phổ thông đầu phiếu vào thời gian nào?', '', 'Active', 1, 3, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Ngày 06/01/1946.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Ngày 06/11/1946.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Ngày 01/6/1946.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Ngày 11/6/1946.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Mục địch của tổng tuyển cử trong cả nước theo chế độ phổ thông đầu phiếu năm 1946 là gì?', '', 'Active', 1, 3, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Để nhà nước ta có cơ sở pháp lý vững chắc trong quan hệ với quân Đồng Minh.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Để có mối quan hệ quốc tế bình đẳng về mặt nhà nước.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Để có thể thiết lập một cơ chế quyền lực hợp pháp theo thông lệ quốc tế.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cả ba phương án kia đều đúng.', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Quan điểm sau đây được trích trong văn bản nào: “Nhà nước của ta là Nhà nước dân chủ nhân dân, dựa trên nền tảng liên minh công nông, do giai cấp công nhân lãnh đạo”?', '', 'Active', 1, 3, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Điều 1 - Hiến pháp nước Việt Nam Dân chủ Cộng hòa (1946).', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Lời nói đầu của Hiến pháp nước Việt Nam Dân chủ Cộng hòa (1959).', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tuyên ngôn độc lập (1945).', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Lời kêu gọi toàn quốc kháng chiến (1946).', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tại kỳ họp đầu tiên của Quốc hội khoá I nước Việt Nam Dân chủ Cộng hòa đã bầu ai làm Chủ tịch Chính phủ liên hiệp kháng chiến?', '', 'Active', 1, 3, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Phạm Văn Đồng.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tôn Đức Thắng.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Hồ Chí Minh.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Huỳnh Thúc Kháng.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Điểm đặc sắc nhất trong tư tưởng Hồ Chí Minh về nhà nước pháp quyền là gì?', '', 'Active', 1, 3, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Coi trọng pháp luật quản lý xã hội.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đề cao đạo đức trong quản lý xã hội.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đảm bảo tính nghiêm minh và hiệu lực của pháp luật.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Kết hợp nhuần nhuyễn cả pháp luật và đạo đức trong quản lý xã hội.', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nhận định sau đây được trích từ tác phẩm nào của Hồ Chí Minh: “Cải cách nền pháp lý ở Đông Dương bằng cách cho người bản xứ cũng được quyền hưởng những đảm bảo về mặt pháp luật như người Âu châu”; “Thay chế độ ra các sắc lệnh bằng chế độ ra các đạo luật”?', '', 'Active', 1, 3, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Bản án chế độ thực dân Pháp.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đường cách mệnh.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Vi hành.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Yêu sách của nhân dân An Nam.', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Mục địch của tổng tuyển cử trong cả nước theo chế độ phổ thông đầu phiếu năm 1946 là gì?', '', 'Active', 1, 3, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Để nhà nước ta có cơ sở pháp lý vững chắc trong quan hệ với quân Đồng minh.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Để có mối quan hệ quốc tế bình đẳng về mặt nhà nước.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Để có thể thiết lập một cơ chế quyền lực hợp pháp theo thông lệ quốc tế.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cả ba phương án kia đều đúng.', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Theo Hồ Chí Minh, để thực hiện được dân chủ trong xã hội, trước tiên cần thực hiện dân chủ trong tổ chức nào?', '', 'Active', 1, 3, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Dân chủ trong chính quyền các cấp.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Dân chủ trong Quốc hội.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Dân chủ trong các đoàn thể nhân dân.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Dân chủ trong Đảng.', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Bảy xin hiến pháp ban hành/Trăm điều phải có thần linh pháp quyền". Hai câu thơ trên được trích trong tác phẩm nào của Hồ Chí Minh?', '', 'Active', 1, 3, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Bản án chế độ thực dân Pháp.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đường cách mệnh.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Việt Nam yêu cầu ca.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Nhật kí trong tù.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Để có một Nhà nước hợp pháp, hợp hiến, việc làm đầu tiên của Hồ Chí Minh sau Cách mạng Tháng Tám năm 1945 là gì?', '', 'Active', 1, 3, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tổ chức tổng tuyển cử trong cả nước.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Kêu gọi thế giới công nhận chính quyền mới.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Thiết kế mô hình nhà nước cách mạng.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Lựa chọn, sắp xếp cán bộ.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Ngày 26/01/1946, Hồ Chí Minh ký lệnh nói rõ tội tham ô, trộm cắp của công dân là tội gì?', '', 'Active', 1, 3, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tù 50 năm.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tù 20 năm.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tù chung thân.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tử hình.', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Điền vào chỗ trống trong câu nói sau của Hồ Chí Minh: "Làm sao cách mệnh rồi thì quyền trao cho…. chớ để trong tay một bọn ít người"?', '', 'Active', 1, 3, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Dân chúng số nhiều.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Giai cấp tư sản dân tộc.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Giai cấp công nhân.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Giai cấp nông dân.', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Hồ Chí Minh ký sắc lệnh ấn định phạt tội đưa và nhận hối lộ mấy năm tù?', '', 'Active', 1, 3, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Từ 5 đến 10 năm.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Từ 5 đến 15 năm.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Từ 5 đến 20 năm.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Từ 10 đến 20 năm.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('So với học thuyết Mác - Lênin, Hồ Chí Minh đã bổ sung yếu tố nào trong sự thành lập Đảng Cộng sản Việt Nam?', '', 'Active', 1, 4, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Phong trào dân chủ.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Phong trào yêu nước.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Phong trào công nhân.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Phong trào thanh niên.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Theo Hồ Chí Minh, nền tảng cơ bản nhất quyết định sự lãnh đạo tất yếu của Đảng Cộng sản Việt Nam đối với cách mạng Việt Nam là?', '', 'Active', 1, 4, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Sự lãnh đạo sáng suốt của Đảng.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đảng có đội ngũ đảng viên trong sạch vững mạnh.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đảng đáp ứng nhu cầu tất yếu của xã hội Việt Nam.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đảng hoạt động vì nước vì dân.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Theo Hồ Chí Minh, nguyên tắc nào trong hoạt động của Đảng phải là việc làm thường xuyên, như “mỗi ngày phải rửa mặt”.', '', 'Active', 1, 4, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tập trung dân chủ.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Kỷ luật nghiêm minh tự giác.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tự phê bình và phê bình.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đoàn kết quốc tế.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Theo Hồ Chí Minh, khi lợi ích chung của Đảng mâu thuẫn với lợi ích riêng của cá nhân thì người đảng viên phải như thế nào?', '', 'Active', 1, 4, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Hy sinh lợi ích của Đảng cho lợi ích cá nhân.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Hy sinh lợi ích của cá nhân cho lợi ích của Đảng.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cân bằng giữa hai lợi ích.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Xem xét tính cấp bách để quyết định lựa chọn lợi ích.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tư tưởng về đảng kiểu mới của giai cấp vô sản, được Hồ Chí Minh vận dụng, phát triển trong quá trình sáng lập và rèn luyện Đảng Cộng sản Việt Nam là tư tưởng của ai?', '', 'Active', 1, 4, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('V.I. Lênin.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mác.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mao Trạch Đông.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Kim Nhật Thành.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Điền vào chỗ trống trong câu nói sau của Hồ Chí Minh: “Đảng có những điều kiện kỷ luật bắt buộc mỗi đảng viên phải theo. Không có kỷ luật sắt không có Đảng. Đã vào Đảng thì phải theo tư tưởng của Đảng. Đảng đã chỉ thị nghị quyết là phải làm. Không làm thì … …”.', '', 'Active', 1, 4, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Bàn bạc, thảo luận lại.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Xem xét kỷ luật.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Giải trình lý do.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đuổi ra khỏi Đảng.', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Theo Hồ Chí Minh, việc Đảng cần làm ngay sau khi cuộc chống Mỹ, cứu nước của nhân dân Việt Nam hoàn toàn thắng lợi là?', '', 'Active', 1, 4, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Củng cố quyền lãnh đạo', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tăng cường lực lượng.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Chỉnh đốn lại Đảng.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mở rộng các mối quan hệ quốc tế.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Chọn câu trả lời đúng với tư tưởng Hồ Chí Minh: Trong quan hệ với quần chúng, Đảng phải:', '', 'Active', 1, 4, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Không được theo đuôi quần chúng.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Luôn luôn nghe theo quần chúng.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Theo đuổi quần chúng.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Luôn làm theo quần chúng.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Theo Hồ Chí Minh, tổ chức nào là “hạt nhân”, quyết định chất lượng lãnh đạo của Đảng, là môi trường tu dưỡng, rèn luyện và cũng là nơi giám sát đảng viên?', '', 'Active', 1, 4, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Chi bộ.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Bộ Chính trị.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đảng bộ.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đảng ủy.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Hồ Chí Minh nhấn mạnh: muốn đoàn kết chặt chẽ trong Đảng thì phải làm gì?', '', 'Active', 1, 4, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tự phê bình và phê bình.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mở rộng dân chủ nội bộ.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Chống lại chủ nghĩa cá nhân và các biểu hiện tiêu cực.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cả ba phương án kia đều đúng.', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Theo Hồ Chí Minh, là người lãnh đạo, Đảng phải có những phẩm chất', '', 'Active', 1, 4, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tư cách, phẩm chất, năng lực cần thiết.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Phải làm cho dân tin, dân phục để dân theo.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cả ba phương án kia đều đúng.', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Theo Hồ Chí Minh, trong xây dựng Đảng về chính trị, vấn đề nào là “cốt tử”?', '', 'Active', 1, 4, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Xây dựng đường lối chính trị.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Xây dựng và thực hiện nghị quyết của Đảng.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Củng cố lập trường chính trị.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Nâng cao bản lĩnh chính trị của đảng viên.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Theo Hồ Chí Minh, nền tảng tư tưởng của Đảng Cộng sản Việt Nam', '', 'Active', 1, 4, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Chủ nghĩa Mác - Lênin.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tinh hoa văn hóa của dân tộc Việt Nam.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tinh hoa văn hóa của nhân loại.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Chủ nghĩa yêu nước.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cơ sở hình thành tư tưởng Hồ Chí Minh về đại đoàn kết dân tộc bao gồm những yếu tố nào?', '', 'Active', 1, 4, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Truyền thống yêu nước, nhân ái, tinh thần cố kết cộng đồng dân tộc.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Quan điểm của chủ nghĩa Mác - Lênin: cách mạng là sự nghiệp của quần chúng.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tổng kết những kinh nghiệm thành công và thất bại của các phong trào yêu nước, phong trào cách mạng Việt Nam và cách mạng thế giới.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cả ba phương án kia đều đúng.', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Trong bài nói chuyện tại lớp Nghiên cứu chính trị khóa I, Trường Đại học Nhân dân Việt Nam (21/7/1956), Hồ Chí Minh cho rằng: “Trong sự nghiệp cách mạng, trong sự nghiệp xây dựng xã hội chủ nghĩa, lao động trí óc có một vai trò quan trọng và vẻ vang; và công, nông, trí, cần phải…..”. Chọn phương án đúng điền vào chỗ trống.', '', 'Active', 1, 4, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đoàn kết chặt chẽ.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đoàn kết chặt chẽ thành một khối.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đoàn kết chặt chẽ và đấu tranh.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đoàn kết thống nhất thành một khối.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tại Hội nghị Đại biểu Mặt trận Liên - Việt (10/1/1955), Hồ Chí Minh cho rằng: đại đoàn kết trước hết phải đoàn kết đa số nhân dân. Vậy đại đa số nhân dân là những ai?', '', 'Active', 1, 4, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Công nhân, nông dân và các tầng lớp nhân dân lao động khác.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Công nhân, nông dân.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Nông dân.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Công nhân, trí thức.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Năm 1939, mặt trận nào sau đây được thành lập?', '', 'Active', 1, 4, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mặt trận dân tộc thống nhất phản đế Đông Dương.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mặt trận Việt Minh.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mặt trận Liên Việt.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mặt trận dân tộc giải phóng miền Nam Việt Nam.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Năm 1960, mặt trận nào sau đây được thành lập?', '', 'Active', 1, 4, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mặt trận dân tộc thống nhất phản đế Đông Dương.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mặt trận Việt Minh.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mặt trận Liên Việt.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mặt trận dân tộc giải phóng miền Nam Việt Nam.', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Năm 1955, mặt trận nào sau đây được thành lập ở miền Bắc?', '', 'Active', 1, 4, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mặt trận Tổ quốc Việt Nam.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mặt trận Việt Minh.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mặt trận Liên Việt.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mặt trận dân tộc giải phóng miền Nam Việt Nam.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Đánh giá sau đây của ai về vai trò và những cống hiến của Hồ Chí Minh cho cách mạng thế giới: “Bất cứ nơi nào chiến đấu cho độc lập tự do, ở đó có Hồ Chí Minh và ngọn cờ Hồ Chí Minh bay cao. Bất cứ ở đâu chiến đấu cho hòa bình và công lý, ở đó có Hồ Chí Minh và ngọn cờ Hồ Chí Minh bay cao. Ở bất cứ đâu nhân dân chiến đấu cho một thế giới mới, chống lại đói nghèo, ở đó có Hồ Chí Minh và ngọn cờ Hồ Chí Minh bay cao”.', '', 'Active', 1, 4, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('G. Niêrêrê - Tổng thống nước Cộng hòa thống nhất Tandania.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('R. Chanđra - Nguyên Chủ tịch Hội đồng Hòa bình thế giới.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('H. Bumêđiên - Chủ tịch Hội đồng Bộ trưởng nước Cộng hòa Angiêri.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('X. Agienđê - Nguyên Tổng thống nước Cộng hòa Chilê.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Theo Hồ Chí Minh, Mặt trận Dân tộc thống nhất phải dựa trên cơ sở:', '', 'Active', 1, 4, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đảm bảo quyền lợi cơ bản của công – nông.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đảm bảo lợi ích của nhân dân lao động.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đảm bảo lợi ích tối cao của giai cấp công nhân.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đảm bảo lợi lích tối cao của dân tộc, quyền lợi cơ bản của các tầng lớp nhân dân.', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Trong các luận điểm sau, luận điểm nào là của Hồ Chí Minh?', '', 'Active', 1, 4, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Vô sản tất cả các nước và các dân tộc bị áp bức, đoàn kết lại.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Vô sản tất cả các nước, đoàn kết lại.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Vô sản tất cả các nước, liên hiệp lại.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Lao động tất cả các nước, đoàn kết lại.', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Theo Hồ Chí Minh, cách mạng giải phóng dân tộc là sự nghiệp của lực lượng nào?', '', 'Active', 1, 4, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Giai cấp công nhân và nông dân.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Giai cấp công nhân.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Giai cấp nông dân.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Toàn dân.', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tháng 9/1955, Mặt trận dân tộc thống nhất toàn quốc đã họp Đại hội và Đại hội đã quyết định thành lập:', '', 'Active', 1, 4, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mặt trận Tổ quốc Việt Nam.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Việt Nam Độc lập Đồng minh hội.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mặt trận Dân tộc giải phóng miền nam Việt Nam.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mặt trận Liên - Việt.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Theo quan điểm của Hồ Chí Minh, sức mạnh dân tộc bao gồm yếu tố chủ yếu nào?', '', 'Active', 1, 4, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Ý thức tự lực, tự cường.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Chủ nghĩa yêu nước.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tinh thần đoàn kết.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cả ba phương án kia đều đúng.', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Theo Hồ Chí Minh động lực nào đóng vai trò chủ yếu trong sự phát triển đất nước?', '', 'Active', 1, 4, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Giúp đỡ nhân dân lao động.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Thực hiện công bằng xã hội.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đại đoàn kết toàn dân tộc.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đấu tranh giai cấp, cải tạo xã hội cũ.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Đoạn văn dưới đây được trích trong văn kiện nào của Hồ Chí Minh: “…toàn Đảng, toàn dân ta đoàn kết phấn đấu, xây dựng nước Việt Nam hòa bình, thống nhất, độc lập, dân chủ và giàu mạnh, và góp phần xứng đáng vào sự nghiệp cách mạng thế giới”?', '', 'Active', 1, 4, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Lời kêu gọi của Chủ tịch Hồ Chí Minh ngày 17/7/1966.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Báo cáo Chính trị tại Đại hội III của Đảng năm 1960.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đường cách mệnh (1927).', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Di chúc (1965-1969).', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Chọn đáp án đúng ở chỗ trống theo tư tưởng Hồ Chí Minh: “Cần phải giữ gìn sự đoàn kết nhất trí của Đảng như giữ gìn……”.', '', 'Active', 1, 4, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tài sản của mình.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tính mạng của mình.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Nhân cách của mình.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Con ngươi của mắt mình.', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Chọn đáp án đúng trong chỗ trống. Theo Hồ Chí Minh, đại đoàn kết dân tộc là…hàng đầu của Đảng, của cả dân tộc?', '', 'Active', 1, 4, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mục tiêu và nhiệm vụ.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mục tiêu và phương pháp.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Nhiệm vụ và quyết tâm.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Chiến lược và sách lược.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Sức mạnh đoàn kết quốc tế trong tư tưởng Hồ Chí Minh, bao gồm:', '', 'Active', 1, 4, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Sức mạnh của giai cấp vô sản, cách mạng vô sản và các đảng cộng sản trên thế', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Sức mạnh liên minh chiến đấu giữa lao động ở các nước thuộc địa và lao động thuộc địa với vô sản chính quốc.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Sức mạnh của ba dòng thác cách mạng và tiến bộ khoa học công nghệ.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cả ba phương án kia đều đúng.', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Điền vào chỗ trống trong tư tưởng sau của Hồ Chí Minh: Chính sách đối ngoại của Việt Nam là "làm bạn với .......và không gây thù oán với một ai".', '', 'Active', 1, 4, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tất cả các nước trên thế giới.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tất cả mọi nước dân chủ.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tất cả các quốc gia, dân tộc.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tất cả các nước xã hội chủ nghĩa.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tìm yếu tố không nằm trong Mặt trận Dân tộc thống nhất?', '', 'Active', 1, 4, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Nhà nước.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Các tổ chức chính trị - xã hội.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đảng Cộng sản.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đoàn Thanh niên.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Theo Hồ Chí Minh, đoàn kết quốc tế có vai trò như thế nào đối với thắng lợi của cách mạng Việt Nam?', '', 'Active', 1, 4, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Quyết định.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Có ý nghĩa chiến lược quyết định sự thắng lợi.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Quan trọng.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Vừa quan trọng vừa quyết định.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Theo tư tưởng Hồ Chí Minh, một trong những nguyên tắc đoàn kết quốc tế là:', '', 'Active', 1, 4, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Các bên cùng có lợi.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đoàn kết trên cơ sở thống nhất mục tiêu và lợi ích, có lý, có tình.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Không dùng vũ lực và đe doạ dùng vũ lực.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Có đi, có lại.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Câu nói sau đây của Hồ Chí Minh được viết trong bức thư nào: “Tôi khuyên đồng bào đoàn kết chặt chẽ và rộng rãi. Năm ngón tay có ngón ngắn ngón dài. Nhưng ngắn hay dài đều hợp nhau lại nơi bàn tay. Trong mấy triệu người cũng có người thế này, thế khác, nhưng thế này hay thế khác đều dòng dõi tổ tiên ta”?', '', 'Active', 1, 4, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Thư gửi đồng bào Nam bộ, năm 1946.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Thư gửi đồng bào toàn quốc, năm 1947.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Thư gửi các đồng chí Bắc Bộ, năm 1947.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Thư gửi các đồng chí Trung Bộ, năm 1947.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Chọn phương án đúng nhất đối với tư tưởng Hồ Chí Minh: Để tranh thủ sự giúp đỡ của các nước xã hội chủ nghĩa trong đấu tranh cách mạng, cần coi trọng nhân tố:', '', 'Active', 1, 4, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tự lực cánh sinh, dựa vào sức mình là chính.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Có đường lối độc lập, tự chủ.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Có sự lãnh đạo đúng đắn của Đảng.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Dựa vào nguồn lực ngoại sinh là chính.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Theo Hồ Chí Minh, để lãnh đạo Mặt trận dân tộc thống nhất, Đảng phải làm gì?', '', 'Active', 1, 4, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Có năng lực lãnh đạo.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Có chính sách đúng đắn.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Có phương châm đúng đắn.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cả ba phương án kia đều đúng.', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Hồ Chí Minh đánh giá: Nhân dân ta đã đoàn kết trong Mặt trận nào để làm nên thắng lợi của Cách mạng Tháng Tám 1945?', '', 'Active', 1, 4, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('*A. Mặt trận Việt Minh.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mặt trận Tổ quốc Việt Nam.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mặt trận Liên Việt.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mặt trận Dân tộc phản đế đồng minh.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Hồ Chí Minh đánh giá: Nhân dân ta đã đoàn kết trong Mặt trận nào để làm nên thắng lợi của cuộc kháng chiến chống Pháp (1945-1954)?', '', 'Active', 1, 4, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mặt trận Việt Minh.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mặt trận Tổ quốc Việt Nam.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mặt trận Liên - Việt.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mặt trận Dân tộc Giải phóng miền Nam Việt Nam.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Theo Hồ Chí Minh, nguyên tắc hoạt động của Mặt trận dân tộc thống nhất là gì?', '', 'Active', 1, 4, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Hiệp thương dân chủ, bảo đảm đoàn kết ngày càng rộng rãi và bền vững.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tập trung dân chủ, dưới sự lãnh đạo của Đảng Cộng sản.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tự do dân chủ, tôn trọng ý kiến cá nhân.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Hợp tác thống nhất, bình đẳng giữa các giai cấp, tầng lớp.x', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Hồ Chí Minh đã giương cao ngọn cờ nào khi đoàn kết giữa cách mạng Việt Nam với các lực lượng tiến bộ trên thế giới?', '', 'Active', 1, 4, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Độc lập dân tộc và chủ nghĩa xã hội.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Hòa bình trong công lý.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Chủ nghĩa Mác - Lênin.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Chủ nghĩa quốc tế vô sản.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Câu nói sau của Hồ Chí Minh là về nguyên tắc nào trong tư tưởng đoàn kết quốc tế: “Thực lực là cái chiêng mà ngoại giao là cái tiếng. Chiêng có to, tiếng mới lớn”?', '', 'Active', 1, 4, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Thống nhất về mục tiêu và lợi ích.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Có lý, có tình.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tự lực, tự cường.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tôn trọng chủ quyền, toàn vẹn lãnh thổ.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Theo Hồ Chí Minh, Mặt trận dân tộc thống nhất phải đặt dưới sự lãnh đạo của ai?', '', 'Active', 1, 4, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Giai cấp công nhân.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tầng lớp trí thức.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Liên minh công - nông - trí thức.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đảng Cộng sản Việt Nam.', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Theo Hồ Chí Minh, bản chất của các đoàn thể, tổ chức quần chúng nhân dân là:', '', 'Active', 1, 4, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tổ chức của Đảng.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tổ chức của Nhà nước.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tổ chức của Dân.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tổ chức của Quốc tế cộng sản.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nền văn hóa mới mà chúng ta xây dựng theo tư tưởng Hồ Chí Minh bao gồm tính dân tộc, tính đại chúng và tính chất gì?', '', 'Active', 1, 4, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Hiện đại.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('*B. Khoa học.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tiên tiến.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Xã hội chủ nghĩa.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Theo Hồ Chí Minh, phải làm cho văn hóa thấm sâu vào tâm lý quốc dân, nghĩa là văn hóa phải sửa đổi được thói hư, tật xấu gì?', '', 'Active', 1, 4, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tham nhũng.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tham nhũng, lười biếng.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Phù hoa, xa xỉ.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tham nhũng, lười biếng, phù hoa, xa xỉ.', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tại Đại hội đại biểu toàn quốc lần thứ II của Đảng (1951), Hồ Chí Minh khẳng định, nền văn hóa Việt Nam bao gồm những tính chất nào?', '', 'Active', 1, 4, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Dân tộc, hiện đại.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Hiện đại, đậm đà bản sắc dân tộc.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Dân tộc, khoa học, đại chúng.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Có nội dung xã hội chủ nghĩa và tính chất dân tộc.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Theo tư tưởng Hồ Chí Minh, văn hóa với chính trị có quan hệ chặt chẽ với nhau. Có chính trị mới có văn hóa, xưa kia chính trị bị đàn áp, nền văn hóa của ta vì thế không nảy sinh được. Nay nước ta đã độc lập, tinh thần được giải phóng, cần phải có một nền văn hóa hợp với khoa học và hợp cả với nguyện vọng của ai?', '', 'Active', 1, 4, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Nguyện vọng của giai cấp công nhân.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Nguyện vọng của công – nông.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Nguyện vọng của công – nông – trí thức.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Nguyện vọng của dân.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Quan điểm nào sau đây không phải của Hồ Chí Minh về chức năng của văn hóa?', '', 'Active', 1, 4, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Bồi dưỡng tư tưởng đúng đắn và những tình cảm cao đẹp cho nhân dân.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mở rộng hiểu biết, nâng cao dân trí.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Bồi dưỡng những phẩm chất, phong cách và lối sống tốt đẹp, lành mạnh; hướng đến chân, thiện, mỹ để hoàn thiện bản thân.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Dân tộc, khoa học và đại chúng.', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Câu sau thể hiện quan điểm của Hồ Chí Minh về lĩnh vực nào: “Vì lẽ sinh tồn cũng như mục đích của cuộc sống, loài người mới sáng tạo và phát minh ra ngôn ngữ, chữ viết, đạo đức, pháp luật, khoa học, tôn giáo, văn học, nghệ thuật, những công cụ cho sinh hoạt hằng ngày về mặc, ăn, ở và các phương thức sử dụng”.', '', 'Active', 1, 4, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Khoa học.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Văn hóa.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Xã hội.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Kinh tế.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Phương án nào sau đây không phải của Hồ Chí Minh về phương châm, phương pháp giáo dục?', '', 'Active', 1, 5, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Học đi đôi với hành. Lý luận liên hệ với thực tế.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Học tập kết hợp với lao động. Phối hợp nhà trường - gia đình - xã hội.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Thực hiện dân chủ, bình đẳng trong giáo dục.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Học, học nữa, học mãi.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Sau Cách mạng 8/1945, Hồ Chí Minh cho rằng: Chúng ta có nhiệm vụ cấp bách là phải giáo dục lại nhân dân chúng ta… làm cho dân tộc chúng ta trở nên một dân tộc dũng cảm, yêu nước, yêu lao động, một dân tộc xứng đáng với nước Việt Nam độc lập. Người đề nghị mở một chiến dịch giáo dục lại tinh thần nhân dân bằng cách thực hiện gì?', '', 'Active', 1, 5, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Thực hiện phong trào xóa nạn mù chữ.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mở rộng hiểu biết, nâng cao dân trí.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Thực hiện: cần, kiệm, liêm, chính.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Gắn liền với lao động sản xuất.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Ngày 3/9/1945, trong phiên họp đầu tiên của Hội đồng Chính phủ, Hồ Chí Minh nêu 6 nhiệm vụ cấp bách của nhà nước Việt Nam Dân chủ Cộng hòa. Trong đó, ở vấn đề thứ tư, Người đề nghị mở một chiến dịch giáo dục lại tinh thần nhân dân bằng cách thực hiện gì?', '', 'Active', 1, 5, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tự phê bình và phê bình.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Chủ nghĩa yêu nước.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cần, Kiệm, Liêm, Chính.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đoàn kết.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Chọn phương án đúng điền vào chỗ trống ở câu sau của Hồ Chí Minh về con người: “Chữ người, nghĩa hẹp là ..... , anh em, họ hàng, bầu bạn. Nghĩa rộng là ..... cả nước. Rộng nữa là cả ..... ”.', '', 'Active', 1, 5, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Nhân dân/ dân tộc/ nhân loại.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Gia đình/ người dân/ con người.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Gia đình/đồng bào/ loài người.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cha mẹ/ đồng bào/ người cùng khổ.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Theo Hồ Chí Minh, muốn xây dựng chủ nghĩa xã hội, trước hết cần phải có yếu tố nào sau đây?', '', 'Active', 1, 5, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tài nguyên..', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Con người xã hội chủ nghĩa.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tiền vốn.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Khoa học kỹ thuật.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Theo Hồ Chí Minh, CẦN, KIỆM, LIÊM, CHÍNH là nền tảng của:', '', 'Active', 1, 5, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đạo đức mới.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Thi đua ái quốc.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đạo đức mới và Đời sống mới.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đời sống mới và Thi đua ái quốc.', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Theo Hồ Chí Minh, người cách mạng là “phải biết làm cho phần tốt ở trong mỗi con người nẩy nở như hoa mùa xuân và phần xấu bị mất dần đi”. Đó là thái độ của người cách mạng đối với điều gì trong lòng mỗi người?', '', 'Active', 1, 5, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Chủ nghĩa cá nhân.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đạo đức cách mạng và đạo đức cũ.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tốt - Xấu.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Thiện - Ác.', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Quan điểm xây dựng nền văn hóa có nội dung xã hội chủ nghĩa và tính chất dân tộc được Hồ Chí Minh nêu ra vào thời gian nào?', '', 'Active', 1, 5, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Năm 1941.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Năm 1945.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Năm 1951.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Năm 1960. là:', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Hồ Chí Minh lưu ý rằng, đấu tranh chống chủ nghĩa cá nhân nghĩa', '', 'Active', 1, 5, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Chỉ bảo vệ lợi ích tập thể.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Xóa bỏ lợi ích cá nhân.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Không phải “giày xéo lên lợi ích cá nhân”.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cân bằng giữa lợi ích quốc gia với lợi ích cá nhân.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Bản chất của tư tưởng đạo đức Hồ Chí Minh là gì?', '', 'Active', 1, 5, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đạo đức tư sản.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đạo đức cá nhân.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đạo đức cách mạng.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đạo đức phong kiến.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Theo Hồ Chí Minh, văn hóa là:', '', 'Active', 1, 5, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Những sáng tạo và phát minh của loài người về ngôn ngữ, chữ viết, đạo đức, pháp luật, khoa học, tôn giáo, văn học, nghệ thuật.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Những công cụ cho sinh hoạt hằng ngày về mặc, ăn, ở do loài người sáng tạo và phát minh ra.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Những sáng tạo và phát minh của loài người về các phương thức sử dụng.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cả ba phương án kia đều đúng.', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Quan điểm của Hồ Chí Minh về vị trí và vai trò của văn hóa trong đời sống xã hội: “Xã hội thế nào, văn hóa thế ấy. Văn nghệ của dân tộc ta vốn rất phong phú, nhưng dưới chế độ thực dân và phong kiến nhân dân ta bị nô lệ thì văn nghệ cũng bị nô lệ, bị tồi tàn không thể phát triển được”, “Rõ ràng là dân tộc bị áp bức thì văn nghệ cũng mất tự do. Văn nghệ muốn tự do thì phải ….. ”. Chọn phương án đúng điền vào chỗ trống.', '', 'Active', 1, 5, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Nước nhà độc lập.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tham gia cách mạng.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Phục vụ quần chúng nhân dân.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Thoát khỏi ràng buộc của xã hội.', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Định nghĩa văn hóa của Hồ Chí Minh đã khắc phục được quan niệm phiến diện nào sau đây?', '', 'Active', 1, 5, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đồng nhất văn hóa với văn học nghệ thuật.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Coi văn hóa là hiện tượng thuần túy tinh thần.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đồng nhất văn hóa với học vấn.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cả ba phương án kia đều đúng.', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Công việc đầu tiên trong Di chúc mà Hồ Chí Minh căn dặn Đảng, Nhà nước ta sau khi đất nước thống nhất là về vấn đề gì?', '', 'Active', 1, 5, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Văn hóa.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Kinh tế.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Con người.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cán bộ.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Theo Hồ Chí Minh, vấn đề gì là quan trọng nhất trong xây dựng đời sống mới?', '', 'Active', 1, 5, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Xây dựng lối sống mới.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Xây dựng đạo đức mới.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Xây dựng nếp sống mới.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Xây dựng con người mới.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Trong cách mạng dân tộc dân chủ nhân dân, nền văn hóa mới được Hồ Chí Minh xác định có những tính chất nào?', '', 'Active', 1, 5, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cách mạng, Khoa học, Đại chúng.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Dân tộc, Khoa học, Đại chúng.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Dân chủ, Cách mạng, Đại chúng', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Dân tộc, Cách mạng, Đại chúng.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Hồ Chí Minh xác định đạo đức là gốc của người cách mạng, vì:', '', 'Active', 1, 5, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đạo đức cách mạng là sức hấp dẫn của chủ nghĩa xã hội.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Có đạo đức cách mạng mới hoàn thành được nhiệm vụ cách mạng vẻ vang.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đạo đức cách mạng là thước đo lòng cao thượng của con người.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cả ba phương án kia đều đúng.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Chọn phương án đúng điền vào chỗ trống trong câu sau của Hồ Chí Minh: “Đạo đức cách mạng không phải trên trời sa xuống. Nó do đấu tranh và … bền bỉ hàng ngày mà phát triển và củng cố”.', '', 'Active', 1, 5, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Kiên trì.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tu dưỡng.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Học tập.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Rèn luyện.', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Câu nói “một tấm gương sống còn có giá trị hơn một trăm bài diễn văn tuyên truyền” của Hồ Chí Minh thể hiện tầm quan trọng của nguyên tắc xây dựng đạo đức nào sau đây?', '', 'Active', 1, 5, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tự phê bình và phê bình.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tu dưỡng đạo đức suốt đời.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Xây đi đôi với chống.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Nêu gương về đạo đức.', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Hồ Chí Minh xem xét CHÍNH ở ba mặt nào sau đây?', '', 'Active', 1, 5, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mình đối với mình, đối với dân tộc, đối với nhân loại.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mình đối với mình, đối với đồng bào, đối với công việc.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mình đối với mình, đối với nhân dân, đối với công việc.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mình đối với mình, đối với người, đối với công việc.', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Chọn phương án đúng điền vào chỗ trống trong quan điểm sau của Hồ Chí Minh: “Từ tiểu học, trung học, cho đến đại học, là nơi rèn luyện nhi đồng và thanh niên. Óc những người tuổi trẻ trong sạch như một trắng. Nhuộm xanh thì nó sẽ xanh. Nhuộm đỏ thì nó sẽ đỏ. Vì vậy sự học tập ở trong trường có rất lớn cho tương lai của thanh niên, và tương lai của thanh niên tức là tương lai của nước nhà”:', '', 'Active', 1, 5, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tấm lụa/ảnh hưởng.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tấm lụa/ ý nghĩa.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tấm vải/ tác động.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tờ giấy/ vai trò.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Luận điểm nào dưới đây được Hồ Chí Minh nói về vai trò của văn', '', 'Active', 1, 5, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Văn hóa nghệ thuật cũng là một mặt trận.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Văn hóa phải soi đường cho quốc dân đi.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Văn hóa phải đi sâu vào trong tâm lý quốc dân.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Văn hóa phải được giải phóng.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Câu nói nào sau đây của Hồ Chí Minh:', '', 'Active', 1, 5, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Kẻ tham lam là có tội với nước, với dân.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Người mà không Liêm, không bằng súc vật.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Ai cũng tham lợi, thì nước sẽ nguy.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cả ba phương án kia đều đúng.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Câu sau đây nói lên điều gì trong nhận thức của Hồ Chí Minh về con người: “Vì lợi ích mười năm trồng cây, vì lợi ích trăm năm trồng người”?', '', 'Active', 1, 5, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Phương pháp xây dựng con người.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Sự cần thiết phải xây dựng con người.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Vai trò của con người.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Nội dung xây dựng con người.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Theo Hồ Chí Minh, muốn đánh thắng kẻ địch bên ngoài thì trước hết phải đánh thắng kẻ địch bên trong đó là:', '', 'Active', 1, 5, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Giặt dốt.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Chủ nghĩa cá nhân.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Giặt dốt và giặt đói.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Giặt đói', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Trong tư tưởng Hồ Chí Minh về đạo đức, LIÊM nghĩa là gì?', '', 'Active', 1, 5, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Không tham tiền tài, không tham sung sướng.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Không ham người tâng bốc mình.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Không tham địa vị.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cả ba phương án kia đều đúng.', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Theo Hồ Chí Minh, góp sức làm việc và khéo tổ chức sẽ mang lại kết quả tốt cho:', '', 'Active', 1, 5, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cần.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Kiệm.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Liêm.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Chính.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Theo Hồ Chí Minh, “ham học, ham làm, ham tiến bộ” là biểu hiện', '', 'Active', 1, 5, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cần.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Kiệm.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Liêm.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Yêu nước.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Theo Hồ Chí Minh, ở đời và làm người thì phải:', '', 'Active', 1, 5, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Thương dân.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Yêu nước.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Thương nhân loại bị áp bức.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cả ba phương án kia đều đúng.', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nhận định nào sau đây đúng theo tư tưởng Hồ Chí Minh?', '', 'Active', 1, 5, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Văn hóa phải ở trong kinh tế và chính trị có nghĩa là văn hóa phải tham gia thực hiện những nhiệm vụ chính trị.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Văn hóa phải ở trong kinh tế và chính trị có nghĩa là văn hóa phải thúc đẩy xây dựng và phát triển kinh tế.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Văn hóa phải ở trong kinh tế và chính trị có nghĩa là văn hóa phải góp phần ổn định chính trị.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Văn hóa phải ở trong kinh tế và chính trị có nghĩa là văn hóa phải tham gia thực hiện những nhiệm vụ chính trị, thúc đẩy xây dựng và phát triển kinh tế.', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Trong mối quan hệ giữa văn hóa với kinh tế, chính trị, xã hội, Hồ Chí Minh xác định:', '', 'Active', 1, 5, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Văn hóa ở trong kinh tế, chính trị, xã hội.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Văn hóa thuộc về kiến trúc thượng tầng.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Văn hóa là đời sống tinh thần xã hội.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cả ba phương án kia đều đúng.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Trong tư tưởng Hồ Chí Minh về đạo đức, CẦN nghĩa là gì?', '', 'Active', 1, 5, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Lao động cần cù, có kế hoạch.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Lao động có kế hoạch, có năng suất cao.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Lao động cần cù, có năng suất cao.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Lao động cần cù, siêng năng, có kế hoạch, có sự sáng tạo và có năng suất cao.', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Trong tư tưởng Hồ Chí Minh về đạo đức, KIỆM nghĩa là gì?', '', 'Active', 1, 5, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tiết kiệm sức lao động, thời gian.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tiết kiệm của cải.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tiết kiệm thời gian và của cải.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tiết kiệm công sức, thời gian và của cải.', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Trong tư tưởng Hồ Chí Minh về đạo đức, CHÍNH được biểu hiện trong mối quan hệ nào?', '', 'Active', 1, 5, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Bản thân, cấp trên.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mọi người, công việc.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cấp trên, cấp dưới, nhân dân.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Bản thân, mọi người, công việc.', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Theo tư tưởng Hồ Chí Minh, “tinh thần quốc tế trong sáng” được hiểu như thế nào?', '', 'Active', 1, 5, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tinh thần đoàn kết quốc tế vô sản.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tinh thần đoàn kết với các dân tộc bị áp bức, với nhân dân lao động các nước.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tinh thần đoàn kết với các lực lượng tiến bộ trên thế giới.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cả ba phương án kia đều đúng.', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Điền vào chỗ trống trong câu sau của Hồ Chí Minh: “Hiểu chủ nghĩa Mác - Lênin là….. Nếu thuộc bao nhiêu sách mà sống không có tình có nghĩa thì sao gọi là hiểu chủ nghĩa Mác - Lênin được” ?', '', 'Active', 1, 5, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Phải hiểu những nguyên lý.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Phải các cặp phạm trù, quy luật.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Phải sống với nhau có tình, có nghĩa.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Phải làm việc tốt.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Theo Hồ Chí Minh đạo đức cách mạng là một phạm trù lịch sử, nghĩa là nó cũng thay đổi theo nhiệm vụ từng thời kỳ của cách mạng, “đạo đức xã hội chủ nghĩa không phải ở đâu cũng biểu hiện giống nhau. Ở nước ta đạo đức xã hội chủ nghĩa là …..”. Chọn phương án đúng điền vào chỗ trống.', '', 'Active', 1, 5, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Lao động xây dựng nước nhà.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cần kiệm xây dựng nước nhà.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Bảo vệ tổ quốc xã hội chủ nghĩa.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Học tập, lao động, nghiên cứu khoa học.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Hồ Chí Minh yêu cầu Đảng phải “là đạo đức, là văn minh”; “Mỗi đảng viên và cán bộ phải thật sự thấm nhuần đạo đức cách mạng, thật sự cần kiệm liêm chính, chí công vô tư. Phải giữ gìn Đảng ta thật trong sạch, phải xứng đáng là người lãnh đạo, ….. ”. Chọn phương án đúng điền vào chỗ trống.', '', 'Active', 1, 5, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Là người chỉ đường cho nhân dân.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Là người chỉ huy tài tình cho cách mạng.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Là người đầy tớ thật trung thành của nhân dân.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Là người dẫn dắt nhân dân đến thắng lợi cuối cùng.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nhận định sau đây là của ai: “Chủ tịch Hồ Chí Minh, một biểu tượng xuất sắc về sự tự khẳng định dân tộc, đã cống hiến trọn đời mình cho sự nghiệp giải phóng dân tộc của nhân dân Việt Nam, góp phần vào cuộc đấu tranh chung của các dân tộc vì hòa bình, độc lập dân tộc, dân chủ và tiến bộ xã hội”?', '', 'Active', 1, 5, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('M.I. Matsna (Apganixtan).', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tổng thống Xu-các-nô (Indonesia).', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Oxíp Men-đen-xtam (Nga).', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tổ chức Giáo dục, Khoa học và Văn hóa Liên hợp quốc (UNESCO).', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Chọn phương án đúng điền vào chỗ trống trong câu sau của Hồ Chí Minh: “Người cách mạng phải có ….. thì mới gánh được nặng và đi được xa”?', '', 'Active', 1, 5, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Trí tuệ.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Phương pháp cách mạng.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đạo đức cách mạng.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Ý chí cách mạng.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nhận định sau đây của Hồ Chí Minh trong bài viết/bài nói nào: “Một dân tộc dốt là một dân tộc yếu”?', '', 'Active', 1, 5, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('“Những nhiệm vụ cấp bách của Nhà nước Việt Nam dân chủ cộng hòa” (3/9/1945).', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('“Chống nạn thất học” (Báo Cứu quốc, số 58, ngày 4/10/1945).', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('“Thư gửi các học sinh” (9/1945).', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('“Thư gửi Ủy ban nhân dân các kỳ, tỉnh, huyện và làng” (Báo Cứu quốc, số 69, ngày 17/10/1945).', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Chọn phương án đúng điền vào chỗ trống trong câu sau của Hồ Chí Minh về vai trò của văn hóa: “Văn hóa ... cho quốc dân đi”.', '', 'Active', 1, 5, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Chỉ đường.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Soi đường.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Mở đường.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Dẫn đường.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nội dung xây dựng con người xã hội chủ nghĩa theo tư tưởng Hồ Chí Minh gồm:', '', 'Active', 1, 5, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Có ý thức làm chủ, tinh thần tập thể xã hội chủ nghĩa và tư tưởng “mình vì mọi người, mọi người vì mình”.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cần kiệm xây dựng đất nước, hăng hái bảo vệ Tổ quốc; Có lòng yêu nước nồng nàn, tinh thần quốc tế trong sáng.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Có phương pháp làm việc khoa học, phong cách quần chúng, dân chủ, nêu gương.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cả ba phương án kia đều đúng.', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Theo Hồ Chí Minh, tinh thần quốc tế trong sáng được hiểu là:', '', 'Active', 1, 5, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tinh thần đoàn kết quốc tế vô sản.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tinh thần đoàn kết với tất cả những người tiến bộ trên thế giới.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tinh thần đoàn kết với các dân tộc bị áp bức.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cả ba phương án kia đều đúng.', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Luận điểm nào dưới đây được Hồ Chí Minh nói về chức năng của văn', '', 'Active', 1, 5, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Văn hóa phải nâng cao dân trí.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Văn hóa không thể đứng ngoài, mà phải ở trong kinh tế và chính trị.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Văn hóa là một kiến trúc thượng tầng.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Văn hóa phải gắn liền với lao động sản xuất.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Hồ Chí Minh đã chỉ rõ: Phải làm thế nào cho văn hóa thấm sâu vào tâm lý quốc dân, nghĩa là văn hóa phải sửa đổi được những tham nhũng, lười biếng, phù hoa, xa xỉ; văn hóa phải ….. Chọn phương án đúng điền vào chỗ trống.', '', 'Active', 1, 5, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Xây dựng tình cảm cao đẹp.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Bồi dưỡng tư tưởng đúng đắn.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Giáo dục lại tinh thần nhân dân.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Soi đường cho quốc dân đi.', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Hồ Chí Minh coi trọng văn hóa, học vấn, trí tuệ. Người nói: “Muốn xây dựng chủ nghĩa xã hội thì nhất định phải có ….. Cần phải học văn hóa, chính trị, kỹ thuật”. “Người có học mới có tiến bộ, càng học càng tiến bộ”. Chọn phương án đúng điền vào chỗ trống.', '', 'Active', 1, 5, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Học thức.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Giáo dục.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Khoa học.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Văn hóa.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Theo Hồ Chí Minh, trong xã hội có áp bức dân tộc và áp bức giai cấp thì tính nhân văn cao cả nhất là gì?', '', 'Active', 1, 5, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Giành độc lập cho dân tộc.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Xoá bỏ bóc lột giai cấp.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Giành độc lập cho dân tộc và xoá bỏ bóc lột giai cấp.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đấu tranh cho hòa bình, thống nhất và độc lập dân tộc.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Chọn phương án đúng vào chỗ trống trong câu sau của Hồ Chí Minh: “Người đi giáo dục ….. phải học thêm mãi, học không bao giờ đủ, còn sống còn phải học”.', '', 'Active', 1, 5, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Phải yêu nghề.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cũng phải được giáo dục.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Phải có đạo đức cách mạng.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Phải yên tâm công tác.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Hồ Chí Minh nói về vai trò của “làm gương” trong thực hiện đời sống mới: “Đời sống mới cũng cần có ….. Khi trông thấy những kết quả tốt tươi, thì chắc những nơi khác sẽ hăng hái làm theo”. Chọn phương án đúng điền vào chỗ trống.', '', 'Active', 1, 5, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Những người làm gương.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Những cán bộ làm gương.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Những tập thể làm gương.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Những người làm gương, những nhà làm gương, những làng làm gương.', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Đối với cán bộ, đảng viên, Hồ Chí Minh yêu cầu phải làm gương về đạo đức trên mặt nào?', '', 'Active', 1, 5, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tinh thần, vật chất và văn hóa.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tinh thần, văn hóa.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Văn hóa.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Vật chất, tinh thần, tư tưởng.', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Quan điểm nào sau đây không phải của Hồ Chí Minh về những nguyên tắc xây dựng đạo đức mới?', '', 'Active', 1, 5, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Nói ít làm nhiều.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Xây đi đôi với chống.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Phải tu dưỡng đạo đức suốt đời.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Nói đi đôi với làm, phải nêu gương về đạo đức.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Hồ Chí Minh xác định yếu tố nào là gốc, nền tảng của người cách mạng?', '', 'Active', 1, 5, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đạo đức.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tài năng.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tư cách.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cả ba phương án kia đều đúng.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Câu nói: "Con đường của thanh niên chỉ có thể là con đường cách mạng" là của ai?', '', 'Active', 1, 5, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Lý Tự Trọng.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Nguyễn Đức Cảnh.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Lê Hồng Phong.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Nguyễn Ái Quốc.', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Theo Hồ Chí Minh, phẩm chất đạo đức nào sau đây là quan trọng nhất, bao trùm và chi phối các phẩm chất khác?', '', 'Active', 1, 5, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Trung với nước, hiếu với dân.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cần, kiệm, liêm, chính, chí công vô tư.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Thương yêu con người, sống có tình có nghĩa.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Tinh thần quốc tế trong sáng.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Theo Hồ Chí Minh, giáo dục đạo đức mới phải được tiến hành như thế nào?', '', 'Active', 1, 5, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Phù hợp với từng giai đoạn cách mạng, lứa tuổi, ngành nghề, giai cấp, tầng lớp,', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Phù hợp với từng môi trường khác nhau.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Phù hợp với từng lứa tuổi, ngành nghề, giai cấp, tầng lớp.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cả ba phương án kia đều đúng.', 1, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Luận điểm: "Người cách mạng phải có đạo đức cách mạng làm nền tảng, mới hoàn thành được nhiệm vụ cách mạng vẻ vang" của Hồ Chí Minh viết trong tác phẩm/bài viết nào?', '', 'Active', 1, 5, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đạo đức cách mạng (1958).', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Sửa đối lối làm việc (1947).', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Di chúc (1965-1969).', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Người cán bộ cách mạng (1955).', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Quan điểm: “Khi làm bất cứ việc gì cũng đừng nghĩ đến mình trước, khi hưởng thụ thì mình nên đi sau” của Hồ Chí Minh về chuẩn mực đạo đức nào sau đây?', '', 'Active', 1, 5, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Chí công vô tư.', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cần, Kiệm.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Cần, Kiệm, Liêm, Chính.', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Liêm, Chính.', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Quan điểm: "Phải có tình đồng chí thương yêu lẫn nhau" được Hồ Chí Minh viết trong tác phẩm nào?', '', 'Active', 1, 5, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đường cách mệnh (1927).', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Di chúc (1965-1969).', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đạo đức cách mạng (1958).', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Bản án chế độ thực dân Pháp (1925).', 0, @last_question_id);

INSERT INTO questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('“Cũng như sông thì có nguồn mới có nước, không có nguồn thì sông cạn. Cây phải có gốc, không có gốc thì cây héo. Người cách mạng phải có đạo đức, không có đạo đức thì dù tài giỏi đến mấy cũng không lãnh đạo được nhân dân". Luận điểm trên đây của Hồ Chí Minh trong tác phẩm nào?', '', 'Active', 1, 5, 1);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Sửa đối lối làm việc (1947).', 1, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Di chúc (1965-1969).', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Đạo đức cách mạng (1958).', 0, @last_question_id);
INSERT INTO answers (content, is_correct, question_id)
VALUES ('Người cán bộ cách mạng (1955).', 0, @last_question_id);

