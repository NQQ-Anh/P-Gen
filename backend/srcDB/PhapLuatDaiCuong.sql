SET NAMES 'utf8mb4';

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Theo quan điểm của chủ nghĩa Mác-Lênin thì nguyên nhân chủ yếu làm xuất hiện Nhànước là?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Do có sự phân hóa lao động trong xã hội', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Do có sự phân hóa giai cấp và đấu tranh giai cấp trong xã hội', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Do địa hình, khí hậu không thuận lợi nên con người phải hợp sức lại để phát triển sản xuất', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Do các thành viên trong xã hội lập ra', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nhà nước chưa tồn tại trong hình thái kinh tế - xã hội nào?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hình thái kinh tế - xã hội Công xã nguyên thủy', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hình thái kinh tế - xã hội Cộng sản nguyên thủy', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hình thái kinh tế - xã hội Cộng sản chủ nghĩa', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hình thái kinh tế - xã hội Chiếm hữu nô lệ', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tổ chức thị tộc trong xã hội Cộng sản nguyên thủy là?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Một tổ chức kinh tế', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Một tập đoàn người có cùng quan hệ huyết thống', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Một xã hội độc lập', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Một đơn vị độc lập', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khi nghiên cứu về tổ chức thị tộc thì khẳng định nào sau đây là đúng?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thị tộc là gia đình trong xã hội Cộng sản nguyên thủy', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Trong thị tộc đã có sự phân công lao động chuyên môn hóa ngành nghề', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thị tộc là đơn vị kinh tế đầu tiên của xã hội cộng sản nguyên thủy', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tổ chức thị tộc gắn liền với nền kinh tế sản xuất', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Theo quan điểm của chủ nghĩa Mác-Lênin về Nhà nước thì?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước là hiện tượng tự nhiên', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước là hiện tượng xã hội mang tính lịch sử', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước là hiện tượng xã hội', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước là hiện tượng xuất hiện và tồn tại cùng với sự xuất hiện, tồn tại của lịch sử xã hộiloài người', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Dân cư trong xã hội cộng sản nguyên thủy được phân bố theo?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tôn giáo', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quan hệ huyết thống', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đơn vị hành chính lãnh thổ', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hội đồng thị tộc, hội đồng bộ lạc', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khi nghiên cứu về nguồn gốc Nhà nước, xem Nhà nước là hiện tượng siêu nhiên, vĩnhcửu, đó là quan điểm của?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thuyết thần học', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thuyết gia trưởng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thuyết khế ước xã hội', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thuyết bạo lực', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khi nghiên cứu về tổ chức thị tộc thì khẳng định nào sau đây là sai?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thị tộc là đơn vị kinh tế đầu tiên của xã hội cộng sản nguyên thủy', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Trong thị tộc đã hình thành hội đồng thị tộc', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Trong thị tộc đã hình thành các giai cấp khác nhau', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thị tộc tồn tại gắn liền với nền kinh tế tự nhiên', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Những quy phạm xã hội tồn tại trong xã hội cộng sản nguyên thủy là?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đạo đức, tập quán, pháp luật', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tập quán, tín điều tôn giáo, luật pháp', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tín điều tôn giáo, tập quán pháp', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đạo đức, tập quán, tín điều tôn giáo', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Trong các quan điểm phi mácxít về nguồn gốc Nhà nước thì quan điểm nào được coilà tiến bộ nhất?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quan điểm của những nhà nghiên cứu theo thuyết thần học', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quan điểm của những nhà nghiên cứu theo thuyết gia trưởng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quan điểm của những nhà nghiên cứu theo thuyết khế ước xã hội', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quan điểm của những nhà nghiên cứu theo thuyết bạo lực', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('C.Mác và Ăngghen đã khái quát hóa quá trình tồn tại, phát triển, thay đổi của xã hộiloài người trải qua..... lần phân công lao động?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hai', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Ba', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bốn', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Năm', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Đề cập đến quá trình phát triển, thay đổi của xã hội loài người, nhận định nào sauđây là sai?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lần phân công lao động thứ nhất: ngành chăn nuôi ra đời', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lần phân công lao động thứ hai: ngành trồng trọt và tiểu thủ công nghiệp ra đời', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lần phân công lao động thứ ba: ngành thương nghiệp ra đời', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lần phân công lao động thứ ba làm cho những mâu thuẫn trong xã hội ngày càng trở nêngay gắt', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Đề cập đến quá trình phát triển, thay đổi của xã hội loài người, nhận định nào sauđây là sai?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lần phân công lao động thứ nhất: ngành chăn nuôi ra đời', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lần phân công lao động thứ hai: ngành tiểu thủ công nghiệp ra đời', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lần phân công lao động thứ ba: ngành thương nghiệp ra đời', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lần phân công lao động thứ tư: Nhà nước ra đời', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nhận định nào sau đây là sai?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hội đồng thị tộc là tổ chức quyền lực cao nhất của thị tộc', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cơ sở kinh tế đặc trưng của xã hội cộng sản nguyên thủy là chế độ sở hữu chung về tư liệusản xuất và sản phẩm lao động', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Xã hội cộng sản nguyên thủy đã tồn tại quyền lực Nhà nước', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quyền lực trong xã hội cộng sản nguyên thủy là quyền lực xã hội, chưa mang tính giai cấp', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Quyền lực trong xã hội cộng sản nguyên thủy mới chỉ là quyền lực xã hội vì?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chưa mang tính giai cấp', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quyền lực gắn liền với xã hội, hòa nhập với xã hội', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Do toàn xã hội tổ chức ra và phục vụ lợi ích cho cả cộng đồng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bao gồm các đáp án', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nhà nước là hiện tượng xã hội mang tính lịch sử, đây là khẳng định về nguồn gốc Nhànước theo quan điểm của?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Aristote', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('J.J.Rousseau', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('E.Duyring', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Mác-Lênin', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khi nghiên cứu về nguồn gốc Nhà nước, khẳng định nào sau đây là sai?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước ra đời trong điều kiện xã hội có giai cấp và đấu tranh giai cấp', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước chưa xuất hiện trong chế độ cộng sản nguyên thủy', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước ra đời, tồn tại cùng với lịch sử xã hội loài người', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước là hiện tượng xã hội mang tính lịch sử', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khẳng định nào sau đây đúng khi đề cập về bản chất Nhà nước?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước nào cũng chỉ mang bản chất xã hội', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Mọi Nhà nước đều là bộ máy dùng để duy trì sự thống trị của giai cấp này đối với giai cấpkhác', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bất cứ Nhà nước nào cũng thể hiện bản chất xã hội rõ nét hơn bản chất giai cấp', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bất cứ Nhà nước nào cũng đều mang bản chất giai cấp và bản chất xã hội', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Bản chất giai cấp của Nhà nước được thể hiện?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước là công cụ bảo vệ lợi ích của nhân dân lao động', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước là một bộ máy trấn áp đặc biệt của giai cấp này đối với giai cấp khác', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước là công cụ để tổ chức, quản lý xã hội', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cả a, b, c đều đúng', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Bản chất xã hội của Nhà nước được thể hiện?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước là công cụ sắc bén để duy trì sự thống trị giai cấp', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước là một bộ máy trấn áp đặc biệt của giai cấp này đối với giai cấp khác', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước bảo đảm trật tự an toàn xã hội và giải quyết công việc chung của xã hội', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước là một bộ máy cưỡng chế đặc biệt nằm trong tay giai cấp cầm quyền', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Với bản chất là chuyên chính vô sản, “nó” không còn là Nhà nước theo đúng nghĩanữa mà chỉ còn là “một nửa Nhà nước” - “nó” đó là Nhà nước?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước chủ nô', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước phong kiến', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước tư sản', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước xã hội chủ nghĩa', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nhà nước có mấy thuộc tính?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('2', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('3', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('4', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('5', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Thuộc tính của Nhà nước được thể hiện?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước thiết lập một quyền lực xã hội', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước có quyền ban hành những nội quy, điều lệ', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước có lãnh thổ và thực hiện sự phân chia dân cư thành các đơn vị hành chính lãnhthổ', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước có quyền quản lý mọi mặt đời sống xã hội', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nhà nước nào cũng có chức năng?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bảo đảm an ninh chính trị', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phát triển kinh tế', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đối nội và đối ngoại', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Ký kết điều ước quốc tế', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Đề cập về mối quan hệ giữa các chức năng của Nhà nước, thì khẳng định nào sau đâylà sai?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chức năng đối nội và chức năng đối ngoại không liên quan đến nhau', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chức năng đối nội là cơ sở cho việc thực hiện chức năng đối ngoại', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Kết quả của việc thực hiện chức năng đối ngoại có tác động đến việc thực hiện chức năngđối nội', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chức năng đối nội có vai trò quan trọng hơn chức năng đối ngoại', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Đối nội và đối ngoại là những mặt hoạt động chủ yếu của Nhà nước, đó chính là?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bản chất Nhà nước', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đặc trưng cơ bản của Nhà nước', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cách thức tồn tại của Nhà nước', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chức năng của Nhà nước', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Việt Nam phối hợp với lực lượng an ninh các quốc gia trong khu vực giải quyết vấnđề tội phạm xuyên quốc gia, đây là hoạt động thể hiện?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chức năng của Nhà nước', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chức năng đối ngoại của Nhà nước', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhiệm vụ của Nhà nước', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Mối quan hệ của Nhà nước Việt Nam', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Đẩy mạnh cải cách thủ tục hành chính, tăng cường hiệu quả hoạt động của bộ máyNhà nước, đặc biệt trong giai đoạn hiện nay là nội dung thuộc về?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chức năng đối nội của Nhà nước', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quyền hạn của Nhà nước', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chức năng Nhà nước', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhiệm vụ của Nhà nước', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nguyên nhân dẫn đến sự thay thế các kiểu Nhà nước trong lịch sử là?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Do ý chí của giai cấp thống trị xã hội', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Do sự phát triển tự nhiên của xã hội', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Do mâu thuẫn giữa lực lượng sản xuất và quan hệ sản xuất trong xã hội', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Do sự vận động, phát triển, thay thế các hình thái kinh tế - xã hội mà nhân tố làm nên sựthay thế đó là các cuộc cách mạng xã hội', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khi nghiên cứu về các kiểu Nhà nước trong lịch sử, khẳng định nào sau đây là sai?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tương ứng với mỗi hình thái kinh tế - xã hội trong lịch sử thì có một kiểu Nhà nước', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cơ sở để xác định kiểu Nhà nước là các yếu tố kinh tế - xã hội tồn tại trong một giai đoạnlịch sử nhất định', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nguyên nhân dẫn đến sự thay thế các kiểu Nhà nước trong lịch sử là do sự vận động, thaythế các hình thái kinh tế - xã hội', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Kiểu Nhà nước sau bao giờ cũng tiến bộ hơn kiểu Nhà nước trước', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Kiểu Nhà nước đầu tiên trong lịch sử là?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước cộng sản nguyên thủy', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước chủ nô', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước phong kiến', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước tư sản', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Hình thức chính thể của Nhà nước bao gồm các loại?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chính thể quân chủ và cộng hòa dân chủ', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chính thể quân chủ và cộng hòa', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chính thể cộng hòa tổng thống và cộng hòa đại nghị', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chính thể quân chủ tuyệt đối và quân chủ tương đối', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Chính thể quân chủ tuyệt đối thường xuất hiện ở chế độ xã hội nào?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cộng sản nguyên thủy', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phong kiến', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chiếm hữu nô lệ', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tư bản chủ nghĩa', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Hình thức chính thể nào là phổ biến trên thế giới?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cộng hòa tổng thống', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quân chủ lập hiến', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cộng hòa đại nghị', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cộng hòa dân chủ', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Hình thức Nhà nước được tạo thành từ các yếu tố?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hình thức kinh tế; chế độ kinh tế - chính trị; cấu trúc lãnh thổ', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chế độ chính trị; chế độ kinh tế; chế độ văn hóa', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hình thức chính thể; hình thức cấu trúc Nhà nước; chế độ chính trị', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hình thức cấu trúc; hình thức chính thể; chế độ kinh tế - chính trị', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Trong một quốc gia, tổ chức duy nhất được quyền phát hành tiền?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quốc hội', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chính phủ', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Các tổ chức chính trị - xã hội', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Lịch sử xã hội loài người đã tồn tại..... kiểu Nhà nước, bao gồm các kiểu Nhà nước là?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('4: Chủ nô - Phong kiến - Tư hữu - XHCN', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('4: Chủ nô - Phong kiến - Tư sản - XHCN', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('4: Chủ nô - Chiếm hữu nô lệ - Tư bản - XHCN', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('4: Địa chủ - Nông nô, phong kiến - Tư bản - XHCN', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Hình thức Nhà nước là cách tổ chức bộ máy quyền lực Nhà nước và phương phápthực hiện quyền lực Nhà nước. Hình thức Nhà nước được thể hiện chủ yếu ở..... khíacạnh; đó là......?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('3 - hình thức chính thể, hình thức cấu trúc Nhà nước và chế độ KT - XH', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('3 - hình thức chính thể, hình thức cấu trúc Nhà nước và chế độ chính trị', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('3 - hình thức chuyên chính, hình thức cấu trúc Nhà nước và chế độ KT - XH', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('3 - hình thức chuyên chính, hình thức cấu trúc Nhà nước và chế độ chính trị', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Chức năng nào dưới đây không phải là chức năng chính của Quốc hội?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chức năng lập pháp', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chức năng giám sát tối cao', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chức năng quyết định các vấn đề quan trọng của đất nước', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chức năng công tố', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Quyền lập pháp được hiểu là?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quyền ban hành và triển khai thực hiện pháp luật', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thiết lập Hiến pháp', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Soạn thảo và ban hành pháp luật', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thực hiện pháp luật', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Quyền hành pháp được hiểu là?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quyền ban hành và triển khai thực hiện pháp luật', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quyền ban hành pháp luật', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quyền bảo vệ pháp luật', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quyền tổ chức thực hiện pháp luật', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Quyền tư pháp được hiểu là?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quyền xét xử', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quyền ban hành pháp luật', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quyền tổ chức thực hiện pháp luật', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quyền bảo vệ pháp luật', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Theo quan điểm của chủ nghĩa Mác-Lênin thì nguyên nhân chủ yếu làm xuất hiện Nhànước là?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Do có sự phân hóa lao động trong xã hội', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Do có sự phân hóa giai cấp và đấu tranh giai cấp trong xã hội', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Do địa hình, khí hậu không thuận lợi nên con người phải hợp sức lại để phát triển sản xuất', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Do các thành viên trong xã hội lập ra', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nhà nước chưa tồn tại trong hình thái kinh tế - xã hội nào?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hình thái kinh tế - xã hội Công xã nguyên thủy', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hình thái kinh tế - xã hội Cộng sản nguyên thủy', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hình thái kinh tế - xã hội Cộng sản chủ nghĩa', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hình thái kinh tế - xã hội Chiếm hữu nô lệ', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tổ chức thị tộc trong xã hội Cộng sản nguyên thủy là?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Một tổ chức kinh tế', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Một tập đoàn người có cùng quan hệ huyết thống', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Một xã hội độc lập', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Một đơn vị độc lập', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khi nghiên cứu về tổ chức thị tộc thì khẳng định nào sau đây là đúng?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thị tộc là gia đình trong xã hội Cộng sản nguyên thủy', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Trong thị tộc đã có sự phân công lao động chuyên môn hóa ngành nghề', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thị tộc là đơn vị kinh tế đầu tiên của xã hội cộng sản nguyên thủy', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tổ chức thị tộc gắn liền với nền kinh tế sản xuất', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Theo quan điểm của chủ nghĩa Mác-Lênin về Nhà nước thì?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước là hiện tượng tự nhiên', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước là hiện tượng xã hội mang tính lịch sử', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước là hiện tượng xã hội', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước là hiện tượng xuất hiện và tồn tại cùng với sự xuất hiện, tồn tại của lịch sử xã hộiloài người', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Dân cư trong xã hội cộng sản nguyên thủy được phân bố theo?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tôn giáo', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quan hệ huyết thống', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đơn vị hành chính lãnh thổ', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hội đồng thị tộc, hội đồng bộ lạc', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khi nghiên cứu về nguồn gốc Nhà nước, xem Nhà nước là hiện tượng siêu nhiên, vĩnhcửu, đó là quan điểm của?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thuyết thần học', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thuyết gia trưởng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thuyết khế ước xã hội', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thuyết bạo lực', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khi nghiên cứu về tổ chức thị tộc thì khẳng định nào sau đây là sai?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thị tộc là đơn vị kinh tế đầu tiên của xã hội cộng sản nguyên thủy', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Trong thị tộc đã hình thành hội đồng thị tộc', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Trong thị tộc đã hình thành các giai cấp khác nhau', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thị tộc tồn tại gắn liền với nền kinh tế tự nhiên', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Những quy phạm xã hội tồn tại trong xã hội cộng sản nguyên thủy là?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đạo đức, tập quán, pháp luật', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tập quán, tín điều tôn giáo, luật pháp', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tín điều tôn giáo, tập quán pháp', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đạo đức, tập quán, tín điều tôn giáo', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Trong các quan điểm phi mácxít về nguồn gốc Nhà nước thì quan điểm nào được coilà tiến bộ nhất?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quan điểm của những nhà nghiên cứu theo thuyết thần học', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quan điểm của những nhà nghiên cứu theo thuyết gia trưởng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quan điểm của những nhà nghiên cứu theo thuyết khế ước xã hội', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quan điểm của những nhà nghiên cứu theo thuyết bạo lực', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('C.Mác và Ăngghen đã khái quát hóa quá trình tồn tại, phát triển, thay đổi của xã hộiloài người trải qua..... lần phân công lao động?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hai', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Ba', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bốn', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Năm', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Đề cập đến quá trình phát triển, thay đổi của xã hội loài người, nhận định nào sauđây là sai?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lần phân công lao động thứ nhất: ngành chăn nuôi ra đời', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lần phân công lao động thứ hai: ngành trồng trọt và tiểu thủ công nghiệp ra đời', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lần phân công lao động thứ ba: ngành thương nghiệp ra đời', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lần phân công lao động thứ ba làm cho những mâu thuẫn trong xã hội ngày càng trở nêngay gắt', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Đề cập đến quá trình phát triển, thay đổi của xã hội loài người, nhận định nào sauđây là sai?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lần phân công lao động thứ nhất: ngành chăn nuôi ra đời', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lần phân công lao động thứ hai: ngành tiểu thủ công nghiệp ra đời', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lần phân công lao động thứ ba: ngành thương nghiệp ra đời', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lần phân công lao động thứ tư: Nhà nước ra đời', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nhận định nào sau đây là sai?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hội đồng thị tộc là tổ chức quyền lực cao nhất của thị tộc', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cơ sở kinh tế đặc trưng của xã hội cộng sản nguyên thủy là chế độ sở hữu chung về tư liệusản xuất và sản phẩm lao động', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Xã hội cộng sản nguyên thủy đã tồn tại quyền lực Nhà nước', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quyền lực trong xã hội cộng sản nguyên thủy là quyền lực xã hội, chưa mang tính giai cấp', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Quyền lực trong xã hội cộng sản nguyên thủy mới chỉ là quyền lực xã hội vì?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chưa mang tính giai cấp', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quyền lực gắn liền với xã hội, hòa nhập với xã hội', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Do toàn xã hội tổ chức ra và phục vụ lợi ích cho cả cộng đồng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bao gồm các đáp án', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nhà nước là hiện tượng xã hội mang tính lịch sử, đây là khẳng định về nguồn gốc Nhànước theo quan điểm của?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Aristote', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('J.J.Rousseau', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('E.Duyring', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Mác-Lênin', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khi nghiên cứu về nguồn gốc Nhà nước, khẳng định nào sau đây là sai?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước ra đời trong điều kiện xã hội có giai cấp và đấu tranh giai cấp', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước chưa xuất hiện trong chế độ cộng sản nguyên thủy', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước ra đời, tồn tại cùng với lịch sử xã hội loài người', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước là hiện tượng xã hội mang tính lịch sử', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khẳng định nào sau đây đúng khi đề cập về bản chất Nhà nước?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước nào cũng chỉ mang bản chất xã hội', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Mọi Nhà nước đều là bộ máy dùng để duy trì sự thống trị của giai cấp này đối với giai cấpkhác', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bất cứ Nhà nước nào cũng thể hiện bản chất xã hội rõ nét hơn bản chất giai cấp', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bất cứ Nhà nước nào cũng đều mang bản chất giai cấp và bản chất xã hội', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Bản chất giai cấp của Nhà nước được thể hiện?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước là công cụ bảo vệ lợi ích của nhân dân lao động', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước là một bộ máy trấn áp đặc biệt của giai cấp này đối với giai cấp khác', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước là công cụ để tổ chức, quản lý xã hội', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cả a, b, c đều đúng', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Bản chất xã hội của Nhà nước được thể hiện?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước là công cụ sắc bén để duy trì sự thống trị giai cấp', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước là một bộ máy trấn áp đặc biệt của giai cấp này đối với giai cấp khác', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước bảo đảm trật tự an toàn xã hội và giải quyết công việc chung của xã hội', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước là một bộ máy cưỡng chế đặc biệt nằm trong tay giai cấp cầm quyền', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Với bản chất là chuyên chính vô sản, “nó” không còn là Nhà nước theo đúng nghĩanữa mà chỉ còn là “một nửa Nhà nước” - “nó” đó là Nhà nước?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước chủ nô', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước phong kiến', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước tư sản', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước xã hội chủ nghĩa', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nhà nước có mấy thuộc tính?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('2', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('3', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('4', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('5', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Thuộc tính của Nhà nước được thể hiện?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước thiết lập một quyền lực xã hội', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước có quyền ban hành những nội quy, điều lệ', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước có lãnh thổ và thực hiện sự phân chia dân cư thành các đơn vị hành chính lãnhthổ', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước có quyền quản lý mọi mặt đời sống xã hội', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nhà nước nào cũng có chức năng?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bảo đảm an ninh chính trị', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phát triển kinh tế', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đối nội và đối ngoại', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Ký kết điều ước quốc tế', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Đề cập về mối quan hệ giữa các chức năng của Nhà nước, thì khẳng định nào sau đâylà sai?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chức năng đối nội và chức năng đối ngoại không liên quan đến nhau', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chức năng đối nội là cơ sở cho việc thực hiện chức năng đối ngoại', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Kết quả của việc thực hiện chức năng đối ngoại có tác động đến việc thực hiện chức năngđối nội', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chức năng đối nội có vai trò quan trọng hơn chức năng đối ngoại', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Đối nội và đối ngoại là những mặt hoạt động chủ yếu của Nhà nước, đó chính là?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bản chất Nhà nước', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đặc trưng cơ bản của Nhà nước', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cách thức tồn tại của Nhà nước', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chức năng của Nhà nước', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Việt Nam phối hợp với lực lượng an ninh các quốc gia trong khu vực giải quyết vấnđề tội phạm xuyên quốc gia, đây là hoạt động thể hiện?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chức năng của Nhà nước', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chức năng đối ngoại của Nhà nước', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhiệm vụ của Nhà nước', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Mối quan hệ của Nhà nước Việt Nam', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Đẩy mạnh cải cách thủ tục hành chính, tăng cường hiệu quả hoạt động của bộ máyNhà nước, đặc biệt trong giai đoạn hiện nay là nội dung thuộc về?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chức năng đối nội của Nhà nước', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quyền hạn của Nhà nước', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chức năng Nhà nước', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhiệm vụ của Nhà nước', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nguyên nhân dẫn đến sự thay thế các kiểu Nhà nước trong lịch sử là?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Do ý chí của giai cấp thống trị xã hội', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Do sự phát triển tự nhiên của xã hội', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Do mâu thuẫn giữa lực lượng sản xuất và quan hệ sản xuất trong xã hội', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Do sự vận động, phát triển, thay thế các hình thái kinh tế - xã hội mà nhân tố làm nên sựthay thế đó là các cuộc cách mạng xã hội', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khi nghiên cứu về các kiểu Nhà nước trong lịch sử, khẳng định nào sau đây là sai?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tương ứng với mỗi hình thái kinh tế - xã hội trong lịch sử thì có một kiểu Nhà nước', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cơ sở để xác định kiểu Nhà nước là các yếu tố kinh tế - xã hội tồn tại trong một giai đoạnlịch sử nhất định', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nguyên nhân dẫn đến sự thay thế các kiểu Nhà nước trong lịch sử là do sự vận động, thaythế các hình thái kinh tế - xã hội', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Kiểu Nhà nước sau bao giờ cũng tiến bộ hơn kiểu Nhà nước trước', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Kiểu Nhà nước đầu tiên trong lịch sử là?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước cộng sản nguyên thủy', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước chủ nô', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước phong kiến', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước tư sản', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Hình thức chính thể của Nhà nước bao gồm các loại?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chính thể quân chủ và cộng hòa dân chủ', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chính thể quân chủ và cộng hòa', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chính thể cộng hòa tổng thống và cộng hòa đại nghị', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chính thể quân chủ tuyệt đối và quân chủ tương đối', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Chính thể quân chủ tuyệt đối thường xuất hiện ở chế độ xã hội nào?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cộng sản nguyên thủy', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phong kiến', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chiếm hữu nô lệ', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tư bản chủ nghĩa', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Hình thức chính thể nào là phổ biến trên thế giới?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cộng hòa tổng thống', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quân chủ lập hiến', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cộng hòa đại nghị', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cộng hòa dân chủ', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Hình thức Nhà nước được tạo thành từ các yếu tố?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hình thức kinh tế; chế độ kinh tế - chính trị; cấu trúc lãnh thổ', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chế độ chính trị; chế độ kinh tế; chế độ văn hóa', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hình thức chính thể; hình thức cấu trúc Nhà nước; chế độ chính trị', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hình thức cấu trúc; hình thức chính thể; chế độ kinh tế - chính trị', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Trong một quốc gia, tổ chức duy nhất được quyền phát hành tiền?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quốc hội', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chính phủ', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Các tổ chức chính trị - xã hội', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Lịch sử xã hội loài người đã tồn tại..... kiểu Nhà nước, bao gồm các kiểu Nhà nước là?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('4: Chủ nô - Phong kiến - Tư hữu - XHCN', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('4: Chủ nô - Phong kiến - Tư sản - XHCN', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('4: Chủ nô - Chiếm hữu nô lệ - Tư bản - XHCN', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('4: Địa chủ - Nông nô, phong kiến - Tư bản - XHCN', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Hình thức Nhà nước là cách tổ chức bộ máy quyền lực Nhà nước và phương phápthực hiện quyền lực Nhà nước. Hình thức Nhà nước được thể hiện chủ yếu ở..... khíacạnh; đó là......?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('3 - hình thức chính thể, hình thức cấu trúc Nhà nước và chế độ KT - XH', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('3 - hình thức chính thể, hình thức cấu trúc Nhà nước và chế độ chính trị', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('3 - hình thức chuyên chính, hình thức cấu trúc Nhà nước và chế độ KT - XH', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('3 - hình thức chuyên chính, hình thức cấu trúc Nhà nước và chế độ chính trị', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Chức năng nào dưới đây không phải là chức năng chính của Quốc hội?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chức năng lập pháp', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chức năng giám sát tối cao', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chức năng quyết định các vấn đề quan trọng của đất nước', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chức năng công tố', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Quyền lập pháp được hiểu là?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quyền ban hành và triển khai thực hiện pháp luật', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thiết lập Hiến pháp', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Soạn thảo và ban hành pháp luật', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thực hiện pháp luật', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Quyền hành pháp được hiểu là?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quyền ban hành và triển khai thực hiện pháp luật', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quyền ban hành pháp luật', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quyền bảo vệ pháp luật', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quyền tổ chức thực hiện pháp luật', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Quyền tư pháp được hiểu là?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quyền xét xử', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quyền ban hành pháp luật', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quyền tổ chức thực hiện pháp luật', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quyền bảo vệ pháp luật', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Theo quan điểm của chủ nghĩa Mác-Lênin thì nguyên nhân chủ yếu làm xuất hiện Nhànước là?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Do có sự phân hóa lao động trong xã hội', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Do có sự phân hóa giai cấp và đấu tranh giai cấp trong xã hội', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Do địa hình, khí hậu không thuận lợi nên con người phải hợp sức lại để phát triển sản xuất', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Do các thành viên trong xã hội lập ra', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nhà nước chưa tồn tại trong hình thái kinh tế - xã hội nào?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hình thái kinh tế - xã hội Công xã nguyên thủy', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hình thái kinh tế - xã hội Cộng sản nguyên thủy', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hình thái kinh tế - xã hội Cộng sản chủ nghĩa', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hình thái kinh tế - xã hội Chiếm hữu nô lệ', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tổ chức thị tộc trong xã hội Cộng sản nguyên thủy là?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Một tổ chức kinh tế', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Một tập đoàn người có cùng quan hệ huyết thống', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Một xã hội độc lập', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Một đơn vị độc lập', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khi nghiên cứu về tổ chức thị tộc thì khẳng định nào sau đây là đúng?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thị tộc là gia đình trong xã hội Cộng sản nguyên thủy', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Trong thị tộc đã có sự phân công lao động chuyên môn hóa ngành nghề', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thị tộc là đơn vị kinh tế đầu tiên của xã hội cộng sản nguyên thủy', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tổ chức thị tộc gắn liền với nền kinh tế sản xuất', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Theo quan điểm của chủ nghĩa Mác-Lênin về Nhà nước thì?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước là hiện tượng tự nhiên', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước là hiện tượng xã hội mang tính lịch sử', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước là hiện tượng xã hội', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước là hiện tượng xuất hiện và tồn tại cùng với sự xuất hiện, tồn tại của lịch sử xã hộiloài người', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Dân cư trong xã hội cộng sản nguyên thủy được phân bố theo?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tôn giáo', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quan hệ huyết thống', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đơn vị hành chính lãnh thổ', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hội đồng thị tộc, hội đồng bộ lạc', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khi nghiên cứu về nguồn gốc Nhà nước, xem Nhà nước là hiện tượng siêu nhiên, vĩnhcửu, đó là quan điểm của?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thuyết thần học', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thuyết gia trưởng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thuyết khế ước xã hội', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thuyết bạo lực', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khi nghiên cứu về tổ chức thị tộc thì khẳng định nào sau đây là sai?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thị tộc là đơn vị kinh tế đầu tiên của xã hội cộng sản nguyên thủy', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Trong thị tộc đã hình thành hội đồng thị tộc', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Trong thị tộc đã hình thành các giai cấp khác nhau', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thị tộc tồn tại gắn liền với nền kinh tế tự nhiên', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Những quy phạm xã hội tồn tại trong xã hội cộng sản nguyên thủy là?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đạo đức, tập quán, pháp luật', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tập quán, tín điều tôn giáo, luật pháp', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tín điều tôn giáo, tập quán pháp', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đạo đức, tập quán, tín điều tôn giáo', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Trong các quan điểm phi mácxít về nguồn gốc Nhà nước thì quan điểm nào được coilà tiến bộ nhất?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quan điểm của những nhà nghiên cứu theo thuyết thần học', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quan điểm của những nhà nghiên cứu theo thuyết gia trưởng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quan điểm của những nhà nghiên cứu theo thuyết khế ước xã hội', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quan điểm của những nhà nghiên cứu theo thuyết bạo lực', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('C.Mác và Ăngghen đã khái quát hóa quá trình tồn tại, phát triển, thay đổi của xã hộiloài người trải qua..... lần phân công lao động?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hai', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Ba', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bốn', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Năm', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Đề cập đến quá trình phát triển, thay đổi của xã hội loài người, nhận định nào sauđây là sai?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lần phân công lao động thứ nhất: ngành chăn nuôi ra đời', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lần phân công lao động thứ hai: ngành trồng trọt và tiểu thủ công nghiệp ra đời', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lần phân công lao động thứ ba: ngành thương nghiệp ra đời', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lần phân công lao động thứ ba làm cho những mâu thuẫn trong xã hội ngày càng trở nêngay gắt', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Đề cập đến quá trình phát triển, thay đổi của xã hội loài người, nhận định nào sauđây là sai?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lần phân công lao động thứ nhất: ngành chăn nuôi ra đời', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lần phân công lao động thứ hai: ngành tiểu thủ công nghiệp ra đời', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lần phân công lao động thứ ba: ngành thương nghiệp ra đời', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lần phân công lao động thứ tư: Nhà nước ra đời', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nhận định nào sau đây là sai?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hội đồng thị tộc là tổ chức quyền lực cao nhất của thị tộc', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cơ sở kinh tế đặc trưng của xã hội cộng sản nguyên thủy là chế độ sở hữu chung về tư liệusản xuất và sản phẩm lao động', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Xã hội cộng sản nguyên thủy đã tồn tại quyền lực Nhà nước', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quyền lực trong xã hội cộng sản nguyên thủy là quyền lực xã hội, chưa mang tính giai cấp', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Quyền lực trong xã hội cộng sản nguyên thủy mới chỉ là quyền lực xã hội vì?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chưa mang tính giai cấp', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quyền lực gắn liền với xã hội, hòa nhập với xã hội', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Do toàn xã hội tổ chức ra và phục vụ lợi ích cho cả cộng đồng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bao gồm các đáp án', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nhà nước là hiện tượng xã hội mang tính lịch sử, đây là khẳng định về nguồn gốc Nhànước theo quan điểm của?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Aristote', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('J.J.Rousseau', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('E.Duyring', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Mác-Lênin', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khi nghiên cứu về nguồn gốc Nhà nước, khẳng định nào sau đây là sai?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước ra đời trong điều kiện xã hội có giai cấp và đấu tranh giai cấp', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước chưa xuất hiện trong chế độ cộng sản nguyên thủy', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước ra đời, tồn tại cùng với lịch sử xã hội loài người', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước là hiện tượng xã hội mang tính lịch sử', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khẳng định nào sau đây đúng khi đề cập về bản chất Nhà nước?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước nào cũng chỉ mang bản chất xã hội', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Mọi Nhà nước đều là bộ máy dùng để duy trì sự thống trị của giai cấp này đối với giai cấpkhác', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bất cứ Nhà nước nào cũng thể hiện bản chất xã hội rõ nét hơn bản chất giai cấp', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bất cứ Nhà nước nào cũng đều mang bản chất giai cấp và bản chất xã hội', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Bản chất giai cấp của Nhà nước được thể hiện?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước là công cụ bảo vệ lợi ích của nhân dân lao động', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước là một bộ máy trấn áp đặc biệt của giai cấp này đối với giai cấp khác', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước là công cụ để tổ chức, quản lý xã hội', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cả a, b, c đều đúng', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Bản chất xã hội của Nhà nước được thể hiện?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước là công cụ sắc bén để duy trì sự thống trị giai cấp', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước là một bộ máy trấn áp đặc biệt của giai cấp này đối với giai cấp khác', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước bảo đảm trật tự an toàn xã hội và giải quyết công việc chung của xã hội', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước là một bộ máy cưỡng chế đặc biệt nằm trong tay giai cấp cầm quyền', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Với bản chất là chuyên chính vô sản, “nó” không còn là Nhà nước theo đúng nghĩanữa mà chỉ còn là “một nửa Nhà nước” - “nó” đó là Nhà nước?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước chủ nô', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước phong kiến', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước tư sản', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước xã hội chủ nghĩa', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nhà nước có mấy thuộc tính?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('2', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('3', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('4', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('5', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Thuộc tính của Nhà nước được thể hiện?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước thiết lập một quyền lực xã hội', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước có quyền ban hành những nội quy, điều lệ', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước có lãnh thổ và thực hiện sự phân chia dân cư thành các đơn vị hành chính lãnhthổ', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước có quyền quản lý mọi mặt đời sống xã hội', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nhà nước nào cũng có chức năng?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bảo đảm an ninh chính trị', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phát triển kinh tế', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đối nội và đối ngoại', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Ký kết điều ước quốc tế', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Đề cập về mối quan hệ giữa các chức năng của Nhà nước, thì khẳng định nào sau đâylà sai?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chức năng đối nội và chức năng đối ngoại không liên quan đến nhau', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chức năng đối nội là cơ sở cho việc thực hiện chức năng đối ngoại', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Kết quả của việc thực hiện chức năng đối ngoại có tác động đến việc thực hiện chức năngđối nội', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chức năng đối nội có vai trò quan trọng hơn chức năng đối ngoại', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Đối nội và đối ngoại là những mặt hoạt động chủ yếu của Nhà nước, đó chính là?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bản chất Nhà nước', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đặc trưng cơ bản của Nhà nước', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cách thức tồn tại của Nhà nước', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chức năng của Nhà nước', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Việt Nam phối hợp với lực lượng an ninh các quốc gia trong khu vực giải quyết vấnđề tội phạm xuyên quốc gia, đây là hoạt động thể hiện?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chức năng của Nhà nước', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chức năng đối ngoại của Nhà nước', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhiệm vụ của Nhà nước', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Mối quan hệ của Nhà nước Việt Nam', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Đẩy mạnh cải cách thủ tục hành chính, tăng cường hiệu quả hoạt động của bộ máyNhà nước, đặc biệt trong giai đoạn hiện nay là nội dung thuộc về?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chức năng đối nội của Nhà nước', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quyền hạn của Nhà nước', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chức năng Nhà nước', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhiệm vụ của Nhà nước', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nguyên nhân dẫn đến sự thay thế các kiểu Nhà nước trong lịch sử là?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Do ý chí của giai cấp thống trị xã hội', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Do sự phát triển tự nhiên của xã hội', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Do mâu thuẫn giữa lực lượng sản xuất và quan hệ sản xuất trong xã hội', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Do sự vận động, phát triển, thay thế các hình thái kinh tế - xã hội mà nhân tố làm nên sựthay thế đó là các cuộc cách mạng xã hội', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khi nghiên cứu về các kiểu Nhà nước trong lịch sử, khẳng định nào sau đây là sai?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tương ứng với mỗi hình thái kinh tế - xã hội trong lịch sử thì có một kiểu Nhà nước', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cơ sở để xác định kiểu Nhà nước là các yếu tố kinh tế - xã hội tồn tại trong một giai đoạnlịch sử nhất định', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nguyên nhân dẫn đến sự thay thế các kiểu Nhà nước trong lịch sử là do sự vận động, thaythế các hình thái kinh tế - xã hội', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Kiểu Nhà nước sau bao giờ cũng tiến bộ hơn kiểu Nhà nước trước', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Kiểu Nhà nước đầu tiên trong lịch sử là?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước cộng sản nguyên thủy', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước chủ nô', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước phong kiến', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước tư sản', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Hình thức chính thể của Nhà nước bao gồm các loại?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chính thể quân chủ và cộng hòa dân chủ', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chính thể quân chủ và cộng hòa', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chính thể cộng hòa tổng thống và cộng hòa đại nghị', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chính thể quân chủ tuyệt đối và quân chủ tương đối', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Chính thể quân chủ tuyệt đối thường xuất hiện ở chế độ xã hội nào?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cộng sản nguyên thủy', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phong kiến', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chiếm hữu nô lệ', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tư bản chủ nghĩa', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Hình thức chính thể nào là phổ biến trên thế giới?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cộng hòa tổng thống', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quân chủ lập hiến', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cộng hòa đại nghị', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cộng hòa dân chủ', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Hình thức Nhà nước được tạo thành từ các yếu tố?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hình thức kinh tế; chế độ kinh tế - chính trị; cấu trúc lãnh thổ', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chế độ chính trị; chế độ kinh tế; chế độ văn hóa', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hình thức chính thể; hình thức cấu trúc Nhà nước; chế độ chính trị', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hình thức cấu trúc; hình thức chính thể; chế độ kinh tế - chính trị', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Trong một quốc gia, tổ chức duy nhất được quyền phát hành tiền?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quốc hội', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chính phủ', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Các tổ chức chính trị - xã hội', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Lịch sử xã hội loài người đã tồn tại..... kiểu Nhà nước, bao gồm các kiểu Nhà nước là?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('4: Chủ nô - Phong kiến - Tư hữu - XHCN', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('4: Chủ nô - Phong kiến - Tư sản - XHCN', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('4: Chủ nô - Chiếm hữu nô lệ - Tư bản - XHCN', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('4: Địa chủ - Nông nô, phong kiến - Tư bản - XHCN', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Hình thức Nhà nước là cách tổ chức bộ máy quyền lực Nhà nước và phương phápthực hiện quyền lực Nhà nước. Hình thức Nhà nước được thể hiện chủ yếu ở..... khíacạnh; đó là......?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('3 - hình thức chính thể, hình thức cấu trúc Nhà nước và chế độ KT - XH', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('3 - hình thức chính thể, hình thức cấu trúc Nhà nước và chế độ chính trị', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('3 - hình thức chuyên chính, hình thức cấu trúc Nhà nước và chế độ KT - XH', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('3 - hình thức chuyên chính, hình thức cấu trúc Nhà nước và chế độ chính trị', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Chức năng nào dưới đây không phải là chức năng chính của Quốc hội?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chức năng lập pháp', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chức năng giám sát tối cao', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chức năng quyết định các vấn đề quan trọng của đất nước', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chức năng công tố', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Quyền lập pháp được hiểu là?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quyền ban hành và triển khai thực hiện pháp luật', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thiết lập Hiến pháp', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Soạn thảo và ban hành pháp luật', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thực hiện pháp luật', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Quyền hành pháp được hiểu là?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quyền ban hành và triển khai thực hiện pháp luật', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quyền ban hành pháp luật', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quyền bảo vệ pháp luật', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quyền tổ chức thực hiện pháp luật', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Quyền tư pháp được hiểu là?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quyền xét xử', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quyền ban hành pháp luật', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quyền tổ chức thực hiện pháp luật', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quyền bảo vệ pháp luật', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Theo quan điểm của chủ nghĩa Mác-Lênin thì nguyên nhân chủ yếu làm xuất hiện Nhà nước là?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Do có sự phân hóa lao động trong xã hội', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Do có sự phân hóa giai cấp và đấu tranh giai cấp trong xã hội', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Do địa hình, khí hậu không thuận lợi nên con người phải hợp sức lại để phát triển sản xuất', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Do các thành viên trong xã hội lập ra', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nhà nước chưa tồn tại trong hình thái kinh tế - xã hội nào?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hình thái kinh tế - xã hội Công xã nguyên thủy', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hình thái kinh tế - xã hội Cộng sản nguyên thủy', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hình thái kinh tế - xã hội Cộng sản chủ nghĩa', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hình thái kinh tế - xã hội Chiếm hữu nô lệ', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tổ chức thị tộc trong xã hội Cộng sản nguyên thủy là?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Một tổ chức kinh tế', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Một tập đoàn người có cùng quan hệ huyết thống', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Một xã hội độc lập', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Một đơn vị độc lập', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khi nghiên cứu về tổ chức thị tộc thì khẳng định nào sau đây là đúng?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thị tộc là gia đình trong xã hội Cộng sản nguyên thủy', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Trong thị tộc đã có sự phân công lao động chuyên môn hóa ngành nghề', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thị tộc là đơn vị kinh tế đầu tiên của xã hội cộng sản nguyên thủy', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tổ chức thị tộc gắn liền với nền kinh tế sản xuất', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Theo quan điểm của chủ nghĩa Mác-Lênin về Nhà nước thì?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước là hiện tượng tự nhiên', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước là hiện tượng xã hội mang tính lịch sử', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước là hiện tượng xã hội', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước là hiện tượng xuất hiện và tồn tại cùng với sự xuất hiện, tồn tại của lịch sử xã hộiloài người', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Dân cư trong xã hội cộng sản nguyên thủy được phân bố theo?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tôn giáo', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quan hệ huyết thống', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đơn vị hành chính lãnh thổ', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hội đồng thị tộc, hội đồng bộ lạc', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khi nghiên cứu về nguồn gốc Nhà nước, xem Nhà nước là hiện tượng siêu nhiên, vĩnhcửu, đó là quan điểm của?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thuyết thần học', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thuyết gia trưởng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thuyết khế ước xã hội', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thuyết bạo lực', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khi nghiên cứu về tổ chức thị tộc thì khẳng định nào sau đây là sai?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thị tộc là đơn vị kinh tế đầu tiên của xã hội cộng sản nguyên thủy', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Trong thị tộc đã hình thành hội đồng thị tộc', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Trong thị tộc đã hình thành các giai cấp khác nhau', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thị tộc tồn tại gắn liền với nền kinh tế tự nhiên', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Những quy phạm xã hội tồn tại trong xã hội cộng sản nguyên thủy là?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đạo đức, tập quán, pháp luật', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tập quán, tín điều tôn giáo, luật pháp', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tín điều tôn giáo, tập quán pháp', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đạo đức, tập quán, tín điều tôn giáo', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Trong các quan điểm phi mácxít về nguồn gốc Nhà nước thì quan điểm nào được coilà tiến bộ nhất?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quan điểm của những nhà nghiên cứu theo thuyết thần học', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quan điểm của những nhà nghiên cứu theo thuyết gia trưởng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quan điểm của những nhà nghiên cứu theo thuyết khế ước xã hội', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quan điểm của những nhà nghiên cứu theo thuyết bạo lực', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('C.Mác và Ăngghen đã khái quát hóa quá trình tồn tại, phát triển, thay đổi của xã hộiloài người trải qua..... lần phân công lao động?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hai', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Ba', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bốn', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Năm', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Đề cập đến quá trình phát triển, thay đổi của xã hội loài người, nhận định nào sauđây là sai?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lần phân công lao động thứ nhất: ngành chăn nuôi ra đời', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lần phân công lao động thứ hai: ngành trồng trọt và tiểu thủ công nghiệp ra đời', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lần phân công lao động thứ ba: ngành thương nghiệp ra đời', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lần phân công lao động thứ ba làm cho những mâu thuẫn trong xã hội ngày càng trở nêngay gắt', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Đề cập đến quá trình phát triển, thay đổi của xã hội loài người, nhận định nào sauđây là sai?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lần phân công lao động thứ nhất: ngành chăn nuôi ra đời', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lần phân công lao động thứ hai: ngành tiểu thủ công nghiệp ra đời', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lần phân công lao động thứ ba: ngành thương nghiệp ra đời', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lần phân công lao động thứ tư: Nhà nước ra đời', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nhận định nào sau đây là sai?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hội đồng thị tộc là tổ chức quyền lực cao nhất của thị tộc', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cơ sở kinh tế đặc trưng của xã hội cộng sản nguyên thủy là chế độ sở hữu chung về tư liệusản xuất và sản phẩm lao động', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Xã hội cộng sản nguyên thủy đã tồn tại quyền lực Nhà nước', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quyền lực trong xã hội cộng sản nguyên thủy là quyền lực xã hội, chưa mang tính giai cấp', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Quyền lực trong xã hội cộng sản nguyên thủy mới chỉ là quyền lực xã hội vì?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chưa mang tính giai cấp', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quyền lực gắn liền với xã hội, hòa nhập với xã hội', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Do toàn xã hội tổ chức ra và phục vụ lợi ích cho cả cộng đồng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bao gồm các đáp án', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nhà nước là hiện tượng xã hội mang tính lịch sử, đây là khẳng định về nguồn gốc Nhànước theo quan điểm của?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Aristote', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('J.J.Rousseau', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('E.Duyring', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Mác-Lênin', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khi nghiên cứu về nguồn gốc Nhà nước, khẳng định nào sau đây là sai?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước ra đời trong điều kiện xã hội có giai cấp và đấu tranh giai cấp', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước chưa xuất hiện trong chế độ cộng sản nguyên thủy', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước ra đời, tồn tại cùng với lịch sử xã hội loài người', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước là hiện tượng xã hội mang tính lịch sử', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khẳng định nào sau đây đúng khi đề cập về bản chất Nhà nước?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước nào cũng chỉ mang bản chất xã hội', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Mọi Nhà nước đều là bộ máy dùng để duy trì sự thống trị của giai cấp này đối với giai cấpkhác', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bất cứ Nhà nước nào cũng thể hiện bản chất xã hội rõ nét hơn bản chất giai cấp', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bất cứ Nhà nước nào cũng đều mang bản chất giai cấp và bản chất xã hội', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Bản chất giai cấp của Nhà nước được thể hiện?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước là công cụ bảo vệ lợi ích của nhân dân lao động', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước là một bộ máy trấn áp đặc biệt của giai cấp này đối với giai cấp khác', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước là công cụ để tổ chức, quản lý xã hội', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cả a, b, c đều đúng', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Bản chất xã hội của Nhà nước được thể hiện?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước là công cụ sắc bén để duy trì sự thống trị giai cấp', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước là một bộ máy trấn áp đặc biệt của giai cấp này đối với giai cấp khác', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước bảo đảm trật tự an toàn xã hội và giải quyết công việc chung của xã hội', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước là một bộ máy cưỡng chế đặc biệt nằm trong tay giai cấp cầm quyền', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Với bản chất là chuyên chính vô sản, “nó” không còn là Nhà nước theo đúng nghĩanữa mà chỉ còn là “một nửa Nhà nước” - “nó” đó là Nhà nước?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước chủ nô', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước phong kiến', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước tư sản', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước xã hội chủ nghĩa', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nhà nước có mấy thuộc tính?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('2', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('3', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('4', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('5', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Thuộc tính của Nhà nước được thể hiện?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước thiết lập một quyền lực xã hội', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước có quyền ban hành những nội quy, điều lệ', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước có lãnh thổ và thực hiện sự phân chia dân cư thành các đơn vị hành chính lãnhthổ', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước có quyền quản lý mọi mặt đời sống xã hội', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nhà nước nào cũng có chức năng?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bảo đảm an ninh chính trị', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phát triển kinh tế', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đối nội và đối ngoại', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Ký kết điều ước quốc tế', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Đề cập về mối quan hệ giữa các chức năng của Nhà nước, thì khẳng định nào sau đâylà sai?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chức năng đối nội và chức năng đối ngoại không liên quan đến nhau', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chức năng đối nội là cơ sở cho việc thực hiện chức năng đối ngoại', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Kết quả của việc thực hiện chức năng đối ngoại có tác động đến việc thực hiện chức năngđối nội', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chức năng đối nội có vai trò quan trọng hơn chức năng đối ngoại', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Đối nội và đối ngoại là những mặt hoạt động chủ yếu của Nhà nước, đó chính là?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bản chất Nhà nước', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đặc trưng cơ bản của Nhà nước', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cách thức tồn tại của Nhà nước', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chức năng của Nhà nước', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Việt Nam phối hợp với lực lượng an ninh các quốc gia trong khu vực giải quyết vấnđề tội phạm xuyên quốc gia, đây là hoạt động thể hiện?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chức năng của Nhà nước', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chức năng đối ngoại của Nhà nước', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhiệm vụ của Nhà nước', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Mối quan hệ của Nhà nước Việt Nam', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Đẩy mạnh cải cách thủ tục hành chính, tăng cường hiệu quả hoạt động của bộ máyNhà nước, đặc biệt trong giai đoạn hiện nay là nội dung thuộc về?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chức năng đối nội của Nhà nước', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quyền hạn của Nhà nước', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chức năng Nhà nước', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhiệm vụ của Nhà nước', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nguyên nhân dẫn đến sự thay thế các kiểu Nhà nước trong lịch sử là?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Do ý chí của giai cấp thống trị xã hội', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Do sự phát triển tự nhiên của xã hội', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Do mâu thuẫn giữa lực lượng sản xuất và quan hệ sản xuất trong xã hội', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Do sự vận động, phát triển, thay thế các hình thái kinh tế - xã hội mà nhân tố làm nên sựthay thế đó là các cuộc cách mạng xã hội', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khi nghiên cứu về các kiểu Nhà nước trong lịch sử, khẳng định nào sau đây là sai?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tương ứng với mỗi hình thái kinh tế - xã hội trong lịch sử thì có một kiểu Nhà nước', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cơ sở để xác định kiểu Nhà nước là các yếu tố kinh tế - xã hội tồn tại trong một giai đoạnlịch sử nhất định', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nguyên nhân dẫn đến sự thay thế các kiểu Nhà nước trong lịch sử là do sự vận động, thaythế các hình thái kinh tế - xã hội', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Kiểu Nhà nước sau bao giờ cũng tiến bộ hơn kiểu Nhà nước trước', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Kiểu Nhà nước đầu tiên trong lịch sử là?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước cộng sản nguyên thủy', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước chủ nô', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước phong kiến', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước tư sản', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Hình thức chính thể của Nhà nước bao gồm các loại?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chính thể quân chủ và cộng hòa dân chủ', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chính thể quân chủ và cộng hòa', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chính thể cộng hòa tổng thống và cộng hòa đại nghị', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chính thể quân chủ tuyệt đối và quân chủ tương đối', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Chính thể quân chủ tuyệt đối thường xuất hiện ở chế độ xã hội nào?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cộng sản nguyên thủy', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phong kiến', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chiếm hữu nô lệ', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tư bản chủ nghĩa', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Hình thức chính thể nào là phổ biến trên thế giới?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cộng hòa tổng thống', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quân chủ lập hiến', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cộng hòa đại nghị', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cộng hòa dân chủ', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Hình thức Nhà nước được tạo thành từ các yếu tố?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hình thức kinh tế; chế độ kinh tế - chính trị; cấu trúc lãnh thổ', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chế độ chính trị; chế độ kinh tế; chế độ văn hóa', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hình thức chính thể; hình thức cấu trúc Nhà nước; chế độ chính trị', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hình thức cấu trúc; hình thức chính thể; chế độ kinh tế - chính trị', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Trong một quốc gia, tổ chức duy nhất được quyền phát hành tiền?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quốc hội', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chính phủ', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Các tổ chức chính trị - xã hội', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Lịch sử xã hội loài người đã tồn tại..... kiểu Nhà nước, bao gồm các kiểu Nhà nước là?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('4: Chủ nô - Phong kiến - Tư hữu - XHCN', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('4: Chủ nô - Phong kiến - Tư sản - XHCN', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('4: Chủ nô - Chiếm hữu nô lệ - Tư bản - XHCN', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('4: Địa chủ - Nông nô, phong kiến - Tư bản - XHCN', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Hình thức Nhà nước là cách tổ chức bộ máy quyền lực Nhà nước và phương phápthực hiện quyền lực Nhà nước. Hình thức Nhà nước được thể hiện chủ yếu ở..... khíacạnh; đó là......?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('3 - hình thức chính thể, hình thức cấu trúc Nhà nước và chế độ KT - XH', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('3 - hình thức chính thể, hình thức cấu trúc Nhà nước và chế độ chính trị', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('3 - hình thức chuyên chính, hình thức cấu trúc Nhà nước và chế độ KT - XH', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('3 - hình thức chuyên chính, hình thức cấu trúc Nhà nước và chế độ chính trị', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Chức năng nào dưới đây không phải là chức năng chính của Quốc hội?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chức năng lập pháp', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chức năng giám sát tối cao', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chức năng quyết định các vấn đề quan trọng của đất nước', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chức năng công tố', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Quyền lập pháp được hiểu là?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quyền ban hành và triển khai thực hiện pháp luật', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thiết lập Hiến pháp', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Soạn thảo và ban hành pháp luật', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thực hiện pháp luật', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Quyền hành pháp được hiểu là?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quyền ban hành và triển khai thực hiện pháp luật', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quyền ban hành pháp luật', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quyền bảo vệ pháp luật', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quyền tổ chức thực hiện pháp luật', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Quyền tư pháp được hiểu là?', '', 'Approved', 1, 1, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quyền xét xử', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quyền ban hành pháp luật', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quyền tổ chức thực hiện pháp luật', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quyền bảo vệ pháp luật', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Đạo luật nào dưới đây quy định một cách cơ bản về chế độ chính trị, chế độ kinh tế, văn hóa, xã hội và tổ chức bộ máy nhà nước:', '', 'Approved', 1, 2, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Luật tổ chức Quốc hội', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Luật tổ chức Chính phủ', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Luật tổ chức Hội đồng nhân dân và UBND', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hiến pháp', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Thuộc tính nào là thuộc tính pháp luật:', '', 'Approved', 1, 2, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tính bắt buộc chung (hay tính quy phạm phổ biến)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tính xác định chặt chẽ về mặt hình thức', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tính cưỡng chế', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả các đáp án đều đúng', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nhà nước và pháp luật là hai hiện tượng xã hội thuộc:', '', 'Approved', 1, 2, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cơ sở hạ tầng.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Kiến trúc thượng tầng.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quan hệ sản xuất.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lực lượng sản xuất.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nhà nước và pháp luật là hai hiện tượng xã hội thuộc:', '', 'Approved', 1, 2, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cơ sở hạ tầng.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Kiến trúc thượng tầng.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quan hệ sản xuất.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lực lượng sản xuất.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khẳng định nào sau đây là đúng:', '', 'Approved', 1, 2, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chỉ có Nhà nước mới có quyền ban hành pháp luật để quản lý xã hội', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Không chỉ nhà nước mà cả Tổ chức xã hội cũng có quyền ban hành pháp luật', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tổ chức xã hội chỉ có quyền ban hành pháp luật khi được nhà nước trao quyền', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất các đáp án đều đúng', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khẳng định nào đúng:', '', 'Approved', 1, 2, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quy phạm pháp luật có tính bắt buộc chung.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quy phạm pháp luật không có tính bắt buộc chung.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quy phạm xã hội có tính bắt buộc chung.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất các đáp án đều đúng.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Trong một Quy phạm pháp luật phải có ít nhất bao nhiêu bộ phận:', '', 'Approved', 1, 2, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Luôn có đầy đủ cả ba bộ phận', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Có thể chỉ có hai bộ phận', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chỉ có một một bộ phận', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả các đáp án đều đúng', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Quy phạm pháp luật là cách xử sự do nhà nước quy định để:', '', 'Approved', 1, 2, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Áp dụng trong một hoàn cảnh cụ thể', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Áp dụng trong nhiều hoàn cảnh', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Áp dụng trong một số hoàn cảnh', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả các đáp án đều đúng', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Hoạt động áp dụng tương tự quy phạm là:', '', 'Approved', 1, 2, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Khi không có Quy phạm pháp luật áp dụng cho trường hợp đó', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Khi có cả Quy phạm pháp luật áp dụng cho trường hợp đó và cả Quy phạm pháp luật áp dụng cho trường hợp tương tự', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Khi không có Quy phạm pháp luật áp dụng cho trường hợp đó và không có Quy phạm pháp luật áp dụng cho trường hợp tương tự', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Khi không có Quy phạm pháp luật áp dụng cho trường hợp đó nhưng có Quy phạm pháp luật áp dụng cho trường hợp tương tự', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Văn bản pháp luật nào do Ủy ban Thường vụ Quốc hội ban hành:', '', 'Approved', 1, 2, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Luật, nghị quyết', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Luật, pháp lệnh', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Pháp lệnh, nghị quyết', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Pháp lệnh, nghị quyết, nghị định', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('UBND các cấp có quyền ban hành những loại Quy phạm pháp luật nào:', '', 'Approved', 1, 2, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quyết định, thông tư', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quyết định', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quyết định, chỉ thị', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nghị định, nghị quyết, quyết định', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cơ quan có quyền ban hành Hiến pháp và luật là:', '', 'Approved', 1, 2, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quốc hội', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chủ tịch nước', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tổng bí thư', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chính phủ', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Một Văn bản QPPL chấm dứt hiệu lực trong những trường hợp nào:', '', 'Approved', 1, 2, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Ban hành mới Văn bản QPPL', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sửa đổi, bổ sung các Văn bản QPPL hiện hành', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đình chỉ, bãi bỏ các Văn bản QPPL hiện hành', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Ban hành mới, sửa đổi, bổ sung các Văn bản QPPL', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Hội đồng nhân dân các cấp có quyền ban hành loại Văn bản pháp luật nào:', '', 'Approved', 1, 2, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nghị quyết', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nghị định', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nghị quyết, nghị định', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nghị quyết, nghị định, quyết định', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Văn bản nào có hiệu lực cao nhất trong trong số các loại văn bản sau:', '', 'Approved', 1, 2, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quyết định', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nghị định', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thông tư', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chỉ thị', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Đặc điểm của Quy phạm pháp luật khác so với quy phạm xã hội.', '', 'Approved', 1, 2, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thể hiện ý chí của giai cấp thống trị', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Có tính bắt buộc chung, tính hệ thống và thống nhất cao', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Được bảo đảm thực hiện bằng nhà nước, chủ yếu bởi sự cưỡng chế', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất các đáp án đều đúng', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Chế tài của một Quy phạm pháp luật là:', '', 'Approved', 1, 2, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hình phạt nghiêm khắc của nhà nước đối với người có hành vi vi phạm pháp luật.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Những hậu quả pháp lý bất lợi có thể áp dụng đối với người không thực hiện hoặc thực hiện không đúng quy định của QPPL.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Biện pháp cưỡng chế nhà nước áp dụng đối với chủ thể có hành vi trái pháp luật.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất các đáp án đều sai.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Loại nguồn được công nhận trong Hệ thống pháp luật Việt Nam:', '', 'Approved', 1, 2, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Văn bản quy phạm pháp luật', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Văn bản quy phạm pháp luật và tập quán pháp', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Văn bản quy phạm pháp luật, tập quán pháp và tiền lệ pháp', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất các đáp án đều đúng.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Văn bản nào sau đây là văn bản quy phạm pháp luật:', '', 'Approved', 1, 2, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quyết định của Tổng kiểm toán Nhà nước', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quyết định của Chủ tịch Hội đồng quản trị tập đoàn Điện lực.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quyết định của Hiểu trưởng Đại học Điện lực', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất các đáp án đều đúng.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Văn bản Quy phạm pháp luật nào do Bộ trưởng ban hành:', '', 'Approved', 1, 2, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nghị định', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nghị định, thông tư', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nghị định, quyết định', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thông tư', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Việc hạn chế Năng lực hành vi của cá nhân do cơ quan nào có thẩm quyết tuyên:', '', 'Approved', 1, 2, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Viện kiểm sát nhân dân', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tòa án nhân dân', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hội đồng nhân dân; UBND', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quốc hội', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Những yếu tố nào sau đây là thành phần của Quan hệ pháp luật:', '', 'Approved', 1, 2, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chủ thể, khách thể, mặt chủ quan, mặt khách quan', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quy phạm pháp luật, Chủ thể, sự kiện pháp lý', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quy phạm pháp luật, khách thể, chủ thể', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chủ thể, khách thể, nội dung, sự kiện pháp lý', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Theo quy định của Hệ thống Pháp luật Việt nam thì:', '', 'Approved', 1, 2, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Năng lực pháp luật của cá nhân là giống nhau', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Năng lực pháp luật của cá nhân là khác nhau', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Năng lực pháp luật của cá nhân có thể giống nhau, có thể khác nhau, tùy theo từng trường hợp cụ thể', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả các đáp án đều sai', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khẳng định nào sau đây là đúng về Quan hệ pháp luật (QHPL)', '', 'Approved', 1, 2, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chủ thể QHPL là chủ thể có năng lực pháp luật', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chủ thể QHPL là chủ thể có năng lực hành vi', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chủ thể QHPL là chủ thể có năng lực chủ thể', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả các đáp đều sai', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Điều kiện để làm phát sinh, thay đổi hay chấm dứt một Quan hệ pháp luật:', '', 'Approved', 1, 2, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Khi có Quan hệ pháp luật điều chỉnh QHXH tương ứng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Khi xuất hiện chủ thể pháp luật trong trường hợp cụ thể', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Khi xảy ra Sự kiện pháp lý', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất các đáp án đều đúng', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Quan hệ pháp luật hình thành do:', '', 'Approved', 1, 2, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Ý chí của cá nhân kinh doanh', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Ý chí của Nhà nước', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Ý chí của doanh nghiệp', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Ý chí của tổ chức xã hội', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Năng lực pháp luật xuất hiện ở cá nhân khi:', '', 'Approved', 1, 2, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Có khả năng nhận thức', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Được sinh ra', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đạt đến độ tuổi nhất định', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đạt đến độ tuổi nhất định và có khả năng nhận thức, khả năng điều khiển hành vi', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Năng lực hành vi xuất hiện ở cá nhân khi:', '', 'Approved', 1, 2, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Có khả năng nhận thức', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Được sinh ra', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đạt đến độ tuổi nhất định', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đạt đến độ tuổi nhất định và có khả năng nhận thức, khả năng điều khiển hành vi', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Năng lực hành vi của pháp nhân xuất hiện khi nào:', '', 'Approved', 1, 2, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Khi được cấp con dấu', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Khi được cấp mã số thuế', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Khi có quyết định thành lập pháp nhân hoặc các giấy tờ tương đương', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả các đáp án đều đúng', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Sự biến pháp lý được hiểu là:', '', 'Approved', 1, 2, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Không phản ánh ý chí của con người', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phản ánh ý chí của con người', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Được pháp luật quy định', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sự kiện xảy ra không phụ thuộc vào ý chí của con người và đựơc pháp luật quy định', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Năng lực hành vi dân sự của cá nhân chưa đầy đủ khi cá nhân đó:', '', 'Approved', 1, 2, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Không có khả năng nhận thức', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đủ 6 tuổi đến chưa đủ 18 tuổi', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bị nghiện ma tuý', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả các đáp án đều sai', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cá nhân không có năng lực hành vi dân sự khi:', '', 'Approved', 1, 2, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nghiện rượu', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bị Toà án tuyên bố hạn chế năng lực hành vi dân sự', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nghiện ma túy hoặc các chất kích thích khác mà không nhận thức được hành vi', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chưa đủ 6 tuổi', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Năng lực hành vi là:', '', 'Approved', 1, 2, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Khả năng của chủ thể có được các quyền chủ thể và mang các nghĩa vụ pháp lý mà nhà nước thừa nhận.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Khả năng của chủ thể được nhà nước thừa nhận, bằng các hành vi của mình thực hiện các quyền chủ thể và nghĩa vụ pháp lý, tham gia vào các QHPL.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là chủ thể đủ độ tuổi theo quy định của pháp luật.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất các đáp án đều đúng.', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Một quan hệ pháp luật có bao nhiêu yếu tố cấu thành', '', 'Approved', 1, 2, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('3 yếu tố', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('6 yếu tố', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('7 yếu tố', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Những nội dung nào sau đây là yếu tố cấu thành một quan hệ pháp luật', '', 'Approved', 1, 2, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chủ thể, khách thể, nội dung, sự kiện pháp lý', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chủ thể, khách thể, mặt khách quan', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Khách thể, mặt chủ quan, mặt khách quan', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chủ thể, khách thể, mặt chủ quan', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Hình thức trách nhiệm pháp lý nghiêm khắc nhất theo quy định của pháp luật Việt Nam là:', '', 'Approved', 1, 2, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Trách nhiệm hành chính', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Trách nhiệm hình sự', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Trách nhiệm dân sự', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Trách nhiệm kỹ luật', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cấu thành của một vi phạm pháp luật bao gồm:', '', 'Approved', 1, 2, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chủ thể, khách thể, mặt chủ quan, mặt khách quan', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quy phạm pháp luật, Chủ thể, sự kiện pháp lý', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quy phạm pháp luật, khách thể, chủ thể', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chủ thể, khách thể, nội dung, sự kiện pháp lý', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nội dung nào không liên quan đến mối quan hệ nhân quả giữa Vi phạm pháp luật và sự thiệt hại thực tế của xã hội', '', 'Approved', 1, 2, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hành vi trái pháp luật là nguyên nhân trực tiếp', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sự thiệt hại của xã hội là kết quả tất yếu', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hậu quả của vi phạm pháp luật phù hợp với mục đích của chủ thể', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hành vi xảy ra trước sự thiệt hại', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nội dung của trách nhiệm pháp lý thể hiện:', '', 'Approved', 1, 2, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quyền và nghĩa vụ của các chủ thể tham gia.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thời hiệu truy cứu trách nhiệm pháp lý.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Căn cứ truy cứu trách nhiệm pháp lý.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Việc chủ thể vi phạm pháp luật có nghĩa vụ gánh chịu hậu quả bất lợi', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Năng lực pháp luật của pháp nhân chấm dứt khi nào:', '', 'Approved', 1, 2, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Không hoàn thành nghĩa vụ theo hợp đồng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bị giải thể', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bị yêu cầu tuyên bố phá sản', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả đều đúng', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cơ quan thực hiện chức năng thực hành quyền công tố và kiểm sát các hoạt động tư pháp:', '', 'Approved', 1, 2, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quốc hội', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chính phủ', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cơ quan Tòa án nhân dân', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cơ quan Viện kiểm sát', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Theo Hiến pháp Việt Nam 2013, thì:', '', 'Approved', 1, 2, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cá nhân, tổ chức, hộ gia đình, tổ hợp tác chỉ có quyền sử dụng đối với đất đai', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cá nhân, tổ chức, hộ gia đình, tổ hợp tác có quyền sử dụng và quyền định đoạt đối với đất đai', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cá nhân, tổ chức, hộ gia đình, tổ hợp tác vừa có quyền sử dụng, vừa có quyền sở hữu đối với đất đai', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cá nhân, tổ chức, hộ gia đình, tổ hợp tác vừa có quyền sử dụng, vừa có quyền chiếm hữu và định đoạt đối với đất đai', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Ngành luật nào không phải là ngành luật trong Hệ thống pháp luật Việt Nam:', '', 'Approved', 1, 2, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Ngành luật đất đai', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Ngành luật lao động', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Ngành luật tư pháp quốc tế', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Ngành luật đầu tư', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Ngành luật nào không phải là ngành luật trong Hệ thống pháp luật Việt Nam:', '', 'Approved', 1, 2, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Ngành luật kinh tế', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Ngành luật hành chính', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Ngành luật công pháp quốc tế', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Ngành luật cạnh tranh', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Chế định “Văn hóa, giáo dục, khoa học, công nghệ” do ngành luật nào điều chỉnh:', '', 'Approved', 1, 2, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Ngành luật hành chính', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Ngành luật dân sự', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Ngành luật quốc tế', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Ngành luật nhà nước', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Chế định “Giao dịch dân sự” do ngành luật nào điều chỉnh:', '', 'Approved', 1, 2, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Ngành luật kinh tế', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Ngành luật tài chính', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Ngành luật đất đai', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Ngành luật dân sự', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Chủ tịch nước CHXHCN Việt Nam đã tổ chức cuộc họp báo về việc ban hành ……………, công bố các luật đã được thông qua tại kỳ họp thứ 3 Quốc hội khóa XII.', '', 'Approved', 1, 2, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lệnh', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quyết định', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nghị quyết', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả các đáp đều sai', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Công dân có quyền ứng cửa vào Quốc Hội và Hội đồng nhân dân theo quy định của pháp luật khi:', '', 'Approved', 1, 2, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đủ 21 tuổi trở lên', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đủ 20 tuổi trở lên', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đủ 16 tuổi trở lên', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đủ 18 tuổi trở lên', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Bộ máy quản lý hành chính của Nhà nước CHXHCN Việt Nam hiện nay có bao nhiêu bộ:', '', 'Approved', 1, 2, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('16 Bộ', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('17 Bộ', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('18 Bộ', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('15 Bộ', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Bộ máy quản lý hành chính của Nhà nước CHXHCN Việt Nam hiện nay có bao nhiêu cơ quan ngang bộ:', '', 'Approved', 1, 2, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('2 cơ quan', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('3 cơ quan', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('4 cơ quan', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('5 cơ quan', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cơ quan nào sau đây là cơ quan ngang bộ:', '', 'Approved', 1, 2, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bộ tư pháp', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tổng cục thuế', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thanh tra chính phủ', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tập đoàn Than khoáng sản Việt Nam', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cơ quan nào sau đây là cơ quan ngang bộ:', '', 'Approved', 1, 2, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bộ ngoại giao', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Văn phòng chính phủ', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tổng cục thuế', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tập đoàn Điện lực Việt Nam', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cơ quan ngang Bộ là:', '', 'Approved', 1, 2, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Ủy ban thể dục, thể thao', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Ủy ban dân số gia đình và trẻ em', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Văn phòng chính phủ', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất các đáp án đều đúng', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cơ quan hành chính Nhà nước cao nhất của nước CHXNCN Việt Nam:', '', 'Approved', 1, 2, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chủ tịch nước', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chính phủ', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quốc hội', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tòa án nhân dân và Viện kiểm sát nhân dân', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Các biện pháp xử phạt chính của tránh nhiệm hành chính là:', '', 'Approved', 1, 2, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phạt tiền, tước quyền sử dụng giấy phép', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phạt tiền, tịch thu tang vật, phương tiện vi phạm', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tước quyền sử dụng giấy phép, tịch thu tang vật, phương tiện vi phạm', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cảnh cáo, phạt tiền', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Các biện pháp xử phạt bổ sung của tránh nhiệm hành chính là:', '', 'Approved', 1, 2, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cảnh cáo, phạt tiền', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cảnh cáo, tịch thu tang vật, phương tiện vi phạm', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tước quyền sử dụng giấy phép, tịch thu tang vật, phương tiện vi phạm', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phạt tiền, tước quyền sử dụng giấy phép', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nguyên tắc xử phạt hành chính:', '', 'Approved', 1, 2, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Áp dụng biện pháp xử phạt chính và biện pháp xử phạt bổ sung một cách độc lập', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Áp dụng độc lập biện pháp xử phạt chính và áp dụng phụ thuộc các biện pháp xử phạt bổ sung', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Áp dụng độc lập các biện pháp xử phạt bổ sung, và áp dụng phụ thuộc các biện pháp xử phạt chính', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Áp dụng phụ thuộc cả biện pháp xử phạt chính và cả biện pháp xử phạt bổ sung', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Những biện pháp nào sau đây là biện pháp cưỡng chế Hành chính:', '', 'Approved', 1, 2, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhóm các biện pháp xử phạt vi phạm hành chính', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhóm các biện pháp ngăn chặn và bảo đảm xử lý vi phạm hành chính', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhóm các biện pháp phòng ngừa hành chính', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả các đáp án đều đúng', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Trách nhiệm Hành chính là:', '', 'Approved', 1, 2, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là sự áp dụng những biện pháp cưỡng chế hành chính mang tính chất xử phạt hoặc khôi phục lại những quyền lợi bị xâm hại đối với những chủ thể thực hiện hành vi vi phạm Hành chính', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là sự áp dụng những biện pháp cưỡng chế hành chính mang tính chất trừng phạt hoặc khôi phục lại những quyền lợi bị xâm hại đối với những chủ thể thực hiện hành vi vi phạm Hành chính', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là sự áp dụng những biện pháp cưỡng chế hành chính mang tính chất khôi phục lại những quyền lợi bị xâm hại đối với những chủ thể thực hiện hành vi vi phạm Hành chính', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất các đáp án đều đúng', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Độ tuổi để một cá nhân có thể bị áp dụng các biện pháp cưỡng chế Hành chính là:', '', 'Approved', 1, 2, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đủ từ 14 tuổi trở lên', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đủ từ 15 tuổi trở lên', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đủ từ 16 tuổi trở lên', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đủ từ 17 tuổi trở lên', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Hình thức xử phạt bổ sung trong các hình thức xử phạt hành chính:', '', 'Approved', 1, 2, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cảnh cáo và tịch thu tang vật, phương tiện vi phạm', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cảnh cáo và tước quyền sử dụng giấy phép', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phạt tiền và tước quyền sử dụng giấy phép', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tước quyền sử dụng giấy phép và tịch thu tang vật, phương tiện vi phạm', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Đặc điểm nào sau đây của Quan hệ pháp luật Hành chính là đúng:', '', 'Approved', 1, 2, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phát sinh do yêu cầu hợp pháp của bất kỳ bên nào, sự thoả thuận của bên kia không phải là điều kiện bắt buộc phải có.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Có ít nhất một chủ thể mang quyền lực nhà nước, nhân danh nhà nước và để thực hiện quyền lực của nhà nước.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phần lớn các tranh chấp được giải quyết theo một trình tự, thủ tục của pháp luật Hành chính hoặc của Toà án hành chính.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả các đáp án đều đúng', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Đặc điểm: “Bên vi phạm phải chịu trách nhiệm pháp lý trước nhà nước” là đặc điểm của Quan hệ pháp luật nào:', '', 'Approved', 1, 2, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quan hệ pháp luật Hành chính', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quan hệ pháp luật Dân sự', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quan hệ pháp luật Hôn nhân và gia đình', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quan hệ pháp luật lao động', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Đặc điểm: “Quan hệ phát sinh do yêu cầu hợp pháp của bất kỳ bên nào, sự thoả thuận của bên kia không phải là điều kiện bắt buộc phải có” là đặc điểm của Quan hệ pháp luật nào:', '', 'Approved', 1, 2, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quan hệ pháp luật Hành chính', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quan hệ pháp luật Dân sự', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quan hệ pháp luật Hôn nhân và gia đình', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quan hệ pháp luật lao động', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Đặc điểm: “Quyền và nghĩa vụ của các bên tham gia luôn gắn liền với hoạt động chấp hành và điều hành của các cơ quan quản lý nhà nước” là đặc điểm của Quan hệ pháp luật nào:', '', 'Approved', 1, 2, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quan hệ pháp luật Hôn nhân và gia đình', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quan hệ pháp luật lao động', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quan hệ pháp luật Hành chính', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quan hệ pháp luật Dân sự', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cơ quan nào có quyền xét xử tội phạm và tuyên bản án hình sự:', '', 'Approved', 1, 2, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tòa kinh tế có thẩm quyền', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tòa hành chính có thẩm quyền', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tòa dân sự có thẩm quyền', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tòa hình sự có thẩm quyền', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Bộ luật hình sự được ban hành năm nào sau đây là bộ luật đang có hiệu lực:', '', 'Approved', 1, 2, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bộ luật ban hành năm 1999', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bộ luật ban hành năm 2000', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bộ luật ban hành năm 2015', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bộ luật ban hành năm 2016', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Chế định “Khởi tố bị can và hỏi cung bị can” do ngành luật nào điều chỉnh:', '', 'Approved', 1, 2, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Ngành luật dân sự.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Ngành luật tố tụng dân sự', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Ngành luật tố tụng hình sự', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Ngành luật hành chính', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Chế định “Điều tra” do ngành luật nào điều chỉnh:', '', 'Approved', 1, 2, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Ngành luật tố tụng hình sự', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Ngành luật tố tụng dân sự', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Ngành luật hình sự', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Ngành luật dân sự', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nguyên tắc nào sau đây là nguyên tắc cơ bản của Luật Hình sự:', '', 'Approved', 1, 2, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Pháp chế XHCN', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhân đạo XHCN', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả các đáp án đều đúng', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dân chủ XHCN', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nguyên tắc nào sau đây là nguyên tắc cơ bản của Luật Hình sự:', '', 'Approved', 1, 2, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Pháp chế XHCN', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả các đáp án đều đúng', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Kết hợp hài hòa giữa chủ nghĩa yêu nước và tinh thần quốc tế', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dân chủ XHCN', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nguyên tắc nào sau đây là nguyên tắc cơ bản của Luật Hình sự:', '', 'Approved', 1, 2, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhân đạo XHCN', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả các đáp án đều đúng', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Kết hợp hài hòa giữa chủ nghĩa yêu nước và tinh thần quốc tế', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dân chủ XHCN', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nguyên tắc áp dụng hình phạt là:', '', 'Approved', 1, 2, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Có thể áp dụng nhiều hình phạt chính và nhiều hình phạt bổ sung', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chỉ có thể áp dụng một hình phạt chính và có thể áp dụng một hoặc nhiều nhiều hình phạt bổ sung cho một loại tội phạm', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chỉ có thể áp dụng một hình phạt bổ sung và có thể áp dụng một hoặc nhiều nhiều hình phạt chính', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chỉ có thể áp dụng một hình phạt chính và một hình phạt bổ sung', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Bộ luật Hình sự quy định, có:', '', 'Approved', 1, 2, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Có 10 hình phạt chính và 10 hình phạt bổ sung', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Có 9 hình phạt chính và 9 hình phạt bổ sung', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Có 8 hình phạt chính và 8 hình phạt bổ sung', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Có 7 hình phạt chính và 7 hình phạt bổ sung', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Trong các hình phạt của trách nhiệm hình sự:', '', 'Approved', 1, 2, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phạt tiền là hình phạt chính', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phạt tiền là hình phạt bổ sung', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phạt tiền vừa là hình thức xử phạt chính vừa là hình thức xử phạt bổ sung', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả các đáp đều sai', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tịch thu tài sản:', '', 'Approved', 1, 2, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là hình phạt chính', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là hình phạt bổ sung', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Vừa là hình phạt chính, vừa là hình phạt bổ sung', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả các đáp đều đúng', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Hình phạt cấm đảm nhiệm chức vụ, làm những nghề hoặc công việc nhất định:', '', 'Approved', 1, 2, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là hình phạt chính', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là hình phạt bổ sung', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Vừa là hình phạt chính, vừa là hình phạt bổ sung', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả các đáp đều đúng', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Trong các hình phạt của trách nhiệm hình sự:', '', 'Approved', 1, 2, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hình phạt cải tạo không giam giữ chính là án phạt tù treo', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hình phạt cải tạo không giam giữ chính là hình phạt cảnh cáo', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hình phạt cải tạo không giam giữ vừa là hình phạt chính vừa là hình phạt bổ sung', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả các đáp đều sai', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tội phạm theo quy định của Bộ luật Hình sự 2015 bao gồm:', '', 'Approved', 1, 2, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cá nhân và pháp nhân thương mại', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cá nhân và tổ chức', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chỉ có thể là cá nhân', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả các đáp án đều đúng', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Chủ thể của Tội phạm bao gồm:', '', 'Approved', 1, 2, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chủ thể, khách thể,', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cá nhân và pháp nhân thương mại', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chỉ có thể là cá nhân', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chỉ có thể là pháp nhân thương mại', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cấu thành của tội phạm bao gồm:', '', 'Approved', 1, 2, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chủ thể, khách thể, mặt chủ quan, mặt khách quan', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quy phạm pháp luật, Chủ thể, sự kiện pháp lý', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quy phạm pháp luật, khách thể, chủ thể', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chủ thể, khách thể, nội dung, sự kiện pháp lý', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Trong các vụ án hình sự:', '', 'Approved', 1, 2, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Không bao giờ liên quan đến phần Dân sự', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đa số liên quan đến phần Hành chính', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Có thể liên quan đến phần Dân sự', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả các đáp đều đúng', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khung hình phạt tù có thời hạn cao nhất được quy định trong Bộ luật Hình sự năm 2015 cho một cá nhân một lúc phạm nhiều tội là:', '', 'Approved', 1, 2, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('20 năm', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('30 năm', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('35 năm', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('50 năm', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Hình phạt tù có thời hạn cao nhất đối với cá nhân phạm một tội theo quy định của Bộ luật Hình sự 2015 là:', '', 'Approved', 1, 2, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('20 năm', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('30 năm', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('35 năm', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('50 năm', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('TB>:] Hình phạt đựơc áp dụng khi:', '', 'Approved', 1, 2, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bản án có hiệu lực pháp luật', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chấp hành xong án phạt tù', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Khi tòa đã tuyên án', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Được hưởng án treo', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Trình tự tố tụng Hình sự đựơc sắp xếp theo thứ tự nào sau đây:', '', 'Approved', 1, 2, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Điều tra - khởi tố - truy tố - xét xử.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Khởi tố - truy tố - điều tra – xét xử.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Truy tố - điều tra - khởi tố - xét xử.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Khởi tố - điều tra – truy tố - xét xử.', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cơ quan nào là cơ quan hành chính Nhà nước:', '', 'Approved', 1, 2, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hội đồng nhân dân', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Viện Kiểm sát nhân dân', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Toà án nhân dân', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bộ tư pháp', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Hình phạt cấm đảm nhiệm chức vụ, cấm hành nghề hoặc làm công việc nhất định đựơc áp dụng khi:', '', 'Approved', 1, 2, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chấp hành xong hình phạt chính', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Từ ngày bản án có hiệu lực pháp luật nếu hình phạt là cảnh cáo', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Từ ngày bản án có hiệu lực pháp luật nếu hình phạt là cải tạo không giam giữ', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Từ ngày đựơc hưởng án treo', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Hình phạt nào là hình phạt chính trong các hình phạt sau đây:', '', 'Approved', 1, 2, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cải tạo không giam giữ', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Án treo', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cấm cư trú', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tước một số quyền công dân', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Hình phạt nào là hình phạt chính trong các hình phạt sau đây:', '', 'Approved', 1, 2, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cải tạo tại gia', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Án treo', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chung thân', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tước một số quyền công dân', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Hình phạt nào là hình phạt bổ sung trong các hình phạt sau đây:', '', 'Approved', 1, 2, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cảnh cáo', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Án treo', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tù có thời hạn', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tước một số quyền công dân', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Trục xuất là hình phạt không áp dụng với chủ thể Tội phạm nào:', '', 'Approved', 1, 2, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Người không có quốc tịch', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Công dân Việt Nam', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Người nước ngoài', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả các đáp án đều sai', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tử hình là hình phạt:', '', 'Approved', 1, 2, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hạn chế quyền công dân của tội phạm', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tước quyền sống của tội phạm', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cách ly tội phạm ra khỏi xã hội', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả các đáp án đều đúng', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Hình phạt được quy định trong Bộ luật Hình sự là:', '', 'Approved', 1, 2, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giáo dục tại xã, phường, thị trấn', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cải tạo không giam giữ', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Án treo', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả các đáp án đều đúng', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Biện pháp cưỡng chế nào sau đây là hình phạt:', '', 'Approved', 1, 2, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phạt tiền', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bắt tạm giam', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đưa vào trường giáo dưỡng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả các đáp án đều sai', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tòa án có thẩm quyền xét xử chủ thể Vi phạm hình sự là:', '', 'Approved', 1, 2, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tòa hình sự có thẩm quyền', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tòa kinh tế có thẩm quyền', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tòa hành chính có thẩm quyền', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tòa dân sự có thẩm quyền', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Theo quy định của Bộ luật Dân sự 2015 thì cá nhân chưa thành niên là người:', '', 'Approved', 1, 2, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chưa đủ 18 tuổi', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Từ đủ 6 tuổi đến dưới 18 tuổi', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Từ đủ 15 tuổi đến dưới 18 tuổi', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dưới 21 tuổi', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Người nhận cầm cố tài sản có quyền gì đối với tài sản?', '', 'Approved', 1, 2, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quyền sở hữu', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quyền chiếm hữu', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quyền sử dụng.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quyền định đoạt', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khi một cá nhân chết thì người thuộc hàng thừa kế thứ nhất là:', '', 'Approved', 1, 2, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Vợ', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Con', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bố đẻ, mẹ đẻ', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả đều đúng', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Người thừa kế tài sản là:', '', 'Approved', 1, 2, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Người đủ 18 tuổi vào thời điểm mở thừa kế', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Người còn sống vào thời điểm mở thừa kế', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Người không có tài sản', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là công dân Việt Nam', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Hình thức chia thừa kế theo pháp luật được áp dụng khi:', '', 'Approved', 1, 2, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phần tài sản không định đoạt theo di chúc', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phần di sản theo di chúc của người thừa kế chết trước hoặc chết cùng thời điểm với người để lại thừa kế', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Người thừa kế theo di chúc từ chối nhận di sản', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả đều đúng', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Người được hưởng thừa kế không phụ thuộc vào nội dung của di chúc là:', '', 'Approved', 1, 2, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Con chưa thành niên', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cháu đích tôn', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Con trưởng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Con thứ', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Người được hưởng thừa kế không phụ thuộc vào nội dung của di chúc là:', '', 'Approved', 1, 2, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Vợ hoặc chồng', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Ông bà nội ngoại', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Con trưởng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cháu ruột', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Người được hưởng thừa kế không phụ thuộc vào nội dung của di chúc là:', '', 'Approved', 1, 2, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Con đã thành niên', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cháu đích tôn', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cha, mẹ', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Con thứ', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Người được hưởng thừa kế không phụ thuộc vào nội dung của di chúc là:', '', 'Approved', 1, 2, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Con trưởng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cháu đích tôn', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Con đã thành niên nhưng không có khả năng lao động', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Con thứ', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Di chúc mằng miệng có hiệu lực trong thời gian tối đa …. tháng. Sau thời gian này nếu người để lại di sản vẫn còn sống và minh mẫn thì di chúc này hết hiệu lực:', '', 'Approved', 1, 2, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('2', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('3', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('4', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('5', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Những người được hưởng thừa kế ở hàng thứ nhất theo quy định của Bộ luật Dân sự bao gồm:', '', 'Approved', 1, 2, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cha đẻ, mẹ đẻ, cha nuôi, mẹ nuôi', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Con đẻ, con nuôi', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Vợ hoặc chồng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả các đáp án đều đúng', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cá nhân có Năng lực hành vi dân sự đầy đủ khi có khả năng nhận thức, có khả năng điều khiển hành vi và khi:', '', 'Approved', 1, 2, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đủ từ 16 tuổi trở lên', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đủ từ 18 tuổi trở lên', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đủ từ 21 tuổi trở lên', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đủ từ 25 tuổi trở lên', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Giai cấp thống trị trong kiểu nhà nước chủ nô là:', '', 'Approved', 1, 2, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giai cấp Nô lệ.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giai cấp Nông dân.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giai cấp Tư sản.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giai cấp Chủ nô.', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Giai cấp thống trị trong kiểu nhà nước phong kiến là:', '', 'Approved', 1, 2, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giai cấp Nô lệ.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giai cấp Nông dân.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giai cấp Tư sản.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giai cấp Địa chủ.', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Giai cấp thống trị trong kiểu nhà nước Tư bản chủ nghĩa là:', '', 'Approved', 1, 2, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giai cấp Nô lệ.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giai cấp Nông dân.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giai cấp Tư sản.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giai cấp Chủ nô.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Giai cấp thống trị trong kiểu nhà nước Chủ nghĩa xã hội là:', '', 'Approved', 1, 2, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giai cấp Công nhân.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giai cấp Nông dân.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giai cấp Tư sản.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giai cấp Chủ nô.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Giai cấp bị trị trong kiểu nhà nước Chủ nô là:', '', 'Approved', 1, 2, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giai cấp Nô lệ.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giai cấp Nông dân.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giai cấp Tư sản.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giai cấp Chủ nô.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Giai cấp bị trị trong kiểu nhà nước Phong kiến là:', '', 'Approved', 1, 2, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giai cấp Công nhân.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giai cấp Nông dân.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giai cấp Tư sản.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giai cấp Chủ nô.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Giai cấp bị trị trong kiểu nhà nước Tư bản chủ nghĩa là:', '', 'Approved', 1, 2, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giai cấp Nô lệ.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giai cấp Nông dân.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giai cấp Tư sản.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giai cấp Công nhân.', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Pháp luật của kiểu nhà nước Chủ nô là ý chí của giai cấp nào:', '', 'Approved', 1, 2, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giai cấp Công nhân.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giai cấp Nông dân.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giai cấp Tư sản.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giai cấp Chủ nô.', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Pháp luật của kiểu nhà nước Phong kiến là ý chí của giai cấp nào:', '', 'Approved', 1, 2, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giai cấp Địa chủ.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giai cấp Nông dân.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giai cấp Tư sản.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giai cấp Chủ nô.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Pháp luật của kiểu nhà nước Tư bản chủ nghĩa là ý chí của giai cấp nào:', '', 'Approved', 1, 2, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giai cấp Công nhân.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giai cấp Nông dân.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giai cấp Tư sản.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giai cấp Chủ nô.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nhà nước chỉ ra đời và tồn tại trong xã hội có:', '', 'Approved', 1, 2, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giai cấp và đấu tranh giai cấp.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhiều cuộc bạo động.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhiều tội phạm.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sự phát triển kinh tế hàng hóa.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Pháp luật chỉ ra đời và tồn tại trong xã hội có:', '', 'Approved', 1, 2, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giai cấp và đấu tranh giai cấp.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhiều cuộc bạo động.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhiều tội phạm.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sự phát triển kinh tế hàng hóa.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nhà nước chỉ diệt vong trong xã hội có:', '', 'Approved', 1, 2, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhiều gia đình bị tan vỡ.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Không có giai cấp và không có đấu tranh giai cấp.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhiều tội phạm.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sự phát triển kinh tế hàng hóa.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Pháp luật chỉ diệt vong trong xã hội có:', '', 'Approved', 1, 2, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhiều gia đình bị tan vỡ.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Không có giai cấp và không có đấu tranh giai cấp.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhiều tội phạm.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sự phát triển kinh tế hàng hóa.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Vùng biển Bắc cực được luật lệ Công pháp quốc tế xác định theo phương án nào sau đây ?', '', 'Approved', 1, 3, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Các quốc gia giáp với vùng Bắc cực có được một phần nội thủy và lãnh hải có chiều rộng 12 hải lý tính từ ranh giới quốc gia hướng tới Bắc cực;', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Các quốc gia vành đai giáp với Bắc cực có được một phần lãnh thổ theo quy tắc phù hợp với Công pháp quốc tế tính từ mốc quốc giới ngoài cùng của quốc gia hướng tới tâm Bắc cực;', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Các quốc gia vành đai giáp với vùng Bắc cực có được một phần lãnh thổ mở rộng có chiều dài 200 hải lý tính từ ranh giới quốc gia hướng tới Bắc cực;', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Các quốc gia vành đai giáp với vùng Bắc cực có được các vùng nước nội thủy, lãnh hải, tiếp giáp lãnh hải, đặc quyền kinh tế, thềm lục địa như các vùng biển khác.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Việt Nam áp dụng quy tắc nào của Công pháp quốc tế để xác định đường cơ sở dùng để tính chiều rộng lãnh hải ?', '', 'Approved', 1, 3, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dựa vào mực nước biển thấp nhất giáp với bờ biển và chạy dọc theo bờ biển, đường nối những điểm nhô ra nhất của bờ biển và tất cả các đảo ven bờ ở mực nước thấp nhất;', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Theo Tuyên bố ngày 12 tháng 5 năm 1977 của Chính phủ nước Cộng hoà xã hội Chủ nghĩa Việt Nam về đường cơ sở dùng để tính chiều rộng lãnh hải Việt Nam;', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quy tắc đường gãy khúc nối liền các điểm nhô ra dọc bờ biển và các đảo gần bờ do Chính phủ nước Cộng hoà xã hội Chủ nghĩa Việt Nam xác định và công bố;', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đường ngấn nước thuỷ triều thấp nhất được chọn dùng để tính chiều rộng lãnh hải của theo tuyên bố của Chính phủ.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('“Nguyên tắc tự do biển cả”trong Công pháp quốc tế được hình thành trong thời kỳ nào sau đây ?', '', 'Approved', 1, 3, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thời kỳ Chiếm hữu nô lệ;', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thời kỳ Phong kiến;', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thời kỳ Tư bản chủ nghĩa;', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Mới được hình thành trong giai đoạn sau Đại chiến thế giới lần thứ nhất.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Công pháp quốc tế hiện đại có các chủ thể chủ yếu nào ?', '', 'Approved', 1, 3, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quốc gia và dân tộc', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quốc gia, dân tộc và tổ chức quốc tế', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quốc gia, dân tộc đang đấu tranh giành quyền dân tộc tự quyết; tổ chức quốc tế liên chính phủ và các chủ thể đặc biệt', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Các chủ thể đặc biệt.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Đến nay Công pháp quốc tế đã trải qua mấy thời kỳ phát triển ?', '', 'Approved', 1, 3, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Công pháp quốc tế thời kỳ cổ đại và hiện đại', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Công pháp quốc tế thời kỳ cổ đại, trung đại, cận đại, hiện đại', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Công pháp quốc tế thời kỳ cổ đại, trung cận đại và hiện đại', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Công pháp quốc tế thời kỳ cổ đại, trung đại, cận đại, hiện đại và hậu hiện đại', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('82. Các đáp án sau đều là quy phạm pháp luật, ngoại trừ?', '', 'Approved', 1, 3, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nghị quyết của Quốc hội', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quyết định của Chủ tịch nước', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Điều lệ Đoàn Thanh niên Cộng sản Hồ Chí Minh', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nghị quyết của Hội đồng nhân dân', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Quốc gia ven biển có các vùng biển nào thuộc chủ quyền quốc gia ?', '', 'Approved', 1, 3, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A. Vùng nội thủy, vùng lãnh hải, vùng tiếp giáp lãnh hải, vùng đặc quyền kinh tế, thềm lục địa, biển cả (biển quốc tế), và vùng đáy biển và vùng đất dưới đáy biển;', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('B. Vùng nội thủy, vùng lãnh hải, vùng tiếp giáp lãnh hải, vùng đặc quyền kinh tế và thềm lục địa;', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('C. Vùng nội thủy, vùng lãnh hải, vùng tiếp giáp lãnh hải và vùng đặc quyền kinh tế;', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('D. Vùng nội thủy và vùng lãnh hải.', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('83. Các đáp án sau đều là quy phạm pháp luật, ngoại trừ?', '', 'Approved', 1, 3, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quyết định của Thủ tướng Chính phủ', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thông tư của Bộ trưởng Bộ Tài chính', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Điều lệ Hội Cựu chiến binh', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nghị quyết Ủy ban Thường vụ Quốc hội', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Các đáp án sau đều là quy phạm pháp luật, ngoại trừ?', '', 'Approved', 1, 3, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nghị quyết của Hội đồng Thẩm phán Tòa án nhân dân Tối cao', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nghị quyết của Hội đồng nhân dân Tp. Hồ Chí Minh', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nghị quyết của Đảng Cộng sản', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nghị quyết Ủy ban Thường vụ Quốc hội', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Quy phạm pháp luật là quy tắc xử sự mang tính..... do..... ban hành và bảo đảm thựchiện, thể hiện ý chí và bảo vệ lợi ích của giai cấp thống trị để điều chỉnh các.....?', '', 'Approved', 1, 3, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bắt buộc chung - Nhà nước - quan hệ pháp luật', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bắt buộc - Nhà nước - quan hệ xã hội', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bắt buộc chung - Quốc hội - quan hệ xã hội', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bắt buộc chung - Nhà nước - quan hệ xã hội', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Những quy tắc xử sự chung do Nhà nước ban hành và bảo đảm thực hiện để điềuchỉnh các quan hệ xã hội theo định hướng và nhằm đạt được những mục đích nhất định,các quy tắc đó gọi là?', '', 'Approved', 1, 3, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quy phạm luật pháp', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Vi phạm pháp luật', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quy phạm pháp luật', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Văn bản pháp luật', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Quy phạm pháp luật tồn tại trong xã hội nào?', '', 'Approved', 1, 3, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Xã hội có giai cấp', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Xã hội có Nhà nước', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Các đáp án đều đúng', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Xã hội có tư hữu', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Quy phạm pháp luật là?', '', 'Approved', 1, 3, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quy tắc xử sự chung tồn tại từ xã hội nguyên thủy đến nay để điều chỉnh các quan hệ xãhội', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Các quy phạm xã hội được lưu truyền từ xưa đến nay để điều chỉnh các quan hệ xã hội', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quy tắc được hình thành dựa trên nhận thức về các quy luật tự nhiên, điều chỉnh mối quanhệ giữa người và máy móc', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Những quy tắc xử sự chung do Nhà nước ban hành và bảo đảm thực hiện để điều chỉnh cácquan hệ xã hội theo định hướng và nhằm đạt được những mục đích nhất định', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Quy phạm pháp luật và quy phạm xã hội?', '', 'Approved', 1, 3, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là hai khái niệm đồng nhất', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hoàn toàn giống nhau', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hoàn toàn khác nhau', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Vừa có điểm giống nhau, vừa có điểm khác nhau', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Trong xã hội có giai cấp, quy phạm nào sau đây có vai trò quan trọng nhất đối vớiviệc duy trì trật tự xã hội?', '', 'Approved', 1, 3, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quy phạm tập quán', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quy phạm tôn giáo', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quy phạm pháp luật', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quy phạm đạo đức', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Đặc điểm khác biệt nhất của quy phạm pháp luật so với các quy phạm xã hội khác là?', '', 'Approved', 1, 3, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quy phạm pháp luật là quy tắc xử sự chung', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quy phạm pháp luật có tính hệ thống', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quy phạm pháp luật do các cơ quan Nhà nước có thẩm quyền ban hành và bảo đảm thựchiện', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nội dung của quy phạm pháp luật quy định quyền và nghĩa vụ pháp lý của các bên thamgia quan hệ xã hội mà nó điều chỉnh', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cấu trúc pháp lý của một quy phạm pháp luật thông thường gồm có các bộ phận?', '', 'Approved', 1, 3, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giả định', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quy định', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chế tài', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bao gồm các đáp án', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Chọn phương án đúng nhất điền vào chỗ trống: .....của quy phạm pháp luật chứađựng mệnh lệnh của Nhà nước?', '', 'Approved', 1, 3, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bộ phận giả định', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bộ phận quy định', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bộ phận chế tài', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bộ phận quy định và bộ phận chế tài', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Những điều kiện, hoàn cảnh có thể xảy ra trong thực tế cuộc sống mà Nhà nước dựliệu và dùng pháp luật tác động, được ghi nhận tại bộ phận..... của quy phạm pháp luật?', '', 'Approved', 1, 3, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giả định', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giả thuyết', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quy định', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giả định và quy định', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Bộ phận nào sau đây không thể thiếu trong một quy phạm pháp luật?', '', 'Approved', 1, 3, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bộ phận giả định và bộ phận chế tài', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bộ phận giả định', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bộ phận quy định', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bộ phận chế tài', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Trong một quy phạm pháp luật, bộ phận quan trọng nhất là?', '', 'Approved', 1, 3, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bộ phận quy định và bộ phận chế tài', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bộ phận giả định', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bộ phận quy định', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bộ phận chế tài', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Bộ phận nào của quy phạm pháp luật nhằm bảo đảm cho pháp luật được thực hiệnnghiêm chỉnh?', '', 'Approved', 1, 3, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giả định', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quy định', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chế tài', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cả a, b, c đều đúng', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Giới hạn Nhà nước đưa ra cho phép, cấm đoán, bắt buộc các chủ thể thực hiện hànhvi hoặc tiến hành một công việc nhất định được ghi nhận tại bộ phận..... của quy phạmpháp luật?', '', 'Approved', 1, 3, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giả định', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chế định', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quy định', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chế tài', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Giả định nêu lên nhiều điều kiện, hoàn cảnh và giữa chúng có mối liên hệ với nhau,gọi là?', '', 'Approved', 1, 3, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giả định đơn giản', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giả định phức hợp', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giả định phức tạp', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giả thuyết phức tạp', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Những biện pháp cưỡng chế Nhà nước dự liệu áp dụng đối với chủ thể không thựchiện đúng pháp luật được ghi nhận tại bộ phận..... của quy phạm pháp luật?', '', 'Approved', 1, 3, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giả định', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quy định', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chế định', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chế tài', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Một quy phạm pháp luật thông thường cấu trúc gồm có các bộ phận?', '', 'Approved', 1, 3, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giả định, chế định, chế tài', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giả thuyết, quy định, chế tài', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giả định, chế tài', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giả định, quy định, chế tài', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Chọn phương án đúng nhất điền vào chỗ trống: .....là tổng thể các quy phạm phápluật có mối liên hệ nội tại thống nhất với nhau, được phân thành các chế định pháp luật,các ngành luật và được thể hiện trong các văn bản quy phạm pháp luật do Nhà nước banhành?', '', 'Approved', 1, 3, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quan hệ pháp luật', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hệ thống pháp luật', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quy phạm pháp luật', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Ngành luật', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cấu trúc của hệ thống pháp luật được thể hiện?', '', 'Approved', 1, 3, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cấu trúc bên trong gồm: quy phạm pháp luật, chế định pháp luật và ngành luật', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cấu trúc bên trong và hình thức biểu hiện bên ngoài', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hệ thống các văn bản do cơ quan nhà nước có thẩm quyền ban hành', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cả a, b, c đều đúng', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cấu trúc bên trong của hệ thống pháp luật được hợp thành từ những yếu tố nào?', '', 'Approved', 1, 3, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quy phạm pháp luật', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chế định pháp luật', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Ngành luật', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bao gồm cả a, b, c', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Hình thức biểu hiện bên ngoài của hệ thống pháp luật là?', '', 'Approved', 1, 3, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Các quy phạm pháp luật', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Các loại văn bản luật', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Các văn bản quy phạm pháp luật', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Các ngành luật', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Chọn phương án đúng nhất điền vào chỗ trống: .....là đơn vị nhỏ nhất cấu thành nênhệ thống pháp luật', '', 'Approved', 1, 3, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Ngành luật', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Văn bản pháp luật', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chế định pháp luật', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quy phạm pháp luật', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Chọn phương án đúng nhất điền vào chỗ trống: .....là một nhóm các quy phạm phápluật có đặc điểm chung, cùng điều chỉnh một nhóm quan hệ xã hội có cùng tính chất?', '', 'Approved', 1, 3, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Ngành luật', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chế định pháp luật', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quan hệ pháp luật', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quy phạm pháp luật', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Chọn phương án đúng nhất điền vào chỗ trống: .....là hệ thống các quy phạm phápluật điều chỉnh các quan hệ cùng loại trong một lĩnh vực nhất định của đời sống xã hội?', '', 'Approved', 1, 3, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hệ thống pháp luật', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quan hệ pháp luật', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Pháp luật', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Ngành luật', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Văn bản quy phạm pháp luật là văn bản do?', '', 'Approved', 1, 3, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quốc hội ban hành', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chủ tịch nước ban hành', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chính phủ ban hành', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cơ quan Nhà nước có thẩm quyền ban hành', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tính thứ bậc của các loại văn bản pháp luật được xác định theo thứ tự?', '', 'Approved', 1, 3, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hiến pháp - Pháp lệnh - Các bộ luật, đạo luật - Các văn bản dưới luật', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hiến pháp - Các bộ luật, đạo luật - Các văn bản dưới luật', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Các bộ luật, đạo luật - Hiến pháp - Pháp lệnh - Các văn bản dưới luật', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Pháp lệnh - Hiến pháp - Các bộ luật, đạo luật - Các văn bản dưới luật', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tiêu chuẩn xác định một hệ thống pháp luật hoàn thiện là?', '', 'Approved', 1, 3, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tính toàn diện, tính đồng bộ', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tính phù hợp', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Trình độ kỹ thuật pháp lý cao', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cả a, b, c đều đúng', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Trình tự trình bày các bộ phận giả định, quy định, chế tài của quy phạm pháp luậtlà?', '', 'Approved', 1, 3, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giả định - Quy định - Chế tài', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quy định - Chế tài - Giả định', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giả định - Chế tài - Quy định', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Không nhất thiết phải như a, b, c', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Các cơ quan được phép ban hành Nghị quyết?', '', 'Approved', 1, 3, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quốc hội; Ủy ban Thường vụ Quốc hội', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chính phủ, Quốc hội', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quốc hội; Hội đồng nhân dân', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cả a, b, c đều đúng', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Chủ tịch nước được quyền ban hành?', '', 'Approved', 1, 3, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lệnh, Quyết định', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lệnh; Nghị quyết', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nghị quyết; Nghị định', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quyết định; Chỉ thị; Thông tư', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Bộ trưởng có quyền ban hành?', '', 'Approved', 1, 3, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quyết định; Nghị quyết; Chỉ thị', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quyết định; Chỉ thị; Lệnh', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quyết định; Chỉ thị; Thông tư', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thông tư', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Văn bản quy phạm pháp luật do Hội đồng nhân dân ban hành?', '', 'Approved', 1, 3, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quyết định; Nghị quyết', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quyết định; Chỉ thị', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nghị quyếtd) Quyết định; Thông tư', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Viện trưởng Viện Kiểm sát nhân dân tối cao không có quyền ban hành?', '', 'Approved', 1, 3, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nghị quyết', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quyết định; chỉ thị; thông tư', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thông tư', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nghị quyết; thông tư', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Thủ tướng Chính phủ không có quyền ban hành?', '', 'Approved', 1, 3, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nghị quyết; Quyết định; Chỉ thị', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quyết định', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quyết định; chỉ thị', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cả a, b, c đều sai', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Theo quy định pháp luật, văn bản quy phạm pháp luật chỉ có hiệu lực thi hành khi?', '', 'Approved', 1, 3, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Văn bản quy phạm pháp luật đã được đăng công báo, trừ một số trường hợp đặc biệt đượcpháp luật quy định', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sau khi văn bản quy phạm pháp luật được công bố', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sau khi văn bản quy phạm pháp luật được ban hành', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sau khi văn bản quy phạm pháp luật được thông qua', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Thời điểm có hiệu lực của văn bản quy phạm pháp luật?', '', 'Approved', 1, 3, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Được quy định trong văn bản quy phạm pháp luật', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Được quy định trong văn bản quy phạm pháp luật nhưng không sớm hơn bốn mươi lămngày, kể từ ngày công bố hoặc ký ban hành', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Kể từ ngày công bố văn bản quy phạm pháp luật', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Kể từ ngày ký ban hành văn bản quy phạm pháp luật', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Trường hợp Chính phủ ban hành một Nghị định mới thay thế cho một Nghị định đãđược ban hành trước đó thì Nghị định đã ban hành trước đây sẽ?', '', 'Approved', 1, 3, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phát sinh hiệu lực', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tiếp tục có hiệu lực', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chấm dứt hiệu lực', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Ngưng hiệu lực', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khẳng định nào sau đây là đúng?', '', 'Approved', 1, 3, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hiệu lực hồi tố của văn bản quy phạm pháp luật được Nhà nước thừa nhận và áp dụng phổbiến', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hiệu lực hồi tố của văn bản quy phạm pháp luật cho phép quy định trách nhiệm pháp lýmới đối với hành vi mà vào thời điểm thực hiện hành vi đó pháp luật không quy định tráchnhiệm pháp lý', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Trong mọi trường hợp đều không áp dụng hiệu lực hồi tố của văn bản quy phạm pháp luật', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Trong những trường hợp thật cần thiết, phù hợp với nguyên tắc nhân đạo XHCN, Nhà nướccho phép sử dụng hiệu lực hồi tố trong một số quy phạm cụ thể.', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Một hệ thống pháp luật hoàn thiện được xác định dựa trên các tiêu chí nào?', '', 'Approved', 1, 3, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tính thống nhất, tính toàn diện, tính phù hợp', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tính toàn diện, tính đồng bộ, tính phù hợp, trình độ kỹ thuật pháp lý cao', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tính đầy đủ, tính hợp lý, tính thống nhất, trình độ kỹ thuật pháp lý cao', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cả a, c đều đúng', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tên gọi Liên minh châu Âu (EU) có từ năm nào sau đây?</p>', '', 'Approved', 1, 4, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('1963.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('B. 1973', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('C. 1983.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('D. 28.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Những quan hệ nảy sinh trong đời sống xã hội, được các quy phạm pháp luật điềuchỉnh trong đó các chủ thể có những quyền và nghĩa vụ pháp lý nhất định, các quan hệnày là?', '', 'Approved', 1, 4, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quan hệ pháp luật', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quan hệ xã hội', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Vi phạm pháp luật', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quan hệ kinh tế', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Quan hệ pháp luật là?', '', 'Approved', 1, 4, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quan hệ nảy sinh trong xã hội được các quy phạm pháp luật điều chỉnh', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quan hệ xã hội', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Những quan hệ phát sinh khi có hành vi vi phạm pháp luật xảy ra', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quan hệ kinh tế, quan hệ chính trị, quan hệ gia đình', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Quan hệ pháp luật là hình thức đặc biệt của?', '', 'Approved', 1, 4, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quan hệ lao động', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quan hệ xã hội', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quy phạm pháp luật', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quan hệ chính trị', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Quan hệ xã hội và quan hệ pháp luật có điểm giống nhau là?', '', 'Approved', 1, 4, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đều là những quan hệ được pháp luật điều chỉnh', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đều là những quan hệ nảy sinh trong đời sống xã hội', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đều là những quan hệ nảy sinh trong lĩnh vực kinh tế, văn hóa', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cả a, b, c đều đúng', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Để quan hệ xã hội trở thành quan hệ pháp luật cần phải có?', '', 'Approved', 1, 4, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quy phạm pháp luật và sự kiện pháp lý', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quyền và nghĩa vụ quy định trong quy phạm pháp luật', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chủ thể và khách thể quan hệ pháp luật', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sự điều chỉnh của pháp luật', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Quan hệ nào sau đây là quan hệ pháp luật?', '', 'Approved', 1, 4, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quan hệ tình yêu nam nữ', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quan hệ vợ chồng', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quan hệ bạn bè', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cả a, b, c đều đúng', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Đặc điểm của quan hệ pháp luật là?', '', 'Approved', 1, 4, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Các quan hệ trong cuộc sống', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quan hệ mang tính ý chí', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Các quan hệ trong sản xuất và kinh doanh', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quan hệ do Nhà nước quy định', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Quan hệ pháp luật là quan hệ xã hội có ý chí, ý chí đó là của?', '', 'Approved', 1, 4, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước và các chủ thể tham gia vào quan hệ pháp luật', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cá nhân và tổ chức', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Các đáp án đều sai', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Quan hệ pháp luật là quan hệ xã hội được điều chỉnh bởi?', '', 'Approved', 1, 4, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Pháp luật', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quy tắc tôn giáo', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nghị quyết của Đảng', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Quy phạm pháp luật chỉ có thể làm nảy sinh quan hệ pháp luật giữa các chủ thể khigắn liền với?', '', 'Approved', 1, 4, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sự kiện pháp lý', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nghĩa vụ pháp lý', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bao gồm các đáp án', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Quan hệ pháp luật phát sinh, thay đổi, chấm dứt dưới tác động của?', '', 'Approved', 1, 4, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quy phạm pháp luật', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Năng lực chủ thể', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sự kiện pháp lý', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cả a, b, c đều đúng', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nội dung của quan hệ pháp luật được thể hiện?', '', 'Approved', 1, 4, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chủ thể tham gia thực hiện quyền theo quy định của pháp luật', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chủ thể tham gia là các cá nhân hoặc tổ chức có đủ tư cách pháp lý', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chủ thể tham gia có những quyền và nghĩa vụ do pháp luật quy định', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chủ thể tham gia phải thực hiện nghĩa vụ theo quy định của pháp luật', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Một cá nhân trở thành chủ thể của quan hệ pháp luật cần phải?', '', 'Approved', 1, 4, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thực hiện nghĩa vụ pháp lý do pháp luật quy định', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Không mắc bệnh tâm thần', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Có năng lực pháp luật và năng lực hành vi', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cả a, b, c đều đúng', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cấu trúc pháp lý của một quan hệ pháp luật gồm các yếu tố cơ bản như sau?', '', 'Approved', 1, 4, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quyền và nghĩa vụ của các bên', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chủ thể, khách thể và nội dung', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Năng lực pháp luật và năng lực hành vi', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bao gồm cả a, b, c', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Chủ thể của quan hệ pháp luật là?', '', 'Approved', 1, 4, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước, tất cả mọi cá nhân và tổ chức trong xã hội', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Những tổ chức có tiềm lực kinh tế', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cá nhân hay tổ chức có năng lực chủ thể tham gia vào quan hệ pháp luật', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Những cá nhân từ đủ 18 tuổi trở lên và có trí óc bình thường', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Năng lực pháp luật của cá nhân xuất hiện từ khi?', '', 'Approved', 1, 4, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cá nhân đủ 18 tuổi', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cá nhân sinh ra', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cá nhân tham gia vào quan hệ pháp luật', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cá nhân có khả năng nhận thức và điều khiển hành vi của mình', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khi nghiên cứu về năng lực chủ thể quan hệ pháp luật, thì khẳng định nào sau đây là sai?', '', 'Approved', 1, 4, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Năng lực pháp luật là tiền đề cho năng lực hành vi', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Năng lực pháp luật là khả năng có quyền và nghĩa vụ pháp lý mà nhà nước quy định chocác tổ chức, cá nhân nhất định', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Năng lực pháp luật của người thành niên thì rộng hơn người chưa thành niên', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Năng lực pháp luật của cá nhân chỉ được quy định trong các văn bản luật', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khi nghiên cứu về năng lực chủ thể của quan hệ pháp luật, thì khẳng định nào sauđây là đúng?', '', 'Approved', 1, 4, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cá nhân có năng lực pháp luật thì cũng có năng lực hành vi', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cá nhân có năng lực hành vi thì cũng có năng lực pháp luật', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cá nhân không có năng lực hành vi thì cũng không có năng lực pháp luật', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cả a, b, c đều đúng', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Năng lực hành vi của cá nhân chỉ xuất hiện khi?', '', 'Approved', 1, 4, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cá nhân đủ 18 tuổi, không mắc bệnh tâm thần', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cá nhân đủ 16 tuổi, có trí óc bình thường', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cá nhân đã đến độ tuổi nhất định và có những điều kiện nhất định', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Được Nhà nước quy định', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Một tổ chức có tư cách pháp nhân khi có điều kiện?', '', 'Approved', 1, 4, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Được thành lập hợp pháp, có cơ cấu tổ chức chặt chẽ', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Có tài sản độc lập với cá nhân, tổ chức khác', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhân danh mình tham gia các quan hệ pháp luật một cách độc lập', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cả a, b, c đều đúng', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khi nghiên cứu về chủ thể quan hệ pháp luật thì khẳng định nào sau đây là đúng?', '', 'Approved', 1, 4, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả mọi cá nhân đều có thể trở thành chủ thể của quan hệ pháp luật', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả mọi tổ chức đều có thể trở thành chủ thể của quan hệ pháp luật', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả mọi cá nhân và tổ chức có đủ những điều kiện do pháp luật quy định đều có thể trởthành chủ thể của quan hệ pháp luật', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả các cơ quan, đơn vị, tổ chức và cá nhân trong xã hội đều có thể trở thành chủ thể củaquan hệ pháp luật', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khi nghiên cứu về quyền chủ thể trong quan hệ pháp luật, thì khẳng định nào sau đâylà đúng?', '', 'Approved', 1, 4, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Khả năng được lựa chọn những xử sự theo ý muốn chủ quan của mình', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Khả năng yêu cầu các chủ thể khác thực hiện nghĩa vụ để bảo đảm việc thực hiện quyềncủa mình', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Khả năng yêu cầu cơ quan Nhà nước có thẩm quyền bảo vệ quyền của mình khi bị phía chủthể bên kia vi phạm', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cả a, b, c đều đúng', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nghĩa vụ pháp lý của chủ thể gồm có?', '', 'Approved', 1, 4, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chủ thể phải tiến hành một số hành vi nhất định do pháp luật quy định', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chủ thể phải tự kiềm chế, không được thực hiện một số hành vi nhất định', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chủ thể phải chịu trách nhiệm pháp lý khi không thực hiện theo cách xử sự bắt buộc màpháp luật đã quy định', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cả a, b, c đều đúng', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khách thể của quan hệ pháp luật là?', '', 'Approved', 1, 4, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Các lợi ích vật chất hoặc tinh thần', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Các quy định của cơ quan Nhà nước', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lợi ích vật chất mà các chủ thể của quan hệ đó hướng tới khi tham gia quan hệ', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Yếu tố thúc đẩy chủ thể tham gia quan hệ pháp luật', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Sự kiện pháp lý là những sự kiện xảy ra?', '', 'Approved', 1, 4, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Từ hành vi xử sự của con người', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Từ thực tiễn đời sống xã hội', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Trong thực tiễn đời sống mà sự xuất hiện hay mất đi của nó được pháp luật gắn với việchình thành, thay đổi hay chấm dứt quan hệ pháp luật', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cả a, b, c đều đúng', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khi nghiên cứu về chủ thể quan hệ pháp luật thì khẳng định nào sau đây là đúng?', '', 'Approved', 1, 4, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Mọi cá nhân đều có năng lực hành vi như nhau', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Mọi cá nhân đạt độ tuổi do luật định được tham gia vào tất cả quan hệ pháp luật', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Mọi tổ chức đều được tham gia vào tất cả quan hệ pháp luật', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Mọi chủ thể tham gia vào quan hệ pháp luật đều có quyền và nghĩa vụ nhất định', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khi nghiên cứu về đặc điểm của quan hệ pháp luật thì khẳng định nào sau đây làsai?', '', 'Approved', 1, 4, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quan hệ pháp luật là loại quan hệ có ý chí', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quan hệ pháp luật xuất hiện dựa trên cơ sở quy phạm pháp luật', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quan hệ pháp luật do Nhà nước quy định', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quan hệ pháp luật luôn gắn liền với sự kiện pháp lý', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khả năng chủ thể có quyền hoặc có nghĩa vụ pháp lý do Nhà nước quy định, gọi là?', '', 'Approved', 1, 4, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Khả năng pháp lý', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Năng lực pháp luật', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Năng lực hành vi', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bao gồm các đáp án', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khả năng Nhà nước thừa nhận cho chủ thể bằng hành vi của mình có thể xác lập vàthực hiện quyền hoặc nghĩa vụ pháp lý, gọi là?', '', 'Approved', 1, 4, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Khả năng hành vi', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Năng lực pháp luật', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Năng lực hành vi', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Năng lực pháp lý', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Năng lực pháp luật và năng lực hành vi là những thuộc tính không tách rời của mỗicá nhân, đều do Nhà nước thừa nhận cho họ nên gọi là?', '', 'Approved', 1, 4, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thuộc tính tự nhiên', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Năng lực pháp lý', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thuộc tính pháp lý', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bao gồm các đáp án', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khẳng định nào sau đây là sai?', '', 'Approved', 1, 4, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Năng lực pháp luật là tiền đề của năng lực hành vi', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Năng lực hành vi đầy đủ chỉ có ở những chủ thể đáp ứng đầy đủ các điều kiện do pháp luậtquy định', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Năng lực pháp luật và năng lực hành vi là những thuộc tính tự nhiên của mỗi cá nhân, cósẵn khi cá nhân sinh ra', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Năng lực chủ thể pháp luật luôn mang tính giai cấp', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Chủ thể phổ biến nhất tham gia vào quan hệ pháp luật là?', '', 'Approved', 1, 4, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cá nhân', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Pháp nhân', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tổ chức', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hộ gia đình', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Quá trình hoạt động có mục đích nhằm đưa pháp luật vào cuộc sống, trở thànhhành vi thực tế hợp pháp của các chủ thể pháp luật, gọi là?', '', 'Approved', 1, 5, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Áp dụng pháp luật', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thực thi pháp luật', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thực hiện pháp luật', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thi hành pháp luật', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Hãy xác định khẳng định nào sau đây là sai?', '', 'Approved', 1, 5, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hành vi thực hiện pháp luật của chủ thể rất phong phú, đa dạng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chủ thể thực hiện pháp luật biểu hiện bằng hành vi hành động hoặc không hành động', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Việc thực hiện pháp luật biểu hiện bằng hành vi hành động hoặc không hành động, hành vihợp pháp hoặc không hợp pháp', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quá trình thực hiện pháp luật thể hiện nhận thức và thái độ của chủ thể trước pháp luật', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Hoạt động áp dụng pháp luật được tiến hành trong các trường hợp?', '', 'Approved', 1, 5, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Khi cần áp dụng các biện pháp cưỡng chế Nhà nước đối với những chủ thể có hành vi viphạm pháp luật.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Khi cần có sự tham gia của Nhà nước để làm phát sinh quyền và nghĩa vụ pháp lý của cácchủ thể pháp luật.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Khi xảy ra tranh chấp về quyền và nghĩa vụ pháp lý giữa các bên tham gia quan hệ phápluật mà các bên không tự giải quyết được.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cả a, b, c đều đúng', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Có...... hình thức thực hiện pháp luật, bao gồm?', '', 'Approved', 1, 5, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('4 - Tuân thủ pháp luật, thực thi pháp luật, thi hành pháp luật, áp dụng pháp luật', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('4- Tuân thủ pháp luật, thực thi pháp luật, sử dụng pháp luật, áp dụng pháp luật', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('4- Tuân thủ pháp luật, thi hành pháp luật, sử dụng pháp luật, áp dụng pháp luật', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('4- Tuân theo pháp luật, thi hành pháp luật, sử dụng pháp luật, áp dụng pháp luật', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Các chủ thể pháp luật kiềm chế không tiến hành những hành vi mà pháp luật ngăncấm, đây là hình thức thực hiện pháp luật nào?', '', 'Approved', 1, 5, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tuân theo pháp luật', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chấp hành pháp luật', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tuân thủ pháp luật', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tuân thủ và chấp hành pháp luật', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Loại quy phạm pháp luật nào được thực hiện trong hình thức tuân thủ pháp luật?', '', 'Approved', 1, 5, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cho phép', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Ngăn ngừa', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cấm đoán', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bắt buộc', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tuân thủ pháp luật là hình thức thực hiện pháp luật mang tính?', '', 'Approved', 1, 5, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chủ động', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bất động', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thụ động', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Năng động', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('So với tuân thủ pháp luật, thi hành pháp luật là hình thức thực hiện pháp luật mangtính?', '', 'Approved', 1, 5, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Biến động', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bất động', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chủ động', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bị động', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khẳng định nào sai khi nghiên cứu về hình thức thi hành pháp luật?', '', 'Approved', 1, 5, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Việc thi hành pháp luật phụ thuộc chủ thể muốn hay không mong muốn thực hiện', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tương ứng với hình thức thi hành pháp luật, có loại quy phạm pháp luật bắt buộc', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chủ thể thực hiện pháp luật mang tính tích cực, chủ động', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thi hành pháp luật là chủ thể pháp luật phải thực hiện nghĩa vụ pháp lý của mình bằnghành động tích cực', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khẳng định nào sai khi nghiên cứu về hình thức sử dụng pháp luật?', '', 'Approved', 1, 5, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chủ thể pháp luật có thể thực hiện hoặc không thực hiện quyền pháp luật quy định', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tương ứng với hình thức sử dụng pháp luật là loại quy phạm pháp luật bắt buộc', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Việc sử dụng pháp luật phụ thuộc rất lớn vào năng lực hành vi của chủ thể', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chủ thể sử dụng pháp luật để hiện thực hóa các quyền và lợi ích của mình được pháp luậtcho phép', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Hoạt động áp dụng pháp luật được tiến hành bởi?', '', 'Approved', 1, 5, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả các chủ thể', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Các cơ quan Nhà nước có thẩm quyền', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Công dân, người nước ngoài', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Các tổ chức tôn giáo', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Quyết định áp dụng pháp luật?', '', 'Approved', 1, 5, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nội dung phải đúng thẩm quyền cơ quan và người ký (ban hành) phải là người có thẩmquyền ký', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phải phù hợp với văn bản của cấp trên', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phải phù hợp với lợi ích của Nhà nước và lợi ích hợp pháp của công dân', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả các phương án đều đúng', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Hoạt động áp dụng pháp luật?', '', 'Approved', 1, 5, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là hoạt động mang tính cá biệt - cụ thể và không thể hiện quyền lực Nhà nước', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là hoạt động không mang tính cá biệt - cụ thể nhưng thể hiện quyền lực Nhà nước', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là hoạt động vừa mang tính cá biệt - cụ thể, vừa thể hiện quyền lực Nhà nước', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả các phương án đều đúng', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Văn bản áp dụng pháp luật được ban hành trong hoạt động?', '', 'Approved', 1, 5, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thi hành pháp luật', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Áp dụng pháp luật', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tuân thủ pháp luật', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sử dụng pháp luật', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khẳng định nào sai khi nghiên cứu về hình thức áp dụng pháp luật?', '', 'Approved', 1, 5, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Áp dụng pháp luật là hình thức thực hiện pháp luật đồng thời còn là hoạt động của cơ quanNhà nước', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Trong hình thức áp dụng pháp luật, các chủ thể pháp luật tự mình thực hiện quyền và nghĩavụ pháp lý do pháp luật quy định', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hoạt động áp dụng pháp luật luôn mang tính quyền lực Nhà nước', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Văn bản áp dụng pháp luật có tính chất cá biệt, áp dụng một lần đối với cá nhân, tổ chức cụthể trong những trường hợp cụ thể', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tìm đáp án đúng điền vào chỗ trống trong câu sau: .....là hành vi trái pháp luật, cólỗi, do chủ thể có năng lực trách nhiệm pháp lí thực hiện, xâm hại đến các quan hệ xã hộiđược pháp luật bảo vệ?', '', 'Approved', 1, 5, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quy phạm pháp luật', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hành vi bất hợp pháp', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tội phạm', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Vi phạm pháp luật', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Hành vi nào sau đây là hành vi trái pháp luật?', '', 'Approved', 1, 5, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hành vi vi phạm Nghị quyết Đảng', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hành vi vi phạm Điều lệ Hội Phụ nữ', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sao chép bài của người khác trong giờ thi học kỳ', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cả a, b, c đều đúng', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Vi phạm pháp luật là?', '', 'Approved', 1, 5, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tàn dư của xã hội cũ', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hiện tượng xã hội', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hiện tượng chủ quan', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hiện tượng nhất thời', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Hành vi trái pháp luật nào sau đây là dạng hành vi không hành động?', '', 'Approved', 1, 5, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giúp người khác tự sát', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tàng trữ vũ khí', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Không tố giác người phạm tội', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Môi giới mại dâm', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Ông A vận chuyển gia cầm bị bệnh, bị cơ quan có thẩm quyền phát hiện và buộcphải tiêu hủy hết số gia cầm bị bệnh này. Đây là biện pháp chế tài?', '', 'Approved', 1, 5, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dân sự', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hình sự', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hành chính', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Kỷ luật', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Hãy xác định câu sai ?', '', 'Approved', 1, 5, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Vi phạm pháp luật là hành vi xác định của con người, hành vi đó đã thể hiện ra thực tếkhách quan', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chủ thể thực hiện hành vi trái pháp luật phải có năng lực pháp luật', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Vi phạm pháp luật là hành vi trái pháp luật, xâm hại các quan hệ xã hội được pháp luật xáclập và bảo vệ', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chủ thể thực hiện hành vi trái pháp luật phải có lỗi', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Hãy xác định câu sai?', '', 'Approved', 1, 5, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quy phạm pháp luật là hành vi xác định của con người, hành vi đó đã thể hiện ra thực tếkhách quan', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chủ thể thực hiện hành vi trái pháp luật phải có năng lực trách nhiệm pháp lý', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Vi phạm pháp luật là hành vi trái pháp luật, xâm hại các quan hệ xã hội được pháp luật xáclập và bảo vệ', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chủ thể thực hiện hành vi trái pháp luật phải có lỗi', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Chủ thể có năng lực trách nhiệm pháp lý khi có đủ điều kiện sau?', '', 'Approved', 1, 5, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đạt độ tuổi do pháp luật quy định, có khả năng nhận thức và điều khiển hành vi', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đạt độ tuổi do pháp luật quy định, có năng lực pháp luật', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Có năng lực pháp luật và năng lực hành vi', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Từ 18 tuổi trở lên và có trí óc bình thường', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Các hành vi sau đều trái pháp luật, ngoại trừ?', '', 'Approved', 1, 5, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tổ chức đánh bạc', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đổ rác thải xuống kênh rạch', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Không thực hiện nghĩa vụ quân sự', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Không cho bạn mượn xe đạp', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Hãy xác định câu sai?', '', 'Approved', 1, 5, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Vi phạm pháp luật là hành vi xác định của con người, hành vi đó đã thể hiện ra thực tếkhách quan', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chủ thể thực hiện hành vi trái pháp luật phải có năng lực trách nhiệm pháp lý', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Vi phạm pháp luật là hành vi trái pháp luật, xâm hại các quan hệ xã hội được pháp luật xáclập và bảo vệ', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chủ thể thực hiện hành vi trái pháp luật phải có lỗi', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Hành vi nào sau đây không là hành vi vi phạm pháp luật?', '', 'Approved', 1, 5, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Anh A chia tay người yêu', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A ngược đãi cha mẹ', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A ép buộc con gái kết hôn', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A hành hung vợ', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Những biểu hiện ra bên ngoài của vi phạm pháp luật gọi là?', '', 'Approved', 1, 5, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Mặt khách quan của vi phạm pháp luật', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dấu hiệu của vi phạm pháp luật', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hành vi vi phạm pháp luật', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hậu quả của hành vi vi phạm pháp luật', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Các yếu tố cấu thành vi phạm pháp luật bao gồm?', '', 'Approved', 1, 5, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chủ thể, mặt khách thể, mặt khách quan, chủ quan', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chủ thể, khách thể, mặt khách quan, mặt chủ quan', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chủ thể, chủ quan, khách thể, khách quan', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chủ thể, mặt chủ quan, khách thể, khách quan', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Mặt khách quan của hành vi vi phạm pháp luật bao gồm?', '', 'Approved', 1, 5, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hành vi trái pháp luật và hậu quả do hành vi trái pháp luật gây ra', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Mối quan hệ nhân quả giữa hành vi trái pháp luật và thiệt hại gây ra cho xã hội', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thời gian, địa điểm, công cụ, phương tiện thực hiện hành vi vi phạm pháp luật', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bao gồm các đáp án', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Những biểu hiện, diễn biến tâm lý bên trong của chủ thể vi phạm pháp luật gọi là?', '', 'Approved', 1, 5, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Mặt chủ quan của vi phạm pháp luật', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhận thức, thái độ của chủ thể', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chủ thể vi phạm pháp luật', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bao gồm các đáp án', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Các yếu tố thuộc mặt chủ quan của vi phạm pháp luật bao gồm?', '', 'Approved', 1, 5, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lỗi, động cơ, mục đích', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lỗi, động cơ, kết quả', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lỗi, động cơ, mục tiêu', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Các đáp án đều sai', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khẳng định nào sai khi nghiên cứu về mặt chủ quan của vi phạm pháp luật?', '', 'Approved', 1, 5, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chỉ khi nào hành vi trái pháp luật được chủ thể thực hiện một cách cố ý thì mới có thể làhành vi vi phạm pháp luật', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lỗi là một trong những căn cứ để xác định mức độ trách nhiệm pháp lý đối với chủ thể viphạm pháp luật', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lỗi là thái độ tâm lý của chủ thể đối với hành vi trái pháp luật mà mình đã thực hiện và hậuquả do hành vi gây ra', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Động cơ là cái thúc đẩy chủ thể thực hiện hành vi vi phạm pháp luật', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khẳng định nào đúng khi nghiên cứu về mặt chủ quan của vi phạm pháp luật?', '', 'Approved', 1, 5, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tùy thuộc vào trách nhiệm pháp lý áp dụng đối với chủ thể để xác định lỗi của chủ thể viphạm pháp luật', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Mục đích của hành vi vi phạm pháp luật là yếu tố bắt buộc trong mọi cấu thành vi phạmpháp luật', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Mục đích là cái mốc đạt đến của chủ thể thực hiện hành vi vi phạm pháp luật', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lỗi là thái độ tâm lý của chủ thể đối với hành vi trái pháp luật mà mình đã thực hiện', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Chọn đáp án phù hợp: Chủ thể vi phạm pháp luật là cá nhân hoặc tổ chức có...... đãthực hiện hành vi vi phạm pháp luật?', '', 'Approved', 1, 5, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Khả năng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Năng lực pháp luật', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Năng lực trách nhiệm pháp lý', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Năng lực hành vi', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Chọn đáp án phù hợp: Khách thể của vi phạm pháp luật là những...... được phápluật xác lập, bảo vệ nhưng đã bị xâm hại bởi hành vi vi phạm pháp luật?', '', 'Approved', 1, 5, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quan hệ pháp luật', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quan hệ tài sản', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quan hệ xã hội', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đối tượng', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Xác định đáp án sai trong các khẳng định sau?', '', 'Approved', 1, 5, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Khách thể của vi phạm pháp luật là những quan hệ xã hội được pháp luật xác lập, bảo vệnhưng đã bị xâm hại bởi hành vi vi phạm pháp luật', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cá nhân không có năng lực trách nhiệm pháp lý thì không trở thành chủ thể của vi phạmpháp luật', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tính chất và tầm quan trọng của khách thể bị xâm hại không liên quan đến việc xác địnhtrách nhiệm pháp lý của chủ thể đã vi phạm pháp luật', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Khách thể của vi phạm pháp luật là yếu tố bắt buộc trong mọi cấu thành vi phạm pháp luật', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nguyên nhân của vi phạm pháp luật?', '', 'Approved', 1, 5, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Mâu thuẫn giữa quan hệ sản xuất và lực lượng sản xuất', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tàn dư, tập tục đã lỗi thời của xã hội cũ còn rơi rớt lại', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Trình độ dân trí và ý thức pháp luật thấp của nhiều tầng lớp dân cư', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả các phương án đều đúng', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khẳng định nào sau đây là đúng?', '', 'Approved', 1, 5, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Trách nhiệm hình sự là trách nhiệm thuộc về cá nhân người phạm tội, phải do chính họgánh chịu một cách trực tiếp, chứ không thể chuyển hay ủy thác cho người khác', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Trách nhiệm hình sự là trách nhiệm thuộc về cá nhân người phạm tội, họ có thể chuyển hayủy thác cho người khác thực hiện', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Trách nhiệm hình sự là trách nhiệm thuộc về cá nhân người phạm tội, họ có thể chuyển hayủy thác cho người khác thực hiện khi được Tòa án cho phép', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả các phương án đều sai', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khẳng định nào sau đây là đúng?', '', 'Approved', 1, 5, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chỉ có vi phạm pháp luật mới phải chịu trách nhiệm pháp lý', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Các vi phạm pháp luật, vi phạm đạo đức, vi phạm quy tắc tôn giáo, vi phạm tập quán... đềuphải chịu trách nhiệm pháp lý', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cả a và b đều đúng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cả a và b đều sai', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khẳng định nào sau đây là đúng?', '', 'Approved', 1, 5, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Trách nhiệm hình sự chỉ áp dụng đối với cá nhân thực hiện hành vi phạm tội', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Trách nhiệm hình sự chỉ áp dụng đối với tổ chức thực hiện hành vi phạm tội', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Trách nhiệm hình sự vừa áp dụng đối với cá nhân, vừa áp dụng đối với tổ chức có hành viphạm tội', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả các phương án đều sai', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Vi phạm pháp luật hình sự là hành vi vi phạm nguy hiểm cho xã hội được quy địnhtrong?', '', 'Approved', 1, 5, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Pháp luật của Nhà nước', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Văn bản quy phạm pháp luật', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bộ luật Hình sự', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quy phạm pháp luật', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Vi phạm pháp luật hình sự còn được gọi là?', '', 'Approved', 1, 5, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tội trạng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tội danh', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tội phạm', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Các đáp án đều đúng', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Vi phạm pháp luật hành chính là hành vi do cá nhân, tổ chức thực hiện một cách cốý hoặc vô ý, xâm phạm đến các?', '', 'Approved', 1, 5, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quy tắc xử sự', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quy phạm pháp luật', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quy tắc quản lý Nhà nước', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quy định pháp luật', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Chọn đáp án phù hợp: Vi phạm pháp luật dân sự là hành vi trái pháp luật, có lỗi, docá nhân, tổ chức thực hiện, xâm phạm đến các..... được pháp luật..... điều chỉnh?', '', 'Approved', 1, 5, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quan hệ xã hội - pháp luật', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quan hệ pháp luật - tác động', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quan hệ tài sản và quan hệ nhân thân - dân sự', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quan hệ tài sản và quan hệ thân nhân - dân sự', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Yếu tố không thuộc mặt chủ quan của vi phạm pháp luật?', '', 'Approved', 1, 5, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đối tượng của hành vi vi phạm pháp luật', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lỗi', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Động cơ', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Mục đích', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Chọn đáp án đúng: .....là loại trách nhiệm pháp lí nghiêm khắc nhất, do..... áp dụngcho chủ thể đã thực hiện hành vi phạm tội?', '', 'Approved', 1, 5, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Trách nhiệm pháp lý hình sự - Tòa án', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Trách nhiệm pháp lý hình sự - Viện Kiểm sát', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Trách nhiệm pháp lý hình sự - Công an', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Trách nhiệm pháp lý hình sự - Cơ quan Nhà nước có thẩm quyền', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Chọn đáp án đúng cho chỗ trống trong câu sau: ..... do..... áp dụng đối với cá nhân,tổ chức đã vi phạm pháp luật dân sự?', '', 'Approved', 1, 5, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Trách nhiệm pháp lý dân sự - Tòa án', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Trách nhiệm pháp lý hình sự - Viện Kiểm sát', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Trách nhiệm pháp lý dân sự - Công an', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Trách nhiệm pháp lý dân sự - Cơ quan Nhà nước có thẩm quyền', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Chọn đáp án đúng cho chỗ trống trong câu sau: ..... do..... áp dụng đối với cá nhân,tổ chức đã vi phạm pháp luật hành chính?', '', 'Approved', 1, 5, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Trách nhiệm pháp lí hành chính - Tòa án', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Trách nhiệm pháp lí hành chính - Viện Kiểm sát', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Trách nhiệm pháp lý dân sự - Công an', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Trách nhiệm pháp lí hành chính - Cơ quan quản lí Nhà nước có thẩm quyền', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Chọn đáp án đúng cho chỗ trống trong câu sau: ..... do..... áp dụng đối với học sinh,sinh viên, cán bộ của nhà trường đã vi phạm nội quy, quy chế của nhà trường?', '', 'Approved', 1, 5, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Trách nhiệm kỷ luật - Bộ trưởng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Trách nhiệm kỷ luật - Hiệu trưởng', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Trách nhiệm kỷ luật - Trưởng phòng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Trách nhiệm kỷ luật - Giám đốc xí nghiệp', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Hành vi vi phạm pháp luật?', '', 'Approved', 1, 5, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Không bao giờ vi phạm đạo đức', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Có thể đồng thời là vi phạm đạo đức', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cả a và b đều đúng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cả a và b đều sai', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Chủ thể phải chịu trách nhiệm pháp lý về hành vi vi phạm pháp luật của mình khi?', '', 'Approved', 1, 5, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chủ thể đó đủ 18 tuổi và không mắc bệnh tâm thần', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chủ thể đó đủ 16 tuổi và có trí óc bình thường', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chủ thể đó đã đạt đến độ tuổi nhất định và có khả năng nhận thức và điều khiển hành vicủa mình', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thông thường là 18 tuổi và không mắc bệnh tâm thần', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khi nghiên cứu về đặc điểm của trách nhiệm pháp lý thì khẳng định nào sau đây làsai?', '', 'Approved', 1, 5, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cơ sở của trách nhiệm pháp lý là vi phạm pháp luật', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Trong mọi trường hợp, trách nhiệm pháp lý luôn gắn liền với những biện pháp cưỡng chếNhà nước đối với chủ thể đã vi phạm pháp luật', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Việc truy cứu trách nhiệm pháp lý chỉ do các cơ quan Nhà nước hay nhà chức trách cóthẩm quyền tiến hành đối với chủ thể vi phạm pháp luật', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Truy cứu trách nhiệm pháp lý là một quá trình hoạt động phức tạp của các cơ quan Nhànước, nhà chức trách có thẩm quyền', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Mặt chủ quan của vi phạm pháp luật gồm?', '', 'Approved', 1, 5, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lỗi cố ý và lỗi vô ý', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cố ý trực tiếp và cố ý gián tiếp; vô ý vì quá tự tin và vô ý vì quá cẩu thả', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lỗi; động cơ; mục đích', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hành vi trái pháp luật và hậu quả nguy hiểm cho xã hội', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Chủ thể thực hiện hành vi trái pháp luật bị coi là có lỗi khi?', '', 'Approved', 1, 5, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhận thức rất rõ về hành vi mình thực hiện là trái pháp luật và có thể gây ra hậu quảnghiêm trọng cho xã hội', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Có khả năng nhận thức về hành vi mình thực hiện là trái pháp luật và có thể gây ra hậu quảnguy hiểm cho xã hội', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Do vô ý nên không có khả năng nhận thức về hành vi mình đã thực hiện là trái pháp luật vàcó thể gây ra hậu quả nguy hiểm cho xã hội', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cố ý thực hiện hành vi trái pháp luật', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Hành vi nào sau đây là vi phạm pháp luật hành chính?', '', 'Approved', 1, 5, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Vượt đèn đỏ gây chết người', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cướp tài sản', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Buôn bán gia cầm nhiễm cúm', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sử dụng tài liệu khi làm bài thi', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Hành vi nào sau đây là vi phạm pháp luật hình sự?', '', 'Approved', 1, 5, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Điều khiển xe máy chạy lấn tuyến', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bán hàng lấn chiếm lòng, lề đường', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chứa chấp hoạt động mại dâm', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Điều khiển xe gắn máy không có bằng lái xe', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Hành vi nào sau đây là vi phạm pháp luật dân sự?', '', 'Approved', 1, 5, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Kinh doanh sai ngành nghề đã đăng ký', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Buôn bán phụ nữ', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tuyên truyền văn hóa phẩm đồi trụy', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Không trả tiền thuê nhà', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Để truy cứu trách nhiệm pháp lý cần xác định?', '', 'Approved', 1, 5, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Có hành vi vi phạm pháp luật xảy ra, còn thời hiệu truy cứu trách nhiệm pháp lý', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lỗi của chủ thể vi phạm pháp luật', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hành vi trái pháp luật của chủ thể', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hậu quả gây thiệt hại cho xã hội', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nguyên tắc truy cứu trách nhiệm pháp lý là?', '', 'Approved', 1, 5, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Việc truy cứu trách nhiệm pháp lý luôn cần phải áp dụng biện pháp cưỡng chế Nhà nước', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Việc truy cứu trách nhiệm pháp lý phải được tiến hành trên cơ sở quy định của pháp luật', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Việc truy cứu trách nhiệm pháp lý chỉ được áp dụng đối với cá nhân vi phạm pháp luật', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Việc truy cứu trách nhiệm pháp lý chỉ được áp dụng đối với tổ chức vi phạm pháp luật', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Đối với các trường hợp áp dụng thời hiệu truy cứu trách nhiệm pháp lý, thời hiệu đóđược tính từ thời điểm nào sau đây?', '', 'Approved', 1, 5, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thời điểm cơ quan Nhà nước có thẩm quyền phát hiện hành vi vi phạm', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thời điểm chủ thể người phạm tội ra đầu thú', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thời điểm vi phạm pháp luật được thực hiện', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Các đáp án đều sai', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tìm đáp án sai trong các nhận định sau?', '', 'Approved', 1, 6, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Pháp luật và pháp chế có mối quan hệ mật thiết với nhau', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Trong mối quan hệ giữa pháp luật với pháp chế thì pháp luật là yếu tố tìền đề', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Pháp chế đồng nghĩa với cưỡng chế', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tôn trọng tính tối cao của Hiến pháp và pháp luật là một trong những yêu cầu của pháp chếXHCN', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('“Quyền lực Nhà nước là thống nhất, có sự phân công và phối hợp chặt chẽ giữa cáccơ quan Nhà nước trong việc thực hiện các quyền lập pháp, hành pháp và tư pháp” làmột trong những đặc trưng của?', '', 'Approved', 1, 6, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước pháp quyền TBCN', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước dân chủ', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước pháp quyền XHCN Việt Nam', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cả 3 Nhà nước trên', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Luật Hiến pháp là một ngành luật chủ đạo trong hệ thống pháp luật Việt Nam vì?', '', 'Approved', 1, 7, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Do Quốc hội - cơ quan quyền lực Nhà nước cao nhất ban hành', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quy định về những vấn đề cơ bản nhất, quan trọng nhất của Nhà nước', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Có giá trị pháp lý cao nhất', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cả a, b, c đều đúng', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Độ tuổi được ứng cử vào Quốc hội và Hội đồng nhân dân các cấp theo quy định củapháp luật ở nước ta là?', '', 'Approved', 1, 7, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đủ 18 tuổi trở lên', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đủ 19 tuổi trở lên', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đủ 20 tuổi trở lên', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đủ 21 tuổi trở lên', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Hiến pháp có những đặc trưng, khác với các văn bản pháp luật khác ở chỗ?', '', 'Approved', 1, 7, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hiến pháp chỉ quy định những vấn đề cơ bản nhất, quan trọng nhất của một Nhà nước, mộtxã hội làm cơ sở nền tảng cho hệ thống pháp luật', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hiến pháp có một phạm vi điều chỉnh rất rộng, trên tất cả các lĩnh vực, các văn bản phápluật khác có phạm vi điều chỉnh hẹp hơn', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hiến pháp có hiệu lực pháp lý cao nhất và có thủ tục làm mới và sửa đổi đặc biệt là thủ tụclập hiến', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bao gồm cả a, b, c', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Pháp luật nước ta quy định người nào có quyền bầu cử ra cơ quan Quốc hội và Hộiđồng nhân dân các cấp?', '', 'Approved', 1, 7, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả công dân Việt Nam', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Công dân Việt Nam 18 từ tuổi trở lên', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Công dân Việt Nam 16 từ tuổi trở lên', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Công dân Việt Nam 21 từ tuổi trở lên', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Văn bản pháp luật nào quy định về quyền và nghĩa vụ cơ bản của công dân?', '', 'Approved', 1, 7, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Luật Hành chính', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Luật Dân sự', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Luật Lao động', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Luật Hiến pháp', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Những quyền và nghĩa vụ của công dân được quy định trong?', '', 'Approved', 1, 7, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Rất nhiều văn bản pháp luật khác nhau', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Luật Dân sự', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Luật Lao động', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hiến pháp', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Hiến pháp Nhà nước ta quy định: Công dân đủ 21 tuổi trở lên có quyền ứng cử vàocơ quan nào sau đây?', '', 'Approved', 1, 7, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chính phủ', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quốc hội và Hội đồng nhân dân các cấp', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Ủy ban nhân dân các cấp', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Ủy ban nhân dân cấp tỉnh và tương đương', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Lịch sử lập hiến Việt Nam đã có những bản Hiến pháp nào?', '', 'Approved', 1, 7, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hiến pháp 1946 - Hiến pháp 1959 - Hiến pháp 1980 - Hiến pháp 1992 – Hiến pháp 2013', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hiến pháp 1959 - Hiến pháp 1980 - Hiến pháp 1992', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hiến pháp 1946 - Hiến pháp 1959 - Hiến pháp 1980 - Hiến pháp 1992', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hiến pháp 1946 - Hiến pháp 1980 - Hiến pháp 1992', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Hiến pháp đang có hiệu lực thi hành ở Việt Nam hiện nay được ban hành năm nào?', '', 'Approved', 1, 7, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Năm 1980', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Năm 1959', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Năm 1992', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Năm 2013', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Các quan hệ xã hội cơ bản được Luật Hiến pháp điều chỉnh là?', '', 'Approved', 1, 7, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chế độ chính trị', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chế độ kinh tế, văn hóa, xã hội, giáo dục, khoa học, công nghệ...', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quyền và nghĩa vụ cơ bản của công dân, tổ chức và hoạt động của bộ máy Nhà nước', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cả a, b, c đều đúng', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Hiến pháp 1992 đã được thay thế bằng hiến pháp năm nào?', '', 'Approved', 1, 7, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Năm 1996', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Năm 1998', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Năm 2001', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Năm 2013', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Hiến pháp được thông qua khi ít nhất có?', '', 'Approved', 1, 7, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Một phần hai tổng số đại biểu Quốc hội biểu quyết tán thành', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hai phần ba tổng số đại biểu Quốc hội biểu quyết tán thành', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Ba phần tư tổng số đại biểu Quốc hội biểu quyết tán thành', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Một trăm phần trăm tổng số đại biểu Quốc hội biểu quyết tán thành', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Những chức danh nào sau đây bắt buộc phải là đại biểu Quốc hội?', '', 'Approved', 1, 7, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phó Thủ tướng Chính phủ', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thủ tướng Chính phủ', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bộ trưởng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chủ tịch UBND tỉnh, thành phố trực thuộc Trung ương', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cơ cấu bộ máy Nhà nước Cộng hòa XHCN Việt Nam bao gồm?', '', 'Approved', 1, 7, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quốc hội, Chính phủ, Ủy ban nhân dân các cấp', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quốc hội, Viện Kiểm sát nhân dân, Tòa án nhân dân các cấp', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hệ thống cơ quan quyền lực, hệ thống cơ quan quản lý Nhà nước, hệ thống cơ quan kiểmsát, hệ thống cơ quan xét xử', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cả a, b, c đều sai', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Hệ thống cơ quan quyền lực Nhà nước bao gồm?', '', 'Approved', 1, 7, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quốc hội, Chính phủ', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quốc hội, Ủy ban nhân dân các cấp', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chính phủ, Ủy ban nhân dân các cấp', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quốc hội, Hội đồng nhân dân các cấp', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Vị trí của Chủ tịch nước Cộng hòa XHCN Việt Nam?', '', 'Approved', 1, 7, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là nguyên thủ quốc gia, có quyền quyết định những vấn đề quan trọng nhất của đất nước', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là người đứng đầu Nhà nước', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thay mặt Nhà nước về đối nội và đối ngoại', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cả b và c', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Chính phủ nước Cộng hòa XHCN Việt Nam?', '', 'Approved', 1, 7, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là cơ quan trung tâm của Nhà nước, có thẩm quyền trong cả 3 lĩnh vực lập pháp, hànhpháp, tư pháp', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là cơ quan Hành chính Nhà nước cao nhất, thực hiện quyền hành pháp, tư pháp', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là cơ quan chấp hành của Quốc hội, cơ quan Hành chính Nhà nước cao nhất, thực hiệnquyền hành pháp', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cả a, b, c đều sai', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Chức năng của Viện Kiểm sát nhân dân các cấp?', '', 'Approved', 1, 7, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Kiểm sát hoạt động của tất cả các cơ quan Nhà nước', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Kiểm sát hoạt động tư pháp', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thực hành quyền công tố theo quy định của pháp luật', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Gồm b và c', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tìm đáp án sai trong nhận định sau: Quan hệ xã hội mà Luật Hành chính điềuchỉnh có đặc trưng?', '', 'Approved', 1, 7, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quyền lực phục tùng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Các bên tham gia quan hệ pháp luật hành chính có địa vị pháp lý ngang nhau', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Không có sự bình đẳng về mặt ý chí giữa các bên tham gia quan hệ', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Một bên có quyền nhân danh Nhà nước đơn phương đưa ra quyết định quản lý và phía bênkia có nghĩa vụ chấp hành các quyết định đơn phương đó', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Phương pháp điều chỉnh của Luật Hành chính là?', '', 'Approved', 1, 7, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phương pháp bình đẳng, thỏa thuận', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phương pháp độc lập, tự định đoạt', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phương pháp mệnh lệnh đơn phương', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phương pháp quyền uy và phương pháp thông qua hoạt động của tổ chức công đoàn', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tìm đáp án sai trong nhận định sau: Các cơ quan Hành chính Nhà nước ở Trungương bao gồm?', '', 'Approved', 1, 7, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chính phủ', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cơ quan thuộc Chính phủ', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cơ quan ngang Bộ', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bộ', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cơ quan Hành chính Nhà nước cấp tỉnh bao gồm?', '', 'Approved', 1, 7, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Ủy ban nhân dân tỉnh, các Sở, phòng, ban thuộc Ủy ban nhân dân tỉnh', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Ủy ban nhân dân tỉnh, Hội đồng nhân dân tỉnh', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hội đồng nhân dân, Ủy ban nhân dân, các Sở, phòng, ban cấp tỉnh', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Ủy ban nhân dân, Hội đồng nhân dân, các tổ chức Đảng, đoàn thể cấp tỉnh', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Đảng lãnh đạo cơ quan Hành chính Nhà nước bằng phương pháp?', '', 'Approved', 1, 7, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thuyết phục', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cưỡng chế', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thuyết phục và cưỡng chế', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả đều sai', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tìm đáp án đúng trong nhận định sau: Một trong những đặc trưng cơ bản của quanhệ pháp luật hành chính?', '', 'Approved', 1, 7, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Các bên tham gia quan hệ pháp luật hành chính luôn luôn lệ thuộc nhau về mặt tổ chức', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Các bên tham gia quan hệ pháp luật hành chính đều là chủ thể được sử dụng quyền lực Nhànước', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Một bên tham gia quan hệ pháp luật hành chính phải là chủ thể được sử dụng quyền lựcNhà nước', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Các bên tham gia quan hệ pháp luật hành chính không bắt buộc phải là chủ thể được sửdụng quyền lực Nhà nước', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Đặc điểm cơ bản của vi phạm hành chính?', '', 'Approved', 1, 7, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hành vi trái pháp luật xâm phạm các quy tắc quản lý Nhà nước', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hành vi có lỗi do cá nhân, tổ chức thực hiện', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hành vi đó không phải là tội phạm và theo quy định của pháp luật phải bị xử lý hành chính', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cả a, b, c', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Trường hợp nào sau đây không bị xử lý vi phạm hành chính?', '', 'Approved', 1, 7, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phòng vệ chính đáng, tình thế cấp thiết', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Vi phạm khi đang mắc các chứng bệnh làm mất khả năng nhận thức cũng như khả năngđiều khiển hành vi', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sự kiện bất ngờ', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cả a, b, c', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tìm đáp án đúng trong nhận định sau: Hình thức xử phạt chính vi phạm hành chínhlà?', '', 'Approved', 1, 7, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Khiển trách', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phạt tiền', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cảnh cáo', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cảnh cáo và phạt tiền', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Độ tuổi bắt đầu chịu trách nhiệm hành chính?', '', 'Approved', 1, 7, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('14 tuổi', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('15 tuổi', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('16 tuổi', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('18 tuổi', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('A 15 tuổi thực hiện hành vi vi phạm hành chính với lỗi cố ý. Trách nhiệm hành chínhđối với A như thế nào?', '', 'Approved', 1, 7, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Có thể phạt cảnh cáo hoặc phạt tiền theo quy định của pháp luật', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chỉ có thể phạt cảnh cáo theo quy định của pháp luật', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cha mẹ hoặc người giám hộ của A phải chịu trách nhiệm thay vì A chưa thành niên', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A dưới 16 tuổi nên chưa phải chịu trách nhiệm hành chính', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tìm đáp án đúng trong nhận định sau: C là người chưa thành niên thực hiện hànhvi vi phạm hành chính?', '', 'Approved', 1, 7, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('C sẽ phải chịu trách nhiệm hành chính do lỗi cố ý nếu tuổi C từ đủ 14 đến dưới 16. Nếu Ctừ đủ 16 tuổi trở lên, có thể phải chịu trách nhiệm hành chính trong mọi trường hợp vi phạm', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('C không phải chịu trách nhiệm hành chính', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('C phải chịu trách nhiệm hành chính trong mọi trường hợp vi phạm', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('C chỉ phải chịu trách nhiệm hành chính khi C đủ 16 tuổi trở lên', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tìm đáp án đúng trong nhận định sau: T 17 tuổi thực hiện hành vi vi phạm hànhchính và bị xử phạt tiền?', '', 'Approved', 1, 7, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Mức tiền phạt đối với T giống như mức phạt đối với người thành niên', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Mức tiền phạt đối với T không được quá 1/2 mức phạt đối với người thành niên. Trườnghợp T không có tiền nộp phạt thì cha mẹ hoặc người giám hộ T phải nộp phạt thay', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Trong mọi trường hợp, cha mẹ hoặc người giám hộ T phải nộp thay', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Trường hợp T không có tiền nộp phạt thì áp dụng hình thức phạt cảnh cáo với T', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Đối tượng điều chỉnh của Luật Lao động?', '', 'Approved', 1, 7, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quan hệ lao động', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quan hệ việc làm', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Các quan hệ liên quan đến quan hệ lao động', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cả a và c', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Quan hệ học nghề là?', '', 'Approved', 1, 7, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quan hệ lao động', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quan hệ về quản lý lao động', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quan hệ liên quan đến quan hệ lao động', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cả a, b, c đều sai', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Việc làm là?', '', 'Approved', 1, 7, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Mọi hoạt động lao động trong cơ quan Nhà nước', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Mọi hoạt động lao động tạo ra thu nhập', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Mọi hoạt động lao động tạo ra nguồn thu nhập không bị pháp luật cấm', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cả a, b, c đều đúng', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Các chế định của Bộ luật Lao động điều chỉnh?', '', 'Approved', 1, 7, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quan hệ lao động giữa người làm công ăn lương với người sử dụng lao động', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Các quan hệ liên quan đến lao động', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cả a và b đều đúng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cả a và b đều sai', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tiền lương là một chế định của ngành luật?', '', 'Approved', 1, 7, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dân sự', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hành chính', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bảo hiểm xã hội', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lao động', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Hợp đồng lao động phải có nội dung chủ yếu nào sau đây?', '', 'Approved', 1, 7, 3);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Công việc phải làm, thời giờ làm việc, nghỉ ngơi', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tiền lương, địa điểm làm việc, thời hạn hợp đồng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Điều kiện về an toàn lao động, vệ sinh lao động và bảo hiểm xã hội đối với người lao động', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cả a, b, c', 1, @last_question_id);

