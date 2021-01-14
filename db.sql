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

 Date: 14/01/2021 08:59:59
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
  CONSTRAINT `FK_bill_finalbill` FOREIGN KEY (`final_bill_id`) REFERENCES `final_bill` (`final_bill_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_bill_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bill
-- ----------------------------
INSERT INTO `bill` VALUES ('U4fh2219r8kjqrmfcs', 'C8d0rgop0kkjw5kjax', 'B8d0rgop0kkjw5wmkl', 300698);

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
INSERT INTO `category` VALUES ('CAT8d0rgop0kkjw77dst', 'Phương pháp sống', '17');
INSERT INTO `category` VALUES ('CATswyrp5gckju2as78', 'học abcxyz', '9');

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
INSERT INTO `complete_video` VALUES ('U8d0rgoojskj03tm75', 'V8d0rgo2k3okjut95c9');
INSERT INTO `complete_video` VALUES ('U8d0rgoojskj03tm75', 'V8d0rgo2k3okjutz1vr');
INSERT INTO `complete_video` VALUES ('U4fh2219r8kjqrmfcs', 'V8d0rgop0kkjw5rkyg');
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
  `num_view` int(0) NULL DEFAULT NULL,
  `update_date` date NULL DEFAULT NULL,
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
INSERT INTO `course` VALUES ('C01', 'Bí quyết giao tiếp để thành công', 'Tiến sĩ Lê Thẩm Dương tiết lộ bí quyết giao tiếp để thành công', '/images/productTesting.png', 699000, 50, NULL, NULL, NULL, NULL, 'U8d0rgoojskj03tm75', '1', 'Hoàn thành', '2020-12-29', 2, '2021-01-14');
INSERT INTO `course` VALUES ('C02', 'Học troll game', 'Tiến sĩ Lê Hoàng Phúc tiết lộ bí quyết giao tiếp để thành công', '/images/product_ID2.jpg', 123123, 50, NULL, NULL, NULL, NULL, 'U8d0rgoojskj03tm75', '2', 'Hoàn thành', '2020-12-29', 3, '2021-01-14');
INSERT INTO `course` VALUES ('C03', 'Thành thạo ngôn ngữ lập trình C++', 'Thành thạo ngôn ngữ lập trình C++', '/images/product_ID1.jpg', 699000, 74, NULL, NULL, NULL, NULL, 'U8d0rgoojskj03tm75', '2', 'Hoàn thành', '2020-12-29', 0, '2021-01-14');
INSERT INTO `course` VALUES ('C04', 'VBA - Giải pháp tối ưu công việc trên Excel', 'VBA - Giải pháp tối ưu công việc trên Excel', '/images/product_ID3.jpg', 599000, 70, NULL, NULL, NULL, NULL, 'U8d0rgoojskj03tm75', '5', 'Hoàn thành', '2020-12-29', 3, '2021-01-14');
INSERT INTO `course` VALUES ('C07', 'Học Photoshop trọn bộ trong 7 ngày', 'Học Photoshop trọn bộ trong 7 ngày', '/images/product_ID7.png', 799000, 78, NULL, NULL, NULL, NULL, 'Uswyrp45kkj5e5nrw', '2', 'Hoàn thành', '2021-01-03', 0, '2021-01-14');
INSERT INTO `course` VALUES ('C08', 'Nền tảng tiếng Anh cho người mới bắt đầu', 'Nền tảng tiếng Anh cho người mới bắt đầu', '/images/product_ID8.png', 749000, 76, NULL, NULL, NULL, NULL, 'Uswyrp45kkj5e5nrw', '6', 'Hoàn thành', '2021-01-03', 0, '2021-01-14');
INSERT INTO `course` VALUES ('C09', 'Học thiết kế đồ họa trọn bộ 30 ngày', 'Học thiết kế đồ họa trọn bộ 30 ngày', '/images/product_ID9.jpg', 699000, 74, NULL, NULL, NULL, NULL, 'Uswyrp45kkj5e5nrw', '2', 'Hoàn thành', '2021-01-03', 0, '2021-01-14');
INSERT INTO `course` VALUES ('C10', '85 chuyên đề Excel cơ bản đến nâng cao', '85 chuyên đề Excel cơ bản đến nâng cao', '/images/product_ID10.png', 599000, 70, NULL, NULL, NULL, NULL, 'Uswyrp45kkj5e5nrw', '5', 'Hoàn thành', '2021-01-03', 2, '2021-01-14');
INSERT INTO `course` VALUES ('C11', 'Nghệ thuật bán hàng đỉnh cao', 'Nghệ thuật bán hàng đỉnh cao', '/images/product_ID12.jpg', 599000, 50, NULL, NULL, NULL, NULL, 'U8d0rgoojskj03tm75', '1', 'Hoàn thành', '2021-01-03', 1, '2021-01-14');
INSERT INTO `course` VALUES ('C12', 'Học guitar đệm hát cấp tốc trong 30 ngày', 'Học guitar đệm hát cấp tốc trong 30 ngày', '/images/product_ID5.png', 599000, 50, NULL, NULL, NULL, NULL, 'Uswyrp45kkj5e5nrw', '1', 'Hoàn thành', '2021-01-03', 1, '2021-01-14');
INSERT INTO `course` VALUES ('C8d0rgop0kkjw5kjax', 'LẬP TRÌNH IOS SWIFT', 'LẬP TRÌNH IOS SWIFT', '/upload/course/C8d0rgop0kkjw5kjax.jpg', 300698, 0, '<p>- IOS l&agrave; một hệ điều h&agrave;nh cho iPhone v&agrave; được Apple cập nhật li&ecirc;n tục. Kho&aacute; học sẽ cung cấp cho c&aacute;c bạn học vi&ecirc;n những kiến thức được cập nhật mới nhất để lập tr&igrave;nh tr&ecirc;n hệ điều h&agrave;nh iOS.<br />\r\n- Học vi&ecirc;n sẽ được t&igrave;m hiểu Swift - ng&ocirc;n ngữ lập tr&igrave;nh được Apple hỗ trợ ch&iacute;nh thức, song song với việc thực h&agrave;nh những kiến thức, kinh nghiệm l&agrave;m việc thực tế.<br />\r\n- Kho&aacute; học gồm 11 chương:<br />\r\n+ Chương 1 + 2: Giới thiệu tổng quan v&agrave; c&agrave;i đặt m&ocirc;i trường l&agrave;m việc.<br />\r\n+ Chương 3: L&agrave;m quen với ng&ocirc;n ngữ lập tr&igrave;nh Swift.<br />\r\n+ Chương 4 - 14: C&aacute;c ứng dụng cụ thể sẽ dẫn dắt c&aacute;c bạn qua những kiến thức từ căn bản đến phức tạp của iOS.<br />\r\n- Kiến thức trong to&agrave;n bộ kho&aacute; học được truyền tải theo phương ph&aacute;p thực h&agrave;nh l&agrave; ch&iacute;nh. Học vi&ecirc;n c&oacute; thể truy cập đầy đủ c&aacute;c nguồn t&agrave;i nguy&ecirc;n v&agrave; m&atilde; nguồn được đề cập trong c&aacute;c b&agrave;i giảng.</p>\r\n', NULL, 'Sau khoá học, học viên sẽ được trang bị những kiến thức vững chắc để có thể tự mình tạo ra những ứng dụng thực tế và tiếp cận những nguồn tài liệu nâng cao khác sau khoá học.\r\nĐạt được những tiêu chuẩn căn bản nhất của một lập trình viên iOS.\r\nCó đủ khả năng ứng tuyển vào các vị trí lập trình iOS (Fresher/ Junior).', 'Khoá học dành cho:\r\nCác bạn sinh viên muốn trang bị kiến thức về lập trình iOS để tìm kiếm một công việc phù hợp với mức lương cạnh tranh..\r\nCác lập trình viên đã có kiến thức và kinh nghiệm với những nền tảng khác muốn nghiên cứu thêm về iOS.\r\nCác bạn yêu thích và muốn bắt đầu làm quen với việc lập trình trên nền tảng iOS của Apple.', 'Uswyrp45kkj5e5nrw', '2', 'Hoàn thành', '2021-01-14', 1, '2021-01-14');
INSERT INTO `course` VALUES ('Cswyrp498kjdsuj8s', 'Nhập môn lập trình Web', 'Web', '/upload/course/Cswyrp498kjdsuj8s.jpg', 699000, 100, '<p>Bạn l&agrave; người mới v&agrave; mu&ocirc;́n bước đ&acirc;̀u t&igrave;m hi&ecirc;̉u v&ecirc;̀ l&acirc;̣p tr&igrave;nh web?</p>\r\n\r\n<p>Bạn mu&ocirc;́n tự x&acirc;y dựng trang web cho sản ph&acirc;̉m của m&igrave;nh?</p>\r\n\r\n<p>Bạn mu&ocirc;́n t&igrave;m t&ograve;i học hỏi những đi&ecirc;̀u mới, chuy&ecirc;n m&ocirc;n mới?</p>\r\n\r\n<p>Bạn c&oacute; niềm đam m&ecirc; với bộ m&ocirc;n lập tr&igrave;nh web nhưng đang băn khoăn kh&ocirc;ng biết n&ecirc;n chọn kh&oacute;a học n&agrave;o?</p>\r\n\r\n<p>Đừng lo lắng! H&atilde;y đến với kh&oacute;a học &quot;Nhập m&ocirc;n l&acirc;p tr&igrave;nh web&quot; của ch&uacute;ng t&ocirc;i để học tất cả những điều căn bản nhất về lập tr&igrave;nh web.</p>\r\n\r\n<p>Kh&oacute;a học &quot;Nh&acirc;̣p m&ocirc;n l&acirc;̣p tr&igrave;nh Web&quot; sẽ cho bạn c&aacute;i nh&igrave;n t&ocirc;̉ng quan nh&acirc;́t v&ecirc;̀ l&acirc;̣p tr&igrave;nh web. Những y&ecirc;́u t&ocirc;́ gi&uacute;p bạn đưa ra quy&ecirc;́t định c&oacute; n&ecirc;n học l&acirc;̣p tr&igrave;nh web hay kh&ocirc;ng.</p>\r\n\r\n<p>Đồng thời kh&oacute;a học cũng giới thiệu c&aacute;ch thức sử dụng c&aacute;c c&ocirc;ng cụ đơn giản v&agrave; dễ d&ugrave;ng nhất để x&acirc;y dựng một trang web của ri&ecirc;ng bạn.</p>\r\n', NULL, 'Biết được lý do tại sao bạn nên học lập trình web mà không phải một môn lập trình nào khác.\r\nHiểu được lập trình web là gì và những kiến thức cơ bản nhất về lập trình web.', 'Những người mong muốn học lập trình web.\r\nHọc sinh, sinh viên khoa CNTT.\r\nHọc sinh, sinh viên có ngành khác mong muốn học hỏi cái mới.', 'Uswyrp45kkj5e5nrw', '1', 'Hoàn thành', '2021-01-01', 3, '2021-01-14');
INSERT INTO `course` VALUES ('Cswyrp61kkj9sbfva', 'Lập trình backend cho website bằng PHP/Mysql theo mô hình MVC', 'Backend PHP MySQL', '/upload/course/Cswyrp61kkj9sbfva.jpg', 699000, 100, '<p>Điểm kh&aacute;c biệt của kh&oacute;a học n&agrave;y so với c&aacute;c kh&oacute;a học online kh&aacute;c c&ugrave;ng chủ đề lập tr&igrave;nh PHP l&agrave; g&igrave; vậy ?<br />\r\nKh&aacute;c người tr&igrave;nh b&agrave;y bạn ạ. M&igrave;nh nghĩ cũng ảnh hưởng một phần đ&oacute;, mỗi người một c&aacute;ch tr&igrave;nh b&agrave;y v&agrave; tiếp cận kh&aacute;c nhau, sẽ hợp với từng người kh&aacute;c nhau, hi vọng bạn v&agrave; m&igrave;nh &quot;&quot;tương th&iacute;ch&quot;&quot;. Hơn nữa m&igrave;nh tự tin ở phần l&agrave; rất chi tiết, m&igrave;nh nghĩ l&agrave; kh&ocirc;ng ai n&oacute;i chi tiết như thế bạn ạ, để đảm bảo l&agrave; bạn hiểu tận ng&oacute;c ng&aacute;ch v&agrave; bản chất của vấn đề. Einestern đ&atilde; n&oacute;i l&agrave; nếu bạn kh&ocirc;ng thể giải th&iacute;ch cho một đứa trẻ hiểu th&igrave; bạn cũng chẳng hiểu r&otilde; vấn đề. Bạn thử học nh&eacute;. &quot;</p>\r\n', NULL, 'Tự lập trình phần mềm phù hợp với nhu cầu và công việc cá nhân\r\nKiến thức ở khóa này là nền tảng cho khóa nâng cao sau này và các khóa về fullstact angular sẽ xuất bản tới', 'Sinh viên học về công nghệ thông tin\r\nNhững bạn chưa biết rõ bản chất của lập trình MVC\r\nNhững bạn muốn học về lập trình web\r\nNhững bạn muốn tự lập trình backend cho website của mình', 'Uswyrp45kkj5e5nrw', '2', 'Hoàn thành', '2020-12-31', 1, '2021-01-14');

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
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of final_bill
-- ----------------------------
INSERT INTO `final_bill` VALUES ('B8d0rgop0kkjw5wmkl', 'Hoàn Thành', '2021-01-14', 300698);

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
INSERT INTO `lesson_list` VALUES ('L8d0rgop0kkjw5rkya', 1, 'GIỚI THIỆU KHÓA HỌC', 'C8d0rgop0kkjw5kjax');
INSERT INTO `lesson_list` VALUES ('L8d0rgop0kkjw674ls', 1, 'GIỚI THIỆU KHÓA HỌC', 'C07');
INSERT INTO `lesson_list` VALUES ('L8d0rgop0kkjw674m8', 2, 'Chỉnh Ảnh Pixel', 'C07');
INSERT INTO `lesson_list` VALUES ('L8d0rgop0kkjw6a6n5', 1, 'GIỚI THIỆU KHÓA HỌC', 'C08');
INSERT INTO `lesson_list` VALUES ('L8d0rgop0kkjw6a6nf', 2, 'PHƯƠNG PHÁP HỌC', 'C08');
INSERT INTO `lesson_list` VALUES ('L8d0rgop0kkjw6c3f2', 1, 'GIỚI THIỆU KHÓA HỌC', 'C09');
INSERT INTO `lesson_list` VALUES ('L8d0rgop0kkjw6c3fd', 2, 'PHƯƠNG PHÁP HỌC', 'C09');
INSERT INTO `lesson_list` VALUES ('L8d0rgop0kkjw6emsf', 1, 'GIỚI THIỆU KHÓA HỌC', 'C10');
INSERT INTO `lesson_list` VALUES ('L8d0rgop0kkjw6emsv', 2, 'PHƯƠNG PHÁP HỌC', 'C10');
INSERT INTO `lesson_list` VALUES ('L8d0rgop0kkjw6jgpv', 1, 'Thẻ HTML', 'Cswyrp498kjdsuj8s');
INSERT INTO `lesson_list` VALUES ('L8d0rgop0kkjw6jgqc', 2, 'Giới thiệu MVC', 'Cswyrp498kjdsuj8s');
INSERT INTO `lesson_list` VALUES ('L8d0rgop0kkjw6jpox', 1, 'GIỚI THIỆU KHÓA HỌC', 'C12');
INSERT INTO `lesson_list` VALUES ('L8d0rgop0kkjw6jpp7', 2, 'PHƯƠNG PHÁP HỌC', 'C12');
INSERT INTO `lesson_list` VALUES ('L8d0rgop0kkjw6l682', 1, 'Giới thiệu', 'Cswyrp61kkj9sbfva');
INSERT INTO `lesson_list` VALUES ('L8d0rgop0kkjw6uhqg', 1, 'GIỚI THIỆU KHÓA HỌC', 'C01');
INSERT INTO `lesson_list` VALUES ('L8d0rgop0kkjw6uhqv', 2, 'PHƯƠNG PHÁP HỌC', 'C01');
INSERT INTO `lesson_list` VALUES ('L8d0rgop0kkjw6x1sc', 1, 'GIỚI THIỆU KHÓA HỌC', 'C02');
INSERT INTO `lesson_list` VALUES ('L8d0rgop0kkjw6zgp1', 1, 'GIỚI THIỆU KHÓA HỌC', 'C03');
INSERT INTO `lesson_list` VALUES ('L8d0rgop0kkjw726ic', 1, 'GIỚI THIỆU KHÓA HỌC', 'C04');
INSERT INTO `lesson_list` VALUES ('L8d0rgop0kkjw726iu', 2, 'PHƯƠNG PHÁP HỌC', 'C04');
INSERT INTO `lesson_list` VALUES ('L8d0rgop0kkjw74yoc', 1, 'GIỚI THIỆU KHÓA HỌC', 'C11');
INSERT INTO `lesson_list` VALUES ('L8d0rgop0kkjw74you', 2, 'PHƯƠNG PHÁP HỌC', 'C11');

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
INSERT INTO `sessions` VALUES ('GtA-wmino1UgnIez5ZqB93wcqnwveeeM', 1610671109, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"auth\":false,\"cart\":[],\"shopCart\":[],\"authUser\":null,\"courses\":null,\"ll\":null,\"cid\":\"C8d0rgo1qlokjvnen4i\",\"retUrl\":null}');
INSERT INTO `sessions` VALUES ('sAPddQbh01iVCSEvyYz0vY0mAPc-7Iz4', 1610631197, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"auth\":true,\"cart\":[{\"author_name\":\"Lưu Thiện Nhân\",\"author_image\":\"/upload/user_avatar/Uswyrp45kkj5e5nrw.jpg\",\"course_id\":\"C10\",\"deal_value\":70,\"intro_image\":\"/images/product_ID10.png\",\"number_student\":0,\"number_rating\":0,\"course_name\":\"85 chuyên đề Excel cơ bản đến nâng cao\",\"price\":599000,\"reduce_price\":179700,\"overall_star\":null,\"categoty_id\":\"5\",\"isHaving\":0,\"IsBuy\":0,\"IsNew\":0,\"IsHot\":0,\"user_id\":\"Uswyrp45kkj5e5nrw\",\"category_name\":\"Marketing căn bản\"},{\"author_name\":\"Lưu Thiện Nhân\",\"author_image\":\"/upload/user_avatar/Uswyrp45kkj5e5nrw.jpg\",\"course_id\":\"C12\",\"deal_value\":50,\"intro_image\":\"/images/product_ID5.png\",\"number_student\":0,\"number_rating\":1,\"course_name\":\"Học guitar đệm hát cấp tốc trong 30 ngày\",\"price\":599000,\"reduce_price\":299500,\"overall_star\":\"5.0\",\"categoty_id\":\"1\",\"isHaving\":0,\"IsBuy\":0,\"IsNew\":0,\"IsHot\":0,\"user_id\":\"Uswyrp45kkj5e5nrw\",\"category_name\":\"Lập trình web\"}],\"shopCart\":[],\"authUser\":{\"user_id\":\"Uswyrp45kkj5e5nrw\",\"name\":\"Lưu Thiện Nhân\",\"gender\":\"Khác\",\"dob\":\"2020-11-30T17:00:00.000Z\",\"phone_number\":\"0703002347\",\"email\":\"nguoiamphu\",\"password\":\"$2a$10$UtYSET9vR1AAWNbHyEsuMeS5ljiVslyl/iGzXWkin4hpXPhFmiK7W\",\"password_lvl2\":null,\"avatar\":\"/upload/user_avatar/Uswyrp45kkj5e5nrw.jpg\",\"description\":\"ádqwqd\\r\\nqưd\\r\\nqư\\r\\ndqw\\r\\nd\\r\\nqưdfqwfqfqfw\",\"role\":1,\"address\":\"123 Nguyễn Văn Cừ Q.5\"},\"courses\":[{\"course_id\":\"C01\"},{\"course_id\":\"C04\"},{\"course_id\":\"C07\"},{\"course_id\":\"Cswyrp498kjdsuj8s\"}],\"retUrl\":\"/lecturer/information\",\"ll\":[{\"list_id\":\"Lswyrp3mskjvgsd7c\",\"chapter_number\":1,\"chapter_name\":\"Thẻ HTML\",\"course_id\":\"Cswyrp498kjdsuj8s\",\"videos\":[{\"video_id\":\"Vswyrp3mskjvgsdc6\",\"video_name\":\"Giới thiệu\",\"video_duration\":0,\"url\":\"https://www.youtube.com/watch?v=bUEykHfMMnc\",\"list_id\":\"Lswyrp3mskjvgsd7c\",\"video_number\":1}]},{\"list_id\":\"Lswyrp3mskjvgsdfn\",\"chapter_number\":2,\"chapter_name\":\"Giới thiệu MVC\",\"course_id\":\"Cswyrp498kjdsuj8s\",\"videos\":[{\"video_id\":\"Vswyrp3mskjvgsdi3\",\"video_name\":\"Giới thiệu MVC\",\"video_duration\":242,\"url\":\"https://www.youtube.com/watch?v=KPqtlI3aJIE&fbclid=IwAR1cSYuGfuFN8hT_tx6HxqpAb8C6EfMbgCs0KPIw8jXaiNr\",\"list_id\":\"Lswyrp3mskjvgsdfn\",\"video_number\":1},{\"video_id\":\"Vswyrp3mskjvgsdp2\",\"video_name\":\"tessst\",\"video_duration\":954,\"url\":\"https://www.youtube.com/watch?v=bUEykHfMMnc\",\"list_id\":\"Lswyrp3mskjvgsdfn\",\"video_number\":2}]}],\"cid\":\"Cswyrp6egkjtzqf6m\"}');

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
INSERT INTO `user` VALUES ('U4fh2219r8kjqrmfcs', 'phúc lê', NULL, NULL, NULL, 'phucyugi2@gmail.com', '$2a$10$gZIttUzYmyGH8S2Ntzbjk.K166CBce3/9wS9CDIGeKEbYjuCDYbs6', '900451', '/images/BecomeInstructor/ltn.jpg', NULL, 0, NULL);
INSERT INTO `user` VALUES ('U8d0rgoojskj03tm75', 'Lê Hoàng Phúc', 'Nữ', '2021-01-12', '123123', 'phucyugi@gmail.com', '$2a$10$eaeN/x0vA8RF.0egO0mX5OUu1FmCEue6vCRCfGE2YkYbdTM/1xkee', NULL, '/images/BecomeInstructor/ltn.jpg', NULL, 1, NULL);
INSERT INTO `user` VALUES ('Uswyrp2a4kitph7ft', 'Luu Thien Nhan', NULL, NULL, NULL, 'nhanluu838@gmail.com', '$2a$10$kYroKyRFPmJn1zYPkWsl2OVFhzlap4ZpnQOlN.IxABE/RNYO5Qwj6', NULL, '/images/BecomeInstructor/ltn.jpg', NULL, 0, NULL);
INSERT INTO `user` VALUES ('Uswyrp45kkj5e5nrw', 'Lưu Thiện Nhân', 'Khác', '2020-12-01', '0703002347', 'nguoiamphu', '$2a$10$UtYSET9vR1AAWNbHyEsuMeS5ljiVslyl/iGzXWkin4hpXPhFmiK7W', NULL, '/upload/user_avatar/Uswyrp45kkj5e5nrw.jpg', 'ádqwqd\r\nqưd\r\nqư\r\ndqw\r\nd\r\nqưdfqwfqfqfw', 1, '123 Nguyễn Văn Cừ Q.5');
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
INSERT INTO `video` VALUES ('V8d0rgop0kkjw5rkyg', 'EM BÉ - AMEE x KARIK x BAEMIN | Official Music Video', 227, 'https://www.youtube.com/watch?v=LgyyIb9u-30', 'L8d0rgop0kkjw5rkya', 1);
INSERT INTO `video` VALUES ('V8d0rgop0kkjw5rkyn', 'AMEE x B RAY - ANH NHÀ Ở ĐÂU THẾ | Official Music Video', 255, 'https://www.youtube.com/watch?v=iE52-XXnQqs', 'L8d0rgop0kkjw5rkya', 2);
INSERT INTO `video` VALUES ('V8d0rgop0kkjw5rkyr', 'MIN - ‘TRÊN TÌNH BẠN DƯỚI TÌNH YÊU’ OFFICIAL MUSIC VIDEO', 294, 'https://www.youtube.com/watch?v=0R8IbpKXavM', 'L8d0rgop0kkjw5rkya', 3);
INSERT INTO `video` VALUES ('V8d0rgop0kkjw674lz', 'Tự học Photoshop Cấp Tốc - BÀI 1 - Chỉnh Ảnh Nhanh', 1923, 'https://www.youtube.com/watch?v=xYR03V2leaY', 'L8d0rgop0kkjw674ls', 1);
INSERT INTO `video` VALUES ('V8d0rgop0kkjw674m4', 'Tự học Photoshop Cấp Tốc - BÀI 2 - Cách chỉnh da, bóp mặt và dàn trang Photobook', 2312, 'https://www.youtube.com/watch?v=TYruJi-LeFQ', 'L8d0rgop0kkjw674ls', 2);
INSERT INTO `video` VALUES ('V8d0rgop0kkjw674mh', 'Tự học Photoshop Cấp Tốc - BÀI 1 - Chỉnh Ảnh Nhanh', 1923, 'https://www.youtube.com/watch?v=xYR03V2leaY', 'L8d0rgop0kkjw674m8', 1);
INSERT INTO `video` VALUES ('V8d0rgop0kkjw674mm', 'Photoshop CS6 | Bài 01 Học cách sử dụng các công cụ, ghép ảnh và hiệu ứng cơ bản.', 3514, 'https://www.youtube.com/watch?v=nTUP2iTAJXs', 'L8d0rgop0kkjw674m8', 2);
INSERT INTO `video` VALUES ('V8d0rgop0kkjw6a6na', 'Lộ trình học tiếng Anh cơ bản cho người mới bắt đầu [ Phương pháp học tiếng Anh hiệu quả ]', 722, 'https://www.youtube.com/watch?v=tosYNLutaLw', 'L8d0rgop0kkjw6a6n5', 1);
INSERT INTO `video` VALUES ('V8d0rgop0kkjw6a6nm', 'Cách Nhớ Dai Như Đỉa Từ Vựng Tiếng Anh ✅', 2297, 'https://www.youtube.com/watch?v=miPN5kIyHnE', 'L8d0rgop0kkjw6a6nf', 1);
INSERT INTO `video` VALUES ('V8d0rgop0kkjw6a6nq', 'How to be super good at something?', 1839, 'https://www.youtube.com/watch?v=Dw3O6ErOJfA', 'L8d0rgop0kkjw6a6nf', 2);
INSERT INTO `video` VALUES ('V8d0rgop0kkjw6c3f9', 'Review Trọn Bộ 45 Khoá Học Thiết Kế Đồ Hoạ - Design Full Stack', 198, 'https://www.youtube.com/watch?v=Fv5KvvCnQQs', 'L8d0rgop0kkjw6c3f2', 1);
INSERT INTO `video` VALUES ('V8d0rgop0kkjw6c3fi', 'THIẾT KẾ ĐỒ HỌA NÊN BẮT ĐẦU TỪ ĐÂU | BIGME', 501, 'https://www.youtube.com/watch?v=ERXzoE7MFF8', 'L8d0rgop0kkjw6c3fd', 1);
INSERT INTO `video` VALUES ('V8d0rgop0kkjw6c3fm', 'Học Thiết Kế Đồ Họa Online Tốt Nhất Cho Người Mới Bắt Đầu, học thiết kế đồ họa illustrator', 5029, 'https://www.youtube.com/watch?v=74nRteAHRKQ', 'L8d0rgop0kkjw6c3fd', 2);
INSERT INTO `video` VALUES ('V8d0rgop0kkjw6emso', '85 chuyên đề Excel từ cơ bản đến nâng cao', 701, 'https://www.youtube.com/watch?v=goFRBU9bCQc', 'L8d0rgop0kkjw6emsf', 1);
INSERT INTO `video` VALUES ('V8d0rgop0kkjw6emt2', '85 chuyên đề Excel từ cơ bản đến nâng cao Google Chrome 2020 01 08 10 38 33', 63, 'https://www.youtube.com/watch?v=kar8FDwDuZg', 'L8d0rgop0kkjw6emsv', 1);
INSERT INTO `video` VALUES ('V8d0rgop0kkjw6emt6', 'Tự học excel cơ bản cấp tốc qua 15 chuyên đề FULL KHÔNG CHE (127 phút)', 7746, 'https://www.youtube.com/watch?v=OJW_Rm6upb8', 'L8d0rgop0kkjw6emsv', 2);
INSERT INTO `video` VALUES ('V8d0rgop0kkjw6jgq2', 'Giới thiệu', 2497, 'https://www.youtube.com/watch?v=hkF_oIm3lU4', 'L8d0rgop0kkjw6jgpv', 1);
INSERT INTO `video` VALUES ('V8d0rgop0kkjw6jgq7', 'EM BÉ - AMEE x KARIK x BAEMIN | Official Music Video', 226, 'https://www.youtube.com/watch?v=S7f24xceqSs', 'L8d0rgop0kkjw6jgpv', 2);
INSERT INTO `video` VALUES ('V8d0rgop0kkjw6jgqg', 'Giới thiệu MVC', 315, 'https://www.youtube.com/watch?v=Xkbuj72IAsA', 'L8d0rgop0kkjw6jgqc', 1);
INSERT INTO `video` VALUES ('V8d0rgop0kkjw6jgqk', 'tessst', 954, 'https://www.youtube.com/watch?v=bUEykHfMMnc', 'L8d0rgop0kkjw6jgqc', 2);
INSERT INTO `video` VALUES ('V8d0rgop0kkjw6jpp3', 'GUITAR ĐỆM HÁT CẤP TỐC | Bài 1: Giới thiệu', 620, 'https://www.youtube.com/watch?v=EkHtSo-W_oc', 'L8d0rgop0kkjw6jpox', 1);
INSERT INTO `video` VALUES ('V8d0rgop0kkjw6jppa', 'Bắt đầu học guitar thế nào? | Guitar Talks #1 | @Thuận Guitar', 1434, 'https://www.youtube.com/watch?v=GdBIak7-n2U', 'L8d0rgop0kkjw6jpp7', 1);
INSERT INTO `video` VALUES ('V8d0rgop0kkjw6jppe', 'Tịt nốt, chuyển hợp âm chậm thì tập thế nào? Bài tập chuyển hợp âm cho người tự học.', 1718, 'https://www.youtube.com/watch?v=7s4vpOtRXIY', 'L8d0rgop0kkjw6jpp7', 2);
INSERT INTO `video` VALUES ('V8d0rgop0kkjw6l689', 'Giới thiệu MVC', 954, 'https://www.youtube.com/watch?v=bUEykHfMMnc', 'L8d0rgop0kkjw6l682', 1);
INSERT INTO `video` VALUES ('V8d0rgop0kkjw6l68e', 'Vẽ mô hình', 1167, 'https://www.youtube.com/watch?v=5MgBikgcWnY', 'L8d0rgop0kkjw6l682', 2);
INSERT INTO `video` VALUES ('V8d0rgop0kkjw6uhqm', '15 Kỹ Năng Giao Tiếp Khôn Ngoan Để Ai Cũng Yêu Quý Bạn - Dale Carnegie', 765, 'https://www.youtube.com/watch?v=-QpOXLGzurs', 'L8d0rgop0kkjw6uhqg', 1);
INSERT INTO `video` VALUES ('V8d0rgop0kkjw6uhqr', 'Cách Nói Chuyện Khôn Ngoan | Kỹ Năng Giao Tiếp Xuất Sắc', 1539, 'https://www.youtube.com/watch?v=vo5xRGu7s44', 'L8d0rgop0kkjw6uhqg', 2);
INSERT INTO `video` VALUES ('V8d0rgop0kkjw6uhr7', 'Kỹ năng giao tiếp [Bài 01] | Tầm quan trọng của giao tiếp và chức năng của giao tiếp', 556, 'https://www.youtube.com/watch?v=0-UPhqHSdM8', 'L8d0rgop0kkjw6uhqv', 1);
INSERT INTO `video` VALUES ('V8d0rgop0kkjw6uhrb', 'Nghệ thuật giao tiếp để thành công 92 thủ thuật giúp bạn trở thành bậc thầy', 14504, 'https://www.youtube.com/watch?v=DfnRYCVcwnw', 'L8d0rgop0kkjw6uhqv', 2);
INSERT INTO `video` VALUES ('V8d0rgop0kkjw6x1sh', 'Hướng Dẫn Cách Ngồi Thiền Dành Cho Người Mới Bắt Đầu # MỚI - Thầy Thích Trúc Thái Minh', 3079, 'https://www.youtube.com/watch?v=pmf5Sj7N8Gk', 'L8d0rgop0kkjw6x1sc', 1);
INSERT INTO `video` VALUES ('V8d0rgop0kkjw6x1sm', 'Hướng dẫn ngồi thiền 15 phút cho cuộc sống nhẹ nhàng & bình an | Bạn Tinh Thần', 1000, 'https://www.youtube.com/watch?v=9Bv5mlxeI90', 'L8d0rgop0kkjw6x1sc', 2);
INSERT INTO `video` VALUES ('V8d0rgop0kkjw6x1sr', 'Yoga tại nhà - Thiền chữa bệnh, xóa tan stress cùng Nguyễn Hiếu Yoga', 466, 'https://www.youtube.com/watch?v=Jne-gpNQAys', 'L8d0rgop0kkjw6x1sc', 3);
INSERT INTO `video` VALUES ('V8d0rgop0kkjw6zgp7', '[Khóa học lập trình C++ Cơ bản] - Bài 1: Giới thiệu về C++ | HowKteam', 244, 'https://www.youtube.com/watch?v=ILr_rU-lISk', 'L8d0rgop0kkjw6zgp1', 1);
INSERT INTO `video` VALUES ('V8d0rgop0kkjw6zgpd', 'Thành Thạo C++ Qua 108 Bài Học - Trần Duy Thanh', 97, 'https://www.youtube.com/watch?v=UkwRKUtMSwU', 'L8d0rgop0kkjw6zgp1', 2);
INSERT INTO `video` VALUES ('V8d0rgop0kkjw6zgpm', 'Khóa học thành thạo lập trình C++ trong 108 bài học', 245, 'https://www.youtube.com/watch?v=iYYfcDw5jZg', 'L8d0rgop0kkjw6zgp1', 3);
INSERT INTO `video` VALUES ('V8d0rgop0kkjw726ih', 'VBA - Giải pháp tối ưu công việc trên Excel', 478, 'https://www.youtube.com/watch?v=4lYTVAA97gU', 'L8d0rgop0kkjw726ic', 1);
INSERT INTO `video` VALUES ('V8d0rgop0kkjw726io', 'Tổng hợp 50 thủ thuật Excel hay nhất năm 2020', 5588, 'https://www.youtube.com/watch?v=MDpb90pmIM0', 'L8d0rgop0kkjw726ic', 2);
INSERT INTO `video` VALUES ('V8d0rgop0kkjw726j6', 'Học VBA - Giải pháp tối ưu công việc trên Excel || Bài 1: VBA có thể làm được những gì?', 469, 'https://www.youtube.com/watch?v=0IJQGaDq7js', 'L8d0rgop0kkjw726iu', 1);
INSERT INTO `video` VALUES ('V8d0rgop0kkjw726ja', 'Hướng dẫn tải tài liệu khóa học VBA - Giải pháp tối ưu công việc trên Excel', 61, 'https://www.youtube.com/watch?v=ePY5M_DTB70', 'L8d0rgop0kkjw726iu', 2);
INSERT INTO `video` VALUES ('V8d0rgop0kkjw74yoh', 'TS Lê Thẩm Dương Nghệ thuật bán hàng đỉnh cao Tập 1', 4790, 'https://www.youtube.com/watch?v=PJ26zHLAW9w', 'L8d0rgop0kkjw74yoc', 1);
INSERT INTO `video` VALUES ('V8d0rgop0kkjw74yol', 'Tóm tắt sách: NGHỆ THUẬT BÁN HÀNG BẬC CAO - Zig Zinglar/Trần Thu Hằng - Galabook', 2826, 'https://www.youtube.com/watch?v=u1lYJgVrHeo', 'L8d0rgop0kkjw74yoc', 2);
INSERT INTO `video` VALUES ('V8d0rgop0kkjw74yop', 'BÍ MẬT KỸ NĂNG BÁN HÀNG ĐỈNH CAO - \"VUA BÁN HÀNG\" BLAIR SINGER', 682, 'https://www.youtube.com/watch?v=AcK6JTNWdr4', 'L8d0rgop0kkjw74yoc', 3);
INSERT INTO `video` VALUES ('V8d0rgop0kkjw74yoz', 'MUỐN BÁN ĐƯỢC HÀNG, HÃY XEM VIDEO NÀY - Nghệ thuật bán hàng đỉnh cao | Phạm Ngọc Anh - Mr Why', 887, 'https://www.youtube.com/watch?v=2CyZXysF5C0', 'L8d0rgop0kkjw74you', 1);
INSERT INTO `video` VALUES ('V8d0rgop0kkjw74yp3', 'MUỐN BÁN ĐƯỢC HÀNG, HÃY XEM VIDEO NÀY - Nghệ thuật bán hàng đỉnh cao | Phạm Ngọc Anh - Mr Why', 2079, 'https://www.youtube.com/watch?v=gEJ4AuLzg8I', 'L8d0rgop0kkjw74you', 2);

SET FOREIGN_KEY_CHECKS = 1;
