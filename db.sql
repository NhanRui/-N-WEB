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

 Date: 04/01/2021 09:25:05
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
  `activation_code` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `date` date NULL DEFAULT NULL,
  `status` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`, `course_id`) USING BTREE,
  INDEX `FK_bill_course_idx`(`course_id`) USING BTREE,
  CONSTRAINT `FK_bill_course` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_bill_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bill
-- ----------------------------
INSERT INTO `bill` VALUES ('1', 'C01', 'GN02', '2020-12-23', 'Hoàn thành');
INSERT INTO `bill` VALUES ('1', 'C02', 'GD02', '2020-12-23', 'Hoàn thành');
INSERT INTO `bill` VALUES ('Uswyrp2a4kitph7ft', 'C01', 'GN01', '2020-12-23', 'Hoàn thành');
INSERT INTO `bill` VALUES ('Uswyrp2a4kitph7ft', 'C02', 'GD01', '2020-12-23', 'Hoàn thành');

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart`  (
  `cart_id` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `course_id` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`cart_id`, `course_id`) USING BTREE,
  INDEX `FK_cart_course_idx`(`course_id`) USING BTREE,
  CONSTRAINT `FK_cart_course` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_cart_shoppingcart` FOREIGN KEY (`cart_id`) REFERENCES `shopping_cart` (`cart_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

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
  PRIMARY KEY (`course_id`) USING BTREE,
  INDEX `FK_course_lecturer_idx`(`lecturer_id`) USING BTREE,
  INDEX `FK_course_category_idx`(`categoty_id`) USING BTREE,
  CONSTRAINT `FK_course_category` FOREIGN KEY (`categoty_id`) REFERENCES `category` (`category_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_course_lecturer` FOREIGN KEY (`lecturer_id`) REFERENCES `user` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('C01', 'Bí quyết giao tiếp để thành công', 'Tiến sĩ Lê Thẩm Dương tiết lộ bí quyết giao tiếp để thành công', 'images/productTesting.png', 699000, 50, NULL, NULL, NULL, NULL, 'U8d0rgoojskj03tm75', '1', 'Chưa hoàn thành', '2020-12-29', 0);
INSERT INTO `course` VALUES ('C02', 'Học troll game', 'Tiến sĩ Lê Hoàng Phúc tiết lộ bí quyết giao tiếp để thành công', 'images/product_ID2.jpg', 123123, 50, NULL, NULL, NULL, NULL, 'U8d0rgoojskj03tm75', '2', 'Chưa hoàn thành', '2020-12-29', 0);
INSERT INTO `course` VALUES ('C03', 'Thành thạo ngôn ngữ lập trình C++', 'Thành thạo ngôn ngữ lập trình C++', 'images/product_ID1.jpg', 699000, 74, NULL, NULL, NULL, NULL, 'U8d0rgoojskj03tm75', '3', 'Chưa hoàn thành', '2020-12-29', 0);
INSERT INTO `course` VALUES ('C04', 'VBA - Giải pháp tối ưu công việc trên Excel', 'VBA - Giải pháp tối ưu công việc trên Excel', 'images/product_ID3.jpg', 599000, 70, NULL, NULL, NULL, NULL, 'U8d0rgoojskj03tm75', '4', 'Chưa hoàn thành', '2020-12-29', 0);
INSERT INTO `course` VALUES ('C07', 'Học Photoshop trọn bộ trong 7 ngày', 'Học Photoshop trọn bộ trong 7 ngày', 'images/product_ID7.png', 799000, 78, NULL, NULL, NULL, NULL, 'Uswyrp45kkj5e5nrw', '2', 'Chưa hoàn thành', '2021-01-03', 0);
INSERT INTO `course` VALUES ('C08', 'Nền tảng tiếng Anh cho người mới bắt đầu', 'Nền tảng tiếng Anh cho người mới bắt đầu', 'images/product_ID8.png', 749000, 76, NULL, NULL, NULL, NULL, 'Uswyrp45kkj5e5nrw', '6', 'Chưa hoàn thành', '2021-01-03', 0);
INSERT INTO `course` VALUES ('C09', 'Học thiết kế đồ họa trọn bộ 30 ngày', 'Học thiết kế đồ họa trọn bộ 30 ngày', 'images/product_ID9.jpg', 699000, 74, NULL, NULL, NULL, NULL, 'Uswyrp45kkj5e5nrw', '2', 'Chưa hoàn thành', '2021-01-03', 0);
INSERT INTO `course` VALUES ('C10', '85 chuyên đề Excel cơ bản đến nâng cao', '85 chuyên đề Excel cơ bản đến nâng cao', 'images/product_ID10.png', 599000, 70, NULL, NULL, NULL, NULL, 'Uswyrp45kkj5e5nrw', '5', 'Chưa hoàn thành', '2021-01-03', 0);
INSERT INTO `course` VALUES ('C11', 'Nghệ thuật bán hàng đỉnh cao', 'Nghệ thuật bán hàng đỉnh cao', 'images/product_ID12.jpg', 599000, 50, NULL, NULL, NULL, NULL, 'U8d0rgoojskj03tm75', '1', 'Chưa hoàn thành', '2021-01-03', 1);
INSERT INTO `course` VALUES ('C12', 'Học guitar đệm hát cấp tốc trong 30 ngày', 'Học guitar đệm hát cấp tốc trong 30 ngày', 'images/product_ID5.png', 599000, 50, NULL, NULL, NULL, NULL, 'Uswyrp45kkj5e5nrw', '1', 'Chưa hoàn thành', '2021-01-03', 1);
INSERT INTO `course` VALUES ('Cswyrp498kjdsuj8s', 'Nhập môn lập trình Web', 'Web', '/upload/course/Cswyrp498kjdsuj8s.jpg', 699000, 100, '<p>Bạn l&agrave; người mới v&agrave; mu&ocirc;́n bước đ&acirc;̀u t&igrave;m hi&ecirc;̉u v&ecirc;̀ l&acirc;̣p tr&igrave;nh web?</p>\r\n\r\n<p>Bạn mu&ocirc;́n tự x&acirc;y dựng trang web cho sản ph&acirc;̉m của m&igrave;nh?</p>\r\n\r\n<p>Bạn mu&ocirc;́n t&igrave;m t&ograve;i học hỏi những đi&ecirc;̀u mới, chuy&ecirc;n m&ocirc;n mới?</p>\r\n\r\n<p>Bạn c&oacute; niềm đam m&ecirc; với bộ m&ocirc;n lập tr&igrave;nh web nhưng đang băn khoăn kh&ocirc;ng biết n&ecirc;n chọn kh&oacute;a học n&agrave;o?</p>\r\n\r\n<p>Đừng lo lắng! H&atilde;y đến với kh&oacute;a học &quot;Nhập m&ocirc;n l&acirc;p tr&igrave;nh web&quot; của ch&uacute;ng t&ocirc;i để học tất cả những điều căn bản nhất về lập tr&igrave;nh web.</p>\r\n\r\n<p>Kh&oacute;a học &quot;Nh&acirc;̣p m&ocirc;n l&acirc;̣p tr&igrave;nh Web&quot; sẽ cho bạn c&aacute;i nh&igrave;n t&ocirc;̉ng quan nh&acirc;́t v&ecirc;̀ l&acirc;̣p tr&igrave;nh web. Những y&ecirc;́u t&ocirc;́ gi&uacute;p bạn đưa ra quy&ecirc;́t định c&oacute; n&ecirc;n học l&acirc;̣p tr&igrave;nh web hay kh&ocirc;ng.</p>\r\n\r\n<p>Đồng thời kh&oacute;a học cũng giới thiệu c&aacute;ch thức sử dụng c&aacute;c c&ocirc;ng cụ đơn giản v&agrave; dễ d&ugrave;ng nhất để x&acirc;y dựng một trang web của ri&ecirc;ng bạn.</p>\r\n', NULL, 'Biết được lý do tại sao bạn nên học lập trình web mà không phải một môn lập trình nào khác.\r\nHiểu được lập trình web là gì và những kiến thức cơ bản nhất về lập trình web.', 'Những người mong muốn học lập trình web.\r\nHọc sinh, sinh viên khoa CNTT.\r\nHọc sinh, sinh viên có ngành khác mong muốn học hỏi cái mới.', 'Uswyrp45kkj5e5nrw', '1', 'Chưa hoàn thành', '2021-01-01', 1);
INSERT INTO `course` VALUES ('Cswyrp61kkj9sbfva', 'Lập trình backend cho website bằng PHP/Mysql theo mô hình MVC', 'Backend PHP MySQL', '/upload/course/Cswyrp61kkj9sbfva.jpg', 699000, 100, '<p>Điểm kh&aacute;c biệt của kh&oacute;a học n&agrave;y so với c&aacute;c kh&oacute;a học online kh&aacute;c c&ugrave;ng chủ đề lập tr&igrave;nh PHP l&agrave; g&igrave; vậy ?<br />\r\nKh&aacute;c người tr&igrave;nh b&agrave;y bạn ạ. M&igrave;nh nghĩ cũng ảnh hưởng một phần đ&oacute;, mỗi người một c&aacute;ch tr&igrave;nh b&agrave;y v&agrave; tiếp cận kh&aacute;c nhau, sẽ hợp với từng người kh&aacute;c nhau, hi vọng bạn v&agrave; m&igrave;nh &quot;&quot;tương th&iacute;ch&quot;&quot;. Hơn nữa m&igrave;nh tự tin ở phần l&agrave; rất chi tiết, m&igrave;nh nghĩ l&agrave; kh&ocirc;ng ai n&oacute;i chi tiết như thế bạn ạ, để đảm bảo l&agrave; bạn hiểu tận ng&oacute;c ng&aacute;ch v&agrave; bản chất của vấn đề. Einestern đ&atilde; n&oacute;i l&agrave; nếu bạn kh&ocirc;ng thể giải th&iacute;ch cho một đứa trẻ hiểu th&igrave; bạn cũng chẳng hiểu r&otilde; vấn đề. Bạn thử học nh&eacute;. &quot;</p>\r\n', NULL, 'Tự lập trình phần mềm phù hợp với nhu cầu và công việc cá nhân\r\nKiến thức ở khóa này là nền tảng cho khóa nâng cao sau này và các khóa về fullstact angular sẽ xuất bản tới', 'Sinh viên học về công nghệ thông tin\r\nNhững bạn chưa biết rõ bản chất của lập trình MVC\r\nNhững bạn muốn học về lập trình web\r\nNhững bạn muốn tự lập trình backend cho website của mình', 'Uswyrp45kkj5e5nrw', '2', 'Chưa hoàn thành', '2020-12-31', 1);

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
INSERT INTO `sessions` VALUES ('N0OUZ8efwuNawlX9H4JTarHz79BmqXc7', 1609691706, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"auth\":true,\"authUser\":{\"user_id\":\"Uswyrp45kkj5e5nrw\",\"name\":\"Lưu Thiện Nhân\",\"gender\":\"Khác\",\"dob\":\"2020-11-30T17:00:00.000Z\",\"phone_number\":\"0703002347\",\"email\":\"nguoiamphu\",\"password\":\"$2a$10$UtYSET9vR1AAWNbHyEsuMeS5ljiVslyl/iGzXWkin4hpXPhFmiK7W\",\"password_lvl2\":null,\"avatar\":\"/upload/user_avatar/Uswyrp45kkj5e5nrw.jpg\",\"description\":\"ádqwqd\\r\\nqưd\\r\\nqư\\r\\ndqw\\r\\nd\\r\\nqưdfqwfqfqfw\",\"role\":1,\"address\":\"123 Nguyễn Văn Cừ Q.5\"},\"ll\":[{\"list_id\":\"Lswyrp538kjfxfrlu\",\"chapter_number\":1,\"chapter_name\":\"Thẻ HTML\",\"course_id\":\"Cswyrp498kjdsuj8s\",\"videos\":[{\"video_id\":\"Vswyrp538kjfxfrsm\",\"video_name\":\"Giới thiệu\",\"video_duration\":null,\"url\":\"https://www.youtube.com/watch?v=bUEykHfMMnc\",\"list_id\":\"Lswyrp538kjfxfrlu\",\"video_number\":1}]},{\"list_id\":\"Lswyrp538kjfxfrv4\",\"chapter_number\":2,\"chapter_name\":\"Thẻ HTML\",\"course_id\":\"Cswyrp498kjdsuj8s\",\"videos\":[{\"video_id\":\"Vswyrp538kjfxfrxv\",\"video_name\":\"Tag HTML nâng cao\",\"video_duration\":null,\"url\":\"https://www.youtube.com/watch?v=ZIgDYEZl1VE\",\"list_id\":\"Lswyrp538kjfxfrv4\",\"video_number\":1},{\"video_id\":\"Vswyrp538kjfxfs0n\",\"video_name\":\"Tag HTML nâng quá dữ\",\"video_duration\":null,\"url\":\"https://www.youtube.com/watch?v=P0JJR5vYGOU\",\"list_id\":\"Lswyrp538kjfxfrv4\",\"video_number\":2}]}]}');

-- ----------------------------
-- Table structure for shopping_cart
-- ----------------------------
DROP TABLE IF EXISTS `shopping_cart`;
CREATE TABLE `shopping_cart`  (
  `cart_id` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `user_id` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `code_id` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`cart_id`) USING BTREE,
  INDEX `FK_cart_user_idx`(`user_id`) USING BTREE,
  INDEX `FK_cart_deal_idx`(`code_id`) USING BTREE,
  CONSTRAINT `FK_shoppingcart_deal` FOREIGN KEY (`code_id`) REFERENCES `deal` (`code_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_shoppingcart_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
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
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'Luu a', NULL, NULL, NULL, 'phuc@gmail.com', '123123', NULL, 'images/BecomeInstructor/ltn.jpg', NULL, 0, NULL);
INSERT INTO `user` VALUES ('U8d0rgoojskj03tm75', 'Lê Hoàng Phúc', NULL, NULL, NULL, 'phucyugi@gmail.com', '$2a$10$eaeN/x0vA8RF.0egO0mX5OUu1FmCEue6vCRCfGE2YkYbdTM/1xkee', NULL, 'images/BecomeInstructor/ltn.jpg', NULL, 1, NULL);
INSERT INTO `user` VALUES ('Uswyrp2a4kitph7ft', 'Luu Thien Nhan', NULL, NULL, NULL, 'nhanluu838@gmail.com', '$2a$10$kYroKyRFPmJn1zYPkWsl2OVFhzlap4ZpnQOlN.IxABE/RNYO5Qwj6', NULL, 'images/BecomeInstructor/ltn.jpg', NULL, 0, NULL);
INSERT INTO `user` VALUES ('Uswyrp45kkj5e5nrw', 'Lưu Thiện Nhân', 'Khác', '2020-12-01', '0703002347', 'nguoiamphu', '$2a$10$UtYSET9vR1AAWNbHyEsuMeS5ljiVslyl/iGzXWkin4hpXPhFmiK7W', NULL, '/upload/user_avatar/Uswyrp45kkj5e5nrw.jpg', 'ádqwqd\r\nqưd\r\nqư\r\ndqw\r\nd\r\nqưdfqwfqfqfw', 1, '123 Nguyễn Văn Cừ Q.5');

-- ----------------------------
-- Table structure for video
-- ----------------------------
DROP TABLE IF EXISTS `video`;
CREATE TABLE `video`  (
  `video_id` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `video_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `video_duration` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
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
INSERT INTO `video` VALUES ('Vswyrp538kjfxfrsm', 'Giới thiệu', NULL, 'https://www.youtube.com/watch?v=bUEykHfMMnc', 'Lswyrp538kjfxfrlu', 1);
INSERT INTO `video` VALUES ('Vswyrp538kjfxfrxv', 'Tag HTML nâng cao', NULL, 'https://www.youtube.com/watch?v=ZIgDYEZl1VE', 'Lswyrp538kjfxfrv4', 1);
INSERT INTO `video` VALUES ('Vswyrp538kjfxfs0n', 'Tag HTML nâng quá dữ', NULL, 'https://www.youtube.com/watch?v=P0JJR5vYGOU', 'Lswyrp538kjfxfrv4', 2);

SET FOREIGN_KEY_CHECKS = 1;
