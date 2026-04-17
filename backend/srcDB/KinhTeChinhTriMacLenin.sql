SET NAMES 'utf8mb4';

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tìm đáp án đúng về: Điều kiện để sản xuất hàng hoá ra đời?', '', 'Active', 1, 2, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Mong muốn của con người muốn tiêu dùng những sản phẩm do người khác làm ra.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sự phát triển của lực lượng sản xuất giúp cho có thể sản xuất được những sản phẩm tốt hơn.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lực lượng sản xuất phát triển làm cho các quan hệ kinh tế được mở rộng.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('D. Phân công lao động xã hội và sự tách biệt về mặt kinh tế của các chủ thể sản xuất', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Giá trị hàng hoá là gì?', '', 'Active', 1, 2, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là lao động xã hội của người sản xuất hàng hóa kết tinh trong hàng hoá.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là số lượng thời gian thực tế phải bỏ ra để làm nên hàng hoá đó.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Một quan hệ về lượng giữa những giá trị sử dụng khác nhau.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Biểu hiện tính hai mặt của hàng hoá mà mặt kia là giá trị sử dụng như một thuộc tính không thể thiếu của mọi loaị hàng hoá.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Lao động trừu tượng tạo ra cái gì?', '', 'Active', 1, 2, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A. Tạo ra giá trị sử dụng của hàng hoá.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là phạm trù vĩnh viễn, không chỉ có trong sản xuất hàng hoá mà có trong mọi nền sản xuất nói chung.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Biểu hiện tính chất cá nhân của người sản xuất hàng hoá.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('D. Tạo ra giá trị của hàng hoá.', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tìm câu trả lời đúng:Thước đo Lượng giá trị của hàng hoá?', '', 'Active', 1, 2, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A. Hao phí vật tư kỹ thuật và tiền lương chi phí cho công nhân.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hao phí mà người lao động đã bỏ ra để làm nên hàng hoá đó.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thời gian lao động xã hội cần thiết.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lao động sống và lao động quá khứ kết tinh trong hàng hoá.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nội dung thời gian lao động xã hội cần thiết để sản xuất ra một hàng hoá là gì?', '', 'Active', 1, 2, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A. Với trình độ khoa học kỹ thuật trung bình mà xã hội đã đạt tới ở 1 thời điểm nhất định.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('B. Với cường độ lao động trung bình, trình độ thành thạo trung bình của một xí nghiệp hay một đơn vị sản xuất.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Với trình độ kỹ thuật, năng suất lao động và cường độ lao động trung bình của xã hội.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Trong điều kiện sản xuất bình thường xét trên phạm vi quốc gia hoặc phạm vi quốc tế.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Yếu tố nào làm giảm giá trị trong 1 đơn vị hàng hoá?', '', 'Active', 1, 2, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tăng cường độ lao động để giảm chi phí tiền lương trên 1 đơn vị sản phẩm.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tăng năng suất lao động.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tăng thời gian lao động để giảm chi phí tiền lương trên 1 đơn vị sản phẩm.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tăng thêm những trang bị vật chất và kỹ thuật cho lao động.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Giá trị sử dụng của hàng hoá là gì?', '', 'Active', 1, 2, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giá trị để cho người sản xuất ra nó sử dụng trực tiếp hoặc đem trao đổi lấy 1 giá trị khác.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là công dụng của hàng hóa có thể thỏa mãn nhu cầu nào đó của người mua.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cơ sở của phân công lao động xã hội và để trao đổi giữa những lĩnh vực sản xuất khác nhau.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cái tạo nên nội dung và ý nghĩa của giá trị hàng hoá.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Hai hàng hoá trao đổi với nhau trên cơ sở nào?', '', 'Active', 1, 2, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A. Lượng thời gian lao động xã hội cần thiết.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tuy có giá trị sử dụng khác nhau nhưng đều cùng là sản phẩm của lao động.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phân công lao động làm cho người ta phải trao đổi giá trị sử dụng do mình làm ra lấy giá trị sử dụng khác do người khác làm ra.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Có hao phí vật tư kỹ thuật cụ thể bằng nhau.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tìm câu trả lời đúng nhất: Giá cả của hàng hoá là gì?', '', 'Active', 1, 2, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A. Là giá trị của hàng hoá.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là số tiền mà người mua trả cho người bán hàng hoá để được quyền sở hữu hàng hoá đó.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là thời gian lao động cần thiết để sản xuất ra hàng hoá đó.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là hình thức biểu hiện bằng tiền của giá trị hàng hoá.', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tăng cường độ lao động thì lượng giá trị của một đơn vị hàng hoá sẽ như thế nào?', '', 'Active', 1, 2, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Làm cho lượng giá trị của một hàng hoá tăng lên.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Làm cho lượng giá trị của một hàng hoá giảm xuống.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Làm cho lượng giá trị của một hàng hoá không đổi.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Làm cho lượng giá trị của tổng hàng hoá không đổi.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nội dung của quy luật giá trị?', '', 'Active', 1, 2, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Người sản xuất chỉ sản xuất những loại hàng hoá nào đem lại nhiều giá trị cho họ.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sản xuất và trao đổi hàng hoá phải căn cứ vào giá trị của hàng hoá.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giá trị sử dụng của hàng hoá càng cao thì hàng hoá càng có giá trị cao.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả mọi sản phẩm có ích do người lao động làm ra đều có giá trị.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Hàng hoá là gì?', '', 'Active', 1, 2, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Một sản phẩm vật chất hoặc tinh thần có ích cho con người hoặc cho xã hội.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Một sản phẩm của lao động có thể thoả mãn nhu cầu của con người.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Một sản phẩm của lao động, có tính hữu ích và được sản xuất ra để trao đổi.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('D.Một sản phẩm của lao động, sản xuất ra để tiêu dùng cho sản xuất hoặc cho cá nhân.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Yếu tố căn bản quyết định giá cả hàng hoá là gì?', '', 'Active', 1, 2, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A. Quan hệ cung cầu.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thị hiếu, mốt thời trang và tâm lý xã hội của mỗi thời kỳ.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giá trị sử dụng của hàng hoá cũng tức là chất lượng của hàng hoá đó.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giá trị của hàng hoá.', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Chức năng cơ bản nhất của tiền là gì?', '', 'Active', 1, 2, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A. Phương tiện lưu thông.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phương tiện cất trữ.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phương tiện thanh toán.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thước đo giá trị.', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Quy luật giá trị là quy luật của nền kinh tế nào?', '', 'Active', 1, 2, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A. Mọi nền sản xuất trong lịch sử loài người.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Kinh tế hàng hoá.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sản xuất hàng hoá giản đơn.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sản xuất hàng hoá tư bản chủ nghĩa.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tìm đáp án đúng: Lao động cụ thể tạo ra?', '', 'Active', 1, 2, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A. Tạo ra giá trị sử dụng của hàng hoá.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tạo ra giá trị hàng hoá và do đó đem lại thu nhập cho người lao động.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là phạm trù lịch sử tức là chỉ trong xã hội có nền sản xuất hàng hoá.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Biểu hiện tính chất xã hội của người sản xuất hàng hoá.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Hiểu theo nghĩa rộng thị trường là gì?', '', 'Active', 1, 2, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là nơi diễn ra hành vi trao đổi mua bán', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là tổng hòa các mối quan hệ liên quan đến trao đổi mua bán hàng hóa trong xã hội.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là thị trường diễn ra trong toàn quốc.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là thị trường diễn ra trong phạm vi thế giới.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Dấu hiệu đặc trưng của cơ chế thị trường là gì?', '', 'Active', 1, 2, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là cơ chế hình thành giá cả một cách tự do.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là cơ chế hình thành giá cả do chủ quan của người mua.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là cơ chế hình thành giá cả do nhà nước quyết định.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là cơ chế hình thành giá cả theo ý muốn chủ quan của người bán.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Những quy luật kinh tế chủ yếu của thị trường là gì?', '', 'Active', 1, 2, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quy luật giá trị, quy luật cung cầu.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quy luật giá trị, quy luật cung cầu, quy luật lưu thông tiền tệ, quy luật cạnh tranh', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quy luật giá trị, quy luật cạnh tranh, quy luật lưu thông tiền tệ.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quy luật cung cầu, quy luật cạnh tranh.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Các chủ thể chính tham gia thị trường?', '', 'Active', 1, 2, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Người bán và người mua.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước và lực lượng trung gian mua bán.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Người sản xuất, người tiêu dùng, lực lượng trung gian trong thị trường và nhà nước.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước và nhân dân lao động.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tìm câu trả lời đúng nhất: Tác dụng của quy luật giá trị đối với nền kinh tế - xã hội?', '', 'Active', 1, 2, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thúc đẩy cải tiến kỹ thuật, nâng cao năng suất lao động.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Điều tiết việc di chuyển lao động, tiền vốn và TLSX từ khu vực sản xuất này sang khu vực sản xuất khác.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tạo ra những bất công trong xã hội, người giầu thì quá giầu, người nghèo thì quá nghèo.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thúc đẩy cải tiến kỹ thuật, điều tiết sản xuất, lưu thông hàng hóa và phân hoá những người sản xuất hàng hoá.', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Điều kiện để sức lao động trở thành hàng hoá?', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A. Xã hội chia thành người đi bóc lột và người bị bóc lột.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Người lao động được tự do về thân thể và không có Tư liệu sản xuất..', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sản xuất hàng hoá phát triển tới mức có thể đem mua và bán sức lao động trên thị trường.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phân công lao động xã hội phát triển tới mức có 1 số lĩnh vực sản xuất không đủ số lượng lao động và phải thuê thêm công nhân.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Giá trị thặng dư là gì?', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giá trị sức lao động của người công nhân làm thuê cho chủ tư bản.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giá trị mới được tạo ra trong quá trình sản xuất hàng hoá.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là phần giá trị mới dôi ra ngoài giá trị sức lao động.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giá trị bóc lột được do nhà tư bản trả tiền công thấp hơn giá trị sức lao động.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tăng năng suất lao động và tăng cường độ lao động giống nhau ở điểm nào?', '', 'Active', 1, 2, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tìm phương án đúng nhất', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đều làm cho công việc nhanh chóng hoàn thành.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đều làm cho khối lượng hàng hóa sản xuất trong một đơn vị thời gian tăng lên.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đều làm cho điều kiện của người lao động dễ chịu hơn.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đều làm hao phí calo tăng lên.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nguồn gốc của giá trị thặng dư là?', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Do lao động không công của người lao động làm thuê.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Do máy móc và công nghệ tiến tiến.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Do bán hàng hóa cao hơn giá trị.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Do mua rẻ, bán đắt', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tư bản bất biến là gì?', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bộ phận tư bản tồn tại dưới hình thái Tư liệu sản xuất.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bộ phận tư bản tồn tại dưới hình thái tư Tiệu lao động.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bộ phận tư bản tồn tại dưới hình thái nguyên vật liệu.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bộ phận tư bản tồn tại dưới hình thái đối tượng lao động.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tư bản khả biến là gì?', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bộ phận tư bản tồn tại dưới hình thái Sức lao động.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bộ phận tư bản tồn tại dưới hình thái sức lao động và nguyên vật liệu.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bộ phận tư bản tồn tại dưới hình thái đối tượng lao động', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('. D. Bộ phận tư bản tồn tại dưới hình thái công nghệ mới.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Về mặt lượng tư bản khả biến trong quá trình sản xuất sẽ như thế nào?', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A. Không tăng lên về lượng.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chuyển dần giá trị vào sản phẩm.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Được bảo tồn nguyên vẹn.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tăng lên về lượng.', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tỷ suất giá trị thặng dư biểu hiện điều gì?', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Qui mô bóc lột của tư bản đối với người lao động.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Trình độ bóc lột của tư bản đối với người lao động.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tính chất bóc lột của tư bản đối với lao động.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phạm vi bóc lột của tư bản đối với lao động.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khối lượng giá trị thặng dư phản ánh điều gì?', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A. Trình độ bóc lột của tư bản đối với lao động.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tính chất bóc lột của tư bản đối với lao động.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phạm vi bóc lột của tư bản đối với lao động.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Qui mô bóc lột của tư bản đối với lao động.', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Phương pháp sản xuất giá trị thặng dư tương đối là gì?', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Kéo dài ngày lao động, trong lúc vẫn giữ nguyên thời gian lao động tất yếu.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tăng cường độ lao động.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Rút ngắn thời gian lao động tất yếu, giữ nguyên độ dài ngày lao động.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tăng cường độ lao động và kéo dài thời gian lao động.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Chi phí sản xuất Tư bản chủ nghã là gì?', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hao phí lao động quá khứ và phần lao động sống được trả công.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hao phí tư bản bất biến, tư bản khả biến và giá trị thặng dư.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hao phí tư bản bất biến để sản xuất ra hàng hoá.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hao phí tư bản khả biến để sản xuất ra hàng hoá.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tìm câu đúng nhất: Mối quan hệ giữa lợi nhuận và giá trị thặng dư?', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A. Lợi nhuận và giá trị thặng dư khác nhau về nguồn gốc.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cùng một nguồn gốc nhưng khác nhau về tính chất.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cùng bản chất nhưng khác nhau về nguồn gốc: một bên là thu nhập của nhà tư bản, một bên là thu nhập của người lao động.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lợi nhuận là hình thức biến tướng của giá trị thặng dư .', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Phương pháp sản xuất ra giá trị thặng dư tuyệt đối là gì?', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Kéo dài ngày lao động một cách tuyệt đối vượt quá thời gian lao động tất yếu.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Do rút ngắn thời gian lao động tất yếu, giữ nguyên độ dài ngày lao động.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Do tăng năng suất lao động.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Do áp dụng kỹ thuật tiên tiến.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nguyên nhân dẫn đến sự bình quân hoá lợi nhuận?', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A. Cạnh tranh giữa các nước và các khu vực.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cạnh tranh trong nội bộ từng ngành.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cạnh tranh giữa các ngành.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Do mọi nhà tư bản đều có xu hướng cải tiến kỹ thuật nhằm chiếm lợi nhuận siêu ngạch.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nhân tố nào sau đây ảnh hưởng đến tỷ suất lợi nhuận?', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A. Tỷ suất giá trị thặng dư.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cấu tạo hữu cơ của tư bản.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tốc độ chu chuyển tư bản và tiết kiệm tư bản bất biến.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả các nhân tố trên.', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tỷ suất lợi nhuận phản ánh điều gì?', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A. Phản ánh mức doanh lợi đầu tư tư bản.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('B. Phản ánh tỷ lệ giữa lợi nhuận và tư bản bất biến.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phản ánh tỷ lệ giữa lợi nhuận và giá trị sức lao động.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phản ánh lợi ích của nhà tư bản trong sử dụng lao động làm thuê.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tư bản cố định là gì?', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là bộ phận tư bản sản xuất tồn tại dưới hình thái tư liệu lao động (máy móc, nhà xưởng,…).', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là bộ phận tư bản tồn tại dưới hình thái TLSX.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là bộ phận tư bản tồn tại dưới hình thái nguyên vật liệu.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là bộ phận tư bản tồn tại dưới hình thái hàng hóa sản xuất ra.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tư bản lưu động là gì?', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là bộ phận tư bản tồn tại dưới hình thái sức lao động và nguyên vật liệu.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là bộ phận tư bản tồn tại dưới hình thái sức lao động.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là bộ phận tư bản tồn tại dưới hình thái nguyên vật liệu.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là bộ phận tư bản tồn tại dưới hình thái máy móc, nhà xưởng.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Quan hệ giữa giá cả và giá trị trước khi hình thành lợi nhuận bình quân như thế nào?', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cung lớn hơn cầu thì giá cả lớn hơn giá trị hàng hoá.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cung nhỏ hơn cầu thì giá cả nhỏ hơn giá trị hàng hoá.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cung bằng cầu thì giá cả bằng giá trị hàng hoá.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cung bằng cầu thì giá cả lớn hơn giá trị hàng hoá.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Lợi nhuận bình quân là gì?', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lợi nhuận trung bình của các nhà tư bản kinh doanh trong lĩnh vực công nghiệp.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lợi nhuận trung bình giữa các nhà tư bản kinh doanh trong lĩnh vực lưu thông.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lợi nhuận bằng nhau của những số tư bản bằng nhau bỏ vào những ngành sản xuất khác nhau.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lợi nhuận trung bình tính cho một đồng vốn sau khi đã trừ đi mọi khoản chi phí sản xuất.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Để có lợi nhuận siêu ngạch nhà tư bản sử dụng biện pháp gì?', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A. Tăng cường độ lao động.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Kéo dài ngày lao động.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cải tiến kỹ thuật công nghệ và tổ chức quản lý.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Di chuyển tư bản từ ngành này sang ngành khác.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Căn cứ để phân chia tư bản thành tư bản bất biến và tư bản khả biến?', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A. Đặc điểm của mỗi loại tư bản.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tốc độ vận động của mỗi loại tư bản.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tác dụng của từng bộ phận của tư bản trong việc sản xuất ra giá trị thặng dư.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sự chu chuyển giá trị của mỗi loại tư bản.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Đặc điểm quan trọng nhất để hàng hóa sức lao động là hàng hoá đặc biệt là gì?', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Vì sức lao động là yếu tố quan trọng nhất của mọi nền sản xuất xã hội.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Vì sức lao động được mua bán trên thị trường đặc biệt, ở đó chỉ có người cần mua và người cần bán đến thôi.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Vì khi sử dụng nó thì tạo ra được 1 giá trị mới lớn hơn giá trị bản thân nó', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Vì giá trị hàng hoá sức lao động mang yếu tố tinh thần và lịch sử.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tỷ suất lợi nhuận biểu hiện điều gì?', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Trình độ bóc lột của tư bản đối với lao động.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tính chất bóc lột của tư bản đối với lao động.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phạm vi bóc lột của tư bản đối với lao động.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Mức doanh lợi của đầu tư tư bản.', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Mục đích chính của sự vận động của tư bản là gì?', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A. Đổi giá trị sử dụng này lấy giá trị sử dụng khác.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thực hiện giá trị của hàng hoá.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sản xuất ra giá trị thặng dư.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thực hiện lưu thông hàng hoá.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tư bản là gì?', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Một số lượng của cải có giá trị sử dụng là kinh doanh kiếm lời.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giá trị mang lại giá trị thặng dư.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là một món tiền không phải để chi tiêu cho cá nhân mà để chi tiêu cho sản xuất.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('D.Là nhà xưởng, máy móc và một số tiền vốn cần thiết để hoạt động sản xuất kinh doanh.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khi nào thì tiền tệ biến thành tư bản?', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A. Khi sức lao động trở thành hàng hoá.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Khi QHSX TBCN bắt đầu được hình thành.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Khi những thương nhân giầu có bắt đầu bỏ vốn vào kinh doanh trong lĩnh vực công nghiệp và nông ngh', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Khi giai cấp tư sản và giai cấp công nhân được hình thành.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Giá cả sản xuất bằng gì?', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chi phí sản xuất cộng với lợi nhuận bình quân.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Toàn bộ chi phí bỏ ra trong quá trình sản xuất.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giá cả thị trường trừ đi lợi nhuận của nhà tư bản công nghiệp.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giá trị của hàng hoá cộng với lợi nhuận của nhà tư bản công nghiệp.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Yếu tố kinh tế nào tác động làm cho giá cả xoay quanh giá trị?', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A. Trình độ quản lý sản xuất kinh doanh.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Trình độ tay nghề của người lao động.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Do mối quan hệ cung – cầu tác động.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Trình độ quản lý và tay nghề của người lao động.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tác động tích cực của cạnh tranh là gì?', '', 'Active', 1, 4, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thúc đẩy phát triển LLSX và phát triển nền kinh tế thị trường.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tạo cơ chế điều chỉnh linh hoạt cho việc phân bổ các nguồn lực.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thúc đẩy thỏa mãn nhu cầu xã hội.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả các yếu tố trên.', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tác động tiêu cực của cạnh tranh là gì?', '', 'Active', 1, 4, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cạnh tranh không lành mạnh gây tổn hại môi trường kinh doanh.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cạnh tranh không lành mạnh gây lãng phí nguồn lực xã hội.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cạnh tranh không lành mạnh làm tổn hại đến phúc lợi xã hội.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả các yếu tố trên.', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Mục đích của cạnh tranh giữa các ngành là gì?', '', 'Active', 1, 4, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A. Để chèn ép các doanh nghiệp yếu thế hơn.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhằm sát nhập doanh nghiệp khác vào doanh nghiệp mình.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tìm kiếm nơi đầu tư có lợi nhất cho mình.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhằm thu lợi nhuận nhiều hơn cho các doanh nghiệp khác.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cạnh tranh trong nội bộ ngành dẫn đến hình thành điều gì?', '', 'Active', 1, 4, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A. Lợi nhuận bình quân.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giá cả sản xuất.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giá trị thị trường.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lợi nhuận độc quyền.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Công thức xác định giá trị thặng dư siêu ngạch?', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giá trị xã hội của hàng hoá + giá trị cá biệt của hàng hoá.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giá trị xã hội của hàng hoá - giá trị cá biệt của hàng hoá.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giá trị thặng dư tương đối + giá trị thặng dư tuyệt đối.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giá trị xã hội của hàng hoá + giá trị thặng dư.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tìm câu trả lời đúng nhất: Bản chất của lợi nhuận là gì?', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A. Lợi nhuận là do mua rẻ bán đắt.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lợi nhuận là do bán hàng hóa cao hơn giá trị.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lợi nhuận là số tiền lời sau khi bán hàng hóa.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lợi nhuận là hình thái biểu hiện của giá trị thặng dư trên bề mặt nền kinh tế thị trường.', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('So sánh lợi nhuận với giá trị thặng dư do tác động của quy luật cung cầu:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A. Cung  cầu thì p  m.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cung = cầu thì p = m.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cung  cầu thì p m.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cung = cầu thì p  m.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Các hình thức biểu hiện của giá trị thặng dư trong nền kinh tế thị trường?', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A. Lợi nhuận và lợi tức.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lợi nhuận và địa tô.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lợi tức và địa tô.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lợi nhuận, lợi tức và địa tô.', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tiền công trong CNTB là gì?', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Số tiền mà nhà tư bản đã trả để đổi lấy toàn bộ số lượng lao động mà người công nhân đã bỏ ra khi tiến hành sản xuất.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Số tiền mà chủ tư bản đã trả công lao động cho người làm thuê.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giá cả lao động của người công nhân làm thuê được thể hiện bằng tiền.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('D. Sự biểu hiện bằng tiền của giá trị hàng hóa sức lao động.', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Bản chất của tích lũy tư bản là gì?', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là việc sát nhập các nhà tư bản lại với nhau.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là tư bản hóa giá trị thặng dư.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là địa tô được tư bản hóa.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là vay thêm tiền để mở rộng quy mô sản xuất.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tích tụ tư bản là gì?', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Mở rộng sản xuất bằng cách tư bản hóa giá trị thặng dư.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sát nhập các xí nghiệp lại với nhau.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Mở rộng sản xuất trên cơ sở tín dụng.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Mở rộng sản xuất trên cơ sở thôn tính đối thủ cạnh tranh.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tập trung tư bản là gì?', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là tư bản hóa giá trị thặng dư.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là hợp nhất các nhà tư bản cá biệt lại với nhau.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là quá trình liên kết giữa TB sản xuất và TB thương nghiệp.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là mở rộng sản xuất trên cơ sở tín dụng.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Những nhân tố nào sau đây làm tăng quy mô tích lũy tư bản?', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A. Nâng cao tỷ suất giá trị thặng dư và năng suất lao động.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('B. Sử dụng hiệu quả máy móc.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('C. Đại lượng tư bản ứng trước.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả các nhân tố trên.', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Điều kiện để tư bản tuần hoàn một cách bình thường là gì?', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A. Ba loại tư bản tồn tại trong cùng một giai đoạn.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tồn tại cùng một lúc ba hình thức tư bản.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Không cần tồn tại cùng một lúc ba hình thức tư bản.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Ba hình thức tư bản cùng tồn tại và tuần hoàn liên tục trong cả ba giai đoạn.', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tuần hoàn của tư bản là gì?', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sự vận động liên tục của tư bản tiền tệ của các nhà tư bản.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sự vận động liên tục của tư bản tiền tệ sang hình thức tư bản sản xuất và tư bản hàng hoá.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sự vận động liên tục của tư bản qua các hình thức khác nhau để trở về hình thái ban đầu với lượng giá trị lớn hơn.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sự vận động liên tục của tư bản cố định và tư bản lưu động.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nhân tố chủ yếu ảnh hưởng đến tốc độ chu chuyển của tư bản là gì?', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A. Thời gian sản xuất dài hay ngắn trong một vòng tuần hoàn.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thời gian tồn tại của tư bản cố định trong một vòng tuần hoàn.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thời gian sản xuất và thời gian lưu thông để thực hiện một vòng tuần hoàn.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thời gian bán hàng hoá để thu về giá trị thặng dư và thời gian mua hàng hoá để tiếp tục vòng tuần hoàn.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Căn cứ để phân chia tư bản thành tư bản cố định và tư bản lưu động là gì?', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A. Việc xác định nguồn gốc cuối cùng của giá trị thặng dư.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phương thức chu chuyển giá trị của tư bản cố định và tư bản lưu động', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phương thức khấu hao tư bản cố định trong quá trình tái sản xuất.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tốc độ chu chuyển của tư bản.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Giải pháp quan trọng nhất để giảm thời gian sản xuất, tăng tốc độ chu chuyển của tư bản là gì?', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sử dụng nguồn lao động có tay nghề thành thạo.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sử dụng máy móc thiết bị công nghệ hiện đại.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cải tiến, thay đổi các biện pháp tổ chức quản lý sản xuất.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Có chính sách thưởng, phạt hợp lý đối với người lao động.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Biện pháp chủ yếu để khôi phục lại tư bản cố định đã hao mòn?', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A. Tăng chi phí bảo dưỡng, sửa chữa.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('B. Tăng vòng quay của tư bản đầu tư.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thành lập quỹ khấu hao tư bản cố định.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nắm vững hai loại hao mòn hữu hình và vô hình tư bản cố định.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Thời gian của một vòng chu chuyển tư bản bao gồm những thời gian nào?', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thời gian mua và thời gian bán.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thời kỳ làm việc, thời kỳ gián đoạn sản xuất và thời kỳ dự trữ sản xuất.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thời gian sản xuất và thời gian bán hàng.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thời gian sản xuất và thời gian lưu thông.', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nguyên nhân cơ bản làm cho tư bản cố định hao mòn hữu hình là gì?', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A. Ứng dụng tiến bộ khoa học kỹ thuật mới.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cung lớn hơn cầu về tư bản cố định.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tăng năng suất lao động trong ngành chế tạo máy.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Do sử dụng và do tác động của thiên nhiên.', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nhà tư bản công nghiệp nhường một phần giá trị thặng dư cho nhà tư bản thương nghiệp bằng cách nào?', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bán cho nhà tư bản thương nghiệp bằng chi phí sản xuất để họ bán theo giá trị.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bán cho nhà tư bản thương nghiệp bằng giá cả sản xuất thấp hơn giá cả thị trường.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bán cho nhà tư bản thương nghiệp thấp hơn giá cả sản xuất để họ bán theo giá cả sản xuất.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bán cho nhà tư bản thương nghiệp bằng giá cả thị trường để họ tuỳ ý nâng giá bán.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nguồn gốc của lợi nhuận thương nghiệp là gì?', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A. Bán hàng hoá với giá cả cao hơn giá trị.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quay vòng vốn nhanh nên thu được lợi nhuận.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phần giá trị thặng dư được tạo ra từ sản xuất mà các tư bản sản xuất nhường cho tư bản thương nghiệp.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lừa đảo trong quá trình mua bán hàng hoá.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nguồn gốc của lợi tức?', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là một phần của giá trị thặng dư được tạo ra từ sản xuất.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là do tuần hoàn của tư bản tiền tệ và sinh ra theo công thức T - T&#039;.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là do lao động thặng dư của công nhân viên ngành ngân hàng tạo ra.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là giá trị thặng dư do một loại hàng hoá đặc biệt là tiền tệ tạo ra.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tư bản cho vay là gì?', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tư bản mang hình thái hàng hoá.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tư bản thuộc sở hữu của người sử dụng.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là tư bản tiền tệ tạm thời nhàn rỗi mà khi đưa cho người khác sử dụng thì thu được lợi tức.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là tư bản đầu tư thêm vào sản xuất để từ đó nhận được cả lợi tức lẫn lợi nhuận trong khi không phải trực tiếp quản lý công việc kinh doanh.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Địa tô tư bản chủ nghĩa là gì?', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Một phần của giá trị thặng dư trong nông nghiệp.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sản phẩm thặng dư và cả một phần sản phẩm tất yếu do công nhân nông nghiệp tạo ra bị chủ ruộng chiếm đoạt.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Toàn bộ giá trị thặng dư do công nhân nông nghiệp tạo ra.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Một phần giá trị thặng dư mà tư bản nông nghiệp trích trong lợi nhuận bình quân của mình để trả cho chủ ruộng đất.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Địa tô chênh lệch I là gì?', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lợi nhuận siêu ngạch do sản xuất trên những ruộng đất có vị trí thuận lợi tạo ra.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lợi nhuận siêu ngạch do sản xuất trên những ruộng đất tốt tạo ra.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là địa tô mà địa chủ thu được trên ruộng đất tốt và độ màu mỡ cao, điều kiện tự nhiên thuận lợi.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lợi nhuận siêu ngạch do đầu tư thêm tư bản để thâm canh tạo ra.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Địa tô tuyệt đối là gì?', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giá trị thặng dư mà chủ ruộng đất bóc lột trực tiếp công nhân nông nghiệp.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là địa tô mà địa chủ thu được trên mảnh đất cho thuê, không kể độ màu mỡ tự nhiên thuận lợi hay do thâm canh.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lợi nhuận siêu ngạch thu được do đầu tư thêm các yếu tố kỹ thuật.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lợi nhuận siêu ngạch thu được do sản xuất trên ruộng đất tốt và trung bình.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Địa tô chênh lệch II là gì?', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lợi nhuận siêu ngạch do sản xuất trên những ruộng đất tốt tạo ra.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lợi nhuận siêu ngạch do đầu tư thêm tư bản để thâm canh tạo ra.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lợi nhuận siêu ngạch do đầu tư thêm tư bản để mở rộng diện tích canh tác tạo ra.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lợi nhuận siêu ngạch sản xuất trên những ruộng đất có vị trí thuận lợi tạo ra.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tính quy luật của việc hình thành các tổ chức độc quyền là do?', '', 'Active', 1, 4, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tự do cạnh tranh dẫn tới tiêu diệt và làm phá sản phần lớn các nhà tư bản yếu kém.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sự liên minh của các nhà tư bản.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sự tích tụ và tập trung sản xuất đạt đến một giới hạn nhất định.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tự do cạnh tranh thúc đẩy tích tụ và tập trung sản xuất, đến một trình độ nhất định sẽ sinh ra độc quyền.', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Xuất khẩu tư bản là đặc điểm kinh tế của CNTB ở giai đoạn nào?', '', 'Active', 1, 4, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giai đoạn chủ nghĩa tư bản tự do cạnh tranh phát triển vượt khỏi quy mô quốc gia.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giai đoạn Chủ nghĩa tư bản độc quyền.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giai đoạn chủ nghĩa thực dân xâm lược.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giai đoạn sản xuất hàng hoá.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tư bản tài chính là gì?', '', 'Active', 1, 4, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là sự hoạt động của các tư bản thương nghiệp.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là sự dung hợp của tư bản độc quyền ngân hàng và tư bản độc quyền công nghiệp.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là sự hoạt động của CNTB tự do cạnh tranh.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là sự hoạt động của tư bản ngân hàng phát triển tới mức thống trị toàn bộ các loại tư bản khác.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Xuất khẩu tư bản có nghĩa là gì?', '', 'Active', 1, 4, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A. Là mang hàng hoá ra nước ngoài bán.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là mang tư bản ra nước ngoài cho vay hoặc đầu tư kinh doanh.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là bán tư liệu sản xuất cho nước ngoài tức là nhường bớt trận địa sản xuất tư liệu sinh hoạt cho những nước có nhân công rẻ hơn.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là mang tiền ra nước ngoài mua hàng.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nội dung của phân chia thế giới về kinh tế?', '', 'Active', 1, 4, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A. Phân chia thuộc địa và phạm vi ảnh hưởng.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phân chia thị trường và nơi đầu tư.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phân chia nơi cung cấp nguyên liệu.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phân chia nơi cung cấp nhân công.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Xuất khẩu tư bản có mấy hình thức', '', 'Active', 1, 4, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A. Một hình thức.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('B. Hai hình thức.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Ba hình thức.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bốn hình thức', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Biểu hiện chủ yếu của độc quyền nhà nước trong CNTB?', '', 'Active', 1, 4, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A. Sự kết hợp về nhân sự giữa tổ chức độc quyền và nhà nước.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sự hình thành, phát triển sở hữu nhà nước.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sự điều tiết kinh tế của nhà nước tư sản.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cả 3 biểu hiện trên.', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Vì sao Việt Nam phải phát triển nền kinh tế thị trường định hướng xã hội chủ nghĩa?', '', 'Active', 1, 5, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Vì nó phù hợp với tính quy luật phát triển khách quan.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Do tính ưu việt của kinh tế thị trường trong thúc đẩy phát triển.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đây là mô hình phù hợp với nguyện vọng của nhân dân.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả các lý do trên.', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Mô hình kinh tế thị trường định hướng xã hội chủ nghĩa của Việt Nam là?', '', 'Active', 1, 5, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là nền kinh tế vận hành theo các quy luật của thị trường.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là nền kinh tế từng bước xác lập một xã hội mà ở đó dân giầu, nước mạnh, dân chủ, công bằng, văn minh.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là nền kinh tế có sự điều tiết của Nhà nước do Đảng cộng sản Việt Nam lãnh đạo.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả các yếu tố trên.', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Đặc trưng của kinh tế thị trường định hướng XHCN ở Việt Nam khác với đặc trưng của kinh tế thị trường nói chung như thế nào?', '', 'Active', 1, 5, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hoàn toàn khác nhau vì không có điểm chung.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giống nhau về bản chất nhưng khác nhau về hình thức.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Vừa bao hàm đầy đủ các đặc trưng vốn có của kinh tế thị trường vừa có các đặc trưng riêng của Việt Nam.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Khác nhau về bản chất nhưng có nội dung giống nhau.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Vì sao phải hoàn thiện thể chế kinh tế thị trường định hướng xã hội chủ nghĩa ở Việt Nam? Tìm câu trả lời đầy đủ nhất .', '', 'Active', 1, 5, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A. Do hệ thống thể chế đó còn chưa đồng bộ.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('B. Do hệ thống thể chế còn chưa đầy đủ.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Do hệ thống còn kém hiệu lực, hiệu quả.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Do hệ thống thể chế còn chưa đồng bộ, chưa đầy đủ, kém hiệu lực, hiệu quả. Kém đầy đủ các yếu tố thị trường và các loại thị trường.', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Vai trò của lợi ích kinh tế đối với các chủ thể kinh tế xã hội? Tìm câu trả lời toàn diên nhất', '', 'Active', 1, 5, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là cơ sở để phân chia lợi nhuận với nhau.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là động lực trực tiếp của các chủ thể tham gia vào hoạt động kinh tế xã hội.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là cơ sở thúc đẩy sự phát triển các lợi ích khác.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là động lực trực tiếp của các chủ thể kinh tế tham gia vào hoạt động kinh tế xã hội và là cơ sở thúc đẩy sự phát triển các lợi ích khác.', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Xã hội loài người đã và đang trải qua mấy cuộc cách mạng công nghiệp?', '', 'Active', 1, 6, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A. 1.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('B. 2.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('C. 3.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('4.', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tìm câu trả lời đúng nhất về: Vai trò của Cách mạng công nghiệp đổi với sự phát triển của xã hội?', '', 'Active', 1, 6, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thúc đẩy phát triển lực lượng sản xuất.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thúc đẩy hoàn thiện quan hệ sản xuất', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thúc đẩy đổi mới phương thức quản trị phát triển', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cả 3 yếu tố trên', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Đặc trưng của cuộc cách mạng 4.0 (Cách mạng công nghiệp lần thứ tư)?', '', 'Active', 1, 6, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sử dụng năng lượng nước và hơi nước.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sử dụng năng lượng điện và động cơ điện.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sử dụng công nghệ thông tin và máy tính, tự động hóa sản xuất.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Liên kết giữa thế giới thực và ảo để thực hiện công việc thông minh và hiệu quả nhất.', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tìm câu trả lời đúng nhất về: Công nghiệp hóa là gì?', '', 'Active', 1, 6, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là quá trình chuyển đổi từ lao động thủ công trong nông nghiệp sang lao động bằng máy móc.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là quá trình chuyển đổi nền kinh tế từ sản xuất nông nghiệp là chính sang sản xuất công nghiệp là chính.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là quá trình chuyển đổi nền sản xuất xã hội từ lao động thủ công sang lao động bằng máy móc nhằm tạo ra năng suất lao động xã hội cao.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Công nghiệp hóa là quá trình phát triển nền sản suất theo hướng ưu tiên phát triển công nghiệp nặng.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tìm câu trả lời toàn diện nhất: Vì sao Việt Nam phải thực hiện công nghiệp hóa, hiện đại hóa?', '', 'Active', 1, 6, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đây là quy luật phổ biến cho sự phát triển lực lượng sản xuất.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhằm xây dựng cơ sở vật chất kỹ thuật cho nền kinh tế.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhằm đáp ứng nguyện vọng của nhân dân trong phát triển kinh tế.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là quy luật phổ biến của sự phát triển Lực lượng sản xuất mà mội nước đều phải trải qua, đối với nước ta còn nhằm xây dựng cơ sở vật chất kỹ thuật cho CNXH', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Công nghiệp hóa ứng với trình độ kỹ thuật nào của cách mạng công nghiệp .', '', 'Active', 1, 6, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cách mạng công nghiệp lần thứ nhất.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cách mạng công nghiệp lần thứ hai.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('C. Cách mạng công nghiệp lần thứ ba .', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cách mạng công nghiệp lần thứ tư .', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Hội nhập kinh tế quốc tế là gì?', '', 'Active', 1, 6, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là quá trình quốc gia đó gắn kết nền kinh tế của mình với nền kinh tế thế giới.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là biết chia sẻ lợi ích với các quốc gia khác.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là sự tuân thủ các chuẩn mục quốc tế chung.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cả ba yếu tố trên.', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tìm câu trả lời phù hợp nhất: Những nhân tố nào ảnh hưởng đến quan hệ lợi ích kinh tế?', '', 'Active', 1, 5, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Trình độ phát triển của lực lượng sản xuất và địa vị của chủ thể trong hệ thống sản xuất.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Địa vị của chủ thể trong hệ thống sản xuất xã hội và chính sách phân phối thu nhập của nhà nước.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Trình độ phát triển của lực lượng sản xuất; địa vị của chủ thể trong hệ thống sản xuất xã hội; Chính sách phân phối thu nhập của nhà nước và hội nhập kinh tế quốc tế.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chính sách phân phối của nhà nước, nhu cầu của chủ thể trong hệ thống sản xuất xã hội và toàn cầu hóa.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Hội nhập kinh tế quốc tế có tác động tích cực hay tiêu cực đến nền kinh tế Việt Nam hiện nay? Tìm đáp án đúng nhất.', '', 'Active', 1, 6, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Có nhiều tác động tích cực.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Có nhiều tác động tiêu cực.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Có cả tác động tích cực lẫn tiêu cực.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Có tác động tích cực hay tiêu cực là do nhận thức và điều hành của chính phủ.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Giả sử thị trường chỉ có 2 người sản xuất bình hoa bằng gốm là A và B. A làm một bình hết 6 giờ lao động, cung cấp cho thị trường 100 bình; B làm một bình hết 8 giờ lao động, cung cấp cho thị trường 25 bình. Nếu NSLĐ của A tăng 25%, NSLĐ của B tăng 40%, mọi điều kiện khác không đổi thì giá trị 1 bình gốm trên thị trường như thế nào so với ban đầu?', '', 'Active', 1, 2, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tăng lên thành 6.5 giờ', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giảm xuống còn 5 giờ', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Không thay đổi', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Không xác định được', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Giả sử thị trường chỉ có 2 người may áo sơ mi là ông Lâm và ông Thành. Ông Lâm may mỗi áo hết 3 giờ và cung cấp cho thị trường 100 áo; ông Thành may mỗi áo hết 4 giờ, cung cấp cho thị trường 25 áo. Thời gian lao động trung bình để sản xuất 1 áo (hay giá trị của 1 áo) bằng:', '', 'Active', 1, 2, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('3.2 giờ', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('3.6 giờ', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Không xác định được', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('3.5 giờ', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Một người vào rừng thấy một tảng đá có hình thù lạ liền mang về nhà. Có người thích hỏi mua và ông ta bán được 10 triệu đồng. Bạn đồng ý với ý kiến nào sau đây:', '', 'Active', 1, 2, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tảng đá này không phải hàng hóa vì không phải là sản phẩm của lao động', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tảng đá này là hàng hóa vì vẫn có đủ 3 đặc trưng của hàng hóa', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Giá trị sử dụng của một hàng hóa thể hiện ở:', '', 'Active', 1, 2, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Công dụng cho người khác, cho xã hội', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Khả năng trao đổi với sản phẩm khác', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cách thức chế tạo nó', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Khả năng thỏa mãn nhu cầu của người sản xuất ra nó', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Vật liệu dùng để chế tạo nó', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Người ta có thể xác định lượng giá trị hàng hóa bằng:', '', 'Active', 1, 2, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thời gian sản xuất cộng với thời gian vận chuyển hàng hóa', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thời gian tạo ra hàng hóa', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thời gian lao động xã hội cần thiết để sản xuất hàng hóa', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Theo quan điểm KTCT, một bộ phim có giá trị vì nó hay và nhận được sự tán thưởng của nhiều người', '', 'Active', 1, 2, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đúng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sai', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Kết luận sau đây đúng hay sai:', '', 'Active', 1, 2, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('“Xét về mặt là lao động trừu tượng, các lao động khác nhau về lượng”', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đúng', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sai', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Giá trị của hàng hóa được quy định bởi:', '', 'Active', 1, 2, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Ích lợi của nó', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lao động sản xuất ra nó', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Khả năng trao đổi của nó', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sự khan hiếm của nó', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hình thức của nó', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Đặc trưng nào sau đây là của hàng hóa?', '', 'Active', 1, 2, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Do lao động của con người tạo ra', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thỏa mãn một nhu cầu nào đó của con người', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đi vào tiêu dùng thông qua trao đổi', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả các phương án trên', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Không có phương án nào', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cường độ lao động tăng làm cho:', '', 'Active', 1, 2, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Số lượng hàng hóa sản xuất trong một đơn vị thời gian tăng và Tổng giá trị tạo ra trong một đơn vị thời gian tăng', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tổng giá trị tạo ra trong một đơn vị thời gian tăng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Số lượng hàng hóa sản xuất trong một đơn vị thời gian tăng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tổng giá trị tạo ra trong một đơn vị thời gian không đổi', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Số lượng hàng hóa sản xuất trong một đơn vị thời gian tăng và Tổng giá trị tạo ra trong một đơn vị thời gian không đổi', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cường độ lao động giảm làm cho:', '', 'Active', 1, 2, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Số lượng hàng hóa tạo ra trong một đơn vị thời gian giảm', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tổng giá trị tạo ra trong một đơn vị thời gian giảm', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giá trị một đơn vị hàng hóa không đổi', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Các phương án trên đều đúng', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Chọn một kết luận đúng nhất:', '', 'Active', 1, 2, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giá trị do lao động cụ thể tạo ra', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giá trị là kết tinh của lao động trong hàng hóa', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giá trị của hàng hóa được xác định bởi hao phí lao động trừu tượng kết tinh trong hàng hóa đó', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lao động trừu tượng mang đến một công dụng nhất định cho hàng hóa', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Kết luận sau đây đúng hay sai:', '', 'Active', 1, 2, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('“Lao động cụ thể của người thợ dệt vải tạo ra giá trị sử dụng của vải”', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sai', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đúng', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Thời gian lao động xã hội cần thiết (TGLĐXH trung bình) để sản xuất hàng hóa:', '', 'Active', 1, 2, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là trung bình cộng của các thời gian cá biệt', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Do những người sản xuất cá biệt thỏa thuận với nhau', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Được quyết định bởi thời gian cá biệt của người sản xuất cung cấp đại bộ phận hàng hóa', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Giả sử thị trường chỉ có Bà Lan và Bà Cúc đan mũ len. Bà Lan đan mỗi chiếc mũ hết 4 giờ và cung cấp cho thị trường được 200 mũ mỗi tháng. Bà Cúc đan một chiếc mũ hết 7 giờ và mỗi tháng cung cấp được 40 chiếc.', '', 'Active', 1, 2, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giá trị mỗi chiếc mũ trên thị trường bằng:', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('5.5 giờ', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('5 giờ', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('4.5 giờ', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Hàng hóa có các thuộc tính nào sau đây:', '', 'Active', 1, 2, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giá trị', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giá trị sử dụng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giá trị sử dụng và giá trị', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Mang lại lợi ích cho con người', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Có thể trao đổi và mua bán được', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Theo quan điểm KTCT, những thứ nào sau đây có thể xếp vào danh mục hàng hóa:', '', 'Active', 1, 2, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bàn ghế', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quặng vàng dưới lòng đất', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đất đai', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quần áo tự dệt để mặc', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Không khí', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Kết luận sau đây đúng hay sai:', '', 'Active', 1, 2, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('“Lao động trừu tượng của người thợ xây tạo ra giá trị sử dụng của ngôi nhà”', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sai', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đúng', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Giả sử thị trường chỉ có 2 người đóng bàn là A và B. A đóng 1 bàn hết 2 ngày, cung cấp cho thị trường 100 bàn; B đóng 1 bàn hết 3,5 ngày, cung cấp cho thị trường 20 bàn. Thời gian lao động xã hội trung bình để đóng 1 bàn là:', '', 'Active', 1, 2, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Không xác định được', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('2.75 ngày', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('3.25 ngày', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('2.25 ngày', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Một người nông dân trồng được cây chuối có 10 nải. Ông để lại 2 nải để ăn, 2 nải cho con gái, 2 nải đem đổi lấy 1 kg gạo nếp, 2 nải mang ra chợ bán và 2 nải mang lên chùa thắp hương. Số chuối có tư cách hàng hóa là:', '', 'Active', 1, 2, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Không có nải nào', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('4 nải', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('2 nải', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('6 nải', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('8 nải', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Giả sử thị trường chỉ có Bà Lan và Bà Cúc đan mũ len. Bà Lan đan mỗi chiếc mũ hết 4 giờ và cung cấp cho thị trường được 200 mũ mỗi tháng. Bà Cúc đan một chiếc mũ hết 7 giờ và mỗi tháng cung cấp được 40 chiếc. Nếu năng suất lao động của Bà Lan giảm 30% và năng suất lao động của Bà Cúc tăng 50%, mọi điều kiện khác giữ nguyên thì giá trị mỗi chiếc mũ thay đổi thế nào so với ban đầu?', '', 'Active', 1, 2, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tăng lên thành 5.4 giờ', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giảm xuống còn 4.2 giờ', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Không đổi', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Theo quan điểm KTCT, những thứ nào sau đây không phải là hàng hóa:', '', 'Active', 1, 2, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Gà nuôi trong gia đình để ăn', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bút bi', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nước suối tự nhiên, gà nuôi trong gia đình để ăn', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đồng hồ', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nước suối tự nhiên', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khi năng suất lao động giảm, có thể dự đoán:', '', 'Active', 1, 2, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tổng giá trị hàng hóa tạo ra trong một đơn vị thời gian giảm', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giá trị một đơn vị hàng hóa giảm', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giá trị một đơn vị hàng hóa tăng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tổng giá trị tạo ra trong một đơn vị thời gian không đổi', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('C và D', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Lao động sản xuất hàng hóa biểu hiện ở các mặt nào sau đây:', '', 'Active', 1, 2, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lao động thủ công', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lao động trí óc', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lao động trừu tượng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lao động cụ thể', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lao động cụ thể và lao động trừu tượng', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Giả sử thị trường chỉ có 2 người may áo sơ mi là ông Lâm và ông Thành. Ông Lâm may mỗi áo hết 3 giờ và cung cấp cho thị trường 100 áo; ông Thành may mỗi áo hết 4 giờ, cung cấp cho thị trường 25 áo. Nếu cường độ lao động của ông Lâm tăng 1,5 lần, cường độ lao động của ông Thành tăng gấp đôi thì giá trị 1 áo trên thị trường:', '', 'Active', 1, 2, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Không đổi so với cường độ lao động ban đầu', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tăng lên 3.25 giờ', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giảm xuống còn 3 giờ', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Theo quan điểm kinh tế chính trị, có thể nói đất đai rất có giá trị', '', 'Active', 1, 2, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sai', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Có lúc đúng, có lúc sai', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đúng', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Giá trị sử dụng phản ánh:', '', 'Active', 1, 2, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Mặt chất của hàng hóa', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tính chất của hàng hóa', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tương quan trao đổi hàng hóa với các hàng hóa khác', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Kỹ thuật sản xuất hàng hóa', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Mặt lượng của hàng hóa', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Năng suất lao động tăng làm cho:', '', 'Active', 1, 2, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tổng giá trị tạo ra trong một đơn vị thời gian tăng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Số lượng hàng hóa tạo ra trong một đơn vị thời gian tăng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giá trị một đơn vị hàng hóa giảm', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('B và C', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A và B', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Giả sử thị trường chỉ có 2 người sản xuất bình hoa bằng gốm là A và B. A làm một bình hết 6 giờ lao động, cung cấp cho thị trường 100 bình; B làm một bình hết 8 giờ lao động, cung cấp cho thị trường 25 bình.Giá trị 1 bình gốm trên thị trường bằng:', '', 'Active', 1, 2, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A.6.4 giờ', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('7.75 giờ', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('7 giờ', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Theo quan điểm KTCT, có thể nói xe máy có giá trị hơn ô tô', '', 'Active', 1, 2, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Vừa đúng vừa sai', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sai', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đúng', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Giá trị sử dụng của hàng hóa là thuộc tính:', '', 'Active', 1, 2, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Mang tính chất vĩnh viễn', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Mang tính chất lịch sử', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Bạn mua một cây bút để viết. Cây bút này:', '', 'Active', 1, 2, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là một hàng hóa và có giá trị sử dụng đối với bạn', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Có giá trị sử dụng đối với người sản xuất bút', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là một hàng hóa', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là một hàng hóa và có giá trị sử dụng đối với người sản xuất bút', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Có giá trị sử dụng đối với bạn', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Giá trị của một quyển sách thể hiện ở:', '', 'Active', 1, 2, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tên tác giả', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nội dung kiến thức mà nó mang lại', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Vật liệu tạo nên cuốn sách', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tên nhà xuất bản', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lượng lao động làm ra cuốn sách', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Có thể giải thích nguyên nhân của giá trị tăng thêm ở:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tiền', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hàng hóa thông thường', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hàng hóa đặc biệt', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Giá trị thặng dư thuộc quyền chiếm hữu của:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Người lao động', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Người chủ', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Người chủ và người lao động', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Giả sử một ngày lao động có 8 giờ, trong đó thời gian lao động cần thiết và thời gian lao động thặng dư bằng nhau. Tỷ suất GTTD là:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('50%', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('200%', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('100%', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tư bản hàng hóa là tư bản:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dùng để trao đổi với các hàng hóa khác', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Biểu hiện dưới hình thái các hàng hóa có GTTD', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Biểu hiện ở số hàng hóa mà người chủ tư bản mua được', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Được sử dụng để sản xuất hàng hóa', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Có thể mua bán được', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khối lượng GTTD:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tỷ lệ thuận với tỷ suất GTTD', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tỷ lệ nghịch với khối lượng giá trị SLĐ', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tỷ lệ thuận với khối lượng giá trị SLĐ', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A và B', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A và C', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Giá trị mới được tạo bởi:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lao động quá khứ', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lao động sống', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cả 2 phương án trên đều đúng', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Giá trị cũ được tạo bởi:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lao động quá khứ', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lao động sống', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cả 2 phương án trên đều đúng', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Sức lao động là:', '', 'Active', 1, 2, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Năng lực thể chất của người lao động', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tổng hợp năng lực thể chất và năng lực tinh thần của người lao động', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Năng lực tinh thần của người lao động', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Chức năng thước đo giá trị của tiền có nghĩa là:', '', 'Active', 1, 2, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tiền có thể sử dụng vào việc cất trữ', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sử dụng tiền để biểu thị giá trị của hàng hóa', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dùng tiền để mua sức lao động', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sử dụng tiền để so sánh giá trị này với giá trị khác', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Có thể đưa tiền vào dự trữ', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nhận định sau đúng hay sai: “Sức lao động luôn luôn là hàng hóa có thể mua – bán được”.', '', 'Active', 1, 2, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sai', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đúng', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Giả sử một ngày lao động có 8 giờ, trong đó 4 giờ là thời gian lao động cần thiết. Nếu kéo dài ngày lao động thêm 1 giờ mà không thay đổi TGLĐCT thì tỷ suất giá trị thặng dư sẽ:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tăng 20%', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giảm 10%', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tăng 12.5%', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tăng thêm 25%', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Không thay đổi', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tỷ suất GTTD phản ánh:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quy mô bóc lột lao động làm thuê', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Mức độ bóc lột lao động làm thuê', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cả 2 phương án trên', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Theo quy luật lưu thông tiền tệ thực tế, số lượng tiền cần thiết cho lưu thông sẽ tăng trong các trường hợp:', '', 'Active', 1, 2, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tổng số giá cả hàng hóa khấu trừ trực tiếp giảm đi', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tổng số giá cả hàng hóa khấu trừ trực tiếp tăng lên', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tổng số giá cả hàng hóa mua – bán chịu tăng lên', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tổng số giá cả hàng hóa mua – bán chịu giảm đi', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tổng số giá cả hàng hóa đến kỳ thanh toán tăng lên', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('F. A, D và E', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Có thể xếp vào tư bản khả biến các bộ phận sau đây:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Công cụ lao động', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nguyên liệu', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sức lao động', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A và C', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('B và C', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('GTTD tuyệt đối được sản xuất bằng cách:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Kéo dài ngày lao động', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giữ nguyên thời gian lao động cần thiết', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Kéo dài thời gian lao động cần thiết', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A và C', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A và B', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Có thể giảm chi phí tư bản bất biến nếu:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Mua thêm máy móc mới', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giảm số lượng lao động thuê mướn', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tăng sử dụng vật liệu tái sinh, tái chế', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sử dụng công nghệ hiện đại', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giảm chi phí cho lao động', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Giá trị thặng dư là giá trị tương ứng với:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phần đóng góp của ông chủ', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phần lao động không được trả công của công nhân', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phần lao động được trả công của công nhân', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Theo quy luật lưu thông tiền tệ, số lượng tiền cần thiết cho lưu thông:', '', 'Active', 1, 2, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tỷ lệ thuận với tổng giá cả', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tỷ lệ nghịch với tổng giá cả', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tỷ lệ nghịch với tốc độ lưu thông của tiền', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A và B', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A và C', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tư bản tiền tệ là:', '', 'Active', 1, 2, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Số tiền người chủ tích lũy được', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Số tiền do bán hàng hóa mang lại', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Số tiền người chủ tư bản vay được', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Số tiền có trong tay chủ tư bản', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tư bản biểu hiện dưới hình thái tiền tệ', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Giá trị của hàng hóa SLĐ:', '', 'Active', 1, 2, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Do LĐXHCT tạo ra', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Biểu hiện qua giá trị các TLSH cần thiết của người lao động', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thể hiện ở năng lực lao động của người lao động', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A và B', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('B và C', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Trong số các công thức sau đây, công thức nào được gọi là công thức chung của tư bản:', '', 'Active', 1, 2, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('H – T – H', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('T – H – T', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('H – T – H’', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('T – H – T’', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Không có công thức nào', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Chức năng thanh toán của tiền được hiểu là:', '', 'Active', 1, 2, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tiền phục vụ mục đích mua – bán chịu hàng hóa', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Có thể vay mượn nhau bằng tiền và thanh toán bằng tiền', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dùng tiền để trả cho các chi phí giao dịch', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A và B', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('B và C', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Giá trị thặng dư tương đối được sản xuất bằng cách:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Kéo dài thời gian lao động thặng dư', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Rút ngắn thời gian lao động cần thiết', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Rút ngắn thời gian lao động cần thiết và tăng thời gian lao động thặng dư tương ứng', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Rút ngắn thời gian lao động thặng dư', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A hoặc B', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khối lượng GTTD phản ánh:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Độ dài của ngày lao động', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Mức độ bóc lột lao động làm thuê', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quy mô bóc lột lao động làm thuê', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Người ta có thể cất trữ tiền dưới dạng:', '', 'Active', 1, 2, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tiền vàng và vàng thoi', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tiền bạc và bạc nén', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tiền giấy', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('B và C', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A và B', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('GTSD đặc biệt của hàng hóa SLĐ là:', '', 'Active', 1, 2, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bù đắp hao phí về giá trị của SLĐ', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tạo ra giá trị tăng thêm', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Kết hợp với các TLSX để sản xuất sản phẩm', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Giá trị của hàng hóa SLĐ có đặc điểm:', '', 'Active', 1, 2, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bao gồm các TLSH nhằm bảo đảm nhu cầu tối thiểu của người lao động', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Không phụ thuộc hoàn cảnh lịch sử, cụ thể', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bao gồm cả các chi phí đào tạo và nâng cao tay nghề lao động', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A, B và C', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A và C', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Mục đích vận động của tư bản là:', '', 'Active', 1, 2, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hàng hóa phong phú hơn về mẫu mã', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hàng hóa tốt hơn về giá trị sử dụng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tăng sức cạnh tranh của hàng hóa', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tăng thêm giá trị', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tăng thêm hàng hóa', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Giá trị SLĐ:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Được tạo ra trong thời gian lao động cần thiết', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Được tạo ra trong thời gian lao động thặng dư', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Các phương án trên đều đúng', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tư bản là:', '', 'Active', 1, 2, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Số tiền đầu tư của nhà tư bản', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giá trị nhà xưởng và máy móc của người chủ', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Số vốn bằng tiền của nhà tư bản', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giá trị mang lại GTTD', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Số TLSX mà nhà tư bản sử dụng', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Giá trị thặng dư là phần giá trị vượt trội so với:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giá trị SLĐ', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giá trị nguyên, vật liệu', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giá trị các TLSX', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Mâu thuẫn của công thức chung thể hiện ở chỗ: giá trị tăng thêm trong lưu thông, lại không thể tăng thêm trong lưu thông.', '', 'Active', 1, 2, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sai', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đúng', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Một tư bản có tổng bằng 1000, đầu tư theo cấu tạo hữu cơ 3/2 và đạt tỷ suất GTTD bằng 100%. Cơ cấu sản xuất của tư bản này là:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('600 C + 400 V + 400 M', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('600 C + 400 V + 100 M', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('400 C + 600 V + 400 M', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cấu tạo hữu cơ được tính bằng cách:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('So sánh giá trị máy móc, thiết bị và giá trị SLĐ', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('So sánh giá trị tư bản bất biến và giá trị tư bản khả biến', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('So sánh giá trị tư bản bất biến và toàn bộ tư bản', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('So sánh giá trị nguyên, vật liệu và giá trị SLĐ', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('So sánh giá trị SLĐ và toàn bộ tư bản', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tư bản trực tiếp tạo ra GTTD là:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tư bản bất biến', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tư bản khả biến', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cả 2 phương án trên đều đúng', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Mua – bán hàng hóa SLĐ có thể dựa trên cơ sở:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giá trị của SLĐ', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thỏa thuận của người chủ và người lao động', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quan hệ cung – cầu trên thị trường lao động', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Các quy định của Chính phủ', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả các phương án trên', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tiền xuất hiện là do:', '', 'Active', 1, 2, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Xã hội quy định phải có tiền', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Ý muốn của những người trao đổi hàng hóa', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thuộc tính tự nhiên của vật làm tiền', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Mọi người cần tiền để tích trữ của cải', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Yêu cầu của trao đổi ở một trình độ cao nhất định', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nếu tỷ suất GTTD tăng 50% và khối lượng giá trị SLĐ giảm 20% thì khối lượng GTTD sẽ:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tăng 20%', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tăng 25%', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tăng 30%', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Không xác định được', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giảm 30%', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Giả sử một ngày lao động có 10 giờ không thay đổi, trong đó 4 giờ là thời gian lao động cần thiết. Nếu rút ngắn TGLĐCT xuống còn 2 giờ thì tỷ suất GTTD sẽ:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tăng lên 200%', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tăng lên 250%', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tăng lên 100%', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tăng lên 400%', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giảm xuống 100%', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Giá trị thặng dư có nguồn gốc từ:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sản xuất', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sản xuất và lưu thông', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lưu thông', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cấu tạo hữu cơ tăng khi:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chi phí tư bản khả biến giảm', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chi phí tư bản bất biến tang', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chi phí tư bản khả biến tang', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chi phí tư bản bất biến giảm', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chi phí tư bản bất biến tăng nhanh hơn chi phí tư bản khả biến', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tỷ suất GTTD tăng 20% và khối lượng giá trị SLĐ tăng 20% sẽ làm cho khối lượng GTTD:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tăng 20%', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tăng 40%', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tăng 44%', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Không xác định được', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Không thay đổi', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Một tư bản có giá trị 1000, đầu tư cho TLSX hết 800; thuê SLĐ hết 200. Cấu tạo hữu cơ của tư bản này bằng:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('2/4 hay 1/2', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('1/4', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('4/2 hay 2/1', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('1/1', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('4/1', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cấu tạo hữu cơ của tư bản:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phản ánh trình độ phát tiển của kỹ thuật sản xuất', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phản ánh mức độ bóc lột lao động làm thuê', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phản ánh mức độ sinh lợi của tư bản', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Giá trị thặng dư được tạo bởi:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Người chủ tư bản', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Người chủ tư bản và người lao động làm thuê', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Người lao động làm thuê', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Mâu thuẫn của công thức chung thể hiện ở chỗ: giá trị vừa tăng thêm vừa không tăng thêm.', '', 'Active', 1, 2, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đúng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sai', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tư bản sản xuất là tư bản:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tồn tại dưới hình thái TLSX', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tồn tại dưới hình thái các yếu tố sản xuất', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hình thành trong sản xuất', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tồn tại dưới hình thái SLĐ', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đầu tư vào máy móc, thiết bị', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tiền:', '', 'Active', 1, 2, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là một vật', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Biểu thị mối quan hệ xã hội', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chỉ liên quan đến những người sản xuất và trao đổi hàng hóa', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A và B', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A và C', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Hàng hóa SLĐ là một phạm trù:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Gắn với mọi phương thức sản xuất xã hội', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Vĩnh viễn', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chỉ gắn với phương thức sản xuất TBCN', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lịch sử', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Có từ chế độ nô lệ', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('F. C và D', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tư bản khả biến là tư bản:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Có thể thay đổi hình thái', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Có khả năng tăng thêm giá trị trong sản xuất', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Được cộng thêm giá trị trong sản xuất', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Có thể mang giá trị lớn hơn', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tồn tại dưới hình thái các TLSX', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Chức năng phương tiện lưu thông của tiền có nghĩa là:', '', 'Active', 1, 2, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đưa tiền vào lưu thông', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chuyển tiền từ nước này sang nước khác', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dùng tiền làm trung gian trong trao đổi hàng hóa', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dùng tiền để trang trải việc mua nguyên, vật liệu', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tiền được chuyển từ tay người này sang tay người khác', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Ngày lao động 10 giờ, trong đó một nửa là thời gian lao động cần thiết. Người lao động được trả 8$ một ngày, mua được 2 kg thịt gà. Khi năng suất lao động trong ngành chăn nuôi tăng làm giá thịt gà giảm còn 3.2$/kg và người lao động vẫn được trả công bảo đảm mua được 2 kg thịt gà như trước. TGLĐCT lúc này sẽ:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Không thay đổi', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tăng lên thành 6 giờ', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giảm xuống còn 3.2 giờ', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giảm xuống còn 2 giờ', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giảm xuống còn 4 giờ', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tiền:', '', 'Active', 1, 2, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Do Nhà nước tạo ra', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Vận động độc lập với nền sản xuất hàng hóa', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Không phản ánh QHSX của xã hội', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phản ánh QHSX của xã hội', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Được những người trao đổi hàng hóa thỏa thuận lựa chọn', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tỷ suất GTTD tăng 20% và khối lượng giá trị SLĐ giảm 20% sẽ làm cho khối lượng GTTD:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giảm 40%', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giảm 4%', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Không thay đổi', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tăng 10%', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Không xác định được', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Điều kiện để SLĐ trở thành hàng hóa là:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Người lao động bị tách khỏi các TLSX', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Người chủ muốn mua SLĐ', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Người lao động tự do về thân thể', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Người lao động muốn bán SLĐ', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A và C', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('F. A và D', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Hàng hóa SLĐ có:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cả GTSD và giá trị đều đặc biệt', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giá trị đặc biệt', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('GTSD đặc biệt', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Giá trị thặng dư:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phản ánh mối quan hệ chủ - thợ', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Không phản ánh mối quan hệ sản xuất', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phản ánh mối quan hệ bóc lột lao động làm thuê của người chủ tư bản', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Giả sử một ngày lao động có 10 giờ, trong đó thời gian lao động cần thiết là 4 giờ. Tỷ suất GTTD là:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('60%', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('250%', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('150%', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('40%', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Không xác định được', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Có thể giải thích nguyên nhân của giá trị tăng thêm ở:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cả ở GTSD và giá trị của hàng hóa đặc biệt', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('GTSD của hàng hóa đặc biệt', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giá trị của hàng hóa đặc biệt', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tỷ suất GTTD là tương quan so sánh giữa:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thời gian lao động cần thiết và thời gian của ngày lao động', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thời gian lao động thặng dư và thời gian lao động cần thiết', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thời gian lao động thặng dư và thời gian của ngày lao động', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Các bộ phận sau đây được xếp vào tư bản bất biến:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Máy móc, thiết bị', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà xưởng, kho hàng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nguyên, vật liệu', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A, B và C', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('B và C', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nhận định sau đúng hay sai: “Giá trị hàng hóa SLĐ bao gồm cả các chi phí để nuôi con cái của người lao động”.', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sai', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đúng', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tỷ suất GTTD là tương quan so sánh giữa:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('GTTD và giá trị SLĐ', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giá trị SLĐ và giá trị TLSX', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giá trị SLĐ và vốn của người chủ', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Giá trị thặng dư được tạo ra:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Trong thời gian lao động cần thiết', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Trong thời gian lao động thặng dư', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Trong cả ngày lao động', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Giá trị thăng dư phát sinh từ:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giá trị sử dụng của hàng hóa SLĐ', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giá trị của hàng hóa SLĐ', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cả 2 phương án trên đều đúng', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tư bản có thể tồn tại dưới các hình thái:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tư bản tiền tệ', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tư bản sản xuất', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tư bản hàng hóa', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A, B và C', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A hoặc B hoặc C', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Các bộ phận sau đây được tính trong giá trị hàng hóa:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tư bản bất biến', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tư bản khả biến', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giá trị thặng dư', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A và B', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A, B và C', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tư bản bất biến là bộ phận của tư bản sản xuất:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Mà giá trị được chuyển nguyên vẹn, không tăng thêm trong sản xuất', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Không thay đổi hình thái', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Không tham gia sản xuất GTTD', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tồn tại dưới hình thái SLĐ', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Có giá trị không đổi', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khi tính giá trị tư bản bất biến, có thể cộng các khoản sau đây:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hao mòn công cụ lao động', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Khấu hao nhà xưởng, công trình phục vụ', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tiêu hao nguyên, vật liệu, nhiên liệu', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A và B', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A, B và C', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Hàng hóa tiền:', '', 'Active', 1, 2, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Xuất hiện một cách ngẫu nhiên', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Không phải là sản phẩm của lao động', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Có cả giá trị sử dụng và giá trị đặc biệt', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Có giá trị đặc biệt', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Có giá trị sử dụng đặc biệt', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cấu tạo hữu cơ của tư bản là 3/2, tỷ suất tích lũy bằng 60%, tổng GTTD là 400. TBBB phụ thêm và TBKB phụ thêm lần lượt là:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('144 và 96', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('240 và 160', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('160 và 240', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nguồn gốc của tích lũy tư bản là:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sự tiết kiệm của người chủ tư bản', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sự đóng góp của người chủ và người lao động', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giá trị thăng dư', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tỷ suất tích lũy của tư bản là:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tỷ lệ giữa TBBB phụ thêm và tổng tư bản', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tỷ lệ giữa GTTD để tích lũy và tổng số GTTD', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tỷ lệ giữa GTTD để tích lũy và tổng tư bản', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tỷ lệ giữa GTTD để tích lũy và GTTD để tiêu dùng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tỷ lệ giữa TBBB phụ thêm và TBKB phụ thêm', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cơ cấu sản xuất của tư bản là: 4.000 C + 1.000 V + 2.000 M. Giả sử tư bản dành 1600 GTTD để tích lũy, trong đó phân chia cho TBBB phụ thêm 1500 và TBKB phụ thêm 100. Sau tích lũy, cấu tạo hữu cơ chung của tư bản:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Không thay đổi', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giảm xuống 3/1', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tăng lên 5/1', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tiền trả công được tạo ra bởi:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Người chủ tư bản', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quỹ trả công của người chủ', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Người lao động', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tư bản ứng trước bằng 2000, cấu tạo hữu cơ của tư bản bằng 4/1, tỷ suất GTTD 100% và tỷ suất tích lũy bằng 60%. Có thể xác định tư bản tích lũy, TBBB phụ thêm và TBKB phụ thêm lần lượt là:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('800, 400 và 160', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('240, 192 và 48', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('400, 240 và 160', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('600, 400 và 160', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('400, 200 và 160', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tư bản tích lũy được sử dụng để:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Mua TLSX bổ sung', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Mua TLSH bổ sung', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Mua SLĐ bổ sung', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A và B', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A và C', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nếu giá cả TLSH tăng 25% mà tiền công danh nghĩa tăng 30%, có thể dự đoán:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tiền công thực tế giảm 4%', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tiền công thực tế tăng 0.5%', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tiền công thực tế giảm 5%', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tiền công thực tế tăng 4%', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tiền công thực tế tăng 5%', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cơ sở của tiền công là:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sự thỏa thuận giữa người chủ và lao động', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Các TLSH cần thiết của người lao động', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Mức sống của người lao động', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tổng GTTD là 600, trong đó phần tích lũy là 400 và phần tiêu dùng là 200. Nếu tổng GTTD tăng lên 900, với mọi điều kiện khác không đổi, tư bản tích lũy sẽ:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giữ nguyên 400', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tăng lên 500', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tăng lên 600', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khi cầu lao động vượt cung lao động, có thể dự đoán:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tiền công giảm xuống', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tiền công giảm xuống mức thấp nhất', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tiền công tăng lên', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tiền công đạt mức cao nhất', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tiền công không thay đổi', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tư bản khả biến phụ thêm thể hiện bằng:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Số nguyên, vật liệu bổ sung', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Số TLSH bổ sung', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Số SLĐ bổ sung', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Số TLSX bổ sung', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Số tiền công bổ sung', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tiền công theo thời gian:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Do thời gian lao động cần thiết quy định', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tỷ lệ thuận với thời gian lao động', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tỷ lệ nghịch với thời gian lao động', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tư bản ứng trước bằng 500, sản xuất khối lượng GTTD bằng 200. Nếu tích lũy với tỷ suất tích lũy bằng 60%, tư bản sẽ lớn lên thành:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('680', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('620', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('700', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('800', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('580', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Biểu hiện của tiền công trên thị trường là:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giá cả hàng hóa SLĐ', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giá cả lao động', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giá cả TLSH của người lao động', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A hoặc B', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A và C', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khi tỷ suất GTTD tăng gấp đôi, với mọi điều kiện khác không đổi, có thể dự đoán:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quy mô tích lũy của tư bản tăng gấp đôi', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quy mô tích lũy của tư bản tăng hơn 2 lần', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quy mô tích lũy của tư bản không thay đổi', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Giả sử phân cách thu nhập giữa tư bản và lao động đang là 12/1. Do tích lũy tư bản mở rộng, thu nhập của tư bản tăng 40% và thu nhập của lao động tăng 20%. Tỷ lệ cách biệt về thu nhập giữa tư bản và lao động bây giờ là:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('14/1', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('13/1', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('16/1', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tiền công danh nghĩa là tiền công:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Do sự thỏa thuận giữa người chủ và lao động', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Biểu hiện bằng số tiền trả cho giá trị SLĐ', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Do người chủ trả cho lao động', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lên xuống theo cung – cầu của thị trường', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Do người lao động yêu cầu người chủ trả', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tích tụ tư bản là:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tích lũy đồng thời của nhiều tư bản', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tích lũy trong phạm vi từng tư bản cá biệt', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tích lũy bằng sự liên kết giữa các tư bản', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tiền công thực tế là tiền công:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Được người chủ trả thực tế', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Biểu hiện bằng số TLSH mua được bằng tiền công danh nghĩa', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Được người chủ đồng ý trả thêm', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Do Chính phủ quy định trong thực tế', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bảo đảm mức sống thực tế của lao động', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Giả sử tiền công danh nghĩa là 10$/ ngày. Nếu giá thịt gà bằng 4 $/ kg thì tiền công thực tế một ngày bằng:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('2.5 kg thịt gà', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('6 kg thịt gà', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('0.4 kg thịt gà', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khi tư bản ứng trước tăng gấp đôi, với mọi điều kiện cho trước khác không đổi, có thể dự đoán:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tư bản tích lũy tăng gấp đôi', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('TBBB phụ thêm tăng gấp đôi', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('TBKB phụ thêm tăng gấp đôi', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A, B và C', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('B và C', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Những nhân tố ảnh hưởng đến tiền công là:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quan hệ cung – cầu về lao động', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giá trị SLĐ', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phản ứng của lao động với giới chủ', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A và B', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A, B và C', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tư bản có thể tích lũy bằng con đường:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tích tụ tư bản', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tập trung tư bản', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cả 2 phương án trên đều đúng', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khi khối lượng GTTD giảm một nửa, với mọi điều kiện khác không đổi, có thể dự đoán:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quy mô tích lũy của tư bản giảm một nửa', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quy mô tích lũy của tư bản giảm hơn một nửa', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quy mô tích lũy của tư bản không thay đổi', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khi cung lao động vượt cầu lao động, có thể dự đoán:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tiền công đạt mức cao nhất', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tiền công giảm xuống', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tiền công không thay đổi', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tiền công giảm xuống mức thấp nhất', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tiền công lên cao', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Bản chất của tiền công là:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Số tiền người lao động đòi hỏi', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Số tiền người chủ thỏa thuận với người lao động', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Biểu hiện bằng tiền của giá trị hàng hóa SLĐ', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tập trung tư bản có thể diễn ra thông qua con đường:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tự nguyện sáp nhập', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thôn tính lẫn nhau', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Mua - bán giữa các tư bản', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A và B', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A, B hoặc C', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tổng số GTTD của tư bản bằng 1.000, trong đó dành 600 để tích lũy và 400 để tiêu dùng. Để tích lũy, chủ tư bản dùng 500 mua TLSX bổ sung và 100 thuê lao động bổ sung. Tư bản bất biến phụ thêm và tư bản khả biến phụ thêm lần lượt là:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('600 và 400', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('600 và 100', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('500 và 400', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('400 và 100', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('500 và 100', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Với mọi điều kiện cho trước không đổi, tỷ suất tích lũy tăng từ 40% lên 50% sẽ làm cho tỷ lệ tích lũy – tiêu dùng:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giảm từ 3 – 2 xuống 1 – 1', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tăng từ 2 – 3 lên 1 – 1', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Không thay đổi', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tổng tư bản bằng 1200, cấu tạo hữu cơ bằng 5/1, tỷ suất GTTD bằng 200%, tỷ suất tích lũy bằng 75%. Tư bản bất biến phụ thêm và tư bản khả biến phụ thêm lần lượt bằng:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('600 và 100', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('300 và 100', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('1000 và 200', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('400 và 200', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('250 và 50', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khi tăng tích lũy, cấu tạo hữu cơ của tư bản:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Không thay đổi', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giảm xuống', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tăng lên', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tiền công theo sản phẩm:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tỷ lệ thuận với số lượng sản phẩm', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Trả theo giá trị sản phẩm', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tỷ lệ nghịch với số lượng sản phẩm', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tỷ suất tích lũy bằng 50%, tư bản tích lũy bằng 400, trong đó 300 là TBBB phụ thêm và 100 là TBKB phụ thêm. Khi tỷ suất tích lũy tăng lên 75%, với mọi điều kiện khác không đổi, có thể dự đoán tư bản tích lũy, TBBB phụ thêm và TBKB phụ thêm lần lượt là:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('700, 500 và 175', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('700, 525 và 175', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('575, 525 và 175', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('600, 450 và 150', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('475, 375 và 175', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tổng số GTTD của tư bản bằng 500, trong đó dành 300 cho tích lũy và 200 để tiêu dùng. Tỷ suất tích lũy của tư bản bằng:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('40%', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('25%', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('60%', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nếu tiền công danh nghĩa giảm 25% và giá cả TLSH tăng 25%, có thể dự đoán:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tiền công thực tế tăng 1%', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tiền công thực tế giảm 40%', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tiền công thực tế tăng 10%', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tiền công thực tế giảm 10%', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tiền công thực tế giảm 1%', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Muốn có tích lũy tư bản, người chủ tư bản phải:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sử dụng hết GTTD để tiêu dùng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sử dụng hết GTTD để tích lũy', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chia GTTD thành phần tích lũy và phần tiêu dùng', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khi tiền công danh nghĩa không đổi mà giá cả TLSH tăng lên, có thể dự đoán:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tiền công thực tế giảm xuống', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tiền công thực tế tăng lên', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tích lũy tư bản mở rộng sẽ dẫn tới kết quả:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lao động nghèo khổ hơn', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phân cách giàu - nghèo giữa tư bản và lao động tăng lên', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lao động giàu có lên', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tư bản giàu có lên', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tiền công theo thời gian đòi hỏi phải kiểm soát:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Năng suất lao động', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cường độ lao động', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cả 2 phương án trên đều đúng', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khi tích lũy tăng, cấu tạo hữu cơ của tư bản tăng là do:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chi phí cho TBBB phụ thêm tăng nhanh hơn chi phí cho TBKB phụ thêm', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chi phí cho tư bản khả biến phụ thêm tăng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chi phí cho TBKB phụ thêm tăng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chi phí cho TBBB tăng', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tập trung tư bản là:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tích lũy thông qua việc kết hợp của nhiều tư bản', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tích lũy bằng GTTD của từng nhà tư bản', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tích lũy xảy ra đối với những tư bản lớn', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Giả sử tỷ suất GTTD là 100%, tổng GTTD là 500, trong đó dành 300 để tích lũy và 200 để tiêu dùng. Nếu tỷ suất GTTD tăng lên thành 150%, với mọi điều kiện khác không đổi, tư bản tích lũy sẽ:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('300', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tăng lên 750', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('450', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tỷ suất tích lũy bằng 60%. Tỷ lệ tích lũy – tiêu dùng là:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('4 – 1', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('3 – 2', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('5 – 1', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khi tiền công danh nghĩa tăng mà giá cả TLSH không thay đổi, có thể dự đoán:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tiền công thực tế giảm xuống', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tiền công thực tế không thay đổi', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tiền công thực tế tăng lên', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tư bản bất biến phụ thêm là tư bản thể hiện bằng:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Số tiền công bổ sung', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Số nguyên, vật liệu bổ sung', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Số TLSX bổ sung', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Số TLSH bổ sung', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Số máy móc bổ sung', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tích lũy tư bản là:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tiết kiệm tư bản đầu tư', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tư bản hóa GTTD', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Gom góp một số tư bản đủ lớn', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Công thức xác định TNQD là:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('I (M) + II (M)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('I (C + V) + II (C + V)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('I (C) + II (C)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('I (C + M) + II (C + M)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('I (V + M) + II (V + M)', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Để tăng tốc độ chu chuyển của tư bản, cần phải:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tiết kiệm chi phí tư bản', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tăng chi phí tư bản', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giảm thời gian sản xuất và thời gian lưu thông', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Thời gian chu chuyển của tư bản là:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thời gian sản xuất', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tổng của thời gian sản xuất và thời gian lưu thông', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thời gian lưu thông trừ thời gian sản xuất', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thời gian sản xuất trừ thời gian lưu thông', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thời gian lưu thông', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Thực chất của lưu thông tư bản xã hội là:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Trao đổi TLSX của khu vực I và TLSH của khu vực II', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Trao đổi tư bản giữa hai khu vực I và II', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Trao đổi sản phẩm trong mỗi khu vực I và II', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Công thức xác định TSPXH là:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('I (M) + II (M)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('I (V + M) = II (V + M)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('I (C) + II (C)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('I (C + V ) + II (C + V)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('I (C + V + M) + II (C + V + M)', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khu vực I của nền sản xuất xã hội là khu vực:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sản xuất ra TLSX', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sản xuất ra GTTD', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sản xuất ra tư liệu sinh hoạt', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Có thể xếp bộ phận nào sau đây vào thành phần tư bản cố định:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Trụ sở, văn phòng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Công trình phục vụ sản xuất', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chất phụ gia', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A và B', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('B và C', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khối lượng GTTD:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tỷ lệ nghịch với tốc độ chu chuyển của tư bản', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Không phụ thuộc tốc độ chu chuyển của tư bản', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tỷ lệ thuận với tốc độ chu chuyển của tư bản', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tổng sản phẩm xã hội (TSPXH) là:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tổng GTTD của cả hai khu vực I và II', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tổng nhu cầu TLSX của hai khu vực I và II', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tổng giá trị sản xuất của cả hai khu vực I và II', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tổng nhu cầu TLTD của cả hai khu vực I và II', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tổng giá trị mới của cả hai khu vực I và II', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khối lượng GTTD:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tỷ lệ thuận với thời gian chu chuyển của tư bản', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tỷ lệ nghịch với thời gian chu chuyển của tư bản', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Không phụ thuộc thời gian chu chuyển của tư bản', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tái sản xuất giản đơn là:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tái sản xuất theo quy mô thay đổi qua từng năm', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tái sản xuất theo quy mô không thay đổi qua từng năm', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tái sản xuất để duy trì quy mô tối thiểu', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khối lượng GTTD:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tỷ lệ thuận với số vòng chu chuyển của tư bản', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Không phụ thuộc số vòng chu chuyển của tư bản', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tỷ lệ nghịch với số vòng chu chuyển của tư bản', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Để giảm thời gian lưu thông, cần phải:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giảm thời gian vận chuyển', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giảm thời gian mua – bán trực tiếp', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giảm thời gian đóng gói, bảo quản', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A và B', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cả A, B và C', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tư bản lưu động là tư bản:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Không thay đổi hình thái hiện vật', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Trực tiếp sản xuất ra GTTD', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Có thể dịch chuyển vị trí', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chuyển hết giá trị vào sản phẩm trong quá trình sản xuất', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Có thể xếp bộ phận nào sau đây vào thành phần của tư bản lưu động:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dụng cụ đo lường', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Công cụ lao động', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nguyên liệu', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Thu nhập quốc dân (TNQD) là:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tổng giá tri mới của cả hai khu vực I và II', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tổng GTTD của cả hai khu vực I và II', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tổng giá trị tư bản khả biến của cả hai khu vực I và II', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tổng nhu cầu tiêu dùng của cả hai khu vực I và II', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tổng giá trị TLSX của cả hai khu vực I và II', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Trong TSXGĐ, nhu cầu về TLSH của khu vực I phải:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bằng với nhu cầu về TLSX của khu vực II', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bằng với GTTD của khu vực II', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bằng với nhu cầu TLSH của khu vực II', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khu vực II của nền sản xuất xã hội là khu vực:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sản xuất ra tư liệu sinh hoạt', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sản xuất ra máy móc', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sản xuất ra tư bản khả biến', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Điều kiện cơ bản của TSXMR là:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('I (V + M) &gt; II (V + M)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('I (V + M) &gt; II (C)', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('I (C) = II (V + M)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('I (C + V ) &gt; II (C + V)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('I (V + M ) &lt; II (C)', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Có thể xếp bộ phận nào sau đây vào thành phần của tư bản cố định:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhiêu liệu', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Vật liệu và vật liệu phụ', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nguyên liệu', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sức lao động', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Máy móc, thiết bị và nhà xưởng', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Số vòng chu chuyển của tư bản:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tỷ lệ nghịch với thời gian chu chuyển', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tỷ lệ thuận với thời gian chu chuyển', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tỷ lệ nghịch với tốc độ chu chuyển', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Để giảm thời gian sản xuất, cần phải:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giảm thời gian lao động', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giảm thời gian gián đoạn lao động', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giảm thời gian dự trữ sản xuất', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cả A, B và C', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A và B', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Trong khu vực II, có thể thực hiện trao đổi nội bộ đối với phần giá trị ứng với:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhu cầu tư bản bất biến', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhu cầu tư liệu sinh hoạt', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhu cầu TLSX', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Trong TSXMR, nhu cầu về TLSX của khu vực II phải:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bằng với nhu cầu về TLSX của khu vực I', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bằng với nhu cầu về TLSH của khu vực I', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bằng với GTTD của khu vực I', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tái sản xuất mở rộng là tái sản xuất trong đó:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('GTTD được tiêu dùng hết', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tổng giá trị sản xuất và quy mô sử dụng tăng lên', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chỉ có quy mô sử dụng SLĐ tăng lên', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Điều kiện cơ bản của TSXGĐ là:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('I (C + M) = II (C + M)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('I (C) = II (C)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('I (C + V) = II (V + M)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('I (V + M ) = II (C)', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('I (V + M) = II (V + M)', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tư bản cố định là tư bản:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chuyển giá trị từng phần vào sản phẩm trong quá trình sản xuất', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Có giá trị không đổi', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Không thay đổi hình thái trong sản xuất', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Không dịch chuyển vị trí', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A và C', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Có thể xếp bộ phận nào sau đây vào thành phần của tư bản lưu động:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Vật liệu phụ', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chất phụ gia', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sức lao động', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A, B và C', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Không có bộ phận nào', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khối lượng tư bản ứng trước:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tỷ lệ thuận với tốc độ chu chuyển của tư bản', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Không phụ thuộc tốc độ chu chuyển của tư bản', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tỷ lệ nghịch với tốc độ chu chuyển của tư bản', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Trong khu vực I, có thể thực hiện trao đổi nội bộ đối với phần giá trị ứng với:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhu cầu TLSX', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhu cầu tư liệu tiêu dùng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhu cầu tư bản khả biến', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Trong điều kiện có lợi nhuận bình quân, giá cả sản xuất là sự chuyển hóa của:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giá trị tư bản', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giá trị', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giá cả', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Giả sử có 2 ngành sản xuất cùng đầu tư một số tư bản bằng 1.000. Tỷ suất lợi nhuận đạt được ở ngành I là 20 %, ở ngành II là 30 %. Tỷ suất lợi nhuận bình quân của tư bản bằng:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('10%', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('25%', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('50%', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nhận định sau đúng hay sai: “Tư bản cho vay là một loại hàng hóa đặc biệt”.', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đúng', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sai', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Địa tô phản ánh mối quan hệ của các giai cấp:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chủ tư bản và lao động làm thuê', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chủ đất và lao động làm thuê', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chủ đất và chủ tư bản', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cả chủ đất, chủ tư bản và lao động làm thuê', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nhận định sau đúng hay sai: “Lợi nhuận thương nghiệp có nguồn gốc từ sản xuất”.', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sai', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đúng', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Lợi nhuận thương nghiệp có được là do:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Mua rẻ, bán đắt', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lưu thông mang lại', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tư bản sản xuất chia lại', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Lợi nhuận và GTTD bằng nhau trong trường hợp:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giá cả hàng hóa thấp hơn giá trị của nó', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giá cả hàng hóa cao hơn giá trị của nó', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giá cả hàng hóa bằng giá trị của nó', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nhận định sau đúng hay sai: “Lợi nhuận bình quân là lợi nhuận là lợi nhuận được tính căn cứ theo tỷ suất lợi nhuận bình quân”.', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đúng', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sai', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Điều kiện xuất hiện tư bản cho vay là:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Một số người có tư bản nhàn rỗi', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Một số người có nhu cầu về tư bản để sản xuất, kinh doanh', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Có sự vận động của Chính phủ', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A và B', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A, B và C', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Địa tô chênh lệch II phát sinh do:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Kết quả của việc đầu tư cải tạo đất', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Vị trí thuận lợi của đất', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Độ màu mỡ tự nhiên của đất', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Địa tô phát sinh từ:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quyền lực của người chủ đất', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giá trị của đất', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sản xuất nông nghiệp', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tỷ suất lợi nhuận có xu hướng giảm theo thời gian cùng với việc mở rộng tích lũy tư bản.', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nguyên nhân là do:', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tư bản đầu tư ngày càng giảm', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đầu tư vào tư bản bất biến ngày càng nhiều một cách tương đối', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đầu tư vào tư bản khả biến ngày càng ít một cách tương đối', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A và B', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('B và C', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tư bản thương nghiệp hoạt động trong lĩnh vực:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lưu thông', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sản xuất', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Công nghiệp', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nhận định sau đúng hay sai: “Lợi tức là giá cả của hàng hóa tư bản cho vay”.', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đúng', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sai', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Trong nông nghiệp tồn tại các giai cấp:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chủ tư bản kinh doanh nông nghiệp', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lao động làm thuê', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chủ đất', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('B và C', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A, B và C', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tư bản cho vay biểu hiện dưới hình thức nào sau đây:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tín dụng thương mại', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tín dụng ngân hàng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Mua – bán chứng khoán', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A và B', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A, B và C', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khi cung hàng hóa lớn hơn cầu hàng hóa, lợi nhuận thu được sẽ:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thấp hơn GTTD', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cao hơn GTTD', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bằng GTTD', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nhận định sau đúng hay sai: “Tỷ suất lợi nhuận thường lớn hơn hoặc bằng tỷ suất GTTD” ?', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sai', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đúng', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tư bản thương nghiệp chu chuyển nhanh có tác dụng:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thu lợi nhuận siêu ngạch', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giảm giá bán lẻ để cạnh tranh', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tiết kiệm chi phí lưu thông', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A, B và C', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A và C', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tỷ suất lợi nhuận bình quân hình thành là do:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sự thỏa thuận giữa các nhà tư bản với nhau', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cạnh tranh tự do và di chuyển tư bản giữa các ngành khác nhau', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quy luật giá trị tác động', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Giả sử một cổ phiếu có mệnh giá 10.000 đ, tỷ suất lợi tức 10%. Nếu lãi suất ngân hàng là 4% thì cổ phiếu này có thể mua – bán theo giá:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('25.000 đ', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('14.000 đ', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('11.000 đ', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tỷ suất lợi nhuận là tỷ lệ phần trăm khi so sánh lợi nhuận với:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Toàn bộ tư bản', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tư bản khả biến', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tư bản bất biến', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Giá cả sản xuất bằng:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giá cả bình quân của sản xuất', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chi phí tư bản cộng lợi nhuận của ngành', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chi phí tư bản cộng lợi nhuận bình quân', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Chức năng của tư bản cho vay là:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Kinh doanh tiền tệ', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Kinh doanh dịch vụ', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Kinh doanh hàng hóa', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Lượng địa tô tuyệt đối phụ thuộc vào:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lợi nhuận siêu ngạch trên đất trung bình', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lợi nhuận siêu ngạch trên đất tốt', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lợi nhuận siêu ngạch của nông nghiệp so với lợi nhuận bình quân chung', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nhận định sau đúng hay sai: “Tỷ suất lợi nhuận là sự chuyển hóa của tỷ suất GTTD” ?', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sai', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đúng', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Một tư bản sản xuất bỏ vốn 800, sản xuất được hàng hóa có giá trị 1.000. Một tư bản thương nghiệp bỏ vốn 200 để bán hàng cho tư bản sản xuất. Tư bản sản xuất bán hàng theo giá 960 cho tư bản thương nghiệp thì tỷ suất lợi nhuận bình quân của cả hai tư bản là:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('20%', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('15%', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('25%', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tư bản thương nghiệp:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tham dự việc chia phần lợi nhuận với tư bản sản xuất', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tham gia bình quân hóa tỷ suất lợi nhuận với tư bản sản xuất', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thu được lợi nhuận nhiều hơn tư bản sản xuất', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A, B và C', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A và B', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Địa tô chênh lệch là địa tô thu được trên đất nào sau đây:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đất tốt', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đất xấu', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đất trung bình', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A và B', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A và C', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khi cầu hàng hóa lớn hơn cung hàng hóa, lợi nhuận thu được sẽ:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cao hơn GTTD', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bằng GTTD', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thấp hơn GTTD', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Giá cả của tư bản cho vay là:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giá mua quyền sử dụng tư bản cho vay', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giá mua quyền sở hữu tư bản cho vay', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giá thỏa thuận giữa người cho vay và người môi giới', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Lợi nhuận được coi là:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Con đẻ của toàn bộ tư bản', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Con đẻ của tư bản khả biến', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Con đẻ của tư bản bất biến', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Địa tô chênh lệch I phát sinh do:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Do hiệu quả của tư bản đầu tư', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cải tạo đất đai', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Do điều kiện tự nhiên (độ màu mỡ, vị trí xa gần) của đất', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tỷ suất lợi tức phụ thuộc:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tỷ suất lợi nhuận bình quân', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thời hạn vay', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Độ rủi ro', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A và B', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A, B và C', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tư bản thương nghiệp:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Làm giảm giá trị của hàng hóa', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Không tạo ra GTTD cho hàng hóa', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tạo ra GTTD cho hàng hóa', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Làm giảm GTTD trong hàng hóa', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Về bản chất, địa tô TBCN là:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lợi nhuận siêu ngạch', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lợi nhuận dự tính của đất', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lợi nhuận bình quân', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Lợi nhuận thương nghiệp:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là phần nâng giá bán của người bán', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là phần thưởng của người mua dành cho người bán', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là một phần của GTTD tạo ra trong sản xuất', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Địa tô tuyệt đối là địa tô thu được trên đất nào sau đây:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đất tốt', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đất xấu', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đất trung bình', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A và B', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A, B và C', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Quyền sở hữu tư bản cho vay thuộc về ai?', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Người môi giới cho vay', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Người cho vay', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Người đi vay', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khi giá cả hàng hóa thấp hơn giá trị, lợi nhuận sẽ:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cao hơn GTTD', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thấp hơn GTTD', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bằng GTTD', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tư bản sản xuất bỏ vốn 1.000 đầu tư theo cơ cấu: 800 C + 200 V + 240 M. Tư bản thương nghiệp bỏ vốn 200 để bán hàng cho tư bản sản xuất. Để đạt tỷ suất lợi nhuận bình quân 20%, giá bán buôn của tư bản sản xuất cho tư bản thương nghiệp phải bằng:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('1.240', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('1.120', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('1.200', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nhận định sau đúng hay sai: “Không có sự san bằng tỷ suất lợi nhuận trong nông nghiệp là do sự cản trở của độc quyền sở hữu và độc quyền kinh doanh đất”.', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đúng', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sai', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nhận định sau đúng hay sai: “Lợi nhuận thương nghiệp độc lập với GTTD”.', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đúng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sai', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Giả sử 2 ngành sản xuất cùng đầu tư một lượng tư bản bằng 1.000. Ngành I thu được lợi nhuận bằng 300, ngành II thu được lợi nhuận bằng 400. Tỷ suất lợi nhuận bình quân bằng:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('10%', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('35%', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('70%', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tỷ suất lợi tức là tỷ lệ phần trăm khi so sánh:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lợi tức và tư bản ứng trước', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lợi tức và lợi nhuận bình quân', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lợi tức và GTTD', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lợi tức và tư bản cho vay', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lợi tức và lợi nhuận sản xuất', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Lợi nhuận là:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phần thưởng của người mua dành cho người bán', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phần mà người bán cộng thêm vào giá cả hàng hóa', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chênh lệch giữa giá bán hàng hóa và chi phí sản xuất tư', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tính chất đặc biệt của hàng hóa tư bản cho vay là:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quyền sở hữu tách rời quyền sử dụng', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('GTSD không xác định', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Mua – bán dựa trên GTSD', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Lượng lợi nhuận:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Luôn lớn hơn lượng GTTD', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Luôn luôn bằng lượng GTTD', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Có thể không ăn khớp với lượng GTTD', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Không có quan hệ gì với lượng GTTD', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Luôn nhỏ hơn lượng GTTD', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nhận định sau đúng hay sai: “Đất đai không phải là hàng hóa và không có giá trị vì không phải là sản phẩm của lao động”.', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sai', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đúng', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tư bản thương nghiệp:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Không tham gia sản xuất hàng hóa', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Không tạo thêm giá trị cho hàng hóa', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Làm tăng thêm giá trị cho hàng hóa', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A và B', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A và C', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tỷ suất lợi nhuận phản ánh:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tỷ lệ lao động sống so với lao động quá khứ', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Mức độ sinh lợi của tư bản', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Mức độ bóc lột lao động làm thuê', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nguồn gốc thật sự của địa tô là:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('SLĐ làm thuê', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tư bản đầu tư của người chủ tư bản', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Năng lực của đất đai', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Chức năng của tư bản thương nghiệp là:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Kinh doanh dịch vụ', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Kinh doanh yếu tố sản xuất', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Kinh doanh hàng hóa', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Quyền sử dụng tư bản cho vay thuộc về ai?', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Người môi giới cho vay', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Người cho vay', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Người đi vay', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Lợi nhuận:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Do mua rẻ bán đắt mà có', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Có nguồn gốc từ sản xuất', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Được sinh ra trong lưu thông', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Lượng địa tô chênh lệch phụ thuộc vào:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lợi nhuận siêu ngạch của đất trung bình', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lợi nhuận siêu ngạch của đất tốt so với đất xấu hơn', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lợi nhuận siêu ngạch của nông nghiệp so với công nghiệp', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Trong nông nghiệp tồn tại các giai cấp:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chủ tư bản kinh doanh nông nghiệp', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lao động làm thuê', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chủ đất', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('B và C', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A, B và C', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tư bản sản xuất chia lại lợi nhuận cho tư bản thương nghiệp bằng cách:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bán hàng theo giá bán buôn', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phân chia theo tỷ lệ thỏa thuận', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chuyển tiền mặt', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tư bản cho vay là tư bản hoạt động trong lĩnh vực:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sản xuất', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lưu thông', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Công nghiệp', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Giá cả đất đai:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tỷ lệ thuận với địa tô', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tỷ lệ thuận với lãi suất tiền gửi', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tỷ lệ nghịch với lãi suất tiền gửi', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A và C', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Thực chất của lợi nhuận là:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sự chuyển hóa của giá trị SLĐ', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sự chuyển hóa của tiền công của chủ tư bản', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sự chuyển hóa của GTTD trong thực tế', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Lợi tức cho vay có nguồn gốc từ:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sản xuất', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lưu thông', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Khả năng tự nhiên của tiền', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tư bản thương nghiệp là tư bản:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là một bộ phận của tư bản công nghiệp', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hình thành độc lập', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Xuất hiện trước tư bản công nghiệp', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Được tách ra từ tư bản công nghiệp', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A và D', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Chu chuyển nhanh của tư bản thương nghiệp có tác động:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tiết kiệm chi phí lưu thông chung của xã hội', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thúc đẩy tuần hoàn và chu chuyển của tư bản sản xuất', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Làm tăng giá trị của hàng hóa', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A, B và C', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A và B', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Một người cho vay 1.000 và đòi người vay phải trả lợi tức 100. Tỷ suất lợi tức là:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('10%', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('10 lần', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('100%', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Lợi nhuận siêu ngạch tồn tại phổ biến trong nông nghiệp vì:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Độc quyền của người thuê đất', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Độc quyền của chủ đất', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cả 2 phương án trên', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Ở Việt Nam, Đảng cộng sản ra đời', '', 'Active', 1, 4, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Do khát vọng giải phóng dân tộc', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là kết quả của sự thâm nhập Chủ nghĩa Marx - Lenin vào phong trào công nhân và phong trào yêu nước chân chính', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Do phong trào yêu nước phát triển mạnh mẽ', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Các phương án đều đúng', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Đảng cộng sản là', '', 'Active', 1, 4, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sự kết hợp của Chủ nghĩa Marx vào phong trào công nhân', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là nhân tố đảm bảo thực hiện thắng lợi sứ mệnh lịch sử của giai cấp công nhân', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Biểu hiện sự trưởng thành của giai cấp công nhân', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Các phương án đều đúng', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Hãy chọn 1 cụm từ phù hợp để hoàn chỉnh câu sau: “Giai cấp công nhân là một tập đoàn xã hội ổn định, hình thành và phát triển cùng với ………, trực tiếp và gián tiếp tham gia vào quá trình sản xuất và tái sản xuất ra của cải xã hội.”', '', 'Active', 1, 4, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('quá trình phát triển của LLSX có tính xã hội hóa ngày càng cao', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('thành phần kinh tế tư bản tư nhân', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('quá trình phát triển của nền công nghiệp cơ khí', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('quá trình phát triển của xã hội', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Điều kiện chủ quan quyết định nhất đối với thắng lợi của Cách mạng XHCN là:', '', 'Active', 1, 4, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Liên minh giữa công nhân, nông dân và trí thức', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Mâu thuẫn giữa LLSX và QHSX', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sự xuất hiện của Đảng cộng sản trong phong trào công nhân', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Mâu thuẫn giữa tư sản và vô sản đến đỉnh điểm', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Về vị trí trong QHSX TBCN, giai cấp công nhân là', '', 'Active', 1, 4, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là những người không có TLSX', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phải bán sức lao động của mình cho nhà tư bản và bị bóc lột giá trị thặng dư', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là giai cấp đối kháng với giai cấp tư sản', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Các phương án đều đúng', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Mục tiêu Sứ mệnh lịch sử của giai cấp công nhân là gì?', '', 'Active', 1, 4, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thành lập nhà nước chuyên chính vô sản', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Xác lập vai trò lãnh đạo của giai cấp công nhân', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Xóa bỏ giai cấp, xóa bỏ tận gốc chế độ người bóc lột người, giải phóng nhân loại', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Xác lập vai trò lãnh đạo của Đảng cộng sản', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Đảng cộng sản lãnh đạo giai cấp công nhân thực hiện Sứ mệnh lịch sử của giai cấp công nhân bằng cách nào?', '', 'Active', 1, 4, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Trên cơ sở thực tiễn cách mạng, lí luận khoa học của Chủ nghĩa Marx – Lenin đưa ra đường lối chiến lược sách lược đúng đắn', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tuyên truyền giác ngộ giai cấp công nhân và nhân dân lao động – biến lí luận cách mạng thành thực tiễn cách mạng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Xây dựng lực lượng cách mạng của quần chúng nhân dân lao động dưới sự lãnh đạo của Đảng cộng sản để tiến hành cách mạng XHCN', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Các phương án đều đúng', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Hình thái kinh tế xã hội CSCN bắt đầu từ khi nào?', '', 'Active', 1, 4, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Từ khi Đảng cộng sản ra đời', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Từ khi chính quyền thuộc về tay giai cấp công nhân', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Từ khi chế độ công hữu về TLSX xuất hiện', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Từ khi giai cấp công nhân thực hiện sứ mệnh lịch sử của mình', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Giai cấp công nhân là gì?', '', 'Active', 1, 4, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là giai cấp bị áp bức', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là giai cấp chiếm đa số trong dân cư', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là giai cấp lao động trong nền sản xuất công nghiệp có trình độ kĩ thuật và công nghệ hiện đại', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là giai cấp thống trị dưới CNTB', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Những thay đổi của giai cấp công nhân ngày nay', '', 'Active', 1, 4, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Không làm thay đổi bản chất giai cấp công nhân', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Làm thay đổi địa vị kinh tế xã hội của giai cấp công nhân trong CNTB', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đã làm thay đổi bản chất giai cấp công nhân', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Làm thay đổi bản chất của giai cấp tư sản', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Mục tiêu của giai đoạn thứ nhất của cuộc cách mạng XHCN là:', '', 'Active', 1, 4, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giai cấp công nhân phải tập hợp các tầng lớp nhân dân lao động thành lực lượng cách mạng mạnh mẽ để xây dựng thành công Hình thái kinh tế - xã hội CSCN', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Xây dựng thành công Hình thái kinh tế - xã hội CSCN, xóa bỏ tận gốc chế độ người bóc lột người', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giai cấp công nhân trở thành giai cấp lãnh đạo xã hội', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giành chính quyền từ tay các giai cấp bóc lột, thiết lập chính quyền của mình', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Dự báo của K.Marx và F.Engels về sự ra đời Hình thái kinh tế xã hội cộng sản chủ nghĩa như một xu hướng tất yếu của lịch sử loài người là', '', 'Active', 1, 4, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dựa trên cơ sở khoa học của Chủ nghĩa Duy vật lịch sử', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Kết quả phân tích khoa học về sự vận động xã hội theo Học thuyết về hình thái kinh tế xã hội', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dựa trên sự phân tích khoa học về hình thái kinh tế - xã hội TBCN', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả các phương án trên đều đúng', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Đặc điểm chính trị - xã hội của giai cấp công nhân?', '', 'Active', 1, 4, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là giai cấp tiên tiến nhất thời đại ngày nay', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là giai cấp có tính cách mạng triệt để nhất', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Có bản chất quốc tế', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Các phương án đều đúng', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Ngày nay xu hướng “trí thức hóa” giai cấp công nhân ngày càng tăng là do', '', 'Active', 1, 4, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Toàn cầu hóa kinh tế quy định', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tiến bộ của khoa học và công nghệ trong LLSX quy định', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sự thay đổi cơ cấu ngành nghề', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giai cấp tư sản đã thay đổi phương thúc bóc lột', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Mục tiêu của giai đoạn thứ hai của cuộc cách mạng XHCN là:', '', 'Active', 1, 4, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Xây dựng thành công Hình thái kinh tế - xã hội CSCN, xóa bỏ tận gốc chế độ người bóc lột người', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giai cấp công nhân trở thành giai cấp lãnh đạo xã hội', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giành chính quyền từ tay các giai cấp bóc lột, thiết lập chính quyền của mình', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giai cấp công nhân phải tập hợp các tầng lớp nhân dân lao động thành lực lượng cách mạng mạnh mẽ để xây dựng thành công Hình thái kinh tế - xã hội CSCN', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Quá trình thực hiện sứ mệnh lịch sử của giai cấp công nhân là', '', 'Active', 1, 4, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quá trình lâu dài diễn ra theo 2 giai đoạn', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giai đoạn đầu giai cấp công nhân phải tự tổ chức chính đảng của mình, tiến hành cuộc cách mạng giành chính quyền từ tay các giai cấp bóc lột', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giai đoạn thứ hai, giai cấp công nhân thiết lập chính quyền của mình, sử dụng nó làm công cụ để xây dựng CNXH thành công', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Các phương án đều đúng', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Mục tiêu cuối cùng của Sứ mệnh lịch sử của giai cấp công nhân là gì?', '', 'Active', 1, 4, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giành chính quyền từ tay giai cấp tư sản', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thiết lập chính quyền của giai cấp công nhân', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Xóa bỏ tận gốc chế độ người bóc lột người trên phạm vi toàn thế giới', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Xây dựng thành công Hình thái kinh tế - xã hội cộng sản chủ nghĩa nhằm xóa bỏ tận gốc chế độ người bóc lột người trên phạm vi toàn thế giới', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Về phương thức lao động, giai cấp công nhân là', '', 'Active', 1, 4, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là những người không có TLSX', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Trực tiếp hay gián tiếp vận hành các công cụ sản xuất có tính chất công nghiệp ngày càng hiện đại và có tính xã hội hóa cao', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là giai cấp đối kháng với giai cấp tư sản', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Các phương án đều đúng', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Sự ra đời Hình thái kinh tế xã hội CSCN theo dự báo của Marx và Engels gồm mấy giai đoạn?', '', 'Active', 1, 4, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Ba giai đoạn', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bốn giai đoạn', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hai giai đoạn', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Năm giai đoạn', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Trình độ tự giác của giai cấp công nhân thể hiện?', '', 'Active', 1, 4, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giai cấp công nhân nhận thức được vị trí và vai trò của mình', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tiếp thu lí luận của Chủ nghĩa Marc – Lenin', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phong trào công nhân là một phong trào chính trị', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sự ra đời của Đảng cộng sản trong phong trào công nhân', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nhà nước XHCN là …………… để giai cấp công nhân hoàn thành Sứ mệnh lịch sử của mình.', '', 'Active', 1, 4, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('nguyên nhân', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('mục tiêu', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('công cụ', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('kết quả', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Giai cấp công nhân vừa là …………… vừa là ………. của Cách mạng XHCN', '', 'Active', 1, 4, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('chủ thể/ sản phẩm', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('giai cấp tiên phong/ lực lượng cơ bản', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('giai cấp lãnh đạo/ động lực chủ yếu', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('lực lượng cơ bản/ giai cấp tiền phong', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Thực hiện sứ mệnh lịch sử của giai cấp công nhân', '', 'Active', 1, 4, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là quá trình lâu dài diễn ra theo 2 giai đoạn', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là 1 cuộc cách mạng xã hội', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhằm mục tiêu xóa bỏ tận gốc chế độ người bóc lột người', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Các phương án đều đúng', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Giai cấp công nhân là giai cấp có tính tổ chức kỉ luật cao vì', '', 'Active', 1, 4, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Họ là người bị bóc lột nặng nề nhất', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Họ là người lao động tạo ra của cải vật chất cho xã hội', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Họ là người lao động trong dây chuyền của nền đại công nghiệp', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Họ là người tạo ra giá trị thặng dư', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Sứ mệnh lịch sử của giai cấp công nhân xuất hiện một cách ….…….. song để biến khả năng thành hiện thực phải thông qua nhân tố ………… đó là việc thành lập Đảng cộng sản', '', 'Active', 1, 4, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('ngẫu nhiên/ tất nhiên', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('chủ quan/ khách quan', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('khách quan/ chủ quan', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('tất nhiên/ ngẫu nhiên', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Xã hội CSCN là giai đoạn ………. của hình thái kinh tế xã hội CSCN. Trong giai đoạn này việc phân phối dựa trên nguyên tắc ……..', '', 'Active', 1, 4, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('cao/ làm theo năng lực, hưởng theo nhu cầu', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('thấp/ làm theo năng lực, hưởng theo lao động', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('cao/ làm theo năng lực, hưởng theo lao động', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('thấp/ làm theo năng lực, hưởng theo nhu cầu', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Marx gọi giai cấp công nhân là “giai cấp vô sản” vì', '', 'Active', 1, 4, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Họ không có TLSX, muốn tồn tại họ phải bán sức lao động của mình như 1 hàng hóa cho nhà tư bản', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Họ phải gắn lao động của mình với TLSX của nhà tư bản', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lao động của họ tạo ra giá trị thặng dư', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Các phương án đều đúng', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Xã hội XHCN là giai đoạn ………. của hình thái kinh tế xã hội CSCN. Trong giai đoạn này việc phân phối dựa trên nguyên tắc ……..', '', 'Active', 1, 4, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('cao/ làm theo năng lực, hưởng theo lao động', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('thấp/ làm theo năng lực, hưởng theo nhu cầu', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('thấp/ làm theo năng lực, hưởng theo lao động', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('cao/ làm theo năng lực, hưởng theo nhu cầu', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Phạm trù cơ bản nhất của chủ nghĩa xã hội khoa học là:', '', 'Active', 1, 4, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giai cấp công nhân', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sứ mệnh lịch sử của giai cấp công nhân', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chuyên chính vô sản', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Xã hội chủ nghĩa', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Ngày nay giai cấp công nhân phải bán sức lao động chủ yếu là', '', 'Active', 1, 4, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lao động chân tay', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lao động trí óc', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cả lao động chân tay và lao động trí óc với giá trị lao động ngày càng lớn', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Các phương án đều đúng', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Điền từ còn thiếu vào chỗ trống trong câu sau “Với một Đảng cộng sản chân chính thì sự lãnh đạo của đảng cũng chính là ……………., giai cấp công nhân thực hiện sự lãnh đạo của mình thông qua Đảng cộng sản”', '', 'Active', 1, 4, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('sự lãnh đạo của số ít đối với số đông', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('sự lãnh đạo của giai cấp công nhân', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('vai trò của lãnh tụ', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('sự lãnh đạo tập thể', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Hai thuộc tính cơ bản của giai cấp công nhân là', '', 'Active', 1, 4, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đại diện cho nền đại công nghiệp/ đại diện cho QHSX đương thời', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đại diện cho LLSX tiên tiến/ có lợi ích gắn với PTSX XHCN', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đại diện cho QHSX TBCN / có lợi ích gắn với nền đại công nghiệp', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đại diện cho LLSX tiên tiến/ đại diện cho QHSX đương thời', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Vai trò của Đảng cộng sản?', '', 'Active', 1, 4, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lãnh đạo giai cấp công nhân thực hiện Sứ mệnh lịch sử của mình', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dựa trên lí luận của Chủ nghĩa Marx – Lenin và thực tiễn cách mạng mà đề ra đường lối, mục tiêu cách mạng đúng đắn', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tuyên truyền, giác ngộ giai cấp công nhân và nhân dân lao động – biến lí luận cách mạng thành phong trào cách mạng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Các phương án đều đúng', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Dưới CNTB, giai cấp công nhân', '', 'Active', 1, 4, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là con đẻ của nền đại công nghiệp', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là những người vô sản', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là giai cấp cách mạng nhất', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Các phương án đều đúng', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Giai cấp công nhân là giai cấp tiên tiến nhất vì', '', 'Active', 1, 4, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Họ là người lao động tạo ra của cải vật chất cho xã hội', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Họ là người lao động trong lĩnh vực công nghiệp có trình độ ngày càng hiện đại – gắn với LLSX tiên tiến', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Họ là người tạo ra giá trị thặng dư', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Họ là người bị bóc lột nặng nề nhất', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Về phương thức lao động, công nhân là những người', '', 'Active', 1, 4, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lao đông sản xuất ra của cải vật chất cho xã hội', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Trực tiếp hay gián tiếp vận hành các công cụ sản xuất có tính chất công nghiệp ngày càng hiện đại và có tính xã hội hóa cao', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Gián tiếp điều khiển máy móc hiện đại', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Trực tiếp vận hành máy móc thiết bị', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Hãy chọn 1 phương án đúng', '', 'Active', 1, 4, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phong trào công nhân từ khi có Đảng cộng sản chỉ nhằm những mục tiêu kinh tế', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sự đời của Đảng cộng sản làm cho chủ nghĩa Marx thâm nhập vào phong trào công nhân', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sự thâm nhập của Chủ nghĩa Marx vào phong trào công nhân dẫn đến sự ra đời của Đảng cộng sản', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đảng cộng sản là liên hiệp của các giai cấp hữu sản', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nội dung Sứ mệnh lịch sử của giai cấp công nhân là gì?', '', 'Active', 1, 4, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Xóa bỏ chế độ TBCN', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giải phóng giai cấp mình và giải phóng toàn nhân loại', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Xây dựng thành công Hình thái kinh tế - xã hội Cộng sản chủ nghĩa', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Các phương án đều đúng', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Điền từ còn thiếu vào chỗ trống trong câu sau “Đảng cộng sản Việt nam ra đời là sản phẩm của sự kết hợp của chủ nghĩa Marx – Lenin với phong trào công nhân và ………….”', '', 'Active', 1, 4, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('phong trào yêu nước chân chính', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('phong trào Cần Vương', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('phong trào dân chủ', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('chủ nghĩa yêu nước', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cách mạng XHCN là ………….. thực hiện sứ mệnh lịch sử của giai cấp công nhân.', '', 'Active', 1, 4, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('kết quả', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('mục tiêu', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('phương thức', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('con đường', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Đường lối cách mạng của đảng cộng sản được xây dựng trên cơ sở nào?', '', 'Active', 1, 4, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lí luận khoa học của Chủ nghĩa Marx – Lenin', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhu cầu của thực tiễn cách mạng ở mỗi nước trong những thời gian nhất đinh', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lí luận khoa học của Chủ nghĩa Marx – Lenin và nhu cầu thực tiễn cách mạng', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phương pháp luận khoa học của Chủ nghĩa Marx – Lenin', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cuộc cách mạng XHCN lần đầu tiên nổ ra và thắng lợi ở đâu?', '', 'Active', 1, 4, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Việt Nam', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nga', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Pháp', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Trung Quốc', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nhà nước XHCN thực hiện chức năng quản lí xã hội của mình bằng:', '', 'Active', 1, 4, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đường lối, chủ trương', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hiến pháp, Pháp luật', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thuyết phục, nêu gương', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả các phương án trên đều đúng', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Dân chủ XHCN vừa là .......... vừa là ............... của ..................', '', 'Active', 1, 4, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('mục tiêu/ động lực/ quá trình xây dựng CNXH', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('nguyên nhân/ kết quả/ quá trình xây dựng CNXH', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('động lực/ nguyên nhân/ cách mạng XHCN', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Các phương án trên đều sai', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nội dung liên minh giữa giai cấp công nhân với nông dân và các tầng lớp lao động khác bao gồm:', '', 'Active', 1, 4, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Liên minh về chính trị', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Liên minh về kinh tế', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Liên minh trong lĩnh vực văn hóa tư tưởng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Các phương án đều đúng', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Ở Việt Nam, quá độ lên CNXH bỏ qua chế độ TBCN có nghĩa là', '', 'Active', 1, 4, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bỏ qua toàn bộ hình thái kinh tế xã hội TBCN', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bỏ qua QHSX TBCN trong cơ sở hạ tầng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bỏ qua vai trò thống trị của giai cấp tư sản trong KTTT', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Các phương án đều sai', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Dân chủ là gì?', '', 'Active', 1, 4, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hệ giá trị phản ánh trình độ tiến bộ xã hội', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là 1 trong 2 mặt bản chất của nhà nước (Dân chủ/ Chuyên chính)', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là kết quả của cuộc đấu tranh chống áp bức bóc lột, bất công của nhân dân lao động', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Các phương án đều đúng', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nguyên nhân sâu xa của cách mạng xã hội chủ nghĩa là:', '', 'Active', 1, 4, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Mâu thuẫn giữa LLSX có tính xã hội hóa ngày càng cao với QHSX dựa trên sở hữu tư nhân TBCN về TLSX', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Do phong trào công nhân phát triển', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Do sự phát triển của giai cấp công nhân', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Mâu thuẫn giữa tư sản và vô sản', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nhà nước XHCN là gì?', '', 'Active', 1, 4, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là tổ chức thông qua đó Đảng của giai cấp công nhân thực hiện vai trò lãnh đạo của mình đối với toàn xã hội', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là bộ phận của kiến trúc thượng tầng XHCN', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là nhà nước kiểu mới của giai cấp công nhân và nhân dân lao động', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Các phương án đều đúng', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nhà nước XHCN là gì?', '', 'Active', 1, 4, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là hình thức chuyên chính vô sản được thực hiện trong thời kì quá độ lên CNXH', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là bộ phận của kiến trúc thượng tầng XHCN', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là nhà nước kiểu mới của giai cấp công nhân và nhân dân lao động', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Các phương án đều đúng', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Mục tiêu cuối cùng của cuộc cách mạng XHCN là gì?', '', 'Active', 1, 4, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Xóa bỏ chế độ tư hữu', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giải phóng con người, giải phóng xã hội', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giành chính quyền về tay giai cấp công nhân', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Xóa bỏ chế độ TBCN', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cuộc cách mạng dân chủ tư sản kiểu mới do giai cấp nào lãnh đạo?', '', 'Active', 1, 4, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giai cấp tư sản', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giai cấp công nhân', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tầng lớp trí thức', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giai cấp nông dân', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Để giành thắng lợi trong cách mạng XHCN, giai cấp công nhân phải liên minh chặt chẽ với giai cấp nông dân và các tầng lớp lao động khác vì:', '', 'Active', 1, 4, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đó là 1 tất yếu khách quan, nhằm tạo ra lực lượng cách mạng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là liên minh giai cấp để tiến tới xóa bỏ giai cấp', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đó là liên minh lâu dài trong suốt quá trình cách mạng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Các phương án đều đúng', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Dân chủ XHCN là', '', 'Active', 1, 4, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quyền làm chủ của nhân dân', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Một chế độ xã hội trong đó quyền lực thuộc về nhân dân', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Mục tiêu của sự phát triển xã hội', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Các phương án đều đúng', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nguyên tắc nào quyết định sự vững chắc của khối liên minh công nông và các tầng lớp lao động khác là gì?', '', 'Active', 1, 4, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đảm bảo quyền lãnh đạo của giai cấp công nhân', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đảm bảo nguyên tắc tự nguyện', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Kết hợp đúng đắn các lợi ích', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả các phương án đều đúng', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Đặc trưng nào sau đây không phải là đặc trưng của Nhà nước XHCN?', '', 'Active', 1, 4, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là công cụ thực hiện quyền lực của nhân dân dưới sự lãnh đạo của Đảng cộng sản', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là Nhà nước nửa nhà nước', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Có 2 mặt bạo lực trấn áp và tổ chức xây dựng trong đó tổ chức và xây dựng là chức năng cơ bản', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là công cụ chuyên chính của số ít đối với số đông', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cuộc cách mạng XHCN do giai cấp nào lãnh đạo?', '', 'Active', 1, 4, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giai cấp công nhân', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giai cấp tư sản', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giai cấp nông dân', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tầng lớp trí thức', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Dân chủ XHCN có cơ sở kinh tế là?', '', 'Active', 1, 4, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chế độ công hữu về TLSX chủ yếu', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sự kết hợp hài hòa các lợi ích', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhân dân tham gia vào công việc của nhà nước', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quyền lực nhà nước thuộc về nhân dân', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nội dung của cách mạng XHCN trên lĩnh vực chính trị là:', '', 'Active', 1, 4, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phát triển kinh tế, nâng cao đời sống nhân dân', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đưa nhân dân lao động lên địa vị làm chủ xã hội', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nâng cao trình độ văn hóa cho nhân dân', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giành chính quyền từ tay các giai cấp thống trị', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nhà nước XHCN giống các nhà nước trước đây trong lịch sử ở đặc trưng nào sau đây', '', 'Active', 1, 4, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là công cụ thực hiện quyền lực của nhân dân dưới sự lãnh đạo của Đảng cộng sản', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là chuyên chính cách mạng của giai cấp vô sản', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là nhà nước “nửa nhà nước”', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là công cụ chuyên chính của 1 giai cấp', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cơ sở khách quan của việc xây dựng khối liên minh giữa giai cấp công nhân với giai cấp nông dân và các tầng lớp lao động khác trong cách mạng XHCN là', '', 'Active', 1, 4, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Họ đều là người lao động, đều bị áp bức bóc lột', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Do sự gắn bó tự nhiên giữa nông nghiệp với công nghiệp và các ngành dịch vụ cho sản xuất', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Họ đều có nhu cầu giải phóng mình và giải phóng xã hội', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Các phương án đều đúng', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Phạm trù dân chủ xuất hiện khi nào?', '', 'Active', 1, 4, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Từ khi có giai cấp công nhân', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Từ khi có xã hội loài người', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Từ khi có Đảng cộng sản', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Từ khi có nhà nước', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nhà nước XHCN có chức năng nào sau đây?', '', 'Active', 1, 4, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lãnh đạo toàn bộ xã hội', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tập hợp, đoàn kết mọi tầng lớp nhân dân tham gia vào sự nghiệp cách mạng XHCN', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tổ chức và quản lí mọi hoạt động của xã hội bằng pháp luật', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Các phương án đều đúng', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Trong 2 giai đoạn của quá trình thực hiện sứ mệnh lịch sử của giai cấp công nhân, chính quyền nhà nước là', '', 'Active', 1, 4, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Mục tiêu của giai đoạn 2/ công cụ của giai đoạn 1', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Mục tiêu của giai đoạn 1/ công cụ của giai đoạn 2', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đều là phương tiện để tiến hành cách mạng của giai cấp công nhân', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Mục tiêu của cả 2 giai đoạn', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Giai cấp công nhân có khả năng đoàn kết với các giai cấp và tầng lớp lao động khác vì:', '', 'Active', 1, 4, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giai cấp công nhân là giai cấp đại diện cho PTSX mới của thời đại', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Họ đều mâu thuẫn với giai cấp tư sản', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Họ đều bị bóc lột giá trị thặng dư', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Họ có lợi ích cơ bản thống nhất với nhau', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Ở Việt Nam, lựa chọn sự quá độ đi lên CNXH bỏ qua chế độ TBCN là một tất yếu vì:', '', 'Active', 1, 4, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Xuất phát từ mong muốn chủ quan của Đảng cộng sản', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Xã hội XHCN là 1 tất yếu của lịch sử', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là sự lựa chọn phù hợp với quy luật khách quan của lịch sử, phù hợp với lợi ích của nhân dân lao động và lợi ích của dân tộc Việt Nam', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Các phương án đều đúng', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Để giành thắng lợi trong cách mạng XHCN, giai cấp công nhân phải liên minh chặt chẽ với giai cấp nông dân và các tầng lớp lao động khác vì:', '', 'Active', 1, 4, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đó là 1 tất yếu khách quan, nhằm tạo ra lực lượng cách mạng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là liên minh giai cấp để tiến tới xóa bỏ giai cấp', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đó là liên minh lâu dài trong suốt quá trình cách mạng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Các phương án đều đúng', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tổ chức nào đóng vai trò trụ cột trong hệ thống chính trị ở nước ta hiện nay?', '', 'Active', 1, 4, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đảng cộng sản', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước XHCN', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Các đoàn thể của nhân dân', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Mặt trận tổ quốc', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Dân chủ XHCN khác căn bản các nền dân chủ trước đây ở đặc điểm nào?', '', 'Active', 1, 4, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là nền dân chủ rộng rãi của giai cấp công nhân và nhân dân lao động', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Không mang tính giai cấp', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thuần túy', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phi lịch sử', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Phương thức xây dựng nền văn hoá xã hội chủ nghĩa là', '', 'Active', 1, 4, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tăng cường và giữ vững vai trò chủ đạo của hệ tư tưởng của giai cấp công nhân', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nâng cao vai trò lãnh đạo của Đảng và vai trò quản lí của nhà nước XHCN về văn hóa', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Kế thừa những giá trị truyền thống và tiếp thu những tinh hoa văn hóa nhân loại thông qua hoạt động văn hóa của quần chúng nhân dân', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Các phương án đều đúng', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Văn hóa là gì?', '', 'Active', 1, 4, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Toàn bộ những giá trị vật chất và tinh thần do con người sáng tạo ra trong quá trình hoạt động thực tiễn', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là biểu hiện trình độ phát triển của xã hội', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Có tính giai cấp, có tính kế thừa', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Các phương án đều đúng', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Ở Việt nam hiện nay có bao nhiêu dân tộc anh em cùng sinh sống?', '', 'Active', 1, 4, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('56', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('52', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('54', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('45', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Câu nói “Muốn cứu nước giải phóng dân tộc không có con đường nào khác con đường cách mạng vô sản” là của ai?', '', 'Active', 1, 4, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phan Chu Trinh', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hồ Chí Minh', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lý Thường Kiệt', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phan Bội Châu', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Luận điểm “Tôn giáo là thuốc phiện của nhân dân” (K.Marx) nói đến tính chất nào của tôn giáo?', '', 'Active', 1, 4, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tính tích cực của đạo đức tôn giáo', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tính khoa học', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tính tiêu cực', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tính hoang đường', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Theo quan điểm của Chủ nghĩa Marx – Lenin, Dân tộc và quốc gia là', '', 'Active', 1, 4, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hai khái niệm độc lập', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là hai khái niệm tách rời nhau', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dân tộc là bộ phận của quốc gia', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đều chỉ những cộng đồng người cụ thể', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Việc xem xét và giải quyết vấn đề tôn giáo phải phân biệt hai mặt chính trị và tư tưởng của tôn giáo vì', '', 'Active', 1, 4, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Mặt tư tưởng là biểu hiện nhu cầu tín ngưỡng của nhân dân – cần được tôn trọng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Mặt chính trị của tôn giáo thường bị các thế lực thù địch lợi dụng để chống phá sự nghiệp xây dựng CNXH – cần nhận dạng đúng bản chất của các hiện tượng cụ thể', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Xử lí các vấn đề tôn giáo phải trên cơ sở pháp luật', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Các phương án trên đều đúng', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tư tưởng “Liên hiệp công nhân tất cả các dân tộc” trong cương lĩnh dân tộc của Chủ nghĩa Marx – Lenin thể hiện', '', 'Active', 1, 4, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Vai trò lãnh đạo của giai cấp công nhân', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bản chất quốc tế của giai cấp công nhân', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tính tiên phong của giai cấp công nhân', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sự đoàn kết của giai cấp công nhân', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Quan điểm của Chủ nghĩa Marx – Lenin cho rằng Xem xét và giải quyết vấn đề dân tộc phải đứng vững trên lập trường giai cấp công nhân vì', '', 'Active', 1, 4, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lợi ích lâu dài và cơ bản của dân tộc và lợi ích giai cấp công nhân là thống nhất với nhau', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Vì lợi ích dân tộc', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lợi ích của giai cấp công nhân', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lợi ích của Đảng cộng sản', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Quan điểm của Chủ nghĩa Marx – Lenin cho rằng', '', 'Active', 1, 4, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tôn giáo chỉ có tính tiêu cực mà thôi', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tôn giáo đối lập với CNXH', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tôn giáo còn tồn tại lâu dài và trong quá trình xây dựng XHCN tôn giáo cũng có những thay đổi. Phải thực hiện đoàn kết tôn giáo, tôn trọng tự do tín ngưỡng của nhân dân để tiến hành xây dựng XHCN', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tôn giáo sẽ mất đi khi giai cấp công nhân có chính quyền trong tay', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Theo quan điểm của chủ nghĩa Marx - Lenin, tôn giáo là', '', 'Active', 1, 4, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sự phản ánh hư ảo hiện thực', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là “tiếng thở dài của chúng sinh bị áp bức”', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bộ phận đời sống tinh thần của nhân dân', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Các phương án đều đúng', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tìm phương án sai: Lối sống XHCN là', '', 'Active', 1, 4, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Một đặc trưng của văn hóa XHCN', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tự phát, hình thành trong quá trình sống của con người', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thể hiện trong nhân cách, hành vi của con người mới XHCN', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Một đặc điểm của con người XHCN', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Quá trình cách mạng Việt Nam đã thể hiện hai xu hướng của vấn đề dân tộc như thế nào?', '', 'Active', 1, 4, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cách mạng tháng 8/1945 thành công', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tham gia tích cực vào ASEAN, APEC, WTO...', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Kháng chiến chống Mĩ thắng lợi – Chiến dịch Hồ Chí Minh toàn thắng 30/4/1975', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả các phương án trên đều đúng', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Văn hóa XHCN không có những đặc trưng nào sau đây', '', 'Active', 1, 4, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Có tính nhân dân rộng rãi và tính dân tộc sâu sắc', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hệ tư tưởng của giai cấp công nhân là nội dung cốt lõi', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hình thành và phát triển tự giác', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Xa rời ý thức hệ của giai cấp công nhân', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nội dung cương lĩnh dân tộc của Chủ nghĩa Marx – Lenin bao gồm:', '', 'Active', 1, 4, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Các dân tộc hoàn toàn bình đẳng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Các dân tộc được quyền tự quyết', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Liên hiệp công nhân tất cả các dân tộc lại', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả các phương án đều đúng', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tôn giáo có hai mặt là:', '', 'Active', 1, 4, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhu cầu tinh thần của nhân dân và tín ngưỡng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đạo đức và hướng thiện', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Khoa học và tính cực', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chính trị và tư tưởng', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nội dung cơ bản của quá trình xây dựng nền văn hóa xã hội chủ nghĩa là gì?', '', 'Active', 1, 4, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phát huy nguồn lực con người', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nâng cao dân trí, hình thành đội ngũ trí thức của XH mới', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Xây dựng lối sống mới XHCN', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Xây dựng gia đình văn hóa mới', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Các phương án trên đều đúng', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nguyên tắc cơ bản của chủ nghĩa Marx - Lenin trong việc giải quyết vấn đề dân tộc là', '', 'Active', 1, 4, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bảo vệ chủ quyền và lợi ích dân tộc', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đoàn kết các dân tộc', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đứng vững trên lập trường giai cấp công nhân', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Xác lập quyền bình đẳng giữa các dân tộc', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Dự báo của Lenin về hai xu hướng phát triển của vấn đề dân tộc là', '', 'Active', 1, 4, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Các dân tộc ý thức về chủ quyền của mình đấu tranh giành quyền độc lập dân tộc', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Các dân tộc liên kết lại với nhau vì lợi ích, vì sự phát triển của dân tộc mình', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Các dân tộc đối thoại với nhau trong quan hệ ngoại giao', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A và B', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Đặc trưng quan trọng nhất của quan hệ giữa các dân tộc ở Việt nam là', '', 'Active', 1, 4, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sự phân bố đan xen lẫn nhau', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đa dạng về bản sắc văn hóa', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chênh lệch về trình độ phát triển kinh tế', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tinh thần đoàn kết, hòa hợp dân tộc', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Độc quyền là sự liên minh giữa các doanh nghiệp có khả năng:', '', 'Active', 1, 4, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quyết định lĩnh vực sản xuất', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quyết định lĩnh vực tiêu thụ', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Định ra giá cả độc quyền nhằm thu lợi nhuận độc quyền cao', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A, B và C', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('B và C', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nội dung nào sau đây phản ánh đặc trưng về mục tiêu của nền kinh tế thị trường định hướng XHCN ở VN:', '', 'Active', 1, 5, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phát triển nền nông nghiệp truyền thống', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Vừa phát triển kinh tế, vừa từng bước nâng cao đời sống nhân dân', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Ưu tiên cho nhiệm vụ phát triển quốc phòng, bảo vệ đất nước', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phát triển kinh tế hiện đại trước, sau đó giải quyết vấn đề nâng cao đời sống nhân dân', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hướng nền kinh tế đến mô hình thị trường tự do', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Độc quyền hình thành do các nguyên nhân:', '', 'Active', 1, 4, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhu cầu vốn lớn và cạnh tranh gay gắt', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tiến bộ KHKT và công nghệ', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Các cuộc khủng hoảng kinh tế và thay đổi cơ cấu sản xuất', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sự phát triển của hệ thống tín dụng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả các nguyên nhân trên', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tư bản độc quyền nhà nước là:', '', 'Active', 1, 4, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quá trình Nhà nước bị độc quyền hóa theo lối tư bản', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sự thể hiện sức mạnh của Nhà nước so với tư bản độc quyền', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sự liên kết giữa tư bản tư nhân và tư bản nhà nước', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sự chiếm hữu của Nhà nước đối với các tư bản độc quyền', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sự liên kết sức mạnh giữa tư bản độc quyền và Nhà nước', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Những hình thức biểu hiện cụ thể của tư bản độc quyền nhà nước là:', '', 'Active', 1, 4, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Kết hợp về mặt nhân sự giữa bộ máy nhà nước và tư bản độc quyền', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hình thành và phát triển sở hữu nhà nước', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hình thành và phát triển khu vực kinh tế nhà nước', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A, B và C', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('B và C', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Kết luận nào sau đây thể hiện rõ bản chất của tư bản độc quyền nhà nước:', '', 'Active', 1, 4, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tư bản độc quyền phải phục vụ lợi ích của Nhà nước', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước đứng ngoài lĩnh vực kinh tế', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước phụ thuộc và bảo vệ lợi ích của tư bản độc quyền', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước không sở hữu tài sản và không có khu vực kinh tế của riêng mình', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tư bản tài chính là sự liên minh:', '', 'Active', 1, 4, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giữa các độc quyền sản xuất và các độc quyền thương nghiệp với nhau', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giữa Nhà nước và các độc quyền ngân hàng với nhau', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giữa các độc quyền tư bản công nghiệp với nhau', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giữa các độc quyền ngân hàng với nhau', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giữa các độc quyền ngân hàng và độc quyền công nghiệp với nhau', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Trong điều kiện của CNTB độc quyền:', '', 'Active', 1, 4, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thị trường thế giới là thống nhất', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hình thành xu hướng liên kết thị trường từng hàng hóa riêng biệt', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thị trường tồn tại độc lập trong từng nước tư bản', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thị trường thế giới do một số nước khống chế', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thị trường thế giới bị phân chia bởi các độc quyền tư bản lớn', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Độc quyền có thể gây ra những tác động nào sau đây:', '', 'Active', 1, 4, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tăng nhanh năng suất lao động xã hội', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giảm sút năng suất lao động xã hội', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Làm tăng sự phân hóa giàu – nghèo trong xã hội', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A và C', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('B và C', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tác động nào sau đây được thể hiện trong điều kiện thống trị của tư bản độc quyền nhà nước:', '', 'Active', 1, 4, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước không có khả năng thực hiện chính sách thực dân hóa', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước không tham gia đầu tư vào các lĩnh vực kinh tế', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước chỉ điều tiết bằng các chính sách trong lĩnh vực xã hội', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Mâu thuẫn xã hội ngày càng gay gắt', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước chỉ điều tiết kinh tế bằng luật pháp và chính sách', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Những khả năng nào sau đây xảy ra do tác động của độc quyền:', '', 'Active', 1, 4, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tạo sức mạnh kinh tế cho sản xuất lớn phát triển', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tạo khả năng cho việc phát triển nghiên cứu và ứng dụng các thành tựu của KHKT và công nghệ', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Kìm hãm tiến bộ kỹ thuật nhằm duy trì vị thế độc quyền', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('B và C', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A, B và C', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Những tác động nào sau đây được coi là tác động tích cực về mặt kinh tế của CNTB:', '', 'Active', 1, 4, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nâng cao mức sống vật chất và tinh thần của người dân', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thúc đẩy quá trình quốc tế hóa và toàn cầu hóa nền kinh tế', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thúc đẩy lực lượng sản xuất phát triển', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A và B', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('B và C', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Mâu thuẫn nào sau đây thể hiện giới hạn lịch sử của CNTB:', '', 'Active', 1, 4, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Mâu thuẫn giữa tư bản và lao động', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Mâu thuẫn giữa cá nhân và nhà nước', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Mâu thuẫn giữa cạnh tranh và độc quyền', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Mâu thuẫn giữa con người với thiên nhiên', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Những tác động nào sau đây có thể coi là tác động tích cực về mặt xã hội của CNTB:', '', 'Active', 1, 4, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Xã hội hóa nền sản xuất', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Xây dựng hệ thống bảo hiểm và phúc lợi xã hội cho người lao động', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Làm hình thành nền kinh tế quốc tế hóa và toàn cầu hóa', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thúc đẩy quá trình phát triển của lực lượng sản xuất xã hội', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phát triển nền kinh tế thị trường hiện đại', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Xuất khẩu tư bản là:', '', 'Active', 1, 4, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Xuất khẩu hàng hóa giữa các nước tư bản', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Xuất khẩu vốn ra nước ngoài nhằm tìm kiếm lợi nhuận cao', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Xuất khẩu kỹ thuật và công nghệ giữa các nước tư bản', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Xuất khẩu tiền tệ giữa các nước tư bản', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Biểu hiện đặc trưng nhất của tư bản độc quyền nhà nước là:', '', 'Active', 1, 4, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sự điều tiết kinh tế của nhà nước ở tầm vĩ mô', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quyền lực lớn của nhà nước trong việc chi phối quá trình cạnh tranh của các độc quyền', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sự lấn át của kinh tế nhà nước so với khu vực kinh tế tư nhân', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sự chiếm hữu tài sản lớn của nhà nước trong nền kinh tế', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sự mở rộng quy mô khu vực kinh tế nhà nước', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Trong hoạt động của tư bản tài chính:', '', 'Active', 1, 4, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tư bản ngân hàng phụ thuộc tư bản công nghiệp', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tư bản công nghiệp có khả năng chi phối nền kinh tế', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tư bản công nghiệp phụ thuộc tư bản ngân hàng', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tư bản ngân hàng độc lập với tư bản công nghiệp', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Độc quyền bắt đầu xuất hiện trong khoảng thời gian:', '', 'Active', 1, 4, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đầu thế kỷ XIX', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đầu thế kỷ XVIII', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cuối thế kỷ XIX - Đầu thế kỷ XX', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cuối thế kỷ XVIII', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nội dung nào sau đây thể hiện rõ nhất đặc trưng của nền kinh tế thị trường định hướng XHCN ở VN:', '', 'Active', 1, 5, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phát triển kinh tế và xây dựng quốc phòng vững mạnh', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Khuyến khích các chủ thể kinh tế làm giàu hợp pháp', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tăng trưởng kinh tế cao và liên tục', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phát triển kinh tế và xây dựng xã hội công bằng, dân chủ, văn minh', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đẩy mạnh xuất khẩu hàng hóa ra nước ngoài và hội nhập kinh tế quốc tế', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Những nội dung nào sau đây ứng với đặc điểm của kinh tế thị trường định hướng XHCN ở Việt Nam:', '', 'Active', 1, 5, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Vận hành theo cơ chế thị trường, hướng tới mục tiêu dân giàu, nước mạnh, dân chủ, công bằng, văn minh', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Vận hành theo cơ chế kế hoạch hóa tập trung', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Có sự điều tiết của Nhà nước do Đảng cộng sản lãnh đạo', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A và B', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A và C', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cách mạng công nghiệp lần thứ nhất có những đặc điểm nào sau đây:', '', 'Active', 1, 6, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bắt đầu ở Mỹ trong khoảng giữa thế kỷ XVII', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Diễn ra ở nước Anh, sau đó lan sang các nước châu Âu trong khoảng giữa thế kỷ XVIII – giữa thế kỷ XIX', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dựa trên tiền đề là các phát minh thoi dệt máy, máy hơi nước, lò luyện kim kiểu mới, phương tiện vận tải mới như tàu thủy, tàu hỏa…', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A, B và C', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('B và C', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Quan hệ lợi ích kinh tế được thực hiện bằng phương thức nào sau đây:', '', 'Active', 1, 5, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Theo các nguyên tắc của kinh tế thị trường', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Theo các chính sách của Nhà nước', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thông qua các tổ chức xã hội', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả các phương án trên', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nội dung nào sau đây không liên quan đến vấn đề hoàn thiện thể chế kinh tế thị trường định hướng XHCN ở VN:', '', 'Active', 1, 5, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hoàn thiện thể chế phát triển đồng bộ các loại thị trường', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hoàn thiện thể chế xây dựng nền quốc phòng toàn dân', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hoàn thiện thể chế phát triển động bộ các yếu tố thị trường', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hoàn thiện thể chế phát triển quan hệ kinh tế quốc tế', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hoàn thiện thể chế sở hữu và các thành phần kinh tế', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cùng nhằm điều chỉnh hoạt động của con người, song sự khác biệt cơ bản giữa thể chế nói chung và thể chế kinh tế thuộc về:', '', 'Active', 1, 5, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đối tượng điều chỉnh', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lĩnh vực điều chỉnh', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thời hạn điều chỉnh', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quy mô điều chỉnh', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phạm vi điều chỉnh', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nội dung “Thể chế hóa đầy đủ và bảo đảm về mặt luật pháp các quyền về tài sản của mọi chủ thể kinh tế” là nội dung của việc hoàn thiện thể chế về sở hữu và các thành phần kinh tế.', '', 'Active', 1, 5, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đúng', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sai', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Những lý do nào sau làm cho quá trình công nghiệp hóa, hiện đại hóa ở VN trở thành tất yếu khách quan:', '', 'Active', 1, 6, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Xây dựng cơ sở vật chất – kỹ thuật cho nền sản xuất lớn hiện đại', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('VN chưa trải qua giai đoạn phát triển TBCN', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhu cầu bảo vệ chủ quyền lãnh thổ và an ninh xã hội', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả các phương án trên', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khi nói về các tác động tiêu cực của hội nhập kinh tế quốc tế, điều nào sau đây là không đúng:', '', 'Active', 1, 6, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tình trạng ô nhiễm môi trường gia tăng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tạo ra sự phụ thuộc ngày càng lớn vào nền kinh tế thế giới', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nguy cơ chảy máu tài nguyên, chảy máu chất xám ra nước ngoài', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nguy cơ làm tăng sự bất bình đẳng với các nền kinh tế lớn', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Làm tăng khả năng cạnh tranh của hàng hóa và dịch vụ trong nước', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Hoàn thiện thể chế kinh tế thị trường ở VN bao gồm những nội dung nào sau đây:', '', 'Active', 1, 5, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hoàn thiện chính sách thúc đẩy tăng trưởng kinh tế', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hoàn thiện chính sách bảo đảm tính chất bình đẳng và công bằng về cơ hội hưởng thụ cho các thành viên xã hội', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hoàn thiện chính sách chủ động hội nhập kinh tế quốc tế và tham gia toàn cầu hóa', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả các phương án trên', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nội dung cơ bản của cách mạng công nghiệp lần thứ nhất là:', '', 'Active', 1, 6, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thúc đẩy sản xuất theo dây chuyền đồng loạt', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chế tạo ô tô hàng loạt', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phát triển các công nghệ hiện đại trong xây dựng và giao thông', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thay thế lao động thủ công bằng lao động máy móc, kỹ thuật thủ công bằng kỹ thuật cơ khí', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Biến nông nghiệp nhỏ thành nông nghiệp lớn', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nội dung nào sau đây không nằm trong phương hướng nâng cao hiệu quả của hội nhập kinh tế quốc tế ở VN:', '', 'Active', 1, 6, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chủ động tham gia các liên kết khu vực và liên kết quốc tế', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Xây dựng chiến lược và lộ trình hội nhập kinh tế quốc tế', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nâng cao nhận thức về cơ hội và thách thức của hội nhập kinh tế quốc tế', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hoàn thiện thể chế kinh tế và hệ thống luật pháp tương thích với quá trình hội nhập', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tăng cường nhập khẩu lao động từ nước ngoài', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nhân tố nào sau đây không phải là tiền đề cho quá trình công nghiệp hóa:', '', 'Active', 1, 6, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thể chế chính trị', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Khả năng sử dụng kỹ thuật và công nghệ mới', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nguồn nhân lực', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Khả năng tạo vốn', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Các cuộc cách mạng công nghiệp nói chung mang lại những tác động tích cực nào sau đây:', '', 'Active', 1, 6, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thúc đẩy lực lượng sản xuất phát triển nhanh chóng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hoàn thiện các quan hệ sản xuất xã hội', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thay đổi mạnh mẽ các phương thức quản trị sản xuất và quản lý xã hội', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả các phương án trên', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Lợi ích là một phạm trù phản ánh:', '', 'Active', 1, 5, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sự hài lòng của con người về một vấn đề cụ thể nào đó', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sự phát triển về chất lượng các dịch vụ thỏa mãn nhu cầu vật chất của con người', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tổng hợp các nhu cầu mà con người mong muốn đạt tới', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sự quan tâm của Nhà nước tới nhu cầu của con người', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sự thỏa mãn nhu cầu của con người', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nội dung nào sau đây không thuộc vai trò của Nhà nước trong việc bảo đảm sự hài hòa các quan hệ lợi ích kinh tế:', '', 'Active', 1, 5, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tạo môi trường thuận lợi cho các chủ thể tìm kiếm lợi ích hợp pháp', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giải quyết các mâu thuẫn phát sinh về lợi ích giữa các chủ thể kinh tế', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hướng dẫn các doanh nghiệp và cá nhân tìm kiếm cách thức đạt được lợi ích của mình', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Điều hòa lợi ích giữa các cá nhân, doanh nghiệp và xã hội', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Kiểm soát, ngăn chặn các lợi ích bất hợp pháp', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khi nói về lợi ích kinh tế, điều nào sau đây là đúng:', '', 'Active', 1, 5, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bản chất của lợi ích kinh tế phản ánh mục đích và động cơ hoạt động kinh tế', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quy mô hoạt động càng lớn, lợi ích kinh tế đạt được càng lớn', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lợi ích kinh tế do các lợi ích khác của con người chi phối', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lợi ích kinh tế vận động độc lập với chủ thể kinh tế', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Để đạt lợi ích kinh tế, chủ thể kinh tế không nhất thiết phải hoạt động kinh tế', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Quan hệ nào sau đây không thuộc biểu hiện cụ thể của quan hệ lợi ích kinh tế:', '', 'Active', 1, 5, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quan hệ giữa các cơ quan chức năng của Nhà nước với nhau', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quan hệ giữa chủ doanh nghiệp này với chủ doanh nghiệp khác', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quan hệ giữa chủ doanh nghiệp và người lao động', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khi nói về lợi ích kinh tế, điều nào sau đây là không đúng:', '', 'Active', 1, 5, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lợi nhuận là biểu hiện trực tiếp lợi ích kinh tế của người chủ doanh nghiệp', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tiền công là biểu hiện trực tiếp lợi ích kinh tế của người lao động', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lợi ích kinh tế là động lực trực tiếp của hoạt động kinh tế', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước là một chủ thể đứng ngoài lợi ích kinh tế', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A, B và C', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Điều nào sau đây không đúng khi nói về cuộc Cách mạng công nghiệp lần thứ tư:', '', 'Active', 1, 6, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Làm thay đổi tận gốc tư duy của con người về mọi lĩnh vực', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Dựa trên tiền đề kỹ thuật số', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Diễn ra từ cuối thế kỷ XX và hiện nay vẫn đang tiếp diễn', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Diễn ra ở tất cả các nước, không phân biệt nước giàu – nước nghèo, nước hiện đại – nước lạc hậu', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Diễn ra trong khoảng cuối thế kỷ XX – Đầu thế kỷ XXI', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cách mạng công nghiệp lần thứ ba:', '', 'Active', 1, 6, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Diễn ra trong khoảng đầu thế kỷ XX, dựa trên tiền đề phát minh ra máy bay', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Diễn ra trong khoảng đầu thập niên 60 của thế kỷ XX – Cuối thế kỷ XX', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phát minh máy tính điện tử và công nghệ thông tin làm thay đổi toàn bộ kỹ thuật sản xuất và phương pháp quản lý', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('A và C', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('B và C', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tác động nào dưới đây không diễn ra trong cách mạng công nghiệp lần thứ hai:', '', 'Active', 1, 6, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chế tạo và sử dụng động cơ đốt trong', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sản xuất giấy và kỹ thuật in ấn hiện đại', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chế tạo ô tô', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sử dụng các phương pháp luyện kim tiên tiến', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phát minh máy tính điện tử', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Việc hoàn thiện thể chế về sở hữu và các thành phần kinh tế bao gồm những nội dung nào sau đây:', '', 'Active', 1, 5, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hoàn thiện pháp luật về đất đai', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hoàn thiện pháp luật về sử dụng tài sản công', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hoàn thiện pháp luật về quản lý, khai thác tài nguyên thiên nhiên', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả các phương án trên', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nội dung nào sau đây không phản ánh đặc trưng của cách mạng công nghiệp:', '', 'Active', 1, 6, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Các phát minh đột phá về kỹ thuật và công nghệ', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sự phát triển nhảy vọt về chất của các tư liệu lao động', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Năng suát lao động tăng nhanh chóng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bộ máy nhà nước thay đổi', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thay đổi căn bản về phân công lao động xã hội', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Hội nhập kinh tế quốc tế là một tất yếu khách quan đối với VN vì:', '', 'Active', 1, 6, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Xu thế khách quan của quá trình quốc tế hóa và toàn cầu hóa lôi cuốn', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phù hợp với con đường thoát khỏi nghèo nàn, lạc hậu', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tận dụng được các thành tựu tiến bộ của thế giới về mọi mặt', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Mở rộng thị trường cho hàng hóa và dịch vụ của VN', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả các lý do trên', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khi nói về các tác động tích cực của hội nhập kinh tế quốc tế, điều nào sau đây là không đúng:', '', 'Active', 1, 6, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tình trạng ô nhiễm môi trường gia tăng', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tạo ra sự phụ thuộc ngày càng lớn vào nền kinh tế thế giới', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Làm tăng khả năng cạnh tranh của hàng hóa và dịch vụ trong nước', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nguy cơ chảy máu tài nguyên, chảy máu chất xám ra nước ngoài', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nguy cơ làm tăng sự bất bình đẳng với các nền kinh tế lớn', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Những nhân tố nào sau đây làm tăng quy mô tích lũy tư bản?', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nâng cao tỷ suất giá trị thặng dư và năng suất lao động.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sử dụng hiệu quả máy móc.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đại lượng tư bản ứng trước.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả các nhân tố trên.', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tư bản cho vay là gì ?', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tư bản mang hình thái hàng hoá.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tư bản thuộc sở hữu của người sử dụng.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là tư bản tiền tệ tạm thời nhàn rỗi mà khi đưa cho người khác sử dụng thì thu được lợi tức.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là tư bản đầu tư thêm vào sản xuất để từ đó nhận được cả lợi tức lẫn lợi nhuận trong khi không phải trực tiếp quản lý công việc kinh doanh.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nguồn gốc của lợi tức?', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là một phần của giá trị thặng dư được tạo ra từ sản xuất.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là do tuần hoàn của tư bản tiền tệ và sinh ra theo công thức T - T &#039; .', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là do lao động thặng dư của công nhân viên ngành ngân hàng tạo ra.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là giá trị thặng dư do một loại hàng hoá đặc biệt là tiền tệ tạo ra.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nguồn gốc của lợi nhuận thương nghiệp là gì?', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bán hàng hoá với giá cả cao hơn giá trị.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quay vòng vốn nhanh nên thu được lợi nhuận.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phần giá trị thặng dư được tạo ra từ sản xuất mà các tư bản sản xuất nhường cho tư bản thương nghiệp.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lừa đảo trong quá trình mua bán hàng hoá.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nhà tư bản công nghiệp nhường một phần giá trị thặng dư cho nhà tư bản thương nghiệp bằng cách nào ?', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bán cho nhà tư bản thương nghiệp bằng chi phí sản xuất để họ bán theo giá trị.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bán cho nhà tư bản thương nghiệp bằng giá cả sản xuất thấp hơn giá cả thị trường.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bán cho nhà tư bản thương nghiệp thấp hơn giá cả sản xuất để họ bán theo giá cả sản xuất.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bán cho nhà tư bản thương nghiệp bằng giá cả thị trường để họ tuỳ ý nâng giá bán.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nguyên nhân cơ bản làm cho tư bản cố định hao mòn hữu hình là gì?', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Ứng dụng tiến bộ khoa học kỹ thuật mới.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cung lớn hơn cầu về tư bản cố định.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tăng năng suất lao động trong ngành chế tạo máy.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Do sử dụng và do tác động của thiên nhiên.', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Thời gian của một vòng chu chuyển tư bản bao gồm những thời gian nào?', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thời gian mua và thời gian bán.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thời kỳ làm việc, thời kỳ gián đoạn sản xuất và thời kỳ dự trữ sản xuất.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thời gian sản xuất và thời gian bán hàng.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thời gian sản xuất và thời gian lưu thông.', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Biện pháp chủ yếu để khôi phục lại tư bản cố định đã hao mòn?', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tăng chi phí bảo dưỡng, sửa chữa.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tăng vòng quay của tư bản đầu tư.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thành lập quỹ khấu hao tư bản cố định.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nắm vững hai loại hao mòn hữu hình và vô hình tư bản cố định.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Giải pháp quan trọng nhất để giảm thời gian sản xuất, tăng tốc độ chu chuyển của tư bản là gì?', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sử dụng nguồn lao động có tay nghề thành thạo.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sử dụng máy móc thiết bị công nghệ hiện đại.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cải tiến, thay đổi các biện pháp tổ chức quản lý sản xuất.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Có chính sách thưởng, phạt hợp lý đối với người lao động.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Căn cứ để phân chia tư bản thành tư bản cố định và tư bản lưu động là gì?', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Việc xác định nguồn gốc cuối cùng của giá trị thặng dư.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phương thức chu chuyển giá trị của tư bản cố định và tư bản lưu động .', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phương thức khấu hao tư bản cố định trong quá trình tái sản xuất.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tốc độ chu chuyển của tư bản.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nhân tố chủ yếu ảnh hưởng đến tốc độ chu chuyển của tư bản là gì?', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thời gian sản xuất dài hay ngắn trong một vòng tuần hoàn.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thời gian tồn tại của tư bản cố định trong một vòng tuần hoàn.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thời gian sản xuất và thời gian lưu thông để thực hiện một vòng tuần hoàn.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thời gian bán hàng hoá để thu về giá trị thặng dư và thời gian mua hàng hoá để tiếp tục vòng tuần hoàn.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tuần hoàn của tư bản là gì?', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sự vận động liên tục của tư bản tiền tệ của các nhà tư bản.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sự vận động liên tục của tư bản tiền tệ sang hình thức tư bản sản xuất và tư bản hàng hoá.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sự vận động liên tục của tư bản qua các hình thức khác nhau để trở về hình thái ban đầu với lượng giá trị lớn hơn.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sự vận động liên tục của tư bản cố định và tư bản lưu động.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Điều kiện để tư bản tuần hoàn một cách bình thường là gì?', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Ba loại tư bản tồn tại trong cùng một giai đoạn.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tồn tại cùng một lúc ba hình thức tư bản.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Không cần tồn tại cùng một lúc ba hình thức tư bản.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Ba hình thức tư bản cùng tồn tại và tuần hoàn liên tục trong cả ba giai đoạn.', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Địa tô tư bản chủ nghĩa là gì ?', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Một phần của giá trị thặng dư trong nông nghiệp.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sản phẩm thặng dư và cả một phần sản phẩm tất yếu do công nhân nông nghiệp tạo ra bị chủ ruộng chiếm đoạt.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Toàn bộ giá trị thặng dư do công nhân nông nghiệp tạo ra.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Một phần giá trị thặng dư mà tư bản nông nghiệp trích trong lợi nhuận bình quân của mình để trả cho chủ ruộng đất.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tập trung tư bản là gì?', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là tư bản hóa giá trị thặng dư.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là hợp nhất các nhà tư bản cá biệt lại với nhau.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là quá trình liên kết giữa TB sản xuất và TB thương nghiệp.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là mở rộng sản xuất trên cơ sở tín dụng.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tích tụ tư bản là gì?', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Mở rộng sản xuất bằng cách tư bản hóa giá trị thặng dư.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sát nhập các xí nghiệp lại với nhau.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Mở rộng sản xuất trên cơ sở tín dụng.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Mở rộng sản xuất trên cơ sở thôn tính đối thủ cạnh tranh.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Bản chất của tích lũy tư bản là gì?', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là việc sát nhập các nhà tư bản lại với nhau.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là tư bản hóa giá trị thặng dư.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là địa tô được tư bản hóa.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là vay thêm tiền để mở rộng quy mô sản xuất.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tiền công trong CNTB là gì?', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Số tiền mà nhà tư bản đã trả để đổi lấy toàn bộ số lượng lao động mà người công nhân đã bỏ ra khi tiến hành sản xuất.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Số tiền mà chủ tư bản đã trả công lao động cho người làm thuê.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giá cả lao động của người công nhân làm thuê được thể hiện bằng tiền.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sự biểu hiện bằng tiền của giá trị hàng hóa sức lao động.', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Các hình thức biểu hiện của giá trị thặng dư trong nền kinh tế thị trường ?', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lợi nhuận và lợi tức.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lợi nhuận và địa tô.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lợi tức và địa tô.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lợi nhuận, lợi tức và địa tô.', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('So sánh lợi nhuận với giá trị thặng dư do tác động của quy luật cung cầu:', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cung > cầu thì p > m.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cung = cầu thì p = m.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cung < cầu thì p < m.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cung = cầu thì p >m.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tìm câu trả lời đúng nhất: Bản chất của lợi nhuận là gì?', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lợi nhuận là do mua rẻ bán đắt.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lợi nhuận là do bán hàng hóa cao hơn giá trị.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lợi nhuận là số tiền lời sau khi bán hàng hóa.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lợi nhuận là hình thái biểu hiện của giá trị thặng dư trên bề mặt nền kinh tế thị trường.', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Công thức xác định giá trị thặng dư siêu ngạch?', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giá trị xã hội của hàng hoá + giá trị cá biệt của hàng hoá.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giá trị xã hội của hàng hoá - giá trị cá biệt của hàng hoá.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giá trị thặng dư tương đối + giá trị thặng dư tuyệt đối.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giá trị xã hội của hàng hoá + giá trị thặng dư.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Cạnh tranh trong nội bộ ngành dẫn đến hình thành điều gì ?', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lợi nhuận bình quân.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giá cả sản xuất.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giá trị thị trường.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lợi nhuận độc quyền.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Mục đích của cạnh tranh giữa các ngành là gì?', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Để chèn ép các doanh nghiệp yếu thế hơn.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhằm sát nhập doanh nghiệp khác vào doanh nghiệp mình.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tìm kiếm nơi đầu tư có lợi nhất cho mình.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhằm thu lợi nhuận nhiều hơn cho các doanh nghiệp khác.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tác động tiêu cực của cạnh tranh là gì?', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cạnh tranh không lành mạnh gây tổn hại môi trường kinh doanh.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cạnh tranh không lành mạnh gây lãng phí nguồn lực xã hội.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cạnh tranh không lành mạnh làm tổn hại đến phúc lợi xã hội.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả các yếu tố trên.', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Mô hình kinh tế thị trường định hướng xã hội chủ nghĩa của Việt Nam là?', '', 'Active', 1, 5, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là nền kinh tế vận hành theo các quy luật của thị trường.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là nền kinh tế từng bước xác lập một xã hội mà ở đó dân giàu, nước mạnh, dân chủ, công bằng, văn minh.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là nền kinh tế có sự điều tiết của Nhà nước do Đảng cộng sản Việt Nam lãnh đạo.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả các yếu tố trên.', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Hội nhập kinh tế quốc tế có tác động tích cực hay tiêu cực đến nền kinh tế Việt Nam hiện nay? Tìm đáp án đúng nhất.', '', 'Active', 1, 6, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Có nhiều tác động tích cực.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Có nhiều tác động tiêu cực.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Có cả tác động tích cực lẫn tiêu cực.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Có tác động tích cực hay tiêu cực là do nhận thức và điều hành của chính phủ.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tìm câu trả lời phù hợp nhất : Những nhân tố nào ảnh hưởng đến quan hệ lợi ích kinh tế?', '', 'Active', 1, 5, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Trình độ phát triển của lực lượng sản xuất và địa vị của chủ thể trong hệ thống sản xuất.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Địa vị của chủ thể trong hệ thống sản xuất xã hội và chính sách phân phối thu nhập của nhà nước.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Trình độ phát triển của lực lượng sản xuất; địa vị của chủ thể trong hệ thống sản xuất xã hội; Chính sách phân phối thu nhập của nhà nước và hội nhập kinh tế quốc tế.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chính sách phân phối của nhà nước, nhu cầu của chủ thể trong hệ thống sản xuất xã hội và toàn cầu hóa.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Hội nhập kinh tế quốc tế là gì?', '', 'Active', 1, 6, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là quá trình quốc gia đó gắn kết nền kinh tế của mình với nền kinh tế thế giới.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là biết chia sẻ lợi ích với các quốc gia khác.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là sự tuân thủ các chuẩn mực quốc tế chung.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cả ba yếu tố trên.', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Công nghiệp hóa ứng với trình độ kỹ thuật nào của cách mạng công nghiệp .', '', 'Active', 1, 6, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cách mạng công nghiệp lần thứ nhất.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cách mạng công nghiệp lần thứ hai.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cách mạng công nghiệp lần thứ ba .', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cách mạng công nghiệp lần thứ tư .', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Vì sao Việt Nam phải thực hiện công nghiệp hóa, hiện đại hóa?', '', 'Active', 1, 6, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đây là quy luật phổ biến cho sự phát triển lực lượng sản xuất.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhằm xây dựng cơ sở vật chất kỹ thuật cho nền kinh tế.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhằm đáp ứng nguyện vọng của nhân dân trong phát triển kinh tế.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là quy luật phổ biến của sự phát triển Lực lượng sản xuất mà mỗi nước đều phải trải qua, đối với nước ta còn nhằm xây dựng cơ sở vật chất kỹ thuật cho CNXH', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tìm câu trả lời đúng nhất về : Công nghiệp hóa là gì?', '', 'Active', 1, 6, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là quá trình chuyển đổi từ lao động thủ công trong nông nghiệp sang lao động bằng máy móc.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là quá trình chuyển đổi nền kinh tế từ sản xuất nông nghiệp là chính sang sản xuất công nghiệp là chính.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là quá trình chuyển đổi nền sản xuất xã hội từ lao động thủ công sang lao động bằng máy móc nhằm tạo ra năng suất lao động xã hội cao.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Công nghiệp hóa là quá trình phát triển nền sản xuất theo hướng ưu tiên phát triển công nghiệp nặng.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Đặc trưng của cuộc cách mạng 4.0 (Cách mạng công nghiệp lần thứ tư)?', '', 'Active', 1, 6, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sử dụng năng lượng nước và hơi nước.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sử dụng năng lượng điện và động cơ điện.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sử dụng công nghệ thông tin và máy tính, tự động hóa sản xuất.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Liên kết giữa thế giới thực và ảo để thực hiện công việc thông minh và hiệu quả nhất.', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tìm câu trả lời đúng nhất về : Vai trò của Cách mạng công nghiệp đổi với sự phát triển của xã hội?', '', 'Active', 1, 6, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thúc đẩy phát triển lực lượng sản xuất.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thúc đẩy hoàn thiện quan hệ sản xuất', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thúc đẩy đổi mới phương thức quản trị phát triển', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cả 3 yếu tố trên', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Xã hội loài người đã và đang trải qua mấy cuộc cách mạng công nghiệp?', '', 'Active', 1, 6, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('1.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('2.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('3.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('4.', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Vai trò của lợi ích kinh tế đối với các chủ thể kinh tế xã hội? Tìm câu trả lời toàn diện nhất', '', 'Active', 1, 5, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là cơ sở để phân chia lợi nhuận với nhau.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là động lực trực tiếp của các chủ thể tham gia vào hoạt động kinh tế xã hội.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là cơ sở thúc đẩy sự phát triển các lợi ích khác.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là động lực trực tiếp của các chủ thể kinh tế tham gia vào hoạt động kinh tế xã hội và là cơ sở thúc đẩy sự phát triển các lợi ích khác.', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Vì sao phải hoàn thiện thể chế kinh tế thị trường định hướng xã hội chủ nghĩa ở Việt Nam? Tìm câu trả lời đầy đủ nhất .', '', 'Active', 1, 5, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Do hệ thống thể chế đó còn chưa đồng bộ.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Do hệ thống thể chế còn chưa đầy đủ.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Do hệ thống còn kém hiệu lực, hiệu quả.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Do hệ thống thể chế còn chưa đồng bộ, chưa đầy đủ, kém hiệu lực, hiệu quả. Kém đầy đủ các yếu tố thị trường và các loại thị trường.', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Đặc trưng của kinh tế thị trường định hướng XHCN ở Việt Nam khác với đặc trưng của kinh tế thị trường nói chung như thế nào?', '', 'Active', 1, 5, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hoàn toàn khác nhau vì không có điểm chung.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giống nhau về bản chất nhưng khác nhau về hình thức.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Vừa bao hàm đầy đủ các đặc trưng vốn có của kinh tế thị trường vừa có các đặc trưng riêng của Việt Nam.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Khác nhau về bản chất nhưng có nội dung giống nhau.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tác động tích cực của cạnh tranh là gì?', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thúc đẩy phát triển LLSX và phát triển nền kinh tế thị trường.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tạo cơ chế điều chỉnh linh hoạt cho việc phân bổ các nguồn lực.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thúc đẩy thỏa mãn nhu cầu xã hội.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả các yếu tố trên.', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Vì sao Việt Nam phải phát triển nền kinh tế thị trường định hướng xã hội chủ nghĩa?', '', 'Active', 1, 5, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Vì nó phù hợp với tính quy luật phát triển khách quan.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Do tính ưu việt của kinh tế thị trường trong thúc đẩy phát triển.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đây là mô hình phù hợp với nguyện vọng của nhân dân.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả các lý do trên.', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Biểu hiện chủ yếu của độc quyền nhà nước trong CNTB?', '', 'Active', 1, 4, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sự kết hợp về nhân sự giữa tổ chức độc quyền và nhà nước.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sự hình thành, phát triển sở hữu nhà nước.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sự điều tiết kinh tế của nhà nước tư sản.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cả 3 biểu hiện trên.', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Xuất khẩu tư bản có mấy hình thức', '', 'Active', 1, 4, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Một hình thức.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hai hình thức ( trực tiếp và gián tiếp ).', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Ba hình thức.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bốn hình thức', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nội dung của phân chia thế giới về kinh tế?', '', 'Active', 1, 4, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phân chia thuộc địa và phạm vi ảnh hưởng.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phân chia thị trường và nơi đầu tư.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phân chia nơi cung cấp nguyên liệu.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phân chia nơi cung cấp nhân công.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Xuất khẩu tư bản có nghĩa là gì ?', '', 'Active', 1, 4, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là mang hàng hoá ra nước ngoài bán.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là mang tư bản ra nước ngoài cho vay hoặc đầu tư kinh doanh.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là bán tư liệu sản xuất cho nước ngoài tức là nhường bớt trận địa sản xuất tư liệu sinh hoạt cho những nước có nhân công rẻ hơn.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là mang tiền ra nước ngoài mua hàng.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tư bản tài chính là gì?', '', 'Active', 1, 4, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là sự hoạt động của các tư bản thương nghiệp.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là sự dung hợp của tư bản độc quyền ngân hàng và tư bản độc quyền công nghiệp.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là sự hoạt động của CNTB tự do cạnh tranh.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là sự hoạt động của tư bản ngân hàng phát triển tới mức thống trị toàn bộ các loại tư bản khác.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Xuất khẩu tư bản là đặc điểm kinh tế của CNTB ở giai đoạn nào?', '', 'Active', 1, 4, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giai đoạn CNTB tự do cạnh tranh phát triển vượt khỏi quy mô quốc gia.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giai đoạn CNTB độc quyền.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giai đoạn chủ nghĩa thực dân xâm lược.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giai đoạn sản xuất hàng hoá.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tính quy luật của việc hình thành các tổ chức độc quyền là do?', '', 'Active', 1, 4, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tự do cạnh tranh dẫn tới tiêu diệt và làm phá sản phần lớn các nhà tư bản yếu kém.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sự liên minh của các nhà tư bản.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sự tích tụ và tập trung sản xuất đạt đến một giới hạn nhất định.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tự do cạnh tranh thúc đẩy tích tụ và tập trung sản xuất, đến một trình độ nhất định sẽ sinh ra độc quyền.', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Địa tô chênh lệch II là gì ?', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lợi nhuận siêu ngạch do sản xuất trên những ruộng đất tốt tạo ra.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lợi nhuận siêu ngạch do đầu tư thêm tư bản để thâm canh tạo ra.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lợi nhuận siêu ngạch do đầu tư thêm tư bản để mở rộng diện tích canh tác tạo ra.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lợi nhuận siêu ngạch sản xuất trên những ruộng đất có vị trí thuận lợi tạo ra.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Địa tô tuyệt đối là gì?', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giá trị thặng dư mà chủ ruộng đất bóc lột trực tiếp công nhân nông nghiệp.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là địa tô mà địa chủ thu được trên mảnh đất cho thuê, không kể độ màu mỡ tự nhiên thuận lợi hay do thâm canh.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lợi nhuận siêu ngạch thu được do đầu tư thêm các yếu tố kỹ thuật.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lợi nhuận siêu ngạch thu được do sản xuất trên ruộng đất tốt và trung bình.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Địa tô chênh lệch I là gì?', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES (' Lợi nhuận siêu ngạch do sản xuất trên những ruộng đất có vị trí thuận lợi tạo ra.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lợi nhuận siêu ngạch do sản xuất trên những ruộng đất tốt tạo ra.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là địa tô mà địa chủ thu được trên ruộng đất tốt và độ màu mỡ cao, điều kiện tự nhiên thuận lợi.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lợi nhuận siêu ngạch do đầu tư thêm tư bản để thâm canh tạo ra.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Yếu tố căn bản quyết định giá cả hàng hoá là gì?', '', 'Active', 1, 2, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quan hệ cung cầu.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thị hiếu, mốt thời trang và tâm lý xã hội của mỗi thời kỳ.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giá trị sử dụng của hàng hoá cũng tức là chất lượng của hàng hoá đó.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giá trị của hàng hoá.', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nguồn gốc của giá trị thặng dư là ?', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Do lao động không công của người lao động làm thuê.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Do máy móc và công nghệ tiến tiến.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Do bán hàng hóa cao hơn giá trị.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Do mua rẻ, bán đắt', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tăng năng suất lao động và tăng cường độ lao động giống nhau ở điểm nào ? Tìm phương án đúng nhất:', '', 'Active', 1, 2, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đều làm cho công việc nhanh chóng hoàn thành.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đều làm cho khối lượng hàng hóa sản xuất trong một đơn vị thời gian tăng lên.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đều làm cho điều kiện của người lao động dễ chịu hơn.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đều làm hao phí calo tăng lên.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Giá trị thặng dư là gì?', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giá trị sức lao động của người công nhân làm thuê cho chủ tư bản.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giá trị mới được tạo ra trong quá trình sản xuất hàng hoá.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là phần giá trị mới dôi ra ngoài giá trị sức lao động.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giá trị bóc lột được do nhà tư bản trả tiền công thấp hơn giá trị sức lao động.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Điều kiện để sức lao động trở thành hàng hoá?', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Xã hội chia thành người đi bóc lột và người bị bóc lột.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Người lao động được tự do về thân thể và không có TLSX.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sản xuất hàng hoá phát triển tới mức có thể đem mua và bán sức lao động trên thị trường.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phân công lao động xã hội phát triển tới mức có 1 số lĩnh vực sản xuất không đủ số lượng lao động và phải thuê thêm công nhân.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('ìm câu trả lời đúng nhất: Tác dụng của quy luật giá trị đối với nền kinh tế - xã hội?', '', 'Active', 1, 2, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thúc đẩy cải tiến kỹ thuật, nâng cao năng suất lao động.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Điều tiết việc di chuyển lao động, tiền vốn và TLSX từ khu vực sản xuất này sang khu vực sản xuất khác.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tạo ra những bất công trong xã hội, người giầu thì quá giàu, người nghèo thì quá nghèo.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thúc đẩy cải tiến kỹ thuật, điều tiết sản xuất, lưu thông hàng hóa và phân hoá những người sản xuất hàng hoá.', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Các chủ thể chính tham gia thị trường?', '', 'Active', 1, 2, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Người bán và người mua.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước và lực lượng trung gian mua bán.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Người sản xuất, người tiêu dùng, lực lượng trung gian trong thị trường và nhà nước.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Nhà nước và nhân dân lao động.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Những quy luật kinh tế chủ yếu của thị trường là gì?', '', 'Active', 1, 2, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quy luật giá trị, quy luật cung cầu.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quy luật giá trị, quy luật cung cầu, quy luật lưu thông tiền tệ, quy luật cạnh tranh.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quy luật giá trị, quy luật cạnh tranh, quy luật lưu thông tiền tệ.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quy luật cung cầu, quy luật cạnh tranh.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Dấu hiệu đặc trưng của cơ chế thị trường là gì?', '', 'Active', 1, 2, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là cơ chế hình thành giá cả một cách tự do.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là cơ chế hình thành giá cả do chủ quan của người mua.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là cơ chế hình thành giá cả do nhà nước quyết định.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là cơ chế hình thành giá cả theo ý muốn chủ quan của người bán.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Hiểu theo nghĩa rộng thị trường là gì?', '', 'Active', 1, 2, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là nơi diễn ra hành vi trao đổi mua bán', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là tổng hòa các mối quan hệ liên quan đến trao đổi mua bán hàng hóa trong xã hội.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là thị trường diễn ra trong toàn quốc.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là thị trường diễn ra trong phạm vi thế giới.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tìm đáp án đúng : Lao động cụ thể tạo ra ?', '', 'Active', 1, 2, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tạo ra giá trị sử dụng của hàng hoá.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tạo ra giá trị hàng hoá và do đó đem lại thu nhập cho người lao động.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là phạm trù lịch sử tức là chỉ trong xã hội có nền sản xuất hàng hoá.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Biểu hiện tính chất xã hội của người sản xuất hàng hoá.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Quy luật giá trị là quy luật của nền kinh tế nào?', '', 'Active', 1, 2, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Mọi nền sản xuất trong lịch sử loài người.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Kinh tế hàng hoá.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sản xuất hàng hoá giản đơn.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sản xuất hàng hoá tư bản chủ nghĩa.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Chức năng cơ bản nhất của tiền là gì?', '', 'Active', 1, 2, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phương tiện lưu thông.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phương tiện cất trữ.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phương tiện thanh toán.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thước đo giá trị.', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tư bản bất biến là gì ?', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bộ phận tư bản tồn tại dưới hình thái Tư liệu sản xuất.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bộ phận tư bản tồn tại dưới hình thái tư Tiệu lao động.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bộ phận tư bản tồn tại dưới hình thái nguyên vật liệu.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bộ phận tư bản tồn tại dưới hình thái đối tượng lao động.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Hàng hoá là gì?', '', 'Active', 1, 2, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Một sản phẩm vật chất hoặc tinh thần có ích cho con người hoặc cho xã hội.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Một sản phẩm của lao động có thể thoả mãn nhu cầu của con người.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Một sản phẩm của lao động, có tính hữu ích và được sản xuất ra để trao đổi.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Một sản phẩm của lao động, sản xuất ra để tiêu dùng cho sản xuất hoặc cho cá nhân.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nội dung của quy luật giá trị ?', '', 'Active', 1, 2, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Người sản xuất chỉ sản xuất những loại hàng hoá nào đem lại nhiều giá trị cho họ.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sản xuất và trao đổi hàng hóa phải căn cứ vào giá trị của hàng hoá.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giá trị sử dụng của hàng hoá càng cao thì hàng hoá càng có giá trị cao.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả mọi sản phẩm có ích do người lao động làm ra đều có giá trị.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tăng cường độ lao động thì lượng giá trị của một đơn vị hàng hoá sẽ như thế nào?', '', 'Active', 1, 2, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Làm cho lượng giá trị của một hàng hóa tăng lên.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Làm cho lượng giá trị của một hàng hoá giảm xuống.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Làm cho lượng giá trị của một hàng hoá không đổi.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Làm cho lượng giá trị của tổng hàng hoá không đổi.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('ìm câu trả lời đúng nhất: Giá cả của hàng hoá là gì ?', '', 'Active', 1, 2, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là giá trị của hàng hoá.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là số tiền mà người mua trả cho người bán hàng hoá để được quyền sở hữu hàng hoá đó.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là thời gian lao động cần thiết để sản xuất ra hàng hoá đó.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là hình thức biểu hiện bằng tiền của giá trị hàng hoá.', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('ai hàng hoá trao đổi với nhau trên cơ sở nào?', '', 'Active', 1, 2, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lượng thời gian lao động xã hội cần thiết.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tuy có giá trị sử dụng khác nhau nhưng đều cùng là sản phẩm của lao động.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phân công lao động làm cho người ta phải trao đổi giá trị sử dụng do mình làm ra lấy giá trị sử dụng khác do người khác làm ra.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Có hao phí vật tư kỹ thuật cụ thể bằng nhau.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('iá trị sử dụng của hàng hoá là gì?', '', 'Active', 1, 2, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giá trị để cho người sản xuất ra nó sử dụng trực tiếp hoặc đem trao đổi lấy 1 giá trị khác.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là công dụng của hàng hóa có thể thỏa mãn nhu cầu nào đó của người mua.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cơ sở của phân công lao động xã hội và để trao đổi giữa những lĩnh vực sản xuất khác nhau.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cái tạo nên nội dung và ý nghĩa của giá trị hàng hoá.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('ếu tố nào làm giảm giá trị trong 1 đơn vị hàng hoá?', '', 'Active', 1, 2, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tăng cường độ lao động để giảm chi phí tiền lương trên 1 đơn vị sản phẩm.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tăng năng suất lao động.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tăng thời gian lao động để giảm chi phí tiền lương trên 1 đơn vị sản phẩm.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tăng thêm những trang bị vật chất và kỹ thuật cho lao động.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('ội dung thời gian lao động xã hội cần thiết để sản xuất ra một hàng hoá là gì?', '', 'Active', 1, 2, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Với trình độ khoa học kỹ thuật trung bình mà xã hội đã đạt tới ở 1 thời điểm nhất định.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Với cường độ lao động trung bình, trình độ thành thạo trung bình của một xí nghiệp hay một đơn vị sản xuất.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Với trình độ kỹ thuật, năng suất lao động và cường độ lao động trung bình của xã hội.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Trong điều kiện sản xuất bình thường xét trên phạm vi quốc gia hoặc phạm vi quốc tế.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('ìm câu trả lời đúng :Thước đo Lượng giá trị của hàng hoá ?', '', 'Active', 1, 2, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hao phí vật tư kỹ thuật và tiền lương chi phí cho công nhân.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hao phí mà người lao động đã bỏ ra để làm nên hàng hoá đó.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thời gian lao động xã hội cần thiết.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lao động sống và lao động quá khứ kết tinh trong hàng hoá.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('ao động trừu tượng tạo ra cái gì ?', '', 'Active', 1, 2, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tạo ra giá trị sử dụng của hàng hoá.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là phạm trù vĩnh viễn, không chỉ có trong sản xuất hàng hoá mà có trong mọi nền sản xuất nói chung.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Biểu hiện tính chất cá nhân của người sản xuất hàng hoá.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tạo ra giá trị của hàng hoá.', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('iá trị hàng hoá là gì?', '', 'Active', 1, 2, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là lao động xã hội của người sản xuất hàng hóa kết tinh trong hàng hoá.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là số lượng thời gian thực tế phải bỏ ra để làm nên hàng hoá đó.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Một quan hệ về lượng giữa những giá trị sử dụng khác nhau.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Biểu hiện tính hai mặt của hàng hoá mà mặt kia là giá trị sử dụng như một thuộc tính không thể thiếu của mọi loại hàng hoá.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tư bản cố định là gì?', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là bộ phận tư bản sản xuất tồn tại dưới hình thái tư liệu lao động (máy móc, nhà xưởng,…).', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là bộ phận tư bản tồn tại dưới hình thái TLSX.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là bộ phận tư bản tồn tại dưới hình thái nguyên vật liệu.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là bộ phận tư bản tồn tại dưới hình thái hàng hóa sản xuất ra.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Yếu tố kinh tế nào tác động làm cho giá cả xoay quanh giá trị ?', '', 'Active', 1, 2, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Trình độ quản lý sản xuất kinh doanh.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Trình độ tay nghề của người lao động.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Do mối quan hệ cung – cầu tác động.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Trình độ quản lý và tay nghề của người lao động.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Giá cả sản xuất bằng gì?', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chi phí sản xuất cộng với lợi nhuận bình quân.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Toàn bộ chi phí bỏ ra trong quá trình sản xuất.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giá cả thị trường trừ đi lợi nhuận của nhà tư bản công nghiệp.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giá trị của hàng hoá cộng với lợi nhuận của nhà tư bản công nghiệp.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khi nào thì tiền tệ biến thành tư bản?', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Khi sức lao động trở thành hàng hoá.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Khi QHSX TBCN bắt đầu được hình thành.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES (' Khi những thương nhân giầu có bắt đầu bỏ vốn vào kinh doanh trong lĩnh vực công nghiệp và nông nghiệp.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Khi giai cấp tư sản và giai cấp công nhân được hình thành.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tư bản là gì?', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Một số lượng của cải có giá trị sử dụng là kinh doanh kiếm lời.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Giá trị mang lại giá trị thặng dư.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là một món tiền không phải để chi tiêu cho cá nhân mà để chi tiêu cho sản xuất.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là nhà xưởng, máy móc và một số tiền vốn cần thiết để hoạt động sản xuất kinh doanh.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Mục đích chính của sự vận động của tư bản là gì?', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đổi giá trị sử dụng này lấy giá trị sử dụng khác.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thực hiện giá trị của hàng hoá.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sản xuất ra giá trị thặng dư.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Thực hiện lưu thông hàng hoá.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tỷ suất lợi nhuận biểu hiện điều gì ?', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Trình độ bóc lột của tư bản đối với lao động.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tính chất bóc lột của tư bản đối với lao động.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phạm vi bóc lột của tư bản đối với lao động.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Mức doanh lợi của đầu tư tư bản.', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Đặc điểm quan trọng nhất để hàng hóa sức lao động là hàng hoá đặc biệt là gì?', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Vì sức lao động là yếu tố quan trọng nhất của mọi nền sản xuất xã hội.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES (' Vì sức lao động được mua bán trên thị trường đặc biệt, ở đó chỉ có người cần mua và người cần bán đến thôi.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Vì khi sử dụng nó thì tạo ra được 1 giá trị mới lớn hơn giá trị bản thân nó.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Vì giá trị hàng hoá sức lao động mang yếu tố tinh thần và lịch sử.', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Căn cứ để phân chia tư bản thành tư bản bất biến và tư bản khả biến?', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Đặc điểm của mỗi loại tư bản.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tốc độ vận động của mỗi loại tư bản.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tác dụng của từng bộ phận của tư bản trong việc sản xuất ra giá trị thặng dư.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sự chu chuyển giá trị của mỗi loại tư bản.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Để có lợi nhuận siêu ngạch nhà tư bản sử dụng biện pháp gì?', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tăng cường độ lao động.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Kéo dài ngày lao động.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cải tiến kỹ thuật công nghệ và tổ chức quản lý.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Di chuyển tư bản từ ngành này sang ngành khác.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Lợi nhuận bình quân là gì?', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lợi nhuận trung bình của các nhà tư bản kinh doanh trong lĩnh vực công nghiệp.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lợi nhuận trung bình giữa các nhà tư bản kinh doanh trong lĩnh vực lưu thông.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lợi nhuận bằng nhau của những số tư bản bằng nhau bỏ vào những ngành sản xuất khác nhau.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lợi nhuận trung bình tính cho một đồng vốn sau khi đã trừ đi mọi khoản chi phí sản xuất.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Quan hệ giữa giá cả và giá trị trước khi hình thành lợi nhuận bình quân như thế nào?', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cung lớn hơn cầu thì giá cả lớn hơn giá trị hàng hoá.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cung nhỏ hơn cầu thì giá cả nhỏ hơn giá trị hàng hoá.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cung bằng cầu thì giá cả bằng giá trị hàng hoá.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cung bằng cầu thì giá cả lớn hơn giá trị hàng hoá.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tư bản lưu động là gì?', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là bộ phận tư bản tồn tại dưới hình thái sức lao động và nguyên vật liệu.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là bộ phận tư bản tồn tại dưới hình thái sức lao động.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là bộ phận tư bản tồn tại dưới hình thái nguyên vật liệu.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Là bộ phận tư bản tồn tại dưới hình thái máy móc, nhà xưởng.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('ìm đáp án đúng về : Điều kiện để sản xuất hàng hoá ra đời ?', '', 'Active', 1, 2, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Mong muốn của con người muốn tiêu dùng những sản phẩm do người khác làm ra.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Sự phát triển của lực lượng sản xuất giúp cho có thể sản xuất được những sản phẩm tốt hơn.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lực lượng sản xuất phát triển làm cho các quan hệ kinh tế được mở rộng.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phân công lao động xã hội và sự tách biệt về mặt kinh tế của các chủ thể sản xuất.', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tỷ suất lợi nhuận phản ánh điều gì?', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phản ánh mức doanh lợi đầu tư tư bản.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phản ánh tỷ lệ giữa lợi nhuận và tư bản bất biến.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phản ánh tỷ lệ giữa lợi nhuận và giá trị sức lao động.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phản ánh lợi ích của nhà tư bản trong sử dụng lao động làm thuê.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nhân tố nào sau đây ảnh hưởng đến tỷ suất lợi nhuận?', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tỷ suất giá trị thặng dư.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cấu tạo hữu cơ của tư bản.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tốc độ chu chuyển tư bản và tiết kiệm tư bản bất biến.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tất cả các nhân tố trên.', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Nguyên nhân dẫn đến sự bình quân hoá lợi nhuận?', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cạnh tranh giữa các nước và các khu vực.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cạnh tranh trong nội bộ từng ngành.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cạnh tranh giữa các ngành.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Do mọi nhà tư bản đều có xu hướng cải tiến kỹ thuật nhằm chiếm lợi nhuận siêu ngạch.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Phương pháp sản xuất ra giá trị thặng dư tuyệt đối là gì?', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Kéo dài ngày lao động một cách tuyệt vượt quá thời gian lao động tất yếu.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Do rút ngắn thời gian lao động tất yếu, giữ nguyên độ dài ngày lao động.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Do tăng năng suất lao động.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Do áp dụng kỹ thuật tiên tiến.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('ìm câu đúng nhất: Mối quan hệ giữa lợi nhuận và giá trị thặng dư?', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lợi nhuận và giá trị thặng dư khác nhau về nguồn gốc.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cùng một nguồn gốc nhưng khác nhau về tính chất.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Cùng bản chất nhưng khác nhau về nguồn gốc: một bên là thu nhập của nhà tư bản, một bên là thu nhập của người lao động.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Lợi nhuận là hình thức biến tướng của giá trị thặng dư .', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Chi phí sản xuất Tư bản chủ nghã là gì?', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hao phí lao động quá khứ và phần lao động sống được trả công.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hao phí tư bản bất biến, tư bản khả biến và giá trị thặng dư.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hao phí tư bản bất biến để sản xuất ra hàng hoá.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Hao phí tư bản khả biến để sản xuất ra hàng hoá.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Phương pháp sản xuất giá trị thặng dư tương đối là gì?', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Kéo dài ngày lao động, trong lúc vẫn giữ nguyên thời gian lao động tất yếu.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tăng cường độ lao động.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Rút ngắn thời gian lao động tất yếu, giữ nguyên độ dài ngày lao động.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tăng cường độ lao động và kéo dài thời gian lao động.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Khối lượng giá trị thặng dư phản ánh điều gì?', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Trình độ bóc lột của tư bản đối với lao động.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tính chất bóc lột của tư bản đối với lao động.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phạm vi bóc lột của tư bản đối với lao động.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quy mô bóc lột của tư bản đối với lao động.', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tỷ suất giá trị thặng dư biểu hiện điều gì?', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Quy mô bóc lột của tư bản đối với người lao động.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Trình độ bóc lột của tư bản đối với người lao động.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tính chất bóc lột của tư bản đối với lao động.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Phạm vi bóc lột của tư bản đối với lao động.', 0, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Về mặt lượng tư bản khả biến trong quá trình sản xuất sẽ như thế nào?', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Không tăng lên về lượng.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Chuyển dần giá trị vào sản phẩm.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Được bảo tồn nguyên vẹn.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Tăng lên về lượng.', 1, @last_question_id);

INSERT INTO Questions (content, explanation, status, author_id, chapter_id, subject_id)
VALUES ('Tư bản khả biến là gì ?', '', 'Active', 1, 3, 5);
SET @last_question_id = LAST_INSERT_ID();
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bộ phận tư bản tồn tại dưới hình thái Sức lao động.', 1, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bộ phận tư bản tồn tại dưới hình thái sức lao động và nguyên vật liệu.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bộ phận tư bản tồn tại dưới hình thái đối tượng lao động.', 0, @last_question_id);
INSERT INTO Answers (content, is_correct, question_id)
VALUES ('Bộ phận tư bản tồn tại dưới hình thái công nghệ mới.', 0, @last_question_id);

