/*
 Navicat Premium Data Transfer

 Source Server         : phuc
 Source Server Type    : MySQL
 Source Server Version : 80022
 Source Host           : localhost:3306
 Source Schema         : db

 Target Server Type    : MySQL
 Target Server Version : 80022
 File Encoding         : 65001

 Date: 13/01/2021 12:15:18
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for bill
-- ----------------------------
DROP TABLE IF EXISTS `bill`;
CREATE TABLE `bill`  (
  `user_id` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `course_id` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `final_bill_id` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `price` double NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`, `course_id`) USING BTREE,
  INDEX `FK_bill_course_idx`(`course_id`) USING BTREE,
  INDEX `FK_bill_finalbill_idx`(`final_bill_id`) USING BTREE,
  CONSTRAINT `FK_bill_course` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_bill_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_bill_finalbill` FOREIGN KEY (`final_bill_id`) REFERENCES `final_bill` (`final_bill_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bill
-- ----------------------------
INSERT INTO `bill` VALUES ('U8d0rgoojskj03tm75', 'C04', 'B8d0rgo1fkkjuy4bfb', 179700);
INSERT INTO `bill` VALUES ('U8d0rgoojskj03tm75', 'C07', 'B8d0rgo1fkkjuy4bfb', 175780);
INSERT INTO `bill` VALUES ('U8d0rgoojskj03tm75', 'C11', 'B8d0rgo1gqokjthis4i', 299500);
INSERT INTO `bill` VALUES ('U8d0rgoojskj03tm75', 'C8d0rgo2k3okjut36tb', 'B8d0rgo2k3okjuuqmku', 699000);
INSERT INTO `bill` VALUES ('Uswyrp45kkj5e5nrw', 'C01', 'B8d0rgoaq8kjsfxo9y', 349500);
INSERT INTO `bill` VALUES ('Uswyrp45kkj5e5nrw', 'C04', 'B8d0rgoaq8kjsfxo9y', 179700);
INSERT INTO `bill` VALUES ('Uswyrp45kkj5e5nrw', 'C07', 'B8d0rgoaq8kjsfxo9y', 175780);
INSERT INTO `bill` VALUES ('Uswyrp45kkj5e5nrw', 'Cswyrp498kjdsuj8s', 'B8d0rgoaq8kjsfxo9y', 0);

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `category_id` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `category_name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `parent_id` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`category_id`) USING BTREE,
  INDEX `catcat_idx`(`parent_id`) USING BTREE,
  INDEX `fk_cat_cat_idx`(`parent_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1', 'Lập trình web', '3');
INSERT INTO `category` VALUES ('10', 'Phát triển cá nhân', NULL);
INSERT INTO `category` VALUES ('11', 'Thiết kế', NULL);
INSERT INTO `category` VALUES ('12', 'Kinh doanh khởi nghiệp', NULL);
INSERT INTO `category` VALUES ('13', 'Tin học văn phòng', NULL);
INSERT INTO `category` VALUES ('14', 'Multimedia', NULL);
INSERT INTO `category` VALUES ('15', 'Kiến thức chuyên ngành', NULL);
INSERT INTO `category` VALUES ('16', 'Nghệ thuật - đời sống', NULL);
INSERT INTO `category` VALUES ('17', 'Hôn nhân - gia đình', NULL);
INSERT INTO `category` VALUES ('18', 'Nuôi dạy con', NULL);
INSERT INTO `category` VALUES ('19', 'Phong thủy/Nhân tướng học', NULL);
INSERT INTO `category` VALUES ('2', 'Lập trình thiết bị di động', '3');
INSERT INTO `category` VALUES ('3', 'Lập trình', NULL);
INSERT INTO `category` VALUES ('4', 'Marketing', NULL);
INSERT INTO `category` VALUES ('5', 'Marketing căn bản', '4');
INSERT INTO `category` VALUES ('6', 'Digital Marketing', '4');
INSERT INTO `category` VALUES ('7', 'Ngoại ngữ', NULL);
INSERT INTO `category` VALUES ('8', 'Âm nhạc', NULL);
INSERT INTO `category` VALUES ('9', 'Thể thao - sức khỏe', NULL);

-- ----------------------------
-- Table structure for complete_video
-- ----------------------------
DROP TABLE IF EXISTS `complete_video`;
CREATE TABLE `complete_video`  (
  `user_id` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `video_id` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`user_id`, `video_id`) USING BTREE,
  INDEX `FK_cp_video`(`video_id`) USING BTREE,
  CONSTRAINT `FK_cp_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_cp_video` FOREIGN KEY (`video_id`) REFERENCES `video` (`video_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of complete_video
-- ----------------------------
INSERT INTO `complete_video` VALUES ('U8d0rgoojskj03tm75', 'V4fh2214zwkjjvlvwd');
INSERT INTO `complete_video` VALUES ('U8d0rgoojskj03tm75', 'V4fh2214zwkjjvlvws');
INSERT INTO `complete_video` VALUES ('U8d0rgoojskj03tm75', 'V4fh2214zwkjjvlvwz');
INSERT INTO `complete_video` VALUES ('U8d0rgoojskj03tm75', 'V4fh2214zwkjjvlvxi');
INSERT INTO `complete_video` VALUES ('U8d0rgoojskj03tm75', 'V4fh2214zwkjjvlvxp');
INSERT INTO `complete_video` VALUES ('U8d0rgoojskj03tm75', 'V8d0rgo2k3okjut95c9');
INSERT INTO `complete_video` VALUES ('Uswyrp45kkj5e5nrw', 'Vswyrp538kjfxfrsm');
INSERT INTO `complete_video` VALUES ('Uswyrp45kkj5e5nrw', 'Vswyrp538kjfxfrxv');

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course`  (
  `course_id` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `course_name` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `description` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `intro_image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `price` double NOT NULL,
  `deal_value` int(0) NULL DEFAULT NULL,
  `course_intro_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `course_intro_video` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `course_benefit_description` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `course_suitability` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `lecturer_id` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `categoty_id` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `status` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'Chưa hoàn thành',
  `create_date` date NULL DEFAULT NULL,
  `num_view` int(0) NULL DEFAULT 0,
  PRIMARY KEY (`course_id`) USING BTREE,
  INDEX `FK_course_lecturer_idx`(`lecturer_id`) USING BTREE,
  INDEX `FK_course_category_idx`(`categoty_id`) USING BTREE,
  FULLTEXT INDEX `course_name`(`course_name`),
  CONSTRAINT `FK_course_category` FOREIGN KEY (`categoty_id`) REFERENCES `category` (`category_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_course_lecturer` FOREIGN KEY (`lecturer_id`) REFERENCES `user` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('C01', 'Bí quyết giao tiếp để thành công', 'Tiến sĩ Lê Thẩm Dương tiết lộ bí quyết giao tiếp để thành công', '/images/productTesting.png', 699000, 50, NULL, NULL, NULL, NULL, 'U8d0rgoojskj03tm75', '1', 'Hoàn thành', '2020-12-29', 0);
INSERT INTO `course` VALUES ('C02', 'Học troll game', 'Tiến sĩ Lê Hoàng Phúc tiết lộ bí quyết giao tiếp để thành công', '/images/product_ID2.jpg', 123123, 50, NULL, NULL, NULL, NULL, 'U8d0rgoojskj03tm75', '2', 'Hoàn thành', '2020-12-29', 0);
INSERT INTO `course` VALUES ('C03', 'Thành thạo ngôn ngữ lập trình C++', 'Thành thạo ngôn ngữ lập trình C++', '/images/product_ID1.jpg', 699000, 74, NULL, NULL, NULL, NULL, 'U8d0rgoojskj03tm75', '2', 'Hoàn thành', '2020-12-29', 0);
INSERT INTO `course` VALUES ('C04', 'VBA - Giải pháp tối ưu công việc trên Excel', 'VBA - Giải pháp tối ưu công việc trên Excel', '/images/product_ID3.jpg', 599000, 70, NULL, NULL, NULL, NULL, 'U8d0rgoojskj03tm75', '5', 'Hoàn thành', '2020-12-29', 0);
INSERT INTO `course` VALUES ('C07', 'Học Photoshop trọn bộ trong 7 ngày', 'Học Photoshop trọn bộ trong 7 ngày', '/images/product_ID7.png', 799000, 78, NULL, NULL, NULL, NULL, 'Uswyrp45kkj5e5nrw', '2', 'Hoàn thành', '2021-01-03', 0);
INSERT INTO `course` VALUES ('C08', 'Nền tảng tiếng Anh cho người mới bắt đầu', 'Nền tảng tiếng Anh cho người mới bắt đầu', '/images/product_ID8.png', 749000, 76, NULL, NULL, NULL, NULL, 'Uswyrp45kkj5e5nrw', '6', 'Hoàn thành', '2021-01-03', 0);
INSERT INTO `course` VALUES ('C09', 'Học thiết kế đồ họa trọn bộ 30 ngày', 'Học thiết kế đồ họa trọn bộ 30 ngày', '/images/product_ID9.jpg', 699000, 74, NULL, NULL, NULL, NULL, 'Uswyrp45kkj5e5nrw', '2', 'Hoàn thành', '2021-01-03', 0);
INSERT INTO `course` VALUES ('C10', '85 chuyên đề Excel cơ bản đến nâng cao', '85 chuyên đề Excel cơ bản đến nâng cao', '/images/product_ID10.png', 599000, 70, NULL, NULL, NULL, NULL, 'Uswyrp45kkj5e5nrw', '5', 'Hoàn thành', '2021-01-03', 0);
INSERT INTO `course` VALUES ('C11', 'Nghệ thuật bán hàng đỉnh cao', 'Nghệ thuật bán hàng đỉnh cao', '/images/product_ID12.jpg', 599000, 50, NULL, NULL, NULL, NULL, 'U8d0rgoojskj03tm75', '1', 'Chưa hoàn thành', '2021-01-03', 1);
INSERT INTO `course` VALUES ('C12', 'Học guitar đệm hát cấp tốc trong 30 ngày', 'Học guitar đệm hát cấp tốc trong 30 ngày', '/images/product_ID5.png', 599000, 50, NULL, NULL, NULL, NULL, 'Uswyrp45kkj5e5nrw', '1', 'Hoàn thành', '2021-01-03', 1);
INSERT INTO `course` VALUES ('C8d0rgo2k3okjut36tb', 'LẬP TRÌNH IOS SWIFT', 'LẬP TRÌNH IOS SWIFT', '/upload/course/C8d0rgo2k3okjut36tb.jpg', 699000, 0, '<p>- IOS l&agrave; một hệ điều h&agrave;nh cho iPhone v&agrave; được Apple cập nhật li&ecirc;n tục. Kho&aacute; học sẽ cung cấp cho c&aacute;c bạn học vi&ecirc;n những kiến thức được cập nhật mới nhất để lập tr&igrave;nh tr&ecirc;n hệ điều h&agrave;nh iOS.<br />\r\n- Học vi&ecirc;n sẽ được t&igrave;m hiểu Swift - ng&ocirc;n ngữ lập tr&igrave;nh được Apple hỗ trợ ch&iacute;nh thức, song song với việc thực h&agrave;nh những kiến thức, kinh nghiệm l&agrave;m việc thực tế.<br />\r\n- Kho&aacute; học gồm 11 chương:<br />\r\n+ Chương 1 + 2: Giới thiệu tổng quan v&agrave; c&agrave;i đặt m&ocirc;i trường l&agrave;m việc.<br />\r\n+ Chương 3: L&agrave;m quen với ng&ocirc;n ngữ lập tr&igrave;nh Swift.<br />\r\n+ Chương 4 - 14: C&aacute;c ứng dụng cụ thể sẽ dẫn dắt c&aacute;c bạn qua những kiến thức từ căn bản đến phức tạp của iOS.<br />\r\n- Kiến thức trong to&agrave;n bộ kho&aacute; học được truyền tải theo phương ph&aacute;p thực h&agrave;nh l&agrave; ch&iacute;nh. Học vi&ecirc;n c&oacute; thể truy cập đầy đủ c&aacute;c nguồn t&agrave;i nguy&ecirc;n v&agrave; m&atilde; nguồn được đề cập trong c&aacute;c b&agrave;i giảng.</p>\r\n', NULL, 'Sau khoá học, học viên sẽ được trang bị những kiến thức vững chắc để có thể tự mình tạo ra những ứng dụng thực tế và tiếp cận những nguồn tài liệu nâng cao khác sau khoá học.\r\nĐạt được những tiêu chuẩn căn bản nhất của một lập trình viên iOS.\r\nCó đủ khả năng ứng tuyển vào các vị trí lập trình iOS (Fresher/ Junior).', 'Khoá học dành cho:\r\nCác bạn sinh viên muốn trang bị kiến thức về lập trình iOS để tìm kiếm một công việc phù hợp với mức lương cạnh tranh..\r\nCác lập trình viên đã có kiến thức và kinh nghiệm với những nền tảng khác muốn nghiên cứu thêm về iOS.\r\nCác bạn yêu thích và muốn bắt đầu làm quen với việc lập trình trên nền tảng iOS của Apple.', 'Uswyrp45kkj5e5nrw', '2', 'Hoàn thành', '2021-01-13', 0);
INSERT INTO `course` VALUES ('C8d0rgo2k3okjut5ekj', 'Lập trình Java nâng cao', 'Lập trình Java nâng cao', '/upload/course/C8d0rgo2k3okjut5ekj.jpg', 699000, 0, '<p>Kh&oacute;a học lập tr&igrave;nh Java n&agrave;y bao gồm c&aacute;c nội dung sau:<br />\r\n- T&igrave;m hi&ecirc;̉u cơ bản v&ecirc;̀ ng&ocirc;n ngữ l&acirc;̣p tr&igrave;nh Java (Từ định nghĩa đ&ecirc;́n ki&ecirc;̉u dữ li&ecirc;̣u, bi&ecirc;́n, c&acirc;u l&ecirc;̣nh, mảng, chu&ocirc;̃i... c&acirc;́u tr&uacute;c đi&ecirc;̀u khi&ecirc;̉n trong Java, phương thức, lớp,...).<br />\r\n- C&aacute;c kh&aacute;i niệm li&ecirc;n quan tới lập tr&igrave;nh hướng đối tượng.<br />\r\n- C&aacute;c kiến thức về lập tr&igrave;nh xử l&yacute; giao diện người d&ugrave;ng từ cơ bản tới n&acirc;ng cao.<br />\r\n- C&aacute;c kiến thức li&ecirc;n quan tới hệ quản trị cơ sở dữ liệu.<br />\r\n- C&aacute;ch cấu h&igrave;nh v&agrave; kết nối dữ liệu.<br />\r\n- C&aacute;ch thức truy vấn v&agrave; tương t&aacute;c dữ liệu.<br />\r\n- Kỹ thuật JPA để n&acirc;ng cao hiệu suất lập tr&igrave;nh cơ sở dữ liệu.</p>\r\n', NULL, 'Có được kiến thức toàn diện về ngôn ngữ lập trình Java.\r\nCó thể lập trình quản lý cơ sở dữ liệu.\r\nViết được phần mềm quản lý (liên quan đến cơ sở dữ liệu) cho khách hàng.\r\nDễ dàng tiến tới lập trình trên Android.', 'Bất cứ ai muốn học lập trình với Java.\r\nNhững người chưa biết gì, yêu thích lĩnh vực lập trình Java.\r\nSinh viên không học công nghệ thông tin muốn tìm cơ hội việc làm khác trong lĩnh vực công nghệ thông tin.', 'Uswyrp45kkj5e5nrw', '1', 'Hoàn thành', '2021-01-13', 0);
INSERT INTO `course` VALUES ('C8d0rgo2k3okjutb3gv', 'Lập trình Matlab cơ bản', 'Lập trình Matlab cơ bản', '/upload/course/C8d0rgo2k3okjutb3gv.jpg', 699000, 0, '<p>MATLAB (Matrix laboratory) l&agrave; một m&ocirc;i trường t&iacute;nh to&aacute;n số v&agrave; lập tr&igrave;nh, được thiết kế bởi c&ocirc;ng ty MathWorks. MATLAB cho ph&eacute;p t&iacute;nh to&aacute;n số với ma trận, vẽ đồ thị h&agrave;m số hay biểu đồ th&ocirc;ng tin, thực hiện thuật to&aacute;n, tạo c&aacute;c giao diện người d&ugrave;ng v&agrave; li&ecirc;n kết với những chương tr&igrave;nh m&aacute;y t&iacute;nh viết tr&ecirc;n nhiều ng&ocirc;n ngữ lập tr&igrave;nh kh&aacute;c. MATLAB gi&uacute;p đơn giản h&oacute;a việc giải quyết c&aacute;c b&agrave;i to&aacute;n t&iacute;nh to&aacute;n kĩ thuật so với c&aacute;c ng&ocirc;n ngữ lập tr&igrave;nh truyền thống như C, C++, v&agrave; Fortran.</p>\r\n\r\n<p>MATLAB được sử dụng trong nhiều lĩnh vực, bao gồm xử l&yacute; t&iacute;n hiệu v&agrave; ảnh, truyền th&ocirc;ng, thiết kế điều khiển tự động, đo lường kiểm tra, ph&acirc;n t&iacute;ch m&ocirc; h&igrave;nh t&agrave;i ch&iacute;nh, hay t&iacute;nh to&aacute;n sinh học. Với h&agrave;ng triệu kĩ sư v&agrave; nh&agrave; khoa học l&agrave;m việc trong m&ocirc;i trường c&ocirc;ng nghiệp cũng như ở m&ocirc;i trường h&agrave;n l&acirc;m, MATLAB l&agrave; ng&ocirc;n ngữ của t&iacute;nh to&aacute;n khoa học. Do vậy, nắm trong tay c&ocirc;ng cụ th&ocirc;ng minh v&agrave; hữu &iacute;ch như Matlab l&agrave; một lợi thế cho bất kỳ lập tr&igrave;nh vi&ecirc;n hay sinh vi&ecirc;n khối ng&agrave;nh c&ocirc;ng nghệ th&ocirc;ng tin n&agrave;o.</p>\r\n\r\n<p>Kh&oacute;a học &quot;Lập tr&igrave;nh Matlab cơ bản&quot; của ch&uacute;ng t&ocirc;i bao gồm +8 chương v&agrave; +36 b&agrave;i học cung cấp cho người học những kiến thức tổng quan về lập tr&igrave;nh Matlab, đi k&egrave;m rất nhiều v&iacute; dụ trực quan nhằm trang bị cho người học khả năng tự học v&agrave; tự ph&aacute;t triển kiến thức. Nội dung của kh&oacute;a học gi&uacute;p học vi&ecirc;n giải quyết những vấn đề gặp phải trong thực tế khi lập tr&igrave;nh v&agrave; giải quyết c&aacute;c b&agrave;i to&aacute;n kĩ thuật.</p>\r\n\r\n<p>C&ograve;n chờ g&igrave; nữa, đăng k&iacute; học Matlab ngay th&ocirc;i!</p>\r\n', NULL, 'Tự giải quyết các bài toán về giải tích số, xử lý tín hiệu số, xử lý đồ họa trong quá trình lập trình\r\nTiết kiệm thời gian và công sức trong học tập và nghiên cứu\r\nTrang bị cho mình những kiến thức dựa trên kinh nghiệm lập trình lâu năm của giảng viên cùng tư duy lập trình bài bản, giúp ích cho quá trình học tập và nghiên cứu lâu dài', 'Sinh viên đang theo học các ngành kĩ thuật, kinh tế, học viên cao học chưa có kiến thức căn bản hoặc mới tiếp xúc với lập trình', 'Uswyrp45kkj5e5nrw', '2', 'Hoàn thành', '2021-01-13', 0);
INSERT INTO `course` VALUES ('C8d0rgo2k3okjutcpd4', 'Lập trình ứng dụng iOS', 'Lập trình ứng dụng iOS', '/upload/course/C8d0rgo2k3okjutcpd4.jpg', 699000, 0, '<p>Kho&aacute; học lập tr&igrave;nh iOS cơ bạn tại Khoa Phạm nhằm hướng tới những bạn chưa hoặc đ&atilde; từng học bất kỳ một ng&ocirc;n ngữ lập tr&igrave;nh n&agrave;o. Việc x&acirc;y dưng một ứng dụng iOS tr&ecirc;n cả iphone v&agrave; ipad sẻ trở n&ecirc;n dễ d&agrave;ng sau khi bạn kết th&uacute;c kho&aacute; học<br />\r\nHướng dẫn cơ bản đến n&acirc;ng cao về lập tr&igrave;nh iOS bằng ng&ocirc;n ngữ swift<br />\r\nHo&agrave;n tất kh&oacute;a học, học vi&ecirc;n sẽ được trang bị kiến thức vững chắc để tự thiết kế ra một ứng dụng iOS &amp; tự vận h&agrave;nh, kiếm tiền th&ocirc;ng qua AppStore.<br />\r\nHo&agrave;n to&agrave;n đủ khả năng để ứng tuyển v&agrave;o c&aacute;c vị tr&iacute; lập tr&igrave;nh iOS tại c&aacute;c c&ocirc;ng ty trong &amp; ngo&agrave;i nước.<br />\r\nNếu chăm chỉ r&egrave;n luyện, bạn sẽ đủ khả năng tự th&agrave;nh lập c&ocirc;ng ty, hoặc nh&oacute;m chuy&ecirc;n nhận dự &aacute;n iOS từ kh&aacute;ch h&agrave;ng.</p>\r\n', NULL, 'Sử dụng công cụ lập trình Xcode\r\nThu nhập từ ứng dụng của mình\r\nTự xây dựng được ứng dụng chạy trên nền các thiết bị iphone và ipad\r\nCó thể áp dụng vào công việc thực tế', 'Dành cho những bạn đam mê lập trình di động trên nền tảng iOS', 'Uswyrp45kkj5e5nrw', '2', 'Hoàn thành', '2021-01-13', 0);
INSERT INTO `course` VALUES ('C8d0rgo2k3okjutimm4', 'Lập trình iOS SwiftUI', 'Lập trình iOS SwiftUI', '/upload/course/C8d0rgo2k3okjutimm4.jpg', 699000, 0, '<p>D&agrave;nh cho tất cả những bạn y&ecirc;u th&iacute;ch lập tr&igrave;nh iOS, đặc biệt c&aacute;c bạn sinh vi&ecirc;n v&agrave; c&aacute;c bạn đang đi l&agrave;m ở doanh nghiệp muốn cập nhật kiến thức lập tr&igrave;nh mới nhất của Apple với thời gian &iacute;t v&agrave; chi ph&iacute; thấp.</p>\r\n\r\n<p>Kh&oacute;a học cung cấp cho học vi&ecirc;n kiến thức lập tr&igrave;nh iOS mới nhất của Apple đ&oacute; l&agrave; SwiftUI. SwiftUI l&agrave; một framework được Apple giới thiệu tại WWDC 2019, SwiftUI gi&uacute;p ch&uacute;ng ta x&acirc;y dựng App một c&aacute;ch đơn giản hơn. Với SwiftUI bạn chỉ cần viết một lần l&agrave; c&oacute; thể build cho iOS, MacOS, TvOS v&agrave; cả WatchOS. Bạn c&oacute; thể sử dụng SwiftUI v&agrave; UIKit trong c&ugrave;ng một project, ch&uacute;ng ta sẽ viết code &iacute;t hơn v&agrave; tạo ra những App tốt hơn.</p>\r\n\r\n<p>Kho&aacute; học cung cấp cho bạn những kiến thức v&agrave; kỹ năng cơ bản nhất của lập tr&igrave;nh iOS với SwiftUI. C&aacute;c b&agrave;i giảng được tr&igrave;nh b&agrave;y một c&aacute;ch c&ocirc; đọng từng vấn đề, gi&uacute;p bạn tiết kiệm tối đa thời gian để nghi&ecirc;n cứu kiến thức lập tr&igrave;nh mới của Apple v&agrave; ứng dụng nhanh ch&oacute;ng v&agrave;o dự &aacute;n của m&igrave;nh.</p>\r\n\r\n<p>Lộ tr&igrave;nh học tập: 41 b&agrave;i chia l&agrave;m 8 chương gi&uacute;p người học c&oacute; thể sử dụng SwiftUI v&agrave; UIKit trong c&ugrave;ng một project, viết code &iacute;t hơn v&agrave; tạo ra những App tốt hơn.</p>\r\n', NULL, 'Bạn sẽ tự tay thiết kế được ứng dụng iOS với SwiftUI và kiếm tiền thông qua AppStore.\r\nBạn có thể cập nhật được công nghệ lập trình mới nhất của Apple để ứng dụng vào dự án của mình.\r\nBạn sẽ hoàn toàn đủ khả năng ứng tuyển vị trí lập trình iOS tại các công ty trong và ngoài nước.\r\nBạn có thể viết ứng dụng cộng hai số, ứng dụng Calculator và ứng dụng hiển thị món ăn.', 'Dành cho tất cả những bạn yêu thích lập trình iOS\r\nĐặc biệt các bạn Sinh viên và các bạn đang đi làm ở doanh nghiệp muốn cập nhật kiến thức lập trình mới nhất của Apple với thời gian ít và chi phí thấp.', 'Uswyrp45kkj5e5nrw', '2', 'Hoàn thành', '2021-01-13', 0);
INSERT INTO `course` VALUES ('C8d0rgo31kokjsspun2', 'Lập trình Python', 'Cơ bản về lập trình ngôn ngữ python', '/upload/course/C8d0rgo31kokjsspun2.jpg', 699000, 0, '<p><strong>dsfdsfsdf<em>dsfdsfdsfdsfdsf</em></strong><em>dsfdsfdsf</em></p>\r\n', NULL, 'ádsad', 'ádasdasdsa', 'Uswyrp45kkj5e5nrw', '2', 'Hoàn thành', '2021-01-11', 0);
INSERT INTO `course` VALUES ('C8d0rgon2wkjus0s74', 'Lập trình Typescript', 'Cơ bản lập trình Typescript', '/upload/course/C8d0rgon2wkjus0s74.jpg', 699000, 0, '<p>TypeScript l&agrave; một ng&ocirc;n ngữ m&atilde; nguồn mở miễn ph&iacute; hiện đang được ph&aacute;t triển v&agrave; bảo tr&igrave; bởi Microsoft. N&oacute; được xem l&agrave; ng&ocirc;n ngữ kế thừa ho&agrave;n hảo của JavaScript, với c&aacute;c bổ sung c&aacute;c tuỳ chọn kiểu tĩnh v&agrave; lớp tr&ecirc;n cơ sở lập tr&igrave;nh hướng đối tượng cho ng&ocirc;n ngữ n&agrave;y. Anders Hejlsberg, kiến tr&uacute;c sư ng&ocirc;n ngữ C# v&agrave; l&agrave; người tạo ra ng&ocirc;n ngữ Delphi v&agrave; Turbo Pascal đ&atilde; tham gia ph&aacute;t triển TypeScript v&agrave; c&oacute; thể sử dụng để ph&aacute;t triển ứng dụng chạy ph&iacute;a client, hay ph&iacute;a server (Node.js).</p>\r\n\r\n<p>Kh&oacute;a học cung cấp cho học vi&ecirc;n c&aacute;c kiến thức cơ bản về Typescript, c&aacute;c bạn sẽ được hướng dẫn c&aacute;ch c&agrave;i đặt , &aacute;p dụng v&agrave; kết hợp TypeScript với jQuery, c&aacute;c thư viện jQuery, thư viện Javascript mở rộng trong việc x&acirc;y dựng ho&agrave;n chỉnh Project Shopping Cart.</p>\r\n', NULL, 'Khoá học sẽ giúp học viên có kiến thức về Typescript.\r\nCó thể áp dụng vào các dự án.\r\nHoàn thành việc xây dựng Shopping Cart.', 'Sinh viên, nhân viên văn phòng thuộc lĩnh vực CNTT hoặc có đam mê tìm hiểu lập trình.', 'U8d0rgoojskj03tm75', '1', 'Hoàn thành', '2021-01-13', 0);
INSERT INTO `course` VALUES ('Cswyrp498kjdsuj8s', 'Nhập môn lập trình Web', 'Web', '/upload/course/Cswyrp498kjdsuj8s.jpg', 699000, 100, '<p>Bạn l&agrave; người mới v&agrave; mu&ocirc;́n bước đ&acirc;̀u t&igrave;m hi&ecirc;̉u v&ecirc;̀ l&acirc;̣p tr&igrave;nh web?</p>\r\n\r\n<p>Bạn mu&ocirc;́n tự x&acirc;y dựng trang web cho sản ph&acirc;̉m của m&igrave;nh?</p>\r\n\r\n<p>Bạn mu&ocirc;́n t&igrave;m t&ograve;i học hỏi những đi&ecirc;̀u mới, chuy&ecirc;n m&ocirc;n mới?</p>\r\n\r\n<p>Bạn c&oacute; niềm đam m&ecirc; với bộ m&ocirc;n lập tr&igrave;nh web nhưng đang băn khoăn kh&ocirc;ng biết n&ecirc;n chọn kh&oacute;a học n&agrave;o?</p>\r\n\r\n<p>Đừng lo lắng! H&atilde;y đến với kh&oacute;a học &quot;Nhập m&ocirc;n l&acirc;p tr&igrave;nh web&quot; của ch&uacute;ng t&ocirc;i để học tất cả những điều căn bản nhất về lập tr&igrave;nh web.</p>\r\n\r\n<p>Kh&oacute;a học &quot;Nh&acirc;̣p m&ocirc;n l&acirc;̣p tr&igrave;nh Web&quot; sẽ cho bạn c&aacute;i nh&igrave;n t&ocirc;̉ng quan nh&acirc;́t v&ecirc;̀ l&acirc;̣p tr&igrave;nh web. Những y&ecirc;́u t&ocirc;́ gi&uacute;p bạn đưa ra quy&ecirc;́t định c&oacute; n&ecirc;n học l&acirc;̣p tr&igrave;nh web hay kh&ocirc;ng.</p>\r\n\r\n<p>Đồng thời kh&oacute;a học cũng giới thiệu c&aacute;ch thức sử dụng c&aacute;c c&ocirc;ng cụ đơn giản v&agrave; dễ d&ugrave;ng nhất để x&acirc;y dựng một trang web của ri&ecirc;ng bạn.</p>\r\n', NULL, 'Biết được lý do tại sao bạn nên học lập trình web mà không phải một môn lập trình nào khác.\r\nHiểu được lập trình web là gì và những kiến thức cơ bản nhất về lập trình web.', 'Những người mong muốn học lập trình web.\r\nHọc sinh, sinh viên khoa CNTT.\r\nHọc sinh, sinh viên có ngành khác mong muốn học hỏi cái mới.', 'Uswyrp45kkj5e5nrw', '1', 'Chưa hoàn thành', '2021-01-01', 1);
INSERT INTO `course` VALUES ('Cswyrp61kkj9sbfva', 'Lập trình backend cho website bằng PHP/Mysql theo mô hình MVC', 'Backend PHP MySQL', '/upload/course/Cswyrp61kkj9sbfva.jpg', 699000, 100, '<p>Điểm kh&aacute;c biệt của kh&oacute;a học n&agrave;y so với c&aacute;c kh&oacute;a học online kh&aacute;c c&ugrave;ng chủ đề lập tr&igrave;nh PHP l&agrave; g&igrave; vậy ?<br />\r\nKh&aacute;c người tr&igrave;nh b&agrave;y bạn ạ. M&igrave;nh nghĩ cũng ảnh hưởng một phần đ&oacute;, mỗi người một c&aacute;ch tr&igrave;nh b&agrave;y v&agrave; tiếp cận kh&aacute;c nhau, sẽ hợp với từng người kh&aacute;c nhau, hi vọng bạn v&agrave; m&igrave;nh &quot;&quot;tương th&iacute;ch&quot;&quot;. Hơn nữa m&igrave;nh tự tin ở phần l&agrave; rất chi tiết, m&igrave;nh nghĩ l&agrave; kh&ocirc;ng ai n&oacute;i chi tiết như thế bạn ạ, để đảm bảo l&agrave; bạn hiểu tận ng&oacute;c ng&aacute;ch v&agrave; bản chất của vấn đề. Einestern đ&atilde; n&oacute;i l&agrave; nếu bạn kh&ocirc;ng thể giải th&iacute;ch cho một đứa trẻ hiểu th&igrave; bạn cũng chẳng hiểu r&otilde; vấn đề. Bạn thử học nh&eacute;. &quot;</p>\r\n', NULL, 'Tự lập trình phần mềm phù hợp với nhu cầu và công việc cá nhân\r\nKiến thức ở khóa này là nền tảng cho khóa nâng cao sau này và các khóa về fullstact angular sẽ xuất bản tới', 'Sinh viên học về công nghệ thông tin\r\nNhững bạn chưa biết rõ bản chất của lập trình MVC\r\nNhững bạn muốn học về lập trình web\r\nNhững bạn muốn tự lập trình backend cho website của mình', 'Uswyrp45kkj5e5nrw', '2', 'Hoàn thành', '2020-12-31', 1);

-- ----------------------------
-- Table structure for deal
-- ----------------------------
DROP TABLE IF EXISTS `deal`;
CREATE TABLE `deal`  (
  `code_id` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `value` double NULL DEFAULT NULL,
  `date` date NULL DEFAULT NULL,
  PRIMARY KEY (`code_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for favourite
-- ----------------------------
DROP TABLE IF EXISTS `favourite`;
CREATE TABLE `favourite`  (
  `user_id` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `course_id` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`user_id`, `course_id`) USING BTREE,
  INDEX `FK_favourite_course_idx`(`course_id`) USING BTREE,
  CONSTRAINT `FK_favourite_course` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_favourite_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of favourite
-- ----------------------------
INSERT INTO `favourite` VALUES ('U8d0rgoojskj03tm75', 'C01');
INSERT INTO `favourite` VALUES ('Uswyrp45kkj5e5nrw', 'C08');
INSERT INTO `favourite` VALUES ('Uswyrp45kkj5e5nrw', 'C09');
INSERT INTO `favourite` VALUES ('Uswyrp45kkj5e5nrw', 'C10');
INSERT INTO `favourite` VALUES ('Uswyrp45kkj5e5nrw', 'C12');

-- ----------------------------
-- Table structure for final_bill
-- ----------------------------
DROP TABLE IF EXISTS `final_bill`;
CREATE TABLE `final_bill`  (
  `final_bill_id` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `status` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `date` date NULL DEFAULT NULL,
  `price` double NULL DEFAULT NULL,
  PRIMARY KEY (`final_bill_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of final_bill
-- ----------------------------
INSERT INTO `final_bill` VALUES ('B8d0rgo1fkkjuy4bfb', 'Hoàn Thành', '2021-01-13', 355480);
INSERT INTO `final_bill` VALUES ('B8d0rgo1gqokjthis4i', 'Hoàn Thành', '2021-01-12', 299500);
INSERT INTO `final_bill` VALUES ('B8d0rgo2k3okjuuqmku', 'Hoàn Thành', '2021-01-13', 699000);
INSERT INTO `final_bill` VALUES ('B8d0rgoaq8kjsfxo9y', 'Hoàn Thành', '2021-01-11', 704980);

-- ----------------------------
-- Table structure for lesson_list
-- ----------------------------
DROP TABLE IF EXISTS `lesson_list`;
CREATE TABLE `lesson_list`  (
  `list_id` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `chapter_number` int(0) NULL DEFAULT NULL,
  `chapter_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `course_id` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`list_id`) USING BTREE,
  INDEX `FK_lessonlist_course_idx`(`course_id`) USING BTREE,
  CONSTRAINT `FK_lessonlist_course` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lesson_list
-- ----------------------------
INSERT INTO `lesson_list` VALUES ('L4fh2214zwkjjvlvvh', 1, 'Bán hàng 1', 'C11');
INSERT INTO `lesson_list` VALUES ('L4fh2214zwkjjvlvxd', 2, 'Bán hàng 2', 'C11');
INSERT INTO `lesson_list` VALUES ('L8d0rgo2k3okjust6cn', 1, 'GIỚI THIỆU KHÓA HỌC', 'C07');
INSERT INTO `lesson_list` VALUES ('L8d0rgo2k3okjust6cz', 2, 'GIỚI THIỆU KỸ THUẬT', 'C07');
INSERT INTO `lesson_list` VALUES ('L8d0rgo2k3okjusuhqd', 1, 'GIỚI THIỆU KHÓA HỌC', 'C08');
INSERT INTO `lesson_list` VALUES ('L8d0rgo2k3okjusuhqn', 2, 'GIỚI THIỆU KỸ THUẬT', 'C08');
INSERT INTO `lesson_list` VALUES ('L8d0rgo2k3okjusw1pi', 1, 'GIỚI THIỆU KHÓA HỌC', 'C09');
INSERT INTO `lesson_list` VALUES ('L8d0rgo2k3okjusw1ps', 2, 'GIỚI THIỆU KỸ THUẬT', 'C09');
INSERT INTO `lesson_list` VALUES ('L8d0rgo2k3okjuszzpu', 1, 'GIỚI THIỆU KHÓA HỌC', 'C10');
INSERT INTO `lesson_list` VALUES ('L8d0rgo2k3okjuszzqa', 2, 'GIỚI THIỆU KỸ THUẬT', 'C10');
INSERT INTO `lesson_list` VALUES ('L8d0rgo2k3okjut1hgt', 1, 'GIỚI THIỆU KHÓA HỌC', 'C12');
INSERT INTO `lesson_list` VALUES ('L8d0rgo2k3okjut1hh4', 2, 'GIỚI THIỆU KỸ THUẬT', 'C12');
INSERT INTO `lesson_list` VALUES ('L8d0rgo2k3okjut95c2', 1, 'GIỚI THIỆU KHÓA HỌC', 'C8d0rgo2k3okjut36tb');
INSERT INTO `lesson_list` VALUES ('L8d0rgo2k3okjut95cd', 2, 'GIỚI THIỆU KỸ THUẬT', 'C8d0rgo2k3okjut36tb');
INSERT INTO `lesson_list` VALUES ('L8d0rgo2k3okjutb1rb', 1, 'GIỚI THIỆU KHÓA HỌC', 'C8d0rgo2k3okjut5ekj');
INSERT INTO `lesson_list` VALUES ('L8d0rgo2k3okjutb1rm', 2, 'GIỚI THIỆU KỸ THUẬT', 'C8d0rgo2k3okjut5ekj');
INSERT INTO `lesson_list` VALUES ('L8d0rgo2k3okjutlz2g', 1, 'GIỚI THIỆU KHÓA HỌC', 'C8d0rgo2k3okjutb3gv');
INSERT INTO `lesson_list` VALUES ('L8d0rgo2k3okjutlz2r', 2, 'GIỚI THIỆU KỸ THUẬT', 'C8d0rgo2k3okjutb3gv');
INSERT INTO `lesson_list` VALUES ('L8d0rgo2k3okjutz1vn', 1, 'GIỚI THIỆU KHÓA HỌC', 'C01');
INSERT INTO `lesson_list` VALUES ('L8d0rgo2k3okjutz1vw', 2, 'GIỚI THIỆU KỸ THUẬT', 'C01');
INSERT INTO `lesson_list` VALUES ('L8d0rgo2k3okjuu73pk', 1, 'Lập trình python cơ bản', 'C8d0rgo31kokjsspun2');
INSERT INTO `lesson_list` VALUES ('L8d0rgo2k3okjuu73q1', 2, 'Bán hàng 1', 'C8d0rgo31kokjsspun2');
INSERT INTO `lesson_list` VALUES ('L8d0rgo2k3okjuu9xh5', 1, 'GIỚI THIỆU KHÓA HỌC', 'C8d0rgo2k3okjutimm4');
INSERT INTO `lesson_list` VALUES ('L8d0rgo2k3okjuu9xhl', 2, 'GIỚI THIỆU KỸ THUẬT', 'C8d0rgo2k3okjutimm4');
INSERT INTO `lesson_list` VALUES ('L8d0rgo2k3okjuubcgu', 1, 'GIỚI THIỆU KHÓA HỌC', 'C8d0rgo2k3okjutcpd4');
INSERT INTO `lesson_list` VALUES ('L8d0rgo2k3okjuubch7', 2, 'GIỚI THIỆU KỸ THUẬT', 'C8d0rgo2k3okjutcpd4');
INSERT INTO `lesson_list` VALUES ('L8d0rgo2k3okjuuduns', 1, 'Giới thiệu', 'Cswyrp61kkj9sbfva');
INSERT INTO `lesson_list` VALUES ('L8d0rgon2wkjus6opu', 1, 'GIỚI THIỆU KHÓA HỌC', 'C8d0rgon2wkjus0s74');
INSERT INTO `lesson_list` VALUES ('L8d0rgon2wkjus6orj', 2, 'SỬ DỤNG MÃ NGUỒN VÀ TÀI NGUYÊN TRONG KHÓA HỌC', 'C8d0rgon2wkjus0s74');
INSERT INTO `lesson_list` VALUES ('L8d0rgon2wkjuscp5o', 1, 'Giới thiệu về VBA', 'C04');
INSERT INTO `lesson_list` VALUES ('L8d0rgon2wkjuscp5w', 2, 'SỬ DỤNG MÃ NGUỒN VÀ TÀI NGUYÊN TRONG KHÓA HỌC', 'C04');
INSERT INTO `lesson_list` VALUES ('L8d0rgon2wkjusfjba', 1, 'Giới thiệu về lập trình C++ và các công cụ lập trình', 'C03');
INSERT INTO `lesson_list` VALUES ('L8d0rgon2wkjusfjbp', 2, 'Các khái niệm cơ bản', 'C03');
INSERT INTO `lesson_list` VALUES ('L8d0rgon2wkjushirl', 1, 'GIỚI THIỆU KHÓA HỌC', 'C02');
INSERT INTO `lesson_list` VALUES ('L8d0rgon2wkjushis1', 2, 'GIỚI THIỆU KĨ THUẬT', 'C02');
INSERT INTO `lesson_list` VALUES ('Lswyrp538kjfxfrlu', 1, 'Thẻ HTML', 'Cswyrp498kjdsuj8s');
INSERT INTO `lesson_list` VALUES ('Lswyrp538kjfxfrv4', 2, 'Thẻ HTML', 'Cswyrp498kjdsuj8s');

-- ----------------------------
-- Table structure for sessions
-- ----------------------------
DROP TABLE IF EXISTS `sessions`;
CREATE TABLE `sessions`  (
  `session_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `expires` int(0) UNSIGNED NOT NULL,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL,
  PRIMARY KEY (`session_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sessions
-- ----------------------------
INSERT INTO `sessions` VALUES ('JAMCZGR5bD-UrfNM3y1dftJDlkahk-8X', 1610601278, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"auth\":true,\"cart\":[{\"author_name\":\"Lê Hoàng Phúc\",\"author_image\":\"/images/BecomeInstructor/ltn.jpg\",\"course_id\":\"C01\",\"deal_value\":50,\"intro_image\":\"/images/productTesting.png\",\"number_student\":1,\"number_rating\":2,\"course_name\":\"Bí quyết giao tiếp để thành công\",\"price\":699000,\"reduce_price\":349500,\"overall_star\":\"4.5\",\"categoty_id\":\"1\",\"isHaving\":0,\"IsBuy\":0,\"IsNew\":0,\"IsHot\":0,\"user_id\":\"U8d0rgoojskj03tm75\",\"category_name\":\"Lập trình web\"}],\"shopCart\":[{\"author_name\":\"Lê Hoàng Phúc\",\"author_image\":\"/images/BecomeInstructor/ltn.jpg\",\"course_id\":\"C01\",\"deal_value\":50,\"intro_image\":\"/images/productTesting.png\",\"number_student\":1,\"number_rating\":2,\"course_name\":\"Bí quyết giao tiếp để thành công\",\"price\":699000,\"reduce_price\":349500,\"overall_star\":\"4.5\",\"categoty_id\":\"1\",\"isHaving\":0,\"user_id\":\"U8d0rgoojskj03tm75\"}],\"authUser\":{\"user_id\":\"U8d0rgoojskj03tm75\",\"name\":\"Lê Hoàng Phúc\",\"gender\":\"Nam\",\"dob\":\"2021-01-12T17:00:00.000Z\",\"phone_number\":\"123123\",\"email\":\"phucyugi@gmail.com\",\"password\":\"$2a$10$eaeN/x0vA8RF.0egO0mX5OUu1FmCEue6vCRCfGE2YkYbdTM/1xkee\",\"password_lvl2\":null,\"avatar\":\"/images/BecomeInstructor/ltn.jpg\",\"description\":\"                    Về sư phạm:\\r\\nTham gia giảng dạy từ năm 2009, thầy Trần Duy Thanh hiện là Thạc sĩ Khoa học Máy tính của các trường đại học lớn TP.HCM:\\r\\n1) Đại Học Công Nghiệp TP.HCM.\\r\\n2) Đại Học Công Nghệ Đồng Nai (Trưởng Bộ môn Công nghệ Phần mềm).\\r\\n3) Đại Học Khoa Học Tự Nhiên TP.HCM - Trung Tâm Tin Học.\\r\\n4) Đại Học Kinh Tế - Luật.\\r\\nNgoài công việc giảng dạy, thầy Trần Duy Thanh còn nắm giữ các chức vụ quan trọng và tham gia các dự án lớn của doanh nghiệp từ năm 2005, cụ thể:\\r\\n- Nắm giữ chức vụ Giám đốc Chiến lược công ty Cổ Phần Hưng Gia Sài Gòn (từ 2014 đến 7/2016).\\r\\n- Thầy Trần Duy Thanh còn đảm nhận vị trí Kỹ sư phần mềm (System Profiling) và tham gia nhiều dự án lớn của Công ty KIC (http://kicthermal.com).\\r\\nTừ năm 2013 đến năm 2015, thầy Trần Duy Thanh tham gia làm Dự án khoa học cấp Đại Học Quốc Gia mang tên \\\"Xây dựng hệ thống phân tích mạng xã hội theo chủ đề và ứng dụng vào mạng xã hội trong trường Đại học\\\", mã số B2013-26-02. Dự án được xếp loại tốt, nghiệm thu vào ngày 10 tháng 12 năm 2015.\",\"role\":1,\"address\":\"VietNam\"},\"courses\":[{\"course_id\":\"C11\"}],\"retUrl\":null,\"cid\":\"C8d0rgo2k3okjutimm4\",\"ll\":[{\"list_id\":\"L8d0rgo2k3okjuuduns\",\"chapter_number\":1,\"chapter_name\":\"Giới thiệu\",\"course_id\":\"Cswyrp61kkj9sbfva\",\"videos\":[{\"video_id\":\"V8d0rgo2k3okjuudunx\",\"video_name\":\"Giới thiệu MVC\",\"video_duration\":954,\"url\":\"https://www.youtube.com/watch?v=bUEykHfMMnc\",\"list_id\":\"L8d0rgo2k3okjuuduns\",\"video_number\":1},{\"video_id\":\"V8d0rgo2k3okjuuduo1\",\"video_name\":\"Vẽ mô hình\",\"video_duration\":1960,\"url\":\"https://www.youtube.com/watch?v=HQ5DRb6xSlI\",\"list_id\":\"L8d0rgo2k3okjuuduns\",\"video_number\":2},{\"video_id\":\"V8d0rgo2k3okjuuduo5\",\"video_name\":\"Đen x Kimmese x Lynk Lee - Mashup Rapcoustic 5\",\"video_duration\":222,\"url\":\"https://www.youtube.com/watch?v=4heQXpe9FrU\",\"list_id\":\"L8d0rgo2k3okjuuduns\",\"video_number\":3}]}]}');
INSERT INTO `sessions` VALUES ('MNiGC9KCNYh-470PRU-F1NfjkqriPbrr', 1610548194, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"auth\":true,\"cart\":[{\"author_name\":\"Lưu Thiện Nhân\",\"author_image\":\"/upload/user_avatar/Uswyrp45kkj5e5nrw.jpg\",\"course_id\":\"C08\",\"deal_value\":76,\"intro_image\":\"/images/product_ID8.png\",\"number_student\":0,\"number_rating\":0,\"course_name\":\"Nền tảng tiếng Anh cho người mới bắt đầu\",\"price\":749000,\"reduce_price\":179760,\"overall_star\":null,\"categoty_id\":\"6\",\"isHaving\":0,\"IsBuy\":0,\"IsNew\":0,\"IsHot\":0,\"user_id\":\"Uswyrp45kkj5e5nrw\",\"category_name\":\"Digital Marketing\"},{\"author_name\":\"Lưu Thiện Nhân\",\"author_image\":\"/upload/user_avatar/Uswyrp45kkj5e5nrw.jpg\",\"course_id\":\"C09\",\"deal_value\":74,\"intro_image\":\"/images/product_ID9.jpg\",\"number_student\":0,\"number_rating\":0,\"course_name\":\"Học thiết kế đồ họa trọn bộ 30 ngày\",\"price\":699000,\"reduce_price\":181740,\"overall_star\":null,\"categoty_id\":\"2\",\"isHaving\":0,\"IsBuy\":0,\"IsNew\":0,\"IsHot\":0,\"user_id\":\"Uswyrp45kkj5e5nrw\",\"category_name\":\"Lập trình thiết bị di động\"},{\"author_name\":\"Lưu Thiện Nhân\",\"author_image\":\"/upload/user_avatar/Uswyrp45kkj5e5nrw.jpg\",\"course_id\":\"C10\",\"deal_value\":70,\"intro_image\":\"/images/product_ID10.png\",\"number_student\":0,\"number_rating\":0,\"course_name\":\"85 chuyên đề Excel cơ bản đến nâng cao\",\"price\":599000,\"reduce_price\":179700,\"overall_star\":null,\"categoty_id\":\"5\",\"isHaving\":0,\"IsBuy\":0,\"IsNew\":0,\"IsHot\":0,\"user_id\":\"Uswyrp45kkj5e5nrw\",\"category_name\":\"Marketing căn bản\"},{\"author_name\":\"Lưu Thiện Nhân\",\"author_image\":\"/upload/user_avatar/Uswyrp45kkj5e5nrw.jpg\",\"course_id\":\"C12\",\"deal_value\":50,\"intro_image\":\"/images/product_ID5.png\",\"number_student\":0,\"number_rating\":1,\"course_name\":\"Học guitar đệm hát cấp tốc trong 30 ngày\",\"price\":599000,\"reduce_price\":299500,\"overall_star\":\"5.0\",\"categoty_id\":\"1\",\"isHaving\":0,\"IsBuy\":0,\"IsNew\":0,\"IsHot\":0,\"user_id\":\"Uswyrp45kkj5e5nrw\",\"category_name\":\"Lập trình web\"}],\"shopCart\":[{\"author_name\":\"Lưu Thiện Nhân\",\"author_image\":\"/upload/user_avatar/Uswyrp45kkj5e5nrw.jpg\",\"course_id\":\"C10\",\"deal_value\":70,\"intro_image\":\"/images/product_ID10.png\",\"number_student\":0,\"number_rating\":0,\"course_name\":\"85 chuyên đề Excel cơ bản đến nâng cao\",\"price\":599000,\"reduce_price\":179700,\"overall_star\":null,\"categoty_id\":\"5\",\"isHaving\":0,\"user_id\":\"Uswyrp45kkj5e5nrw\"}],\"authUser\":{\"user_id\":\"Uswyrp45kkj5e5nrw\",\"name\":\"Lưu Thiện Nhân\",\"gender\":\"Khác\",\"dob\":\"2020-11-30T17:00:00.000Z\",\"phone_number\":\"0703002347\",\"email\":\"nguoiamphu\",\"password\":\"$2a$10$UtYSET9vR1AAWNbHyEsuMeS5ljiVslyl/iGzXWkin4hpXPhFmiK7W\",\"password_lvl2\":null,\"avatar\":\"/upload/user_avatar/Uswyrp45kkj5e5nrw.jpg\",\"description\":\"ádqwqd\\r\\nqưd\\r\\nqư\\r\\ndqw\\r\\nd\\r\\nqưdfqwfqfqfw\",\"role\":1,\"address\":\"123 Nguyễn Văn Cừ Q.5\"},\"courses\":[{\"course_id\":\"C01\"},{\"course_id\":\"C04\"},{\"course_id\":\"C07\"},{\"course_id\":\"Cswyrp498kjdsuj8s\"}],\"retUrl\":\"/lecturer/\",\"cid\":\"C8d0rgo2qg8kjtzq7cr\",\"ll\":[{\"list_id\":\"L8d0rgo18mokju3daua\",\"chapter_number\":1,\"chapter_name\":\"Lập trình python cơ bản\",\"course_id\":\"C8d0rgo31kokjsspun2\",\"videos\":[{\"video_id\":\"V8d0rgo18mokju3daue\",\"video_name\":\"Nhạc mỹ 1\",\"video_duration\":1554,\"url\":\"https://www.youtube.com/watch?v=k9_WSb-FyYw\",\"list_id\":\"L8d0rgo18mokju3daua\",\"video_number\":1},{\"video_id\":\"V8d0rgo18mokju3dauh\",\"video_name\":\"Nhạc mỹ 2\",\"video_duration\":1702,\"url\":\"https://www.youtube.com/watch?v=hWMbl5Vg6zc\",\"list_id\":\"L8d0rgo18mokju3daua\",\"video_number\":2}]},{\"list_id\":\"L8d0rgo18mokju3daul\",\"chapter_number\":2,\"chapter_name\":\"Bán hàng 1\",\"course_id\":\"C8d0rgo31kokjsspun2\",\"videos\":[{\"video_id\":\"V8d0rgo18mokju3dauq\",\"video_name\":\"Ok\",\"video_duration\":2919,\"url\":\"https://www.youtube.com/watch?v=lLnOT7xGdRw\",\"list_id\":\"L8d0rgo18mokju3daul\",\"video_number\":1},{\"video_id\":\"V8d0rgo18mokju3dauu\",\"video_name\":\"fantasy\",\"video_duration\":1342,\"url\":\"https://www.youtube.com/watch?v=Q7c9xWhs8Ks\",\"list_id\":\"L8d0rgo18mokju3daul\",\"video_number\":2},{\"video_id\":\"V8d0rgo18mokju3dauy\",\"video_name\":\"fantasy123\",\"video_duration\":2518,\"url\":\"https://www.youtube.com/watch?v=oYQ7UvxqlJE\",\"list_id\":\"L8d0rgo18mokju3daul\",\"video_number\":3},{\"video_id\":\"V8d0rgo18mokju3dav2\",\"video_name\":\"tìm bug\",\"video_duration\":2106,\"url\":\"https://www.youtube.com/watch?v=6JAEccdz1DA\",\"list_id\":\"L8d0rgo18mokju3daul\",\"video_number\":4}]}]}');

-- ----------------------------
-- Table structure for shopping_cart
-- ----------------------------
DROP TABLE IF EXISTS `shopping_cart`;
CREATE TABLE `shopping_cart`  (
  `user_id` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `course_id` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`user_id`, `course_id`) USING BTREE,
  INDEX `FK_favourite_course_idx1`(`course_id`) USING BTREE,
  CONSTRAINT `sc_co` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `sc_us` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shopping_cart
-- ----------------------------
INSERT INTO `shopping_cart` VALUES ('U8d0rgoojskj03tm75', 'C01');

-- ----------------------------
-- Table structure for star_rating
-- ----------------------------
DROP TABLE IF EXISTS `star_rating`;
CREATE TABLE `star_rating`  (
  `user_id` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `course_id` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `num_star` int(0) NULL DEFAULT NULL,
  `comment` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`, `course_id`) USING BTREE,
  INDEX `FK_starrating_course_idx`(`course_id`) USING BTREE,
  CONSTRAINT `FK_starrating_course` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_starrating_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of star_rating
-- ----------------------------
INSERT INTO `star_rating` VALUES ('1', 'C01', 4, 'ok');
INSERT INTO `star_rating` VALUES ('1', 'C02', 4, 'ok');
INSERT INTO `star_rating` VALUES ('Uswyrp2a4kitph7ft', 'C01', 5, 'Good');
INSERT INTO `star_rating` VALUES ('Uswyrp2a4kitph7ft', 'C02', 5, 'good');
INSERT INTO `star_rating` VALUES ('Uswyrp2a4kitph7ft', 'C12', 5, 'good');
INSERT INTO `star_rating` VALUES ('Uswyrp45kkj5e5nrw', 'C11', 4, 'ok');
INSERT INTO `star_rating` VALUES ('Uswyrp45kkj5e5nrw', 'Cswyrp498kjdsuj8s', 4, 'Khóa học rất ok tôi rất hài lòng!');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `user_id` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `gender` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `dob` date NULL DEFAULT NULL,
  `phone_number` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `email` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password_lvl2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `avatar` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `role` int(0) NULL DEFAULT NULL,
  `address` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`) USING BTREE,
  FULLTEXT INDEX `name`(`name`)
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'Luu a', NULL, NULL, NULL, 'phuc@gmail.com', '123123', NULL, '/images/BecomeInstructor/ltn.jpg', NULL, 3, NULL);
INSERT INTO `user` VALUES ('U4fh2219r8kjqrmfcs', 'phúc lê', NULL, NULL, NULL, 'phucyugi2@gmail.com', '$2a$10$gZIttUzYmyGH8S2Ntzbjk.K166CBce3/9wS9CDIGeKEbYjuCDYbs6', '900451', NULL, NULL, 0, NULL);
INSERT INTO `user` VALUES ('U8d0rgoojskj03tm75', 'Lê Hoàng Phúc', 'Nam', '2021-01-13', '123123', 'phucyugi@gmail.com', '$2a$10$eaeN/x0vA8RF.0egO0mX5OUu1FmCEue6vCRCfGE2YkYbdTM/1xkee', NULL, '/images/BecomeInstructor/ltn.jpg', '                    Về sư phạm:\r\nTham gia giảng dạy từ năm 2009, thầy Trần Duy Thanh hiện là Thạc sĩ Khoa học Máy tính của các trường đại học lớn TP.HCM:\r\n1) Đại Học Công Nghiệp TP.HCM.\r\n2) Đại Học Công Nghệ Đồng Nai (Trưởng Bộ môn Công nghệ Phần mềm).\r\n3) Đại Học Khoa Học Tự Nhiên TP.HCM - Trung Tâm Tin Học.\r\n4) Đại Học Kinh Tế - Luật.\r\nNgoài công việc giảng dạy, thầy Trần Duy Thanh còn nắm giữ các chức vụ quan trọng và tham gia các dự án lớn của doanh nghiệp từ năm 2005, cụ thể:\r\n- Nắm giữ chức vụ Giám đốc Chiến lược công ty Cổ Phần Hưng Gia Sài Gòn (từ 2014 đến 7/2016).\r\n- Thầy Trần Duy Thanh còn đảm nhận vị trí Kỹ sư phần mềm (System Profiling) và tham gia nhiều dự án lớn của Công ty KIC (http://kicthermal.com).\r\nTừ năm 2013 đến năm 2015, thầy Trần Duy Thanh tham gia làm Dự án khoa học cấp Đại Học Quốc Gia mang tên \"Xây dựng hệ thống phân tích mạng xã hội theo chủ đề và ứng dụng vào mạng xã hội trong trường Đại học\", mã số B2013-26-02. Dự án được xếp loại tốt, nghiệm thu vào ngày 10 tháng 12 năm 2015.', 1, 'VietNam');
INSERT INTO `user` VALUES ('Uswyrp2a4kitph7ft', 'Luu Thien Nhan', NULL, NULL, NULL, 'nhanluu838@gmail.com', '$2a$10$kYroKyRFPmJn1zYPkWsl2OVFhzlap4ZpnQOlN.IxABE/RNYO5Qwj6', NULL, '/images/BecomeInstructor/ltn.jpg', NULL, 0, NULL);
INSERT INTO `user` VALUES ('Uswyrp45kkj5e5nrw', 'Lưu Thiện Nhân', 'Nam', '2021-01-01', '0703002347', 'nguoiamphu', '$2a$10$UtYSET9vR1AAWNbHyEsuMeS5ljiVslyl/iGzXWkin4hpXPhFmiK7W', NULL, '/upload/user_avatar/Uswyrp45kkj5e5nrw.jpg', '                    Quản lý đào tạo tại ZendVN\r\nVị trí đã từng đảm nhiệm: Developer, Teamleader, Project manager, Training manager\r\nCông việc hiện nay: Training manager & Project manager tại ZendVN\r\nXây dựng kênh học lập trình miễn phí với hơn 6 triệu lượt xem trên Youtube: https://www.youtube.com/user/luutruonghailan/videos\r\nCác khóa học trực tuyến đã xây dựng: NodeJS, Laravel, Angular, ReactJS, Lập trình PHP, Zend Framework 2.x, jQuery Master, Bootstrap, HTML, CSS, Javascript, Python, ...', 1, '123 Nguyễn Văn Cừ Q.5');
INSERT INTO `user` VALUES ('Uswyrp7zckjpte2an', 'Admin  ', NULL, NULL, NULL, 'nminh7953@gmail.com', '$2a$10$JhGA3raewzYjROEl518UAuqXXPfAOAOMW/KJgM99cMfxUj2UQCDYC', '814951', NULL, NULL, 2, NULL);

-- ----------------------------
-- Table structure for video
-- ----------------------------
DROP TABLE IF EXISTS `video`;
CREATE TABLE `video`  (
  `video_id` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `video_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `video_duration` int(0) NULL DEFAULT NULL,
  `url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `list_id` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `video_number` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`video_id`) USING BTREE,
  INDEX `FK_video_lessonlist_idx`(`list_id`) USING BTREE,
  CONSTRAINT `FK_video_lessonlist` FOREIGN KEY (`list_id`) REFERENCES `lesson_list` (`list_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of video
-- ----------------------------
INSERT INTO `video` VALUES ('V4fh2214zwkjjvlvwd', 'Bigcityboi', NULL, 'https://www.youtube.com/watch?v=jgZkrA8E5do', 'L4fh2214zwkjjvlvvh', 1);
INSERT INTO `video` VALUES ('V4fh2214zwkjjvlvws', 'Ok', NULL, 'https://www.youtube.com/watch?v=SNES5Y-tYxM', 'L4fh2214zwkjjvlvvh', 2);
INSERT INTO `video` VALUES ('V4fh2214zwkjjvlvwz', 'SOFAR', NULL, 'https://www.youtube.com/watch?v=_MM1MQgFjRM', 'L4fh2214zwkjjvlvvh', 3);
INSERT INTO `video` VALUES ('V4fh2214zwkjjvlvxi', 'TÌNH NHÂN ƠI ! Superbrothers x Orange x Binz | OFFICIAL MV', NULL, 'https://www.youtube.com/watch?v=vYE2WyHypF0', 'L4fh2214zwkjjvlvxd', 1);
INSERT INTO `video` VALUES ('V4fh2214zwkjjvlvxp', 'ORANGE - \"nữ hoàng hát live\" có thể cân mọi thể loại nhạc khiến người nghe nổi da gà?', NULL, 'https://www.youtube.com/watch?v=WQJOBRjsvgs', 'L4fh2214zwkjjvlvxd', 2);
INSERT INTO `video` VALUES ('V8d0rgo2k3okjust6ct', '“Lan Quế Phường tầm này là tầm thường, ở đây mới là thiên đường” Dân Chơi Xóm(Lyric)|JustaTee x MCK', 152, 'https://www.youtube.com/watch?v=XY2hxJO7pQs', 'L8d0rgo2k3okjust6cn', 1);
INSERT INTO `video` VALUES ('V8d0rgo2k3okjust6d4', 'MIN - ‘TRÊN TÌNH BẠN DƯỚI TÌNH YÊU’ OFFICIAL MUSIC VIDEO', 294, 'https://www.youtube.com/watch?v=0R8IbpKXavM', 'L8d0rgo2k3okjust6cz', 1);
INSERT INTO `video` VALUES ('V8d0rgo2k3okjusuhqj', 'CHÂN ÁI - ORANGE x KHÓI x CHÂU ĐĂNG KHOA | Official Music Video', 433, 'https://www.youtube.com/watch?v=i9_ZpPDtBCA', 'L8d0rgo2k3okjusuhqd', 1);
INSERT INTO `video` VALUES ('V8d0rgo2k3okjusuhqs', 'Ex\'s Hate Me - B Ray x Masew (Ft AMEE) | Official MV', 268, 'https://www.youtube.com/watch?v=95ahbau-rJk', 'L8d0rgo2k3okjusuhqn', 1);
INSERT INTO `video` VALUES ('V8d0rgo2k3okjusw1pn', 'Buồn Thì Cứ Khóc Đi - Lynk Lee | Official MV', 235, 'https://www.youtube.com/watch?v=X-GCJwz4PnY', 'L8d0rgo2k3okjusw1pi', 1);
INSERT INTO `video` VALUES ('V8d0rgo2k3okjusw1px', 'Đen x Kimmese x Lynk Lee - Mashup Rapcoustic 5', 579, 'https://www.youtube.com/watch?v=59IKR_YVeps', 'L8d0rgo2k3okjusw1ps', 1);
INSERT INTO `video` VALUES ('V8d0rgo2k3okjuszzq1', 'Đen x Kimmese x Lynk Lee - Mashup Rapcoustic 5', 579, 'https://www.youtube.com/watch?v=59IKR_YVeps', 'L8d0rgo2k3okjuszzpu', 1);
INSERT INTO `video` VALUES ('V8d0rgo2k3okjuszzqf', 'Vinh Khuat - Quá Lâu Live @ Gala Sao Mai - Loopstation and Full Band', 326, 'https://www.youtube.com/watch?v=i6iSoGeo7_k', 'L8d0rgo2k3okjuszzqa', 1);
INSERT INTO `video` VALUES ('V8d0rgo2k3okjut1hgy', 'Há hốc mồm với màn cover đỉnh cao của Vinh Khuất tại Đức', 134, 'https://www.youtube.com/watch?v=ocjlH5hSm0I', 'L8d0rgo2k3okjut1hgt', 1);
INSERT INTO `video` VALUES ('V8d0rgo2k3okjut1hh8', 'MIN \'rong chơi\' cùng 16 TYPH tại Rap Việt - Trên Tình Bạn Dưới Tình Yêu Stage 141120', 222, 'https://www.youtube.com/watch?v=4heQXpe9FrU', 'L8d0rgo2k3okjut1hh4', 1);
INSERT INTO `video` VALUES ('V8d0rgo2k3okjut95c9', 'Sister Sings Infront of Brother Compilation', 412, 'https://www.youtube.com/watch?v=kcRxb05hQz8', 'L8d0rgo2k3okjut95c2', 1);
INSERT INTO `video` VALUES ('V8d0rgo2k3okjut95ch', 'Singing In Front Of My Friends And Their Reaction Is Priceless Compilation😍🥰', 387, 'https://www.youtube.com/watch?v=j30oV08dS3g', 'L8d0rgo2k3okjut95cd', 1);
INSERT INTO `video` VALUES ('V8d0rgo2k3okjutb1rh', '[ICanSeeYourVoice3] Soulful Duo♬ John Park X Joseph, ‘Thought of You’ 20160818 EP.08', 191, 'https://www.youtube.com/watch?v=dvHZGpwyMP0', 'L8d0rgo2k3okjutb1rb', 1);
INSERT INTO `video` VALUES ('V8d0rgo2k3okjutb1rq', 'Sam Smith - Too Good At Goodbyes (Live From Hackney Round Chapel)', 242, 'https://www.youtube.com/watch?v=KPqtlI3aJIE', 'L8d0rgo2k3okjutb1rm', 1);
INSERT INTO `video` VALUES ('V8d0rgo2k3okjutlz2l', 'Sam Smith - Too Good At Goodbyes (Live at BRIT Awards 2018)', 268, 'https://www.youtube.com/watch?v=6-lostV6sk8', 'L8d0rgo2k3okjutlz2g', 1);
INSERT INTO `video` VALUES ('V8d0rgo2k3okjutlz2u', 'Sam Smith - Stay With Me (At The BBC)', 227, 'https://www.youtube.com/watch?v=zvfRCIqmvmo', 'L8d0rgo2k3okjutlz2r', 1);
INSERT INTO `video` VALUES ('V8d0rgo2k3okjutz1vr', '12 tiết mục đỉnh của đỉnh tạo nên tiếng vang của loạt rapper khủng | RAP VIỆT', 2130, 'https://www.youtube.com/watch?v=D1eY4VjMLS4&t=441s', 'L8d0rgo2k3okjutz1vn', 1);
INSERT INTO `video` VALUES ('V8d0rgo2k3okjutz1w2', 'Tổng hợp 6 tiết mục BỘ 6 QUYỀN LỰC feat với TOP 8 CHUNG KẾT RAP VIỆT chất phát ngất', 153, 'https://www.youtube.com/watch?v=dWInNGhwidQ', 'L8d0rgo2k3okjutz1vw', 1);
INSERT INTO `video` VALUES ('V8d0rgo2k3okjuu73pp', 'Nhạc mỹ 1', 1554, 'https://www.youtube.com/watch?v=k9_WSb-FyYw', 'L8d0rgo2k3okjuu73pk', 1);
INSERT INTO `video` VALUES ('V8d0rgo2k3okjuu73pu', 'Nhạc mỹ 2', 1702, 'https://www.youtube.com/watch?v=hWMbl5Vg6zc', 'L8d0rgo2k3okjuu73pk', 2);
INSERT INTO `video` VALUES ('V8d0rgo2k3okjuu73px', 'SUPERSTARK 2016 [1회] 지리산 소울 김영근 - ′Lay Me Down′ 160922 EP.1', 184, 'https://www.youtube.com/watch?v=oBoGcB1FKk8', 'L8d0rgo2k3okjuu73pk', 3);
INSERT INTO `video` VALUES ('V8d0rgo2k3okjuu73q7', 'Ok', 2919, 'https://www.youtube.com/watch?v=lLnOT7xGdRw', 'L8d0rgo2k3okjuu73q1', 1);
INSERT INTO `video` VALUES ('V8d0rgo2k3okjuu73qa', 'fantasy', 1342, 'https://www.youtube.com/watch?v=Q7c9xWhs8Ks', 'L8d0rgo2k3okjuu73q1', 2);
INSERT INTO `video` VALUES ('V8d0rgo2k3okjuu73qd', 'fantasy123', 2518, 'https://www.youtube.com/watch?v=oYQ7UvxqlJE', 'L8d0rgo2k3okjuu73q1', 3);
INSERT INTO `video` VALUES ('V8d0rgo2k3okjuu73qg', 'tìm bug', 2106, 'https://www.youtube.com/watch?v=6JAEccdz1DA', 'L8d0rgo2k3okjuu73q1', 4);
INSERT INTO `video` VALUES ('V8d0rgo2k3okjuu9xhc', 'Adele - Someone Like You (Live at Largo)', 313, 'https://www.youtube.com/watch?v=JS2kenvaIuo', 'L8d0rgo2k3okjuu9xh5', 1);
INSERT INTO `video` VALUES ('V8d0rgo2k3okjuu9xht', 'Adele - Someone Like You (Official Music Video)', 285, 'https://www.youtube.com/watch?v=hLQl3WQQoQ0', 'L8d0rgo2k3okjuu9xhl', 1);
INSERT INTO `video` VALUES ('V8d0rgo2k3okjuubch3', 'Sam Smith - Lay Me Down (Live At The Apollo Theater)', 259, 'https://www.youtube.com/watch?v=0kemI20dYWw', 'L8d0rgo2k3okjuubcgu', 1);
INSERT INTO `video` VALUES ('V8d0rgo2k3okjuubchc', 'Adele - Someone Like You (Live at Largo)', 285, 'https://www.youtube.com/watch?v=hLQl3WQQoQ0', 'L8d0rgo2k3okjuubch7', 1);
INSERT INTO `video` VALUES ('V8d0rgo2k3okjuudunx', 'Giới thiệu MVC', 954, 'https://www.youtube.com/watch?v=bUEykHfMMnc', 'L8d0rgo2k3okjuuduns', 1);
INSERT INTO `video` VALUES ('V8d0rgo2k3okjuuduo1', 'Vẽ mô hình', 1960, 'https://www.youtube.com/watch?v=HQ5DRb6xSlI', 'L8d0rgo2k3okjuuduns', 2);
INSERT INTO `video` VALUES ('V8d0rgo2k3okjuuduo5', 'Đen x Kimmese x Lynk Lee - Mashup Rapcoustic 5', 222, 'https://www.youtube.com/watch?v=4heQXpe9FrU', 'L8d0rgo2k3okjuuduns', 3);
INSERT INTO `video` VALUES ('V8d0rgon2wkjus6oqg', 'MLEM MLEM | MIN X JUSTATEE X YUNO BIGBOI | OFFICIAL MUSIC VIDEO', 226, 'https://www.youtube.com/watch?v=S7f24xceqSs', 'L8d0rgon2wkjus6opu', 1);
INSERT INTO `video` VALUES ('V8d0rgon2wkjus6or6', 'Em Là Châu Báu - TLinh x MCK x CB | Official MV', 185, 'https://www.youtube.com/watch?v=eo_JVyY1Ra4', 'L8d0rgon2wkjus6opu', 2);
INSERT INTO `video` VALUES ('V8d0rgon2wkjus6os0', 'KHI TÌNH YÊU ĐỦ LỚN | HOÀNG THÙY LINH X DTAP X RTEE X PRUDENTIAL | OFFICIAL MV', 265, 'https://www.youtube.com/watch?v=O8MnTgASxJ4', 'L8d0rgon2wkjus6orj', 1);
INSERT INTO `video` VALUES ('V8d0rgon2wkjus6osp', 'Đen x JustaTee - Đi Về Nhà (M/V)', 206, 'https://www.youtube.com/watch?v=vTJdVE_gjI0', 'L8d0rgon2wkjus6orj', 2);
INSERT INTO `video` VALUES ('V8d0rgon2wkjuscp5t', 'Giới thiệu thông tin khóa học', 242, 'https://www.youtube.com/watch?v=EWz4fITO5qg', 'L8d0rgon2wkjuscp5o', 1);
INSERT INTO `video` VALUES ('V8d0rgon2wkjuscp60', 'Hướng dẫn sử dụng tài liệu học', 294, 'https://www.youtube.com/watch?v=0R8IbpKXavM', 'L8d0rgon2wkjuscp5w', 1);
INSERT INTO `video` VALUES ('V8d0rgon2wkjusfjbf', 'Giới thiệu về C++', 277, 'https://www.youtube.com/watch?v=RlBkvjVss-s', 'L8d0rgon2wkjusfjba', 1);
INSERT INTO `video` VALUES ('V8d0rgon2wkjusfjbj', 'Một số công cụ lập trình C++ và cách sử dụng', 255, 'https://www.youtube.com/watch?v=iE52-XXnQqs', 'L8d0rgon2wkjusfjba', 2);
INSERT INTO `video` VALUES ('V8d0rgon2wkjusfjbu', 'Các loại ghi chú trong C++', 206, 'https://www.youtube.com/watch?v=aGUQsb31TEw', 'L8d0rgon2wkjusfjbp', 1);
INSERT INTO `video` VALUES ('V8d0rgon2wkjushiru', 'HIEUTHUHAI - RIGHT \"cướp hit\" MƯỢN RƯỢU TỎ TÌNH của BIG DADDY trước mặt EMILY | KING OF RAP Tập 10', 284, 'https://www.youtube.com/watch?v=4jD2LTaneHY', 'L8d0rgon2wkjushirl', 1);
INSERT INTO `video` VALUES ('V8d0rgon2wkjushis8', 'PHÁO - RICA \"bắt tay\" PIGGY làm náo loạn sân khấu với bản hit HỌC THÊM | KING OF RAP Tập 11', 242, 'https://www.youtube.com/watch?v=g7IzFXD6bKs', 'L8d0rgon2wkjushis1', 1);
INSERT INTO `video` VALUES ('Vswyrp538kjfxfrsm', 'Giới thiệu', NULL, 'https://www.youtube.com/watch?v=bUEykHfMMnc', 'Lswyrp538kjfxfrlu', 1);
INSERT INTO `video` VALUES ('Vswyrp538kjfxfrxv', 'Tag HTML nâng cao', NULL, 'https://www.youtube.com/watch?v=ZIgDYEZl1VE', 'Lswyrp538kjfxfrv4', 1);
INSERT INTO `video` VALUES ('Vswyrp538kjfxfs0n', 'Tag HTML nâng quá dữ', NULL, 'https://www.youtube.com/watch?v=P0JJR5vYGOU', 'Lswyrp538kjfxfrv4', 2);

SET FOREIGN_KEY_CHECKS = 1;
