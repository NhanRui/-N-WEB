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

 Date: 14/01/2021 23:08:27
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
INSERT INTO `bill` VALUES ('U4fh2219r8kjqrmfcs', 'C01', 'B8d0rgo2iwokjwbef3s', 349500);
INSERT INTO `bill` VALUES ('U4fh2219r8kjqrmfcs', 'C03', 'B8d0rgo1xo0kjwy7z2d', 181740);
INSERT INTO `bill` VALUES ('U4fh2219r8kjqrmfcs', 'C04', 'B8d0rgo1xo0kjwy7z2d', 179700);
INSERT INTO `bill` VALUES ('U4fh2219r8kjqrmfcs', 'C07', 'B8d0rgo1xo0kjwy7z2d', 175780);
INSERT INTO `bill` VALUES ('U4fh2219r8kjqrmfcs', 'C08', 'B8d0rgo1l74kjwz37qd', 179760);
INSERT INTO `bill` VALUES ('U4fh2219r8kjqrmfcs', 'C09', 'B8d0rgo1xo0kjwy7z2d', 181740);
INSERT INTO `bill` VALUES ('U4fh2219r8kjqrmfcs', 'C10', 'B8d0rgo1xo0kjwy7z2d', 179700);
INSERT INTO `bill` VALUES ('U4fh2219r8kjqrmfcs', 'C11', 'B8d0rgo1l74kjwza465', 299500);
INSERT INTO `bill` VALUES ('U4fh2219r8kjqrmfcs', 'C12', 'B8d0rgo1l74kjwzezbq', 299500);
INSERT INTO `bill` VALUES ('U4fh2219r8kjqrmfcs', 'C8d0rgo1l74kjwzwhhy', 'B8d0rgo1l74kjx0xw2h', 249976);
INSERT INTO `bill` VALUES ('U4fh2219r8kjqrmfcs', 'C8d0rgo1l74kjx08dqe', 'B8d0rgo1l74kjx0xw2h', 143583);
INSERT INTO `bill` VALUES ('U4fh2219r8kjqrmfcs', 'C8d0rgo2i6ckjww48li', 'B8d0rgo1xo0kjwy7z2d', 382348);
INSERT INTO `bill` VALUES ('U4fh2219r8kjqrmfcs', 'C8d0rgo2i6ckjwwbjei', 'B8d0rgo1xo0kjwy7z2d', 341523);
INSERT INTO `bill` VALUES ('U4fh2219r8kjqrmfcs', 'C8d0rgo2i6ckjwwgxd6', 'B8d0rgo1xo0kjwy7z2d', 179460);
INSERT INTO `bill` VALUES ('U4fh2219r8kjqrmfcs', 'C8d0rgo2i6ckjwwrkr4', 'B8d0rgo1xo0kjwy7z2d', 263584);
INSERT INTO `bill` VALUES ('U4fh2219r8kjqrmfcs', 'C8d0rgo2i6ckjwwvkm3', 'B8d0rgo1xo0kjwy7z2d', 299461);
INSERT INTO `bill` VALUES ('U4fh2219r8kjqrmfcs', 'C8d0rgo2i6ckjwx1m9n', 'B8d0rgo1xo0kjwy7z2d', 376162);
INSERT INTO `bill` VALUES ('U4fh2219r8kjqrmfcs', 'C8d0rgo2i6ckjwx4qcp', 'B8d0rgo2i6ckjwxliit', 438018);
INSERT INTO `bill` VALUES ('U4fh2219r8kjqrmfcs', 'C8d0rgo2i6ckjwxbzff', 'B8d0rgo2i6ckjwxliit', 245027);
INSERT INTO `bill` VALUES ('U4fh2219r8kjqrmfcs', 'C8d0rgo2i6ckjwxfo9t', 'B8d0rgo2i6ckjwxliit', 153480);
INSERT INTO `bill` VALUES ('U4fh2219r8kjqrmfcs', 'C8d0rgop0kkjw5kjax', 'B8d0rgop0kkjw5wmkl', 300698);
INSERT INTO `bill` VALUES ('U4fh2219r8kjqrmfcs', 'Cswyrp498kjdsuj8s', 'B8d0rgo1xo0kjwy7z2d', 0);
INSERT INTO `bill` VALUES ('U4fh2219r8kjqrmfcs', 'Cswyrp61kkj9sbfva', 'B8d0rgo1xo0kjwy4c9e', 0);
INSERT INTO `bill` VALUES ('U8d0rgo1l74kjx15qas', 'C8d0rgo1l74kjwzyh9u', 'B8d0rgo1l74kjx19dk7', 699000);
INSERT INTO `bill` VALUES ('U8d0rgo1l74kjx15qas', 'C8d0rgo1l74kjx003ia', 'B8d0rgo1l74kjx19dk7', 699000);
INSERT INTO `bill` VALUES ('U8d0rgo1l74kjx15qas', 'C8d0rgo1l74kjx0a5j1', 'B8d0rgo1l74kjx19dk7', 699000);
INSERT INTO `bill` VALUES ('U8d0rgo1l74kjx15qas', 'C8d0rgo2i6ckjwwrkr4', 'B8d0rgo1l74kjx19dk7', 263584);
INSERT INTO `bill` VALUES ('U8d0rgo1l74kjx15qas', 'C8d0rgo2i6ckjwxfo9t', 'B8d0rgo1l74kjx19dk7', 153480);
INSERT INTO `bill` VALUES ('U8d0rgo1l74kjx15qas', 'C8d0rgop0kkjw5kjax', 'B8d0rgo1l74kjx19dk7', 300698);

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
INSERT INTO `category` VALUES ('CAT8d0rgo1l74kjwzu7wq', 'Thiết kế đồ họa', '11');
INSERT INTO `category` VALUES ('CAT8d0rgo1l74kjwzuitz', '3D, Amination', '11');
INSERT INTO `category` VALUES ('CAT8d0rgo2i6ckjwwmbhs', 'Luyện thanh', '8');
INSERT INTO `category` VALUES ('CAT8d0rgo2i6ckjwwmwm6', 'Nhạc cụ', '8');
INSERT INTO `category` VALUES ('CAT8d0rgo2i6ckjwwnam5', 'Thay đổi bản thân', '10');
INSERT INTO `category` VALUES ('CAT8d0rgo2i6ckjwwnm9a', 'Phát triển sự nghiệp', '10');
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
INSERT INTO `complete_video` VALUES ('U4fh2219r8kjqrmfcs', 'V8d0rgo2i6ckjwwfzjc');
INSERT INTO `complete_video` VALUES ('U4fh2219r8kjqrmfcs', 'V8d0rgo2i6ckjwwfzjk');
INSERT INTO `complete_video` VALUES ('U4fh2219r8kjqrmfcs', 'V8d0rgo2i6ckjwwfzk1');
INSERT INTO `complete_video` VALUES ('U4fh2219r8kjqrmfcs', 'V8d0rgo2i6ckjwwfzk5');
INSERT INTO `complete_video` VALUES ('U8d0rgoojskj03tm75', 'V8d0rgo2k3okjut95c9');
INSERT INTO `complete_video` VALUES ('U8d0rgoojskj03tm75', 'V8d0rgo2k3okjutz1vr');
INSERT INTO `complete_video` VALUES ('U4fh2219r8kjqrmfcs', 'V8d0rgop0kkjw5rkyg');
INSERT INTO `complete_video` VALUES ('U8d0rgo1l74kjx15qas', 'V8d0rgop0kkjw5rkyg');
INSERT INTO `complete_video` VALUES ('U4fh2219r8kjqrmfcs', 'V8d0rgop0kkjw5rkyn');
INSERT INTO `complete_video` VALUES ('U8d0rgo1l74kjx15qas', 'V8d0rgop0kkjw5rkyn');
INSERT INTO `complete_video` VALUES ('U4fh2219r8kjqrmfcs', 'V8d0rgop0kkjw5rkyr');
INSERT INTO `complete_video` VALUES ('U4fh2219r8kjqrmfcs', 'V8d0rgop0kkjw6uhqm');
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
  `active` int(0) NULL DEFAULT 0,
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
INSERT INTO `course` VALUES ('C01', 'Bí quyết giao tiếp để thành công', 'Tiến sĩ Lê Thẩm Dương tiết lộ bí quyết giao tiếp để thành công', '/images/productTesting.png', 699000, 50, NULL, NULL, NULL, NULL, 'U8d0rgoojskj03tm75', '1', 'Hoàn thành', '2020-12-29', 17, '2021-01-14', 0);
INSERT INTO `course` VALUES ('C02', 'Học troll game', 'Tiến sĩ Lê Hoàng Phúc tiết lộ bí quyết giao tiếp để thành công', '/images/product_ID2.jpg', 123123, 50, NULL, NULL, NULL, NULL, 'U8d0rgoojskj03tm75', '2', 'Hoàn thành', '2020-12-29', 6, '2021-01-14', 0);
INSERT INTO `course` VALUES ('C03', 'Thành thạo ngôn ngữ lập trình C++', 'Thành thạo ngôn ngữ lập trình C++', '/images/product_ID1.jpg', 699000, 74, NULL, NULL, NULL, NULL, 'U8d0rgoojskj03tm75', '2', 'Hoàn thành', '2020-12-29', 4, '2021-01-14', 0);
INSERT INTO `course` VALUES ('C04', 'VBA - Giải pháp tối ưu công việc trên Excel', 'VBA - Giải pháp tối ưu công việc trên Excel', '/images/product_ID3.jpg', 599000, 70, NULL, NULL, NULL, NULL, 'U8d0rgoojskj03tm75', '5', 'Hoàn thành', '2020-12-29', 5, '2021-01-14', 0);
INSERT INTO `course` VALUES ('C07', 'Học Photoshop trọn bộ trong 7 ngày', 'Học Photoshop trọn bộ trong 7 ngày', '/images/product_ID7.png', 799000, 78, NULL, NULL, NULL, NULL, 'Uswyrp45kkj5e5nrw', '2', 'Hoàn thành', '2021-01-03', 0, '2021-01-14', 0);
INSERT INTO `course` VALUES ('C08', 'Nền tảng tiếng Anh cho người mới bắt đầu', 'Nền tảng tiếng Anh cho người mới bắt đầu', '/images/product_ID8.png', 749000, 76, NULL, NULL, NULL, NULL, 'Uswyrp45kkj5e5nrw', '6', 'Hoàn thành', '2021-01-03', 2, '2021-01-14', 0);
INSERT INTO `course` VALUES ('C09', 'Học thiết kế đồ họa trọn bộ 30 ngày', 'Học thiết kế đồ họa trọn bộ 30 ngày', '/images/product_ID9.jpg', 699000, 74, NULL, NULL, NULL, NULL, 'Uswyrp45kkj5e5nrw', '2', 'Hoàn thành', '2021-01-03', 1, '2021-01-14', 0);
INSERT INTO `course` VALUES ('C10', '85 chuyên đề Excel cơ bản đến nâng cao', '85 chuyên đề Excel cơ bản đến nâng cao', '/images/product_ID10.png', 599000, 70, NULL, NULL, NULL, NULL, 'Uswyrp45kkj5e5nrw', '5', 'Hoàn thành', '2021-01-03', 4, '2021-01-14', 0);
INSERT INTO `course` VALUES ('C11', 'Nghệ thuật bán hàng đỉnh cao', 'Nghệ thuật bán hàng đỉnh cao', '/images/product_ID12.jpg', 599000, 50, NULL, NULL, NULL, NULL, 'U8d0rgoojskj03tm75', '1', 'Hoàn thành', '2021-01-03', 3, '2021-01-14', 0);
INSERT INTO `course` VALUES ('C12', 'Học guitar đệm hát cấp tốc trong 30 ngày', 'Học guitar đệm hát cấp tốc trong 30 ngày', '/images/product_ID5.png', 599000, 50, NULL, NULL, NULL, NULL, 'Uswyrp45kkj5e5nrw', '1', 'Hoàn thành', '2021-01-03', 4, '2021-01-14', 0);
INSERT INTO `course` VALUES ('C8d0rgo1l74kjwzwhhy', 'Học Autocad 2D chuyên nghiệp trọn bộ', 'Học Autocad 2D chuyên nghiệp trọn bộ', '/upload/course/C8d0rgo1l74kjwzwhhy.jpg', 249976, 0, '<p>AutoCAD l&agrave; phần mềm đồ họa kh&aacute; phổ biến hiện nay để thực hiện c&aacute;c bản vẽ. Việc sử dụng AutoCAD trong thiết kế sẽ tiết kiệm được nhiều thời gian, tăng độ ch&iacute;nh x&aacute;c, dễ d&agrave;ng tạo lập v&agrave; chỉnh sửa nhiều phương &aacute;n trong thời gian ngắn. Đối với c&aacute;c dự &aacute;n nhỏ, c&oacute; độ phức tạp thấp, &iacute;t đối tượng th&igrave; AutoCAD 2D c&oacute; thể đ&aacute;p ứng tốt. Kh&oacute;a học vẽ AutoCAD 2D n&agrave;y gi&uacute;p bạn l&agrave;m chủ c&aacute;c c&ocirc;ng cụ của AutoCAD 2D để n&acirc;ng cao hiệu quả trong qu&aacute; tr&igrave;nh l&agrave;m việc của m&igrave;nh.</p>\r\n', NULL, 'Nắm được các thao tác trong AutoCAD\r\nThành thạo các công cụ vẽ, chỉnh sửa, quản lý trong AutoCAD\r\nCó thể tạo ra được các bản vẽ kỹ thuật áp dụng trong thực tế công việc', 'Các bạn sinh viên chuẩn bị làm đồ án\r\nCác kỹ sư trong các ngành kiến trúc, xây dựng\r\nNhững người mới tiếp cận phần mềm AutoCad 2D, nắm được các thao tác vẽ cơ bản trong AutoCAD 2D\r\nNhững người đã nắm cơ bản về vẽ AutoCad 2D nhưng chưa đầy đủ', 'Uswyrp45kkj5e5nrw', 'CAT8d0rgo1l74kjwzuitz', 'Hoàn thành', '2021-01-14', 6, '2021-01-14', 0);
INSERT INTO `course` VALUES ('C8d0rgo1l74kjwzyh9u', 'Thành thạo tạo hình với 3DSMAX', 'Thành thạo tạo hình với 3DSMAX', '/upload/course/C8d0rgo1l74kjwzyh9u.jpg', 699000, 0, '<p>Trong x&acirc;y dựng v&agrave; kiến tr&uacute;c, 3DSMAX l&agrave; một trong những phần mềm phổ biển v&agrave; đắc lực cho c&aacute;c kiến tr&uacute;c sư v&agrave; nh&agrave; thiết kế nội thất. Phần mềm n&agrave;y được sử dụng để tr&igrave;nh b&agrave;y &yacute; tưởng thiết kế kiến tr&uacute;c dưới dạng 3D. Khi mới l&agrave;m quen với 3DSMAX th&ocirc;ng thường người học sẽ thấy kh&oacute; khăn, đa số kh&ocirc;ng biết bắt đầu từ đ&acirc;u.</p>\r\n\r\n<p>Kh&oacute;a học&nbsp;<strong>&quot;Th&agrave;nh thạo tạo h&igrave;nh với 3DSMAX&quot;</strong>&nbsp;của ch&uacute;ng t&ocirc;i sẽ đặt ra con đường ngắn nhất, đơn giản nhất gi&uacute;p c&aacute;c bạn tiếp cận với phần mềm sau đ&oacute; l&agrave;m chủ n&oacute;. Kh&oacute;a học được thiết kế d&agrave;nh cho sinh vi&ecirc;n c&aacute;c ng&agrave;nh kiến tr&uacute;c, đồ họa; c&aacute;c doanh nghiệp c&oacute; nhu cầu n&acirc;ng cao năng lực thiết kế của c&aacute;n bộ, nh&acirc;n vi&ecirc;n bằng phần mềm 3DSMAX; c&aacute;c kỹ sư, kiến tr&uacute;c sư cần củng cố kỹ năng, chuẩn h&oacute;a kiến thức sử dụng 3DSMAX.</p>\r\n\r\n<p>Sau kh&oacute;a học, bạn sẽ sử dụng th&agrave;nh thạo c&aacute;c nh&oacute;m lệnh v&agrave; c&aacute;c c&ocirc;ng cụ của 3DSMAX, biết c&aacute;ch tạo h&igrave;nh sản phẩm. Đặc biệt, với sự hướng dẫn tận t&igrave;nh của KTS L&ecirc; Anh Tuấn - Người s&aacute;ng lập cộng đồng đồ họa VietCG, Gi&aacute;m đốc c&ocirc;ng ty thiết kế kiến tr&uacute;c VOS, chắc chắn bạn sẽ tạo ra được c&aacute;c sản phẩm 3D ho&agrave;n mỹ.</p>\r\n', NULL, 'Học viên sẽ sử dụng thành thạo các nhóm lệnh và các công cụ của 3DSMAX, biết cách tạo hình sản phẩm\r\nCác sinh viên chuyên ngành sẽ có đủ khả năng hoàn thiện đồ án chuyên ngành với kết quả cao\r\nCác học viên ngoài ngành sẽ sử dụng thành thạo 3DSMAX và tạo ra các tác phẩm hoàn thiện phục vụ tốt công việc liên quan đến tạo hình\r\nHọc viên sẽ có đủ kiến thức tự nghiên cứu phần mềm, chuẩn bị cho các bước nâng cao tiếp theo', 'Những ai quan tâm đến 3DSMAX, muốn tiếp cận và sáng tạo sản phẩm 3D\r\nSinh viên các ngành kiến trúc, đồ họa, hoạt họa, trang trí nội thất, xây dựng\r\nDoanh nghiệp có nhu cầu nâng cao năng lực diễn họa, thiết kế của cán bộ, nhân viên bằng phần mềm 3DSMAX\r\nKỹ sư, kiến trúc sư, họa viên cần củng cố kỹ năng, chuẩn hóa kiến thức sử dụng 3DSMAX', 'Uswyrp45kkj5e5nrw', 'CAT8d0rgo2i6ckjwwnam5', 'Hoàn thành', '2021-01-14', 3, '2021-01-14', 0);
INSERT INTO `course` VALUES ('C8d0rgo1l74kjx003ia', 'Thiết kế đồ họa căn bản (Phần 1)', 'Thiết kế đồ họa căn bản (Phần 1)', '/upload/course/C8d0rgo1l74kjx003ia.jpg', 699000, 0, '<p>Kh&oacute;a học Thiết kế Đồ họa căn bản được x&acirc;y dựng nhằm cung cấp cho những ai đang muốn l&agrave;m nghề thiết kế, những ai y&ecirc;u th&iacute;ch thiết kế sử dụng hiệu quả c&aacute;c phần mềm đồ họa. Đồng thời học vi&ecirc;n c&oacute; kiến thức vững chắc về mỹ thuật đồ họa; lựa chọn m&agrave;u sắc; kỹ thuật nhiếp ảnh; ph&aacute;t triển &yacute; tưởng thiết kế; ph&acirc;n t&iacute;ch phương ph&aacute;p tr&igrave;nh b&agrave;y ấn phẩm đồ họa c&oacute; t&iacute;nh mỹ thuật cao.</p>\r\n', NULL, 'Nắm rõ cách sử dụng công cụ trong phần mềm thiết kế đồ họa\r\nCó kiến thức vững chắc về mỹ thuật đồ họa\r\nBiết thiết kế các sản phẩm như banner, tờ rơi, bìa sách...', 'Tất cả đối tượng yêu thích, đam mê và mong muốn thành công trong lĩnh vực thiết kế đồ họa, ấn phẩm quảng cáo\r\nNhững ai muốn theo làm nghề thiết kế', 'Uswyrp45kkj5e5nrw', 'CAT8d0rgo2i6ckjwwnam5', 'Hoàn thành', '2021-01-14', 2, '2021-01-14', 0);
INSERT INTO `course` VALUES ('C8d0rgo1l74kjx08dqe', 'Kinh nghiệm thu âm tại nhà', 'Kinh nghiệm thu âm tại nhà', '/upload/course/C8d0rgo1l74kjx08dqe.jpg', 143583, 0, '<p>Kh&oacute;a học gi&uacute;p bạn c&oacute; thể thu &acirc;m ngay tạo nh&agrave; m&agrave; kh&ocirc;ng tốn chi ph&iacute; ra ph&ograve;ng thu.</p>\r\n\r\n<p>Lộ tr&igrave;nh học tập:<br />\r\n4 b&agrave;i học cung cấp cho học vi&ecirc;n c&aacute;c kĩ năng cần thiết để c&oacute; thể thu &acirc;m tạo nh&agrave;</p>\r\n', NULL, 'Giúp các bạn có thể tự thu âm ngay tại nhà', 'Tất cả các bạn đam mê ca hát muốn thu âm ngay tại nhà', 'Uswyrp45kkj5e5nrw', 'CAT8d0rgo2i6ckjwwmwm6', 'Hoàn thành', '2021-01-14', 1, '2021-01-14', 0);
INSERT INTO `course` VALUES ('C8d0rgo1l74kjx0a5j1', 'Chinh phục sáo trúc cùng thầy Mão Mèo', 'Chinh phục sáo trúc cùng thầy Mão Mèo', '/upload/course/C8d0rgo1l74kjx0a5j1.jpg', 699000, 0, '<p>Kh&ocirc;ng dưới một lần bạn nh&igrave;n anh em, bạn b&egrave; m&igrave;nh chơi nhạc với &aacute;nh mắt ngưỡng mộ.</p>\r\n\r\n<p>Bạn cho rằng chơi nhạc l&agrave; một thứ t&agrave;i năng thi&ecirc;n ph&uacute; v&agrave; chơi được một loại nhạc cụ đồng nghĩa với việc phải bỏ ra rất nhiều thời gian, c&ocirc;ng sức.</p>\r\n\r\n<p>Bạn c&oacute; biết rằng chơi được một loại nhạc cụ l&agrave; việc ho&agrave;n to&agrave;n khả thi v&agrave; kh&ocirc;ng mất qu&aacute; nhiều thời gian như bạn nghĩ.</p>\r\n\r\n<p>Vậy, bắt đầu từ S&aacute;o tr&uacute;c l&agrave; một hướng đi ch&iacute;nh x&aacute;c.</p>\r\n\r\n<p>Đến với kh&oacute;a học S&aacute;o tr&uacute;c căn bản bạn sẽ t&igrave;m được nguồn cảm hứng v&agrave; đam m&ecirc; với nhạc cụ n&oacute;i chung v&agrave; s&aacute;o tr&uacute;c n&oacute;i ri&ecirc;ng trong ch&iacute;nh m&igrave;nh.</p>\r\n\r\n<p>Ngo&agrave;i ra, sau 4 chương học với những kiến thức v&agrave; kỹ năng được chắt lọc, c&aacute;c bạn sẽ:</p>\r\n\r\n<p>- Biết c&aacute;ch chọn được cho m&igrave;nh một c&acirc;y s&aacute;o tốt đ&uacute;ng nghĩa trong qu&aacute; tr&igrave;nh luyện tập v&agrave; chơi nhạc sau n&agrave;y.</p>\r\n\r\n<p>- Nắm được kỹ năng cầm s&aacute;o v&agrave; tư thế đặt m&ocirc;i thổi s&aacute;o đ&uacute;ng c&aacute;ch</p>\r\n\r\n<p>- Thổi được c&aacute;c b&agrave;i s&aacute;o đơn giản m&agrave; kh&ocirc;ng cần đọc c&aacute;c bản nhạc l&yacute;</p>\r\n', NULL, 'Biết cách chọn cho mình một cây sáo tốt cho quá trình luyện tập và chơi nhạc\r\nNắm được các đặc điểm và tính chất của các loại sáo trúc\r\nCó được cách cầm sáo và tư thế luyện tập đúng đắn\r\nNắm được cách đặt môi đúng cách khi thổi sáo\r\nBiết thổi một số bài hát đơn giản\r\nCó trong tay bí quyết thổi sáo mà không cần học qua về nhạc lý\r\nCó được làn hơi dài để khi thổi sáo không bị mệt\r\nBiết cách chơi một bài sáo hay nhất trong thời gian ngắn nhất\r\nCó thể thổi được một bài hát chỉ sau 1 tiếng luyện tập\r\nSau khi hoàn thành khóa học học viên có thể dễ dàng tự thổi được các bài hát mình thích', 'Những người có sự yêu thích đặc biệt với sáo trúc nhưng không có thời gian đến trung tâm tập luyện.\r\nNhững người muốn bắt đầu học chơi từ loại nhạc cụ đơn giản nhất là sáo trúc.\r\nBất kỳ ai có đam mê về nghệ thuật và các loại nhạc cụ muốn trau dồi kiến thức về lĩnh vực này.', 'Uswyrp45kkj5e5nrw', 'CAT8d0rgo2i6ckjwwnam5', 'Hoàn thành', '2021-01-14', 2, '2021-01-14', 0);
INSERT INTO `course` VALUES ('C8d0rgo2i6ckjww48li', '6 công cụ marketing online hot nhất', '6 công cụ marketing online hot nhất', '/upload/course/C8d0rgo2i6ckjww48li.jpg', 382348, 0, '<p>Kh&oacute;a học n&agrave;y cung cấp cho bạn trọn bộ marketing online thực tế, b&agrave;i bản, to&agrave;n diện bằng việc vận dụng 6 c&ocirc;ng cụ marketing online hot nhất hiện nay: Instagram, Zalo, Youtube, Email Marketing, Facebook, SMS.</p>\r\n', NULL, 'Xác định sản phẩm và mô hình kinh doanh online phù hợp\r\nLàm chủ nguồn hàng kinh doanh bằng việc liên hệ trực tiếp với người bán, nhà cung cấp\r\nNhận diện chân dung khách hàng tiềm năng của mình, cách xây dựng chính sách chăm sóc khách hàng\r\nCách nghiên cứu, theo dõi và học hỏi từ chính đối thủ cạnh tranh qua các công cụ miễn phí\r\nTự tin xây dựng đồng bộ các kênh marketing (Facebook, Instagram, Zalo, Youtube, Email Marketing,...)', 'Những ai muốn khởi nghiệp kinh doanh online bài bản, bắt đầu từ những công việc cốt lõi nhất: xác định sản phẩm kinh doanh, tìm kiếm nguồn hàng kinh doanh, liên hệ nhà cung cấp, nghiên cứu khách hàng, đối thủ, xây dựng nội dung bán hàng...\r\nNhững ai mong muốn tìm hiểu, phát triển đồng bộ các kênh Marketing Online (Instagram, Zalo, Youtube, Email Marketing, Facebook, SMS) bên cạnh kênh truyền thống\r\nNhững ai đang tìm kiếm các cơ hội kinh doanh online, và phát triển công việc kinh doanh offline bền vững cho riêng mình', 'U8d0rgoojskj03tm75', '5', 'Hoàn thành', '2021-01-14', NULL, '2021-01-14', 0);
INSERT INTO `course` VALUES ('C8d0rgo2i6ckjwwbjei', 'Khóa học Facebook chuyên sâu', 'Khóa học Facebook chuyên sâu', '/images/ini_course.jpg', 341523, 0, '<p>&nbsp;Kh&oacute;a học ph&ugrave; hợp với:&nbsp;<br />\r\n- Những người c&oacute; &yacute; định khởi nghiệp<br />\r\n- Những người kinh doanh online<br />\r\n- C&aacute;c doanh nghiệp, c&ocirc;ng ty c&aacute; nh&acirc;n muốn ph&aacute;t triển thương hiệu sản phẩm<br />\r\nC&aacute;ch chạy quảng c&aacute;o tr&ecirc;n Facebook hiệu quả lu&ocirc;n l&agrave; thứ đau đầu cho người mới. C&oacute; một thực tế rằng c&oacute; rất nhiều doanh nghiệp, chủ shop chạy c&aacute;c chiến dịch Facebook với ng&acirc;n s&aacute;ch h&agrave;ng chục triệu đồng/th&aacute;ng, họ c&oacute; thể c&oacute; lợi nhuận trong c&aacute;c th&aacute;ng đầu nhưng c&agrave;ng chạy l&acirc;u d&agrave;i hiệu quả giảm dần v&agrave; chi ph&iacute; ng&agrave;y c&agrave;ng tăng, nguy&ecirc;n nh&acirc;n l&agrave; do họ chưa biết c&aacute;ch tối ưu chi ph&iacute; v&agrave; chưa c&oacute; một chiến lược Facebook Marketing đ&uacute;ng đắn.</p>\r\n\r\n<p>Kho&aacute; học n&agrave;y kh&ocirc;ng những cung cấp những kiến thức, kỹ thuật căn bản về Facebook m&agrave; c&ograve;n chia sẻ với bạn những chiến lược Facebook Maketing l&acirc;u d&agrave;i v&agrave; bền vững.</p>\r\n', NULL, 'Cung cấp cho học viên cái nhìn tổng quát về Facebook và Social Media\r\nLàm rõ vai trò của Facebook trong các mục đích xây dựng thương hiệu và bán hàng\r\nHướng dẫn cách xây dựng và phát triển nội dung fanpage, cách lấy fan từ fanpage đối thủ\r\nPhân loại các hình thức quảng cáo trên facebook, tìm hiểu về Power Editor\r\nXác định đúng đối tượng quảng cáo, tối ưu từ khóa quảng cáo', 'Những người có ý định khởi nghiệp\r\nNhững người kinh doanh online\r\nCác doanh nghiệp, công ty cá nhân muốn phát triển thương hiệu sản phẩm', 'U8d0rgoojskj03tm75', '6', 'Hoàn thành', '2021-01-14', 2, '2021-01-14', 0);
INSERT INTO `course` VALUES ('C8d0rgo2i6ckjwwgxd6', 'Khóa học quảng cáo Facebook cơ bản', 'Khóa học quảng cáo Facebook cơ bản', '/images/ini_course.jpg', 179460, 0, '<p>&nbsp;Kh&oacute;a học ph&ugrave; hợp cho:&nbsp;<br />\r\n- Sinh vi&ecirc;n muốn học th&ecirc;m kĩ năng mới về nghề để c&oacute; thể kinh doanh ri&ecirc;ng hoặc xin việc<br />\r\n- Người đi l&agrave;m c&ocirc;ng ăn lương, muốn b&aacute;n h&agrave;ng online tạo th&ecirc;m thu nhập cho gia đ&igrave;nh<br />\r\n- Chủ cửa h&agrave;ng, chủ shop nhỏ, nh&acirc;n vi&ecirc;n marketing, c&aacute;c nh&agrave; m&ocirc;i giới muốn đẩy mạnh b&aacute;n h&agrave;ng online<br />\r\n- Chủ doanh nghiệp muốn th&uacute;c đẩy c&ocirc;ng việc kinh doanh tr&ecirc;n Facebook<br />\r\n- Đội ngũ quản l&iacute; muốn học kĩ năng Facebook phục vụ c&ocirc;ng t&aacute;c quản l&yacute; nh&acirc;n vi&ecirc;n<br />\r\n- Đội ngũ Start Up đang muốn t&igrave;m 1 k&ecirc;nh ph&acirc;n phối sản phẩm, h&agrave;ng h&oacute;a của m&igrave;nh, với chi ph&iacute; thấp, hiệu quả cao<br />\r\nC&oacute; tất cả 5 l&yacute; do v&igrave; sao bạn n&ecirc;n học c&aacute;ch chạy quảng c&aacute;o Facebook ngay từ h&ocirc;m nay:&nbsp;<br />\r\n- Kh&ocirc;ng cần đầu tư chi ph&iacute; v&agrave; x&acirc;y dựng website, c&oacute; thể tự chạy quảng c&aacute;o được cho ch&iacute;nh trang của m&igrave;nh.&nbsp;<br />\r\n- Lượng người d&ugrave;ng đ&ocirc;ng đảo dễ tiếp cận&nbsp;<br />\r\n- Facebook hỗ trợ nhiều h&igrave;nh thức marketing&nbsp;<br />\r\n- Quảng c&aacute;o Facebook c&oacute; chi ph&iacute; kh&aacute; rẻ&nbsp;<br />\r\n- Quảng c&aacute;o Facebook c&oacute; hỗ trợ vi&ecirc;n n&oacute;i tiếng việt</p>\r\n', NULL, 'Giúp học viên định hướng được cách xây dựng công việc kinh doanh trên Facebook và tạo thu nhập tối thiểu 20 triệu/tháng từ Facebook\r\nGiúp doanh nghiệp phát triển kênh bán hàng online song song với bán hàng truyền thông, tăng trưởng tối thiểu 30% doanh số\r\nCác nhà bán lẻ, nhân viên môi giới, chủ shop đột phá về doanh thu từ Facebook\r\nĐội ngũ start up khởi nghiệp thành công và tạo được nguồn vốn xoay vòng hàng ngày', 'Sinh viên muốn học thêm kĩ năng mới về nghề để có thể kinh doanh riêng hoặc xin việc\r\nNgười đi làm công ăn lương, muốn bán hàng online tạo thêm thu nhập cho gia đình\r\nChủ cửa hàng, chủ shop nhỏ, nhân viên marketing, các nhà môi giới muốn đẩy mạnh bán hàng online\r\nChủ doanh nghiệp muốn thúc đẩy công việc kinh doanh trên Facebook\r\nĐội ngũ quản lí muốn học kĩ năng Facebook phục vụ công tác quản lý nhân viên\r\nĐội ngũ Start Up đang muốn tìm 1 kênh phân phối sản phẩm, hàng hóa của mình, với chi phí thấp - hiệu quả cao', 'U8d0rgoojskj03tm75', '5', 'Hoàn thành', '2021-01-14', NULL, '2021-01-14', 0);
INSERT INTO `course` VALUES ('C8d0rgo2i6ckjwwrkr4', 'Bí quyết trở thành người đứng đầu', 'Bí quyết trở thành người đứng đầu', '/upload/course/C8d0rgo2i6ckjwwrkr4.jpg', 263584, 0, '<p>L&atilde;nh đạo l&agrave; một qu&aacute; tr&igrave;nh ảnh hưởng mang t&iacute;nh x&atilde; hội trong đ&oacute; l&atilde;nh đạo t&igrave;m kiếm sự tham gia tự nguyện của cấp dưới nhằm đạt mục ti&ecirc;u của tổ chức. L&atilde;nh đạo kh&ocirc;ng phải tự sinh ra m&agrave; c&oacute;, cũng kh&ocirc;ng phải l&agrave; một h&agrave;nh động cảm t&iacute;nh m&agrave; phải th&ocirc;ng qua một qu&aacute; tr&igrave;nh kh&ocirc;ng ngừng trau dồi v&agrave; r&uacute;t kinh nghiệm, v&agrave; ho&agrave;n to&agrave;n c&oacute; thể học được. Kh&oacute;a học &quot;B&iacute; quyết trở th&agrave;nh người đứng đầu&quot; l&agrave; tổng hợp s&uacute;c t&iacute;ch, ngắn gọn c&aacute;c kinh nghiệm của Tiến sĩ L&ecirc; Thẩm Dương về kỹ năng l&atilde;nh đạo, gi&uacute;p bạn trở th&agrave;nh một nh&agrave; l&atilde;nh đạo t&agrave;i ba, hay đơn giản gi&uacute;p cải thiện kỹ năng v&agrave; tư duy quản l&yacute; của m&igrave;nh.</p>\r\n', NULL, 'Nghề lãnh đạo là gì? Ở đâu thì cần lãnh đạo?\r\nNguyên nhân thất bại của một người lãnh đạo\r\nGiải pháp biến nguồn lực thành mục tiêu\r\nCác chùm khái niệm người lãnh đạo phải biết: nhân sự, nghề lãnh đạo, sản phẩm của nghề lãnh đạo và cách bán sản phẩm đó\r\nTố chất lãnh đạo cần có và cách cải thiện\r\nHiểu cách xây dựng quyền lực cho bản thân\r\nPhương pháp sử dụng quyền lực chuẩn xác\r\nKỹ năng sử dụng quyền lực của một người lãnh đạo tài ba', 'Người đang làm lãnh đạo\r\nNgười có mong muốn làm lãnh đạo', 'U8d0rgoojskj03tm75', 'CAT8d0rgo2i6ckjwwnam5', 'Hoàn thành', '2021-01-14', 4, '2021-01-14', 0);
INSERT INTO `course` VALUES ('C8d0rgo2i6ckjwwvkm3', 'Tham, sân, si và thiền trong quản trị cảm xúc', 'Tham, sân, si và thiền trong quản trị cảm xúc', '/upload/course/C8d0rgo2i6ckjwwvkm3.jpg', 299461, 0, '<p>Tổng qu&aacute;t về c&aacute;c kh&aacute;i niệm, hiện tượng, sự kiện v&agrave; vai tr&ograve; của cảm x&uacute;c:</p>\r\n\r\n<p>A &quot;Đời l&agrave; bể khổ</p>\r\n\r\n<p>Khổ do tham</p>\r\n\r\n<p>Khổ do giận</p>\r\n\r\n<p>V&agrave; khổ do si m&ecirc;.</p>\r\n\r\n<p>Nhưng Phật c&ograve;n dạy</p>\r\n\r\n<p>V&agrave; người chỉ ra</p>\r\n\r\n<p>Nếu ta chịu tu tập,</p>\r\n\r\n<p>Nếu ta chịu r&egrave;n luyện</p>\r\n\r\n<p>Nếu ta chịu chỉnh m&igrave;nh</p>\r\n\r\n<p>Th&igrave; đời l&agrave; niết b&agrave;n</p>\r\n\r\n<p>Cho ta v&agrave; mọi người xung quanh&quot;</p>\r\n\r\n<p>B. Cảm x&uacute;c lan trong mọi ng&oacute;c ng&aacute;ch, đừng qu&ecirc;n &quot;th&aacute;i độ&quot;:</p>\r\n\r\n<p>- B&aacute;c sĩ b&ecirc;n mỹ sẽ bị kiện, kh&ocirc;ng phải bởi chuy&ecirc;n m&ocirc;n m&agrave; l&agrave; ở th&aacute;i độ thiếu &acirc;n cần v&agrave; thiếu sự lắng nghe hay thờ ơ, v&ocirc; cảm.</p>\r\n\r\n<p>- Bạn gh&eacute;t nhau v&igrave; th&aacute;i độ l&agrave; vậy đ&oacute;: n&oacute; tạo cảm x&uacute;c cực ti&ecirc;u cực</p>\r\n\r\n<p>- Ai cũng c&oacute; t&iacute;nh phật, t&iacute;nh s&agrave;. Th&aacute;i độ l&agrave; thứ quyết định bạn sẽ gọi t&iacute;nh g&igrave; l&ecirc;n từ họ chứ kh&ocirc;ng phải c&aacute;i m&aacute;c, c&aacute;i &aacute;o hay c&aacute;i t&ecirc;n.&nbsp;</p>\r\n\r\n<p>-Nlp đơn giản hiểu l&agrave; lập tr&igrave;nh, tạo phản xạ c&oacute; điều kiện. Bố đ&aacute;nh con, c&ocirc; đ&aacute;nh tr&ograve; lần sau nh&igrave;n thấy bố, c&ocirc; trừng mắt, nghe, nh&igrave;n, ngửi tho&aacute;ng qua cảnh đ&oacute; nghe người kh&aacute;c dọa bố, nh&igrave;n roi l&agrave; sợ rồi.&nbsp;</p>\r\n\r\n<p>- Thiền v&agrave; phật gi&aacute;o tạo ch&aacute;nh niệm gi&uacute;p nhận ra động t&acirc;m, t&acirc;m biến hoại n&ecirc;n dễ l&agrave;m chủ t&acirc;m th&acirc;n hơn. Mất ch&aacute;nh niệm, sống với đau của qu&aacute; khứ v&agrave; tương lai sẽ dẫn đến qu&ecirc;n hay kh&ocirc;ng nhận ra trạng th&aacute;i ti&ecirc;u cực của m&igrave;nh. Đẩy cảm x&uacute;c l&ecirc;n cao đến mức chiến v&agrave; biến với cả người th&acirc;n y&ecirc;u.</p>\r\n\r\n<p>C. Cảm x&uacute;c trong ăn, học, chơi v&agrave; r&egrave;n luyện m&agrave; phụ huynh, quản l&yacute;, l&atilde;nh đạo v&agrave; mọi người cần biết.</p>\r\n', NULL, 'Các khái niệm và kiến thức liên quan đến cảm xúc giúp:\r\nLàm chủ được cảm xúc của bản thân và người xung quanh.\r\nNhững yếu tố quyết định tạo nên cảm xúc.\r\nBạn sẽ hiểu sâu hơn tại sao \"Kẻ thù của mình là chính mình\", \"Chiến thắng vĩ đại nhất là chiến thắng chính mình\" và chiến thắng bằng cách nào. Giảm bớt những đòi hỏi cá nhân và sự trầm trọng hóa cá nhân.', 'Doanh nhân, quản lý, nhà lãnh đạo và nhân viên văn phòng.\r\nGiáo viên, sinh viên và học sinh mong muốn học kỹ năng mềm, làm chủ cuộc sống.\r\nÔng bố bà mẹ trong gia đình mong muốn cuộc sống vui vẻ hạnh phúc và muốn trang bị hành trang giúp hiểu và tự sửa những vấn đề trong ăn, uống, học, hành và chơi của con cháu.\r\nBạn trẻ quan tâm đến các vấn đề tâm lý, làm chủ tâm lý và nghệ thuật sống.', 'U8d0rgoojskj03tm75', 'CAT8d0rgo2i6ckjwwnam5', 'Hoàn thành', '2021-01-14', 1, '2021-01-14', 0);
INSERT INTO `course` VALUES ('C8d0rgo2i6ckjwx1m9n', 'Kỹ năng thuyết trình ấn tượng', 'Kỹ năng thuyết trình ấn tượng', '/upload/course/C8d0rgo2i6ckjwx1m9n.jpg', 376162, 0, '<p>Lời n&oacute;i kh&ocirc;ng xương nhưng n&oacute; đủ cứng để ph&aacute; vỡ những tr&aacute;i tim, ghim v&agrave;o t&acirc;m tr&iacute; người nghe như những con dao sắc b&eacute;n.</p>\r\n\r\n<p>Tại sao nhiều người c&oacute; c&aacute;ch n&oacute;i chuyện trước đ&aacute;m đ&ocirc;ng lại tự tin v&agrave; rất cuốn h&uacute;t, trong khi bạn chưa bao giờ h&agrave;i l&ograve;ng với b&agrave;i thuyết tr&igrave;nh của m&igrave;nh, d&ugrave; bạn đ&atilde; chuẩn bị rất kỹ?</p>\r\n\r\n<p>Kỹ năng thuyết tr&igrave;nh k&eacute;m sẽ khiến bạn mất đi nhiều cơ hội nghề nghiệp, đ&aacute;nh rơi cơ hội thăng tiến, kh&ocirc;ng thể hiện được năng lực v&agrave; &yacute; tưởng của m&igrave;nh trước những người kh&aacute;c. Trong khi đ&oacute;, đ&acirc;y l&agrave; kỹ năng bạn ho&agrave;n to&agrave;n c&oacute; thể r&egrave;n luyện được.</p>\r\n\r\n<p>D&ugrave; l&agrave; n&oacute;i chuyện trước c&ocirc;ng ch&uacute;ng, ph&aacute;t biểu trước đồng nghiệp trong buổi họp, đọc diễn văn trước đ&ocirc;ng đảo kh&aacute;ch h&agrave;ng hay đơn giản chỉ l&agrave; tr&igrave;nh b&agrave;y một b&agrave;i b&aacute;o c&aacute;o trong đại hội, chia sẻ kiến thức trong b&agrave;i tr&igrave;nh b&agrave;y tr&ecirc;n lớp,... tất cả đều cần đến: Kỹ năng thuyết tr&igrave;nh trước đ&aacute;m đ&ocirc;ng.</p>\r\n\r\n<p>Kho&aacute; học Kỹ năng thuyết tr&igrave;nh kh&ocirc;ng chỉ l&agrave; kỹ năng thuyết tr&igrave;nh, m&agrave; c&ograve;n l&agrave; kỹ năng thuyết tr&igrave;nh ấn tượng! Ch&uacute;ng t&ocirc;i kh&ocirc;ng hướng dẫn bạn c&oacute; thể n&oacute;i những điều m&agrave; ai cũng n&oacute;i được, m&agrave; c&ograve;n l&agrave; những c&aacute;ch n&oacute;i chuyện thuyết phục tạo ấn tượng s&acirc;u sắc trong l&ograve;ng kh&aacute;n giả.</p>\r\n\r\n<p>Kho&aacute; học cung cấp cho bạn c&aacute;c c&ocirc;ng cụ kh&aacute;c nhau: từ c&aacute;ch x&acirc;y dựng một d&agrave;n b&agrave;i với c&aacute;c nội dung đầy gi&aacute; trị, cho đến c&aacute;ch mở đầu b&agrave;i ấn tượng v&agrave; c&aacute;ch kết th&uacute;c khiến kh&aacute;n giả kh&ocirc;ng thể n&agrave;o qu&ecirc;n. Kh&ocirc;ng chỉ vậy, những ai chưa kh&eacute;o ăn n&oacute;i sẽ được hướng dẫn 20 kỹ năng diễn đạt sao cho ấn tượng nhất.</p>\r\n\r\n<p>Ghi ch&uacute;: Đ&acirc;y l&agrave; phần 1 của trọn bộ Kỹ năng thuyết tr&igrave;nh, nếu học phần 2 - kho&aacute; &quot;Kỹ năng thuyết tr&igrave;nh chuy&ecirc;n nghiệp&quot;, bạn c&ograve;n được hướng dẫn c&aacute;c kỹ năng bổ trợ như c&aacute;ch thuyết tr&igrave;nh ứng khẩu, c&aacute;ch sử dụng giọng n&oacute;i, c&aacute;ch h&acirc;m n&oacute;ng bầu kh&ocirc;ng kh&iacute; - tạo hiệu ứng đ&aacute;m đ&ocirc;ng, l&agrave;m sao để tự tin trước đ&aacute;m đ&ocirc;ng, c&aacute;ch l&agrave;m slide thuyết tr&igrave;nh powerpoint v&agrave; cả c&aacute;c c&aacute;ch xử l&yacute; c&aacute;c t&igrave;nh huống sự cố tr&ecirc;n s&acirc;n khấu.</p>\r\n\r\n<p>+ C&oacute; hơn 40 phương ph&aacute;p thuyết tr&igrave;nh th&uacute; vị từng gi&acirc;y ph&uacute;t v&agrave; chưa từng xuất hiện trong c&aacute;c kho&aacute; học online kh&aacute;c.<br />\r\n+ Mỗi phương ph&aacute;p đều c&oacute; v&iacute; dụ thực tiễn sinh động bằng chuyện kể, h&igrave;nh ảnh v&agrave; bằng video clip.</p>\r\n', NULL, 'Biết cách mở đầu ấn tượng.\r\nBiết cách kết thúc đọng lại dư âm.\r\nCách xây dựng một dàn bài nội dung thật đắt.\r\nBiết cách diễn đạt gây ấn tượng mạnh nhất bằng ngôn từ và ngôn ngữ cơ thể', 'Học sinh, sinh viên khi thuyết trình trên lớp.\r\nNgười đi làm, nhân viên văn phòng thuyết trình trước đồng nghiệp, trước cấp trên.\r\nCác cấp quản lý như trưởng phòng, giám đốc phát biểu trong cuộc họp, hội nghị.\r\nNhân viên thuyết trình sản phẩm với khách hàng, đại diện nhãn hàng phát biểu trong sự kiện marketing.', 'U8d0rgoojskj03tm75', 'CAT8d0rgo2i6ckjwwnm9a', 'Hoàn thành', '2021-01-14', 3, '2021-01-14', 0);
INSERT INTO `course` VALUES ('C8d0rgo2i6ckjwx4qcp', 'Học hát chuyên nghiệp trong 7 ngày', 'Học hát chuyên nghiệp trong 7 ngày', '/upload/course/C8d0rgo2i6ckjwx4qcp.jpg', 438018, 0, '<p>Kh&ocirc;ng cần giọng h&aacute;t trời ph&uacute; từ l&uacute;c sinh ra, chỉ cần bỏ một ch&uacute;t thời gian, tập luyện đ&uacute;ng phương ph&aacute;p, bạn c&oacute; thể tự tin thể hiện những ca kh&uacute;c y&ecirc;u th&iacute;ch. Kh&oacute;a học Học h&aacute;t nhanh v&agrave; giản đơn của Giảng vi&ecirc;n Lương Bằng Quang sẽ cung cấp ngay cho bạn:</p>\r\n\r\n<p>- Phương ph&aacute;p lấy hơi đ&uacute;ng c&aacute;ch</p>\r\n\r\n<p>- Tư duy &acirc;m nhạc</p>\r\n\r\n<p>- C&aacute;ch giữ đ&uacute;ng nhịp khi h&aacute;t</p>\r\n\r\n<p>- C&aacute;ch h&aacute;t r&otilde; lời</p>\r\n\r\n<p>- Một số kỹ thuật bổ trợ kh&aacute;c</p>\r\n', NULL, 'Nắm những kiến thức và kỹ năng cơ bản về thanh nhạc\r\nCó những phút giây thư giãn sau thời gian học tập, làm việc căng thẳng\r\nTự tin thể hiện trong những buổi tiệc, cuộc thi\r\nChinh phục những ca khúc yêu thích', 'Bất cứ ai yêu thích ca hát và muốn học hát\r\nPhù hợp nhất với lứa tuổi từ 13 trở lên', 'U8d0rgoojskj03tm75', 'CAT8d0rgo2i6ckjwwmbhs', 'Hoàn thành', '2021-01-14', 3, '2021-01-14', 0);
INSERT INTO `course` VALUES ('C8d0rgo2i6ckjwxbzff', 'Guitar từ cơ bản đến chuyên nghiệp', 'Guitar từ cơ bản đến chuyên nghiệp', '/upload/course/C8d0rgo2i6ckjwxbzff.jpg', 245027, 0, '<p>C&aacute;c bạn sẽ được đ&agrave;o tạo&nbsp;c&aacute;c kỹ thuật cơ bản, c&aacute;c kiến thức &acirc;m nhạc, nghệ thuật tạo &acirc;m thanh chuẩn mực, tiếng đ&agrave;n đẹp, xử l&yacute; c&aacute;c t&aacute;c phẩm đơn giản&hellip;</p>\r\n\r\n<p>Đặc biệt, với sự hướng dẫn của giảng vi&ecirc;n Cao Sỹ Anh T&ugrave;ng - người c&oacute; 16 năm kinh nghiệm giảng dạy guitar tại Học viện &Acirc;m nhạc QGVN.</p>\r\n\r\n<p>Bạn sẽ c&oacute; khả năng biểu diễn guitar chuy&ecirc;n nghiệp theo c&aacute;c phong c&aacute;ch kh&aacute;c nhau.</p>\r\n', NULL, 'Kết thúc khóa học, học viên sẽ nắm được những lý thuyết cơ bản về âm nhạc và guitar\r\nNhận biết được cách thức phân chia bè trong nghệ thuật chơi đàn Guitar\r\nPhát triển kỹ năng chơi các tiết tấu đa dạng\r\nBiết cách cầm đàn Guitar, tư thế ngồi đàn\r\nNhận biết và sử dụng thành thạo các ngón p-i-m-a.\r\nChơi các kỹ thuật khó của tay phải, kỹ thuật tạo âm thanh hay, tiếng đàn đẹp đạt chuẩn quốc tế\r\nKỹ thuật luyến, bổ ngón, chơi nốt móc đơn chấm giật và tiết tấu đơn kép kép (liên đôi xuôi)\r\nPhát triển kỹ năng bấm gảy, phối hợp hai bàn tay\r\nHọc viên sẽ định hình hướng phát triển cho bản thân để tiếp tục học đàn Guitar theo các phong cách khác nhau\r\n+ Phong cách cổ điển: Dành cho học viên muốn học chuyên sâu, phát triển theo hướng kinh điển. Tạo nguồn vào Học viện Âm nhạc QGVN & các trường âm nhạc chuyên nghiệp\r\n+ Phong cách Finger Style: Dành cho học viên muốn học độc tấu các ca khúc, các kỹ thuật chơi Finger Style', 'Độ tuổi từ 7 tuổi trở lên\r\nHọc sinh, sinh viên, người đi làm\r\nNhững người chưa từng tiếp xúc với Guitar\r\nNgười đã học nhạc cụ khác chuyển sang học Guitar\r\nNgười tự học Guitar nhưng thiếu, hổng kiến thức cơ bản', 'U8d0rgoojskj03tm75', 'CAT8d0rgo2i6ckjwwmwm6', 'Hoàn thành', '2021-01-14', 2, '2021-01-14', 0);
INSERT INTO `course` VALUES ('C8d0rgo2i6ckjwxfo9t', 'Học guitar solo cơ bản đến nâng cao', 'Học guitar solo cơ bản đến nâng cao', '/upload/course/C8d0rgo2i6ckjwxfo9t.jpg', 153480, 0, '<p>Fingerstyle guitar l&agrave; kỹ thuật chơi guitar bằng c&aacute;ch gảy c&aacute;c d&acirc;y trực tiếp bằng c&aacute;c ng&oacute;n tay, m&oacute;ng tay, hoặc picks gắn v&agrave;o ng&oacute;n tay, tr&aacute;i ngược với flatpicking (gảy những note ri&ecirc;ng lẻ bằng pick) hay rải 1 chuỗi c&aacute;c chord. Đ&acirc;y l&agrave; một kỹ thuật đầy sự s&aacute;ng tạo v&agrave; ngẫu hứng m&agrave; c&aacute;c t&iacute;n đồ học guitar muốn theo đuổi. Kh&oacute;a học guitar fingerstyle n&agrave;y l&agrave; sự đ&uacute;c kết kinh nghiệm từ qu&aacute; tr&igrave;nh luyện tập l&acirc;u d&agrave;i, gi&uacute;p học vi&ecirc;n tập trung v&agrave;o những điểm quan trọng nhất của kỹ thuật fingerstyle để c&oacute; sự tiến bộ r&otilde; rệt trong qu&aacute; tr&igrave;nh học.</p>\r\n', NULL, 'Dò tone, dò giai điệu và hợp âm cho bài hát từ đó có thể tự đệm và guitar solo một bài hát\r\nChuyển soạn Finger Style những bài hát yêu thích, những bài Finger Style nổi tiếng\r\nChơi ngẫu hứng và đệm hát bài bất kỳ theo phong cách Finger Style', 'Những bạn có niềm đam mê với guitar nói chung và fingerstyle nói riêng\r\nNhững bạn chơi guitar nhưng chưa tiến bộ và gặp nhiều khó khăn trong quá trình luyện tập\r\nNhững bạn đã chơi guitar lâu nhưng không thể chuyển soạn fingerstyle và không thể chơi guitar solo được', 'U8d0rgoojskj03tm75', 'CAT8d0rgo2i6ckjwwmwm6', 'Hoàn thành', '2021-01-14', 4, '2021-01-14', 0);
INSERT INTO `course` VALUES ('C8d0rgop0kkjw5kjax', 'LẬP TRÌNH IOS SWIFT', 'LẬP TRÌNH IOS SWIFT', '/upload/course/C8d0rgop0kkjw5kjax.jpg', 300698, 0, '<p>- IOS l&agrave; một hệ điều h&agrave;nh cho iPhone v&agrave; được Apple cập nhật li&ecirc;n tục. Kho&aacute; học sẽ cung cấp cho c&aacute;c bạn học vi&ecirc;n những kiến thức được cập nhật mới nhất để lập tr&igrave;nh tr&ecirc;n hệ điều h&agrave;nh iOS.<br />\r\n- Học vi&ecirc;n sẽ được t&igrave;m hiểu Swift - ng&ocirc;n ngữ lập tr&igrave;nh được Apple hỗ trợ ch&iacute;nh thức, song song với việc thực h&agrave;nh những kiến thức, kinh nghiệm l&agrave;m việc thực tế.<br />\r\n- Kho&aacute; học gồm 11 chương:<br />\r\n+ Chương 1 + 2: Giới thiệu tổng quan v&agrave; c&agrave;i đặt m&ocirc;i trường l&agrave;m việc.<br />\r\n+ Chương 3: L&agrave;m quen với ng&ocirc;n ngữ lập tr&igrave;nh Swift.<br />\r\n+ Chương 4 - 14: C&aacute;c ứng dụng cụ thể sẽ dẫn dắt c&aacute;c bạn qua những kiến thức từ căn bản đến phức tạp của iOS.<br />\r\n- Kiến thức trong to&agrave;n bộ kho&aacute; học được truyền tải theo phương ph&aacute;p thực h&agrave;nh l&agrave; ch&iacute;nh. Học vi&ecirc;n c&oacute; thể truy cập đầy đủ c&aacute;c nguồn t&agrave;i nguy&ecirc;n v&agrave; m&atilde; nguồn được đề cập trong c&aacute;c b&agrave;i giảng.</p>\r\n', NULL, 'Sau khoá học, học viên sẽ được trang bị những kiến thức vững chắc để có thể tự mình tạo ra những ứng dụng thực tế và tiếp cận những nguồn tài liệu nâng cao khác sau khoá học.\r\nĐạt được những tiêu chuẩn căn bản nhất của một lập trình viên iOS.\r\nCó đủ khả năng ứng tuyển vào các vị trí lập trình iOS (Fresher/ Junior).', 'Khoá học dành cho:\r\nCác bạn sinh viên muốn trang bị kiến thức về lập trình iOS để tìm kiếm một công việc phù hợp với mức lương cạnh tranh..\r\nCác lập trình viên đã có kiến thức và kinh nghiệm với những nền tảng khác muốn nghiên cứu thêm về iOS.\r\nCác bạn yêu thích và muốn bắt đầu làm quen với việc lập trình trên nền tảng iOS của Apple.', 'Uswyrp45kkj5e5nrw', '2', 'Hoàn thành', '2021-01-14', 11, '2021-01-14', 0);
INSERT INTO `course` VALUES ('Cswyrp498kjdsuj8s', 'Nhập môn lập trình Web', 'Web', '/upload/course/Cswyrp498kjdsuj8s.jpg', 699000, 100, '<p>Bạn l&agrave; người mới v&agrave; mu&ocirc;́n bước đ&acirc;̀u t&igrave;m hi&ecirc;̉u v&ecirc;̀ l&acirc;̣p tr&igrave;nh web?</p>\r\n\r\n<p>Bạn mu&ocirc;́n tự x&acirc;y dựng trang web cho sản ph&acirc;̉m của m&igrave;nh?</p>\r\n\r\n<p>Bạn mu&ocirc;́n t&igrave;m t&ograve;i học hỏi những đi&ecirc;̀u mới, chuy&ecirc;n m&ocirc;n mới?</p>\r\n\r\n<p>Bạn c&oacute; niềm đam m&ecirc; với bộ m&ocirc;n lập tr&igrave;nh web nhưng đang băn khoăn kh&ocirc;ng biết n&ecirc;n chọn kh&oacute;a học n&agrave;o?</p>\r\n\r\n<p>Đừng lo lắng! H&atilde;y đến với kh&oacute;a học &quot;Nhập m&ocirc;n l&acirc;p tr&igrave;nh web&quot; của ch&uacute;ng t&ocirc;i để học tất cả những điều căn bản nhất về lập tr&igrave;nh web.</p>\r\n\r\n<p>Kh&oacute;a học &quot;Nh&acirc;̣p m&ocirc;n l&acirc;̣p tr&igrave;nh Web&quot; sẽ cho bạn c&aacute;i nh&igrave;n t&ocirc;̉ng quan nh&acirc;́t v&ecirc;̀ l&acirc;̣p tr&igrave;nh web. Những y&ecirc;́u t&ocirc;́ gi&uacute;p bạn đưa ra quy&ecirc;́t định c&oacute; n&ecirc;n học l&acirc;̣p tr&igrave;nh web hay kh&ocirc;ng.</p>\r\n\r\n<p>Đồng thời kh&oacute;a học cũng giới thiệu c&aacute;ch thức sử dụng c&aacute;c c&ocirc;ng cụ đơn giản v&agrave; dễ d&ugrave;ng nhất để x&acirc;y dựng một trang web của ri&ecirc;ng bạn.</p>\r\n', NULL, 'Biết được lý do tại sao bạn nên học lập trình web mà không phải một môn lập trình nào khác.\r\nHiểu được lập trình web là gì và những kiến thức cơ bản nhất về lập trình web.', 'Những người mong muốn học lập trình web.\r\nHọc sinh, sinh viên khoa CNTT.\r\nHọc sinh, sinh viên có ngành khác mong muốn học hỏi cái mới.', 'Uswyrp45kkj5e5nrw', '1', 'Hoàn thành', '2021-01-01', 6, '2021-01-14', 0);
INSERT INTO `course` VALUES ('Cswyrp61kkj9sbfva', 'Lập trình backend cho website bằng PHP/Mysql theo mô hình MVC', 'Backend PHP MySQL', '/upload/course/Cswyrp61kkj9sbfva.jpg', 699000, 100, '<p>Điểm kh&aacute;c biệt của kh&oacute;a học n&agrave;y so với c&aacute;c kh&oacute;a học online kh&aacute;c c&ugrave;ng chủ đề lập tr&igrave;nh PHP l&agrave; g&igrave; vậy ?<br />\r\nKh&aacute;c người tr&igrave;nh b&agrave;y bạn ạ. M&igrave;nh nghĩ cũng ảnh hưởng một phần đ&oacute;, mỗi người một c&aacute;ch tr&igrave;nh b&agrave;y v&agrave; tiếp cận kh&aacute;c nhau, sẽ hợp với từng người kh&aacute;c nhau, hi vọng bạn v&agrave; m&igrave;nh &quot;&quot;tương th&iacute;ch&quot;&quot;. Hơn nữa m&igrave;nh tự tin ở phần l&agrave; rất chi tiết, m&igrave;nh nghĩ l&agrave; kh&ocirc;ng ai n&oacute;i chi tiết như thế bạn ạ, để đảm bảo l&agrave; bạn hiểu tận ng&oacute;c ng&aacute;ch v&agrave; bản chất của vấn đề. Einestern đ&atilde; n&oacute;i l&agrave; nếu bạn kh&ocirc;ng thể giải th&iacute;ch cho một đứa trẻ hiểu th&igrave; bạn cũng chẳng hiểu r&otilde; vấn đề. Bạn thử học nh&eacute;. &quot;</p>\r\n', NULL, 'Tự lập trình phần mềm phù hợp với nhu cầu và công việc cá nhân\r\nKiến thức ở khóa này là nền tảng cho khóa nâng cao sau này và các khóa về fullstact angular sẽ xuất bản tới', 'Sinh viên học về công nghệ thông tin\r\nNhững bạn chưa biết rõ bản chất của lập trình MVC\r\nNhững bạn muốn học về lập trình web\r\nNhững bạn muốn tự lập trình backend cho website của mình', 'Uswyrp45kkj5e5nrw', '2', 'Hoàn thành', '2020-12-31', 5, '2021-01-14', 0);

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
INSERT INTO `favourite` VALUES ('U4fh2219r8kjqrmfcs', 'C8d0rgo1l74kjwzwhhy');

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
INSERT INTO `final_bill` VALUES ('B8d0rgo1l74kjwz37qd', 'Hoàn Thành', '2021-01-14', 179760);
INSERT INTO `final_bill` VALUES ('B8d0rgo1l74kjwza465', 'Hoàn Thành', '2021-01-14', 299500);
INSERT INTO `final_bill` VALUES ('B8d0rgo1l74kjwzezbq', 'Hoàn Thành', '2021-01-14', 299500);
INSERT INTO `final_bill` VALUES ('B8d0rgo1l74kjx0xw2h', 'Hoàn Thành', '2021-01-14', 393559);
INSERT INTO `final_bill` VALUES ('B8d0rgo1l74kjx19dk7', 'Hoàn Thành', '2021-01-14', 2814762);
INSERT INTO `final_bill` VALUES ('B8d0rgo1xo0kjwy4c9e', 'Hoàn Thành', '2021-01-14', 0);
INSERT INTO `final_bill` VALUES ('B8d0rgo1xo0kjwy7z2d', 'Hoàn Thành', '2021-01-14', 2741198);
INSERT INTO `final_bill` VALUES ('B8d0rgo2i6ckjwxliit', 'Hoàn Thành', '2021-01-14', 836525);
INSERT INTO `final_bill` VALUES ('B8d0rgo2iwokjw9504o', 'Hoàn Thành', '2021-01-14', 699000);
INSERT INTO `final_bill` VALUES ('B8d0rgo2iwokjwbef3s', 'Hoàn Thành', '2021-01-14', 349500);
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
INSERT INTO `lesson_list` VALUES ('L8d0rgo1l74kjx03mam', 1, 'GIỚI THIỆU KHÓA HỌC', 'C8d0rgo1l74kjwzwhhy');
INSERT INTO `lesson_list` VALUES ('L8d0rgo1l74kjx03mb8', 2, 'PHƯƠNG PHÁP HỌC', 'C8d0rgo1l74kjwzwhhy');
INSERT INTO `lesson_list` VALUES ('L8d0rgo1l74kjx05u77', 1, 'GIỚI THIỆU KHÓA HỌC', 'C8d0rgo1l74kjwzyh9u');
INSERT INTO `lesson_list` VALUES ('L8d0rgo1l74kjx05u7n', 2, 'PHƯƠNG PHÁP HỌC', 'C8d0rgo1l74kjwzyh9u');
INSERT INTO `lesson_list` VALUES ('L8d0rgo1l74kjx088fq', 1, 'GIỚI THIỆU KHÓA HỌC', 'C8d0rgo1l74kjx003ia');
INSERT INTO `lesson_list` VALUES ('L8d0rgo1l74kjx088g5', 2, 'PHƯƠNG PHÁP HỌC', 'C8d0rgo1l74kjx003ia');
INSERT INTO `lesson_list` VALUES ('L8d0rgo1l74kjx0rjj9', 1, 'GIỚI THIỆU KHÓA HỌC', 'C8d0rgo1l74kjx08dqe');
INSERT INTO `lesson_list` VALUES ('L8d0rgo1l74kjx0tcrg', 1, 'GIỚI THIỆU KHÓA HỌC', 'C8d0rgo1l74kjx0a5j1');
INSERT INTO `lesson_list` VALUES ('L8d0rgo1l74kjx0tcrw', 2, 'PHƯƠNG PHÁP HỌC TẬP', 'C8d0rgo1l74kjx0a5j1');
INSERT INTO `lesson_list` VALUES ('L8d0rgo2i6ckjwwb1c0', 1, 'GIỚI THIỆU KHÓA HỌC', 'C8d0rgo2i6ckjww48li');
INSERT INTO `lesson_list` VALUES ('L8d0rgo2i6ckjwwb1cy', 2, 'PHƯƠNG PHÁP HỌC TẬP', 'C8d0rgo2i6ckjww48li');
INSERT INTO `lesson_list` VALUES ('L8d0rgo2i6ckjwwfzj4', 1, 'GIỚI THIỆU KHÓA HỌC', 'C8d0rgo2i6ckjwwbjei');
INSERT INTO `lesson_list` VALUES ('L8d0rgo2i6ckjwwfzjp', 2, 'PHƯƠNG PHÁP HỌC TẬP', 'C8d0rgo2i6ckjwwbjei');
INSERT INTO `lesson_list` VALUES ('L8d0rgo2i6ckjwwk403', 1, 'GIỚI THIỆU KHÓA HỌC', 'C8d0rgo2i6ckjwwgxd6');
INSERT INTO `lesson_list` VALUES ('L8d0rgo2i6ckjwwk40i', 2, 'PHƯƠNG PHÁP HỌC TẬP', 'C8d0rgo2i6ckjwwgxd6');
INSERT INTO `lesson_list` VALUES ('L8d0rgo2i6ckjwwvfvg', 1, 'GIỚI THIỆU KHÓA HỌC', 'C8d0rgo2i6ckjwwrkr4');
INSERT INTO `lesson_list` VALUES ('L8d0rgo2i6ckjwwvfw0', 2, 'PHƯƠNG PHÁP HỌC TẬP', 'C8d0rgo2i6ckjwwrkr4');
INSERT INTO `lesson_list` VALUES ('L8d0rgo2i6ckjwx1anx', 1, 'GIỚI THIỆU KHÓA HỌC', 'C8d0rgo2i6ckjwwvkm3');
INSERT INTO `lesson_list` VALUES ('L8d0rgo2i6ckjwx1aoa', 2, 'PHƯƠNG PHÁP HỌC TẬP', 'C8d0rgo2i6ckjwwvkm3');
INSERT INTO `lesson_list` VALUES ('L8d0rgo2i6ckjwx4gtb', 1, 'GIỚI THIỆU KHÓA HỌC', 'C8d0rgo2i6ckjwx1m9n');
INSERT INTO `lesson_list` VALUES ('L8d0rgo2i6ckjwx4gtp', 2, 'PHƯƠNG PHÁP HỌC TẬP', 'C8d0rgo2i6ckjwx1m9n');
INSERT INTO `lesson_list` VALUES ('L8d0rgo2i6ckjwxacfm', 1, 'GIỚI THIỆU KHÓA HỌC', 'C8d0rgo2i6ckjwx4qcp');
INSERT INTO `lesson_list` VALUES ('L8d0rgo2i6ckjwxacg3', 2, 'PHƯƠNG PHÁP KHÓA HỌC', 'C8d0rgo2i6ckjwx4qcp');
INSERT INTO `lesson_list` VALUES ('L8d0rgo2i6ckjwxf399', 1, 'GIỚI THIỆU KHÓA HỌC', 'C8d0rgo2i6ckjwxbzff');
INSERT INTO `lesson_list` VALUES ('L8d0rgo2i6ckjwxf39q', 2, 'PHƯƠNG PHÁP HỌC TẬP', 'C8d0rgo2i6ckjwxbzff');
INSERT INTO `lesson_list` VALUES ('L8d0rgo2i6ckjwxk09u', 1, 'GIỚI THIỆU KHÓA HỌC', 'C8d0rgo2i6ckjwxfo9t');
INSERT INTO `lesson_list` VALUES ('L8d0rgo2i6ckjwxk0b6', 2, 'PHƯƠNG PHÁP HỌC TẬP', 'C8d0rgo2i6ckjwxfo9t');
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
INSERT INTO `sessions` VALUES ('xcNIvUjbVTpzDAcd10qNNBFDBPycQG7u', 1610726861, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"auth\":true,\"cart\":[{\"author_name\":\"Lưu Thiện Nhân\",\"author_image\":\"/upload/user_avatar/Uswyrp45kkj5e5nrw.jpg\",\"course_id\":\"C8d0rgo1l74kjwzwhhy\",\"deal_value\":0,\"intro_image\":\"/upload/course/C8d0rgo1l74kjwzwhhy.jpg\",\"number_student\":1,\"number_rating\":1,\"course_name\":\"Học Autocad 2D chuyên nghiệp trọn bộ\",\"price\":249976,\"reduce_price\":249976,\"overall_star\":\"5.0\",\"categoty_id\":\"CAT8d0rgo1l74kjwzuitz\",\"isHaving\":0,\"IsBuy\":0,\"IsNew\":0,\"IsHot\":0,\"user_id\":\"U4fh2219r8kjqrmfcs\",\"category_name\":\"3D, Amination\"}],\"shopCart\":[],\"authUser\":{\"user_id\":\"U4fh2219r8kjqrmfcs\",\"name\":\"phúc lê\",\"gender\":null,\"dob\":null,\"phone_number\":null,\"email\":\"phucyugi2@gmail.com\",\"password\":\"$2a$10$gZIttUzYmyGH8S2Ntzbjk.K166CBce3/9wS9CDIGeKEbYjuCDYbs6\",\"password_lvl2\":\"900451\",\"avatar\":\"/images/BecomeInstructor/ltn.jpg\",\"description\":null,\"role\":0,\"address\":null},\"courses\":[{\"course_id\":\"C01\"},{\"course_id\":\"C03\"},{\"course_id\":\"C04\"},{\"course_id\":\"C07\"},{\"course_id\":\"C08\"},{\"course_id\":\"C09\"},{\"course_id\":\"C10\"},{\"course_id\":\"C11\"},{\"course_id\":\"C12\"},{\"course_id\":\"C8d0rgo1l74kjwzwhhy\"},{\"course_id\":\"C8d0rgo1l74kjx08dqe\"},{\"course_id\":\"C8d0rgo2i6ckjww48li\"},{\"course_id\":\"C8d0rgo2i6ckjwwbjei\"},{\"course_id\":\"C8d0rgo2i6ckjwwgxd6\"},{\"course_id\":\"C8d0rgo2i6ckjwwrkr4\"},{\"course_id\":\"C8d0rgo2i6ckjwwvkm3\"},{\"course_id\":\"C8d0rgo2i6ckjwx1m9n\"},{\"course_id\":\"C8d0rgo2i6ckjwx4qcp\"},{\"course_id\":\"C8d0rgo2i6ckjwxbzff\"},{\"course_id\":\"C8d0rgo2i6ckjwxfo9t\"},{\"course_id\":\"C8d0rgop0kkjw5kjax\"},{\"course_id\":\"Cswyrp498kjdsuj8s\"},{\"course_id\":\"Cswyrp61kkj9sbfva\"}],\"retUrl\":null,\"cid\":\"C8d0rgo1l74kjx0blyp\",\"ll\":[{\"list_id\":\"L8d0rgo1l74kjx0tcrg\",\"chapter_number\":1,\"chapter_name\":\"GIỚI THIỆU KHÓA HỌC\",\"course_id\":\"C8d0rgo1l74kjx0a5j1\",\"videos\":[{\"video_id\":\"V8d0rgo1l74kjx0tcrn\",\"video_name\":\"01 Chinh phục sáo trúc cùng thầy Mão Mèo\",\"video_duration\":92,\"url\":\"https://www.youtube.com/watch?v=z-yLN1Bf2I8\",\"list_id\":\"L8d0rgo1l74kjx0tcrg\",\"video_number\":1},{\"video_id\":\"V8d0rgo1l74kjx0tcrs\",\"video_name\":\"03 Chinh phục sáo trúc cùng thầy Mão Mèo\",\"video_duration\":788,\"url\":\"https://www.youtube.com/watch?v=XO-Xx5ni-NE\",\"list_id\":\"L8d0rgo1l74kjx0tcrg\",\"video_number\":2}]},{\"list_id\":\"L8d0rgo1l74kjx0tcrw\",\"chapter_number\":2,\"chapter_name\":\"PHƯƠNG PHÁP HỌC TẬP\",\"course_id\":\"C8d0rgo1l74kjx0a5j1\",\"videos\":[{\"video_id\":\"V8d0rgo1l74kjx0tcs1\",\"video_name\":\"02 Chinh phục sáo trúc cùng thầy Mão Mèo\",\"video_duration\":238,\"url\":\"https://www.youtube.com/watch?v=orITZfXnUyY\",\"list_id\":\"L8d0rgo1l74kjx0tcrw\",\"video_number\":1},{\"video_id\":\"V8d0rgo1l74kjx0tcs5\",\"video_name\":\"Thần Thoại : Biến tấu chơi sáo trúc Mão Mèo\",\"video_duration\":255,\"url\":\"https://www.youtube.com/watch?v=CmEwt8za1No\",\"list_id\":\"L8d0rgo1l74kjx0tcrw\",\"video_number\":2}]}],\"tempsecret\":\"ENDVE6KXHRDFKIJJHYYTGXS5PBKGOMDZ\",\"token\":\"698799\"}');

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
INSERT INTO `star_rating` VALUES ('1', 'C02', 4, 'ok');
INSERT INTO `star_rating` VALUES ('U4fh2219r8kjqrmfcs', 'C01', 3, 'good!');
INSERT INTO `star_rating` VALUES ('U4fh2219r8kjqrmfcs', 'C03', 2, 'Dở!');
INSERT INTO `star_rating` VALUES ('U4fh2219r8kjqrmfcs', 'C04', 4, 'Học rất hay!');
INSERT INTO `star_rating` VALUES ('U4fh2219r8kjqrmfcs', 'C07', 4, 'Ok!');
INSERT INTO `star_rating` VALUES ('U4fh2219r8kjqrmfcs', 'C08', 4, 'Quá hay rất nhớ từ vựng!');
INSERT INTO `star_rating` VALUES ('U4fh2219r8kjqrmfcs', 'C09', 5, 'Rất bổ ích!');
INSERT INTO `star_rating` VALUES ('U4fh2219r8kjqrmfcs', 'C10', 4, 'Ok rất hay!');
INSERT INTO `star_rating` VALUES ('U4fh2219r8kjqrmfcs', 'C11', 5, 'Hay');
INSERT INTO `star_rating` VALUES ('U4fh2219r8kjqrmfcs', 'C12', 2, 'Học dở!');
INSERT INTO `star_rating` VALUES ('U4fh2219r8kjqrmfcs', 'C8d0rgo1l74kjwzwhhy', 5, 'Ok');
INSERT INTO `star_rating` VALUES ('U4fh2219r8kjqrmfcs', 'C8d0rgo1l74kjx08dqe', 5, 'Quá hay!');
INSERT INTO `star_rating` VALUES ('U4fh2219r8kjqrmfcs', 'C8d0rgo2i6ckjww48li', 4, 'Good!');
INSERT INTO `star_rating` VALUES ('U4fh2219r8kjqrmfcs', 'C8d0rgo2i6ckjwwbjei', 2, 'Scam!');
INSERT INTO `star_rating` VALUES ('U4fh2219r8kjqrmfcs', 'C8d0rgo2i6ckjwwgxd6', 1, 'Rất tệ!');
INSERT INTO `star_rating` VALUES ('U4fh2219r8kjqrmfcs', 'C8d0rgo2i6ckjwwrkr4', 5, 'Rất hay');
INSERT INTO `star_rating` VALUES ('U4fh2219r8kjqrmfcs', 'C8d0rgo2i6ckjwwvkm3', 3, 'trung bình!');
INSERT INTO `star_rating` VALUES ('U4fh2219r8kjqrmfcs', 'C8d0rgo2i6ckjwx1m9n', 3, 'Trung bình!');
INSERT INTO `star_rating` VALUES ('U4fh2219r8kjqrmfcs', 'C8d0rgo2i6ckjwx4qcp', 4, 'Cũng tạm được!');
INSERT INTO `star_rating` VALUES ('U4fh2219r8kjqrmfcs', 'C8d0rgo2i6ckjwxbzff', 2, 'Cảm thấy scam!');
INSERT INTO `star_rating` VALUES ('U4fh2219r8kjqrmfcs', 'C8d0rgo2i6ckjwxfo9t', 5, 'Rất thú vị!');
INSERT INTO `star_rating` VALUES ('U4fh2219r8kjqrmfcs', 'C8d0rgop0kkjw5kjax', 5, 'Bài học rất hay!');
INSERT INTO `star_rating` VALUES ('U4fh2219r8kjqrmfcs', 'Cswyrp498kjdsuj8s', 5, 'Rất tuyệt!');
INSERT INTO `star_rating` VALUES ('U4fh2219r8kjqrmfcs', 'Cswyrp61kkj9sbfva', 5, 'Tuyệt vời');
INSERT INTO `star_rating` VALUES ('U8d0rgo1l74kjx15qas', 'C8d0rgo1l74kjwzyh9u', 4, 'ok');
INSERT INTO `star_rating` VALUES ('U8d0rgo1l74kjx15qas', 'C8d0rgo1l74kjx003ia', 3, 'tệ');
INSERT INTO `star_rating` VALUES ('U8d0rgo1l74kjx15qas', 'C8d0rgo1l74kjx0a5j1', 1, 'Scam!');
INSERT INTO `star_rating` VALUES ('U8d0rgo1l74kjx15qas', 'C8d0rgo2i6ckjwwrkr4', 4, 'Rất hay');
INSERT INTO `star_rating` VALUES ('U8d0rgo1l74kjx15qas', 'C8d0rgo2i6ckjwxfo9t', 4, 'ok');

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
INSERT INTO `user` VALUES ('U8d0rgo1l74kjx15qas', 'Lê Hoàng Sang', NULL, NULL, NULL, 'phucyugi1@gmail.com', '$2a$10$Z.mpX.klivXioVUq/STFm.9GE1IxcDp1ppBUTHohDQtXYJz1iDQsu', '698799', NULL, NULL, 0, NULL);
INSERT INTO `user` VALUES ('U8d0rgoojskj03tm75', 'Lê Hoàng Phúc', 'Nam', '2021-01-14', '123123', 'phucyugi@gmail.com', '$2a$10$eaeN/x0vA8RF.0egO0mX5OUu1FmCEue6vCRCfGE2YkYbdTM/1xkee', NULL, '/images/BecomeInstructor/ltn.jpg', 'Bằng cấp chuyên môn: Thạc sĩ Khoa học Máy tính\r\nKinh nghiệm làm việc: Giảng dạy tin học và Công tác liên tục trong lĩnh vực Công nghệ Thông tin', 1, 'VietNam');
INSERT INTO `user` VALUES ('Uswyrp2a4kitph7ft', 'Luu Thien Nhan', NULL, NULL, NULL, 'nhanluu838@gmail.com', '$2a$10$kYroKyRFPmJn1zYPkWsl2OVFhzlap4ZpnQOlN.IxABE/RNYO5Qwj6', NULL, '/images/BecomeInstructor/ltn.jpg', NULL, 0, NULL);
INSERT INTO `user` VALUES ('Uswyrp45kkj5e5nrw', 'Lưu Thiện Nhân', 'Nam', '2021-01-14', '0703002347', 'nguoiamphu', '$2a$10$UtYSET9vR1AAWNbHyEsuMeS5ljiVslyl/iGzXWkin4hpXPhFmiK7W', NULL, '/upload/user_avatar/Uswyrp45kkj5e5nrw.jpg', '                    Giảng viên: Lương Bằng Quang - Ca sĩ, nhạc sỹ, giảng viên thanh nhạc.', 1, '123 Nguyễn Văn Cừ Q.5');
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
INSERT INTO `video` VALUES ('V8d0rgo1l74kjx03mas', 'Khóa Học Online Trọn bộ AUTOCAD 2D từ cơ bản đến nâng cao', 381, 'https://www.youtube.com/watch?v=sboGItY-RVc', 'L8d0rgo1l74kjx03mam', 1);
INSERT INTO `video` VALUES ('V8d0rgo1l74kjx03maz', 'HỌC AUTOCAD NHANH NHẤT - [ BÀI SỐ 01 ] Bí kíp học autocad từ cơ bản đến nâng cao', 2943, 'https://www.youtube.com/watch?v=ElpV7E3WLtE', 'L8d0rgo1l74kjx03mam', 2);
INSERT INTO `video` VALUES ('V8d0rgo1l74kjx03mb3', '✅ Bài 01: Luyện vẽ bài tập AutoCAD 2D từ cơ bản đến nâng cao // Học vẽ AutoCAD căn bản', 1702, 'https://www.youtube.com/watch?v=ywZ5ExaiHGU', 'L8d0rgo1l74kjx03mam', 3);
INSERT INTO `video` VALUES ('V8d0rgo1l74kjx03mbc', '✔ AutoCAD cơ bản - Tập 1: Làm quen với AutoCAD', 1327, 'https://www.youtube.com/watch?v=Cde7OwiWveg', 'L8d0rgo1l74kjx03mb8', 1);
INSERT INTO `video` VALUES ('V8d0rgo1l74kjx05u7c', 'Thành thạo thiết kế, tạo hình 3D với 3DSMAX - Bài 01', 786, 'https://www.youtube.com/watch?v=SPCdbBdorzg', 'L8d0rgo1l74kjx05u77', 1);
INSERT INTO `video` VALUES ('V8d0rgo1l74kjx05u7h', 'Thành thạo tạo hình với 3DSMAX', 87, 'https://www.youtube.com/watch?v=nXENXEna5q0', 'L8d0rgo1l74kjx05u77', 2);
INSERT INTO `video` VALUES ('V8d0rgo1l74kjx05u7s', 'Thành thạo tạo hình với 3DSMAX', 77, 'https://www.youtube.com/watch?v=zETvoE-aQM8', 'L8d0rgo1l74kjx05u7n', 1);
INSERT INTO `video` VALUES ('V8d0rgo1l74kjx05u7w', '[Animation 3DS Max -Bài 00] -Cách set giao diện 3ds MAX để làm Animation', 611, 'https://www.youtube.com/watch?v=rf59LGBOyB4', 'L8d0rgo1l74kjx05u7n', 2);
INSERT INTO `video` VALUES ('V8d0rgo1l74kjx088fv', 'Thiết kế đồ họa căn bản (Phần 1)', 564, 'https://www.youtube.com/watch?v=mcR8MQGOQmw', 'L8d0rgo1l74kjx088fq', 1);
INSERT INTO `video` VALUES ('V8d0rgo1l74kjx088g1', 'THIẾT KẾ ĐỒ HỌA NÊN BẮT ĐẦU TỪ ĐÂU | BIGME', 501, 'https://www.youtube.com/watch?v=ERXzoE7MFF8', 'L8d0rgo1l74kjx088fq', 2);
INSERT INTO `video` VALUES ('V8d0rgo1l74kjx088ga', 'Muốn Theo Ngành Đồ Họa Thì Học Gì Trước?', 706, 'https://www.youtube.com/watch?v=GSVaDTDSyYo', 'L8d0rgo1l74kjx088g5', 1);
INSERT INTO `video` VALUES ('V8d0rgo1l74kjx088gf', 'Thiết kế Đồ họa là gì ? tâm sự về nghề thiết kế đồ họa', 754, 'https://www.youtube.com/watch?v=25rQoff4D4w', 'L8d0rgo1l74kjx088g5', 2);
INSERT INTO `video` VALUES ('V8d0rgo1l74kjx0rjjf', 'Luyện Thanh Mỗi Ngày 1: Học Cảm Âm, Xướng Âm và Nhạc Lý Nhanh Nhất - Hồng Hải Virgo', 158, 'https://www.youtube.com/watch?v=aeOH36T1oL4', 'L8d0rgo1l74kjx0rjj9', 1);
INSERT INTO `video` VALUES ('V8d0rgo1l74kjx0rjjl', '50 Bài Luyện Thanh - Bài 1', 481, 'https://www.youtube.com/watch?v=ThsySlC6yVU', 'L8d0rgo1l74kjx0rjj9', 2);
INSERT INTO `video` VALUES ('V8d0rgo1l74kjx0rjjp', 'Hướng dẫn luyện thanh cơ bản bài 1 - Viet S Voice', 338, 'https://www.youtube.com/watch?v=-ZQwEA5xjYY', 'L8d0rgo1l74kjx0rjj9', 3);
INSERT INTO `video` VALUES ('V8d0rgo1l74kjx0tcrn', '01 Chinh phục sáo trúc cùng thầy Mão Mèo', 92, 'https://www.youtube.com/watch?v=z-yLN1Bf2I8', 'L8d0rgo1l74kjx0tcrg', 1);
INSERT INTO `video` VALUES ('V8d0rgo1l74kjx0tcrs', '03 Chinh phục sáo trúc cùng thầy Mão Mèo', 788, 'https://www.youtube.com/watch?v=XO-Xx5ni-NE', 'L8d0rgo1l74kjx0tcrg', 2);
INSERT INTO `video` VALUES ('V8d0rgo1l74kjx0tcs1', '02 Chinh phục sáo trúc cùng thầy Mão Mèo', 238, 'https://www.youtube.com/watch?v=orITZfXnUyY', 'L8d0rgo1l74kjx0tcrw', 1);
INSERT INTO `video` VALUES ('V8d0rgo1l74kjx0tcs5', 'Thần Thoại : Biến tấu chơi sáo trúc Mão Mèo', 255, 'https://www.youtube.com/watch?v=CmEwt8za1No', 'L8d0rgo1l74kjx0tcrw', 2);
INSERT INTO `video` VALUES ('V8d0rgo2i6ckjwwb1cb', 'Bài 1: Kỹ năng, Công cụ cần thiết khi Kinh doanh Online', 1110, 'https://www.youtube.com/watch?v=grUuphFh_1E', 'L8d0rgo2i6ckjwwb1c0', 1);
INSERT INTO `video` VALUES ('V8d0rgo2i6ckjwwb1ci', '5 kênh Digital Marketing online quảng cáo số phổ biến nhất hiện nay tại Việt Nam', 1885, 'https://www.youtube.com/watch?v=HmSr0EmEzjg', 'L8d0rgo2i6ckjwwb1c0', 2);
INSERT INTO `video` VALUES ('V8d0rgo2i6ckjwwb1cr', 'Hướng dẫn sử dụng Buzzsumo – công cụ hỗ trợ content marketing | Kiemtiencenter', 766, 'https://www.youtube.com/watch?v=okvHYIJta7c', 'L8d0rgo2i6ckjwwb1c0', 3);
INSERT INTO `video` VALUES ('V8d0rgo2i6ckjwwb1d7', '5 cách tìm ngách siêu tốt để kinh doanh hoặc kiếm tiền online | Kiemtiencenter', 728, 'https://www.youtube.com/watch?v=rUqeS52W7CY', 'L8d0rgo2i6ckjwwb1cy', 1);
INSERT INTO `video` VALUES ('V8d0rgo2i6ckjwwb1dc', 'Hướng Dẫn Mở Shop Kinh Doanh Online Vốn Dưới 5 Triệu Đồng | Chưa Từng Tiết Lộ #23', 3820, 'https://www.youtube.com/watch?v=FnSs10Hd3BA', 'L8d0rgo2i6ckjwwb1cy', 2);
INSERT INTO `video` VALUES ('V8d0rgo2i6ckjwwb1dg', '90% Không Hiểu Gì Về Tiền (Kể Cả bạn)', 1168, 'https://www.youtube.com/watch?v=NrvEpnh5Bj0', 'L8d0rgo2i6ckjwwb1cy', 3);
INSERT INTO `video` VALUES ('V8d0rgo2i6ckjwwfzjc', '90% Không Hiểu Gì Về Tiền (Kể Cả bạn)', 1168, 'https://www.youtube.com/watch?v=NrvEpnh5Bj0', 'L8d0rgo2i6ckjwwfzj4', 1);
INSERT INTO `video` VALUES ('V8d0rgo2i6ckjwwfzjk', 'Hướng Dẫn Mở Shop Kinh Doanh Online Vốn Dưới 5 Triệu Đồng | Chưa Từng Tiết Lộ #23', 3820, 'https://www.youtube.com/watch?v=FnSs10Hd3BA', 'L8d0rgo2i6ckjwwfzj4', 2);
INSERT INTO `video` VALUES ('V8d0rgo2i6ckjwwfzk1', '5 cách tìm ngách siêu tốt để kinh doanh hoặc kiếm tiền online | Kiemtiencenter', 728, 'https://www.youtube.com/watch?v=rUqeS52W7CY', 'L8d0rgo2i6ckjwwfzjp', 1);
INSERT INTO `video` VALUES ('V8d0rgo2i6ckjwwfzk5', 'Hướng dẫn sử dụng Buzzsumo – công cụ hỗ trợ content marketing | Kiemtiencenter', 766, 'https://www.youtube.com/watch?v=okvHYIJta7c', 'L8d0rgo2i6ckjwwfzjp', 2);
INSERT INTO `video` VALUES ('V8d0rgo2i6ckjwwk40a', 'Hướng dẫn sử dụng Buzzsumo – công cụ hỗ trợ content marketing | Kiemtiencenter', 766, 'https://www.youtube.com/watch?v=okvHYIJta7c', 'L8d0rgo2i6ckjwwk403', 1);
INSERT INTO `video` VALUES ('V8d0rgo2i6ckjwwk40f', '5 cách tìm ngách siêu tốt để kinh doanh hoặc kiếm tiền online | Kiemtiencenter', 728, 'https://www.youtube.com/watch?v=rUqeS52W7CY', 'L8d0rgo2i6ckjwwk403', 2);
INSERT INTO `video` VALUES ('V8d0rgo2i6ckjwwk40o', 'Hướng Dẫn Mở Shop Kinh Doanh Online Vốn Dưới 5 Triệu Đồng | Chưa Từng Tiết Lộ #23', 3820, 'https://www.youtube.com/watch?v=FnSs10Hd3BA', 'L8d0rgo2i6ckjwwk40i', 1);
INSERT INTO `video` VALUES ('V8d0rgo2i6ckjwwk40r', '90% Không Hiểu Gì Về Tiền (Kể Cả bạn)', 1168, 'https://www.youtube.com/watch?v=NrvEpnh5Bj0', 'L8d0rgo2i6ckjwwk40i', 2);
INSERT INTO `video` VALUES ('V8d0rgo2i6ckjwwvfvm', 'Muốn Trở Thành Người Thành Công Nhất Định Phải Từ Bỏ 7 Thói Quen Này', 898, 'https://www.youtube.com/watch?v=fnp8JMQ8Tj8', 'L8d0rgo2i6ckjwwvfvg', 1);
INSERT INTO `video` VALUES ('V8d0rgo2i6ckjwwvfvu', 'P1: Bắt đầu | HƯỚNG DẪN ĐẦU TƯ CHỨNG KHOÁN CƠ BẢN, A-BỜ-CỜ ( TỪ A-Z )', 2870, 'https://www.youtube.com/watch?v=TaiZS8-i6L0', 'L8d0rgo2i6ckjwwvfvg', 2);
INSERT INTO `video` VALUES ('V8d0rgo2i6ckjwwvfw5', 'P2: Mở tài khoản | HƯỚNG DẪN ĐẦU TƯ CHỨNG KHOÁN CƠ BẢN, A-BỜ-CỜ (TỪ A-Z)', 1961, 'https://www.youtube.com/watch?v=C5qIrnEsFZA', 'L8d0rgo2i6ckjwwvfw0', 1);
INSERT INTO `video` VALUES ('V8d0rgo2i6ckjwwvfwb', 'Đầu tư chứng khoán vẫn trắng tay sau 2 năm. Tại sao? - Cafe sáng với VTV3', 634, 'https://www.youtube.com/watch?v=ZxP4BfG7Mw4', 'L8d0rgo2i6ckjwwvfw0', 2);
INSERT INTO `video` VALUES ('V8d0rgo2i6ckjwx1ao2', 'Thiền: thiền 1/6 trong tham sân si và thiền trong quản trị cảm xúc', 194, 'https://www.youtube.com/watch?v=cVN_GImgMcg', 'L8d0rgo2i6ckjwx1anx', 1);
INSERT INTO `video` VALUES ('V8d0rgo2i6ckjwx1ao6', 'Tham, Sân, Si và Thiền trong quản trị cảm xúc', 124, 'https://www.youtube.com/watch?v=HCGbNuRItCY', 'L8d0rgo2i6ckjwx1anx', 2);
INSERT INTO `video` VALUES ('V8d0rgo2i6ckjwx1aof', 'Thiền: thiền 5/6 trong tham sân si và thiền trong quản trị cảm xúc', 235, 'https://www.youtube.com/watch?v=3dbLzLKX_wk', 'L8d0rgo2i6ckjwx1aoa', 1);
INSERT INTO `video` VALUES ('V8d0rgo2i6ckjwx1aoj', 'Tự học và hành thiền chỉ trong 30 phút - tham sân si và thiền trong quản trị cảm xúc.', 1817, 'https://www.youtube.com/watch?v=AMmGS6WDqhE', 'L8d0rgo2i6ckjwx1aoa', 2);
INSERT INTO `video` VALUES ('V8d0rgo2i6ckjwx4gtf', 'KĨ NĂNG THUYẾT TRÌNH ẤN TƯỢNG | Bài 1: Cách mở đầu & kết thúc độc đáo | Ts Nguyễn Hoàng Khắc Hiếu', 1822, 'https://www.youtube.com/watch?v=ssgHed1Rky8', 'L8d0rgo2i6ckjwx4gtb', 1);
INSERT INTO `video` VALUES ('V8d0rgo2i6ckjwx4gtl', 'KĨ NĂNG THUYẾT TRÌNH ẤN TƯỢNG | Bài 2: Cách soạn một dàn bài nội dung thật đắt giá | Ts Khắc Hiếu', 1195, 'https://www.youtube.com/watch?v=-q-xuxLe2_U', 'L8d0rgo2i6ckjwx4gtb', 2);
INSERT INTO `video` VALUES ('V8d0rgo2i6ckjwx4gtu', '5 Cách Mở Đầu Bài Thuyết Trình Ấn Tượng - Áp Dụng Ngay Để Có Bài Thuyết Trình Tuyệt Vời', 432, 'https://www.youtube.com/watch?v=W1IKy6-D8Jw', 'L8d0rgo2i6ckjwx4gtp', 1);
INSERT INTO `video` VALUES ('V8d0rgo2i6ckjwx4gtz', 'KĨ NĂNG THUYẾT TRÌNH ẤN TƯỢNG | Bài 3: 14 cách diễn đạt sáng tạo có sức hút lớn | Ts Khắc Hiếu', 2002, 'https://www.youtube.com/watch?v=NEmOnGHWKPE', 'L8d0rgo2i6ckjwx4gtp', 2);
INSERT INTO `video` VALUES ('V8d0rgo2i6ckjwxacfr', 'Cách Rung Giọng Chuyên Nghiệp - Trải Nghiệm Cùng Học Viên - Thầy Đoàn Nhược Quý - ADAM Muzic', 1530, 'https://www.youtube.com/watch?v=JajwsxJvS4M', 'L8d0rgo2i6ckjwxacfm', 1);
INSERT INTO `video` VALUES ('V8d0rgo2i6ckjwxacfz', '[Thanh Nhạc Cơ Bản] Bài 18: Loại bỏ giọng yếu, hụt hơi khi hát !', 957, 'https://www.youtube.com/watch?v=HvsA0FI2BOg', 'L8d0rgo2i6ckjwxacfm', 2);
INSERT INTO `video` VALUES ('V8d0rgo2i6ckjwxacg8', 'MẸO CA HÁT NGÀY TẾT #3 | 7 Bước giúp hát cao tự nhiên.', 836, 'https://www.youtube.com/watch?v=f2CCxKocO0k', 'L8d0rgo2i6ckjwxacg3', 1);
INSERT INTO `video` VALUES ('V8d0rgo2i6ckjwxacge', 'Vocal Tip #11: Trick Eliminate Airy Voice.', 295, 'https://www.youtube.com/watch?v=kbcbH4DREVI', 'L8d0rgo2i6ckjwxacg3', 2);
INSERT INTO `video` VALUES ('V8d0rgo2i6ckjwxf39g', 'LUYỆN NGÓN CƠ BẢN - BÀI HỌC RẤT QUAN TRỌNG | Tự học Guitar #1', 1155, 'https://www.youtube.com/watch?v=8O_leALl9wk', 'L8d0rgo2i6ckjwxf399', 1);
INSERT INTO `video` VALUES ('V8d0rgo2i6ckjwxf39n', 'Tổng hợp CÁC TIẾT ĐIỆU Guitar từ CƠ BẢN đến NÂNG CAO | Guitar Talks #6 |', 1461, 'https://www.youtube.com/watch?v=qBLrSQSy7Uo', 'L8d0rgo2i6ckjwxf399', 2);
INSERT INTO `video` VALUES ('V8d0rgo2i6ckjwxf39v', '[Guitar] Cơ bản học gì? Nâng cao học gì?', 1117, 'https://www.youtube.com/watch?v=MLWOZonGQnY', 'L8d0rgo2i6ckjwxf39q', 1);
INSERT INTO `video` VALUES ('V8d0rgo2i6ckjwxf3a1', 'TOP 10 ĐIỀU NGƯỜI MỚI CHƠI GUITAR CẦN BIẾT #guitartalk', 1521, 'https://www.youtube.com/watch?v=3zd_zHp9rjQ', 'L8d0rgo2i6ckjwxf39q', 2);
INSERT INTO `video` VALUES ('V8d0rgo2i6ckjwxk0a5', 'TOP 10 ĐIỀU NGƯỜI MỚI CHƠI GUITAR CẦN BIẾT #guitartalk', 1521, 'https://www.youtube.com/watch?v=3zd_zHp9rjQ', 'L8d0rgo2i6ckjwxk09u', 1);
INSERT INTO `video` VALUES ('V8d0rgo2i6ckjwxk0an', 'Tự học guitar mà vẫn giỏi??? Chặng đường tự học của Hiển!!!', 1103, 'https://www.youtube.com/watch?v=ov4uGbv1-TI', 'L8d0rgo2i6ckjwxk09u', 2);
INSERT INTO `video` VALUES ('V8d0rgo2i6ckjwxk0be', 'Học đàn Guitar ABC - NHẠC LÝ CƠ BẢN - 1', 1061, 'https://www.youtube.com/watch?v=WpxU-ncluDI', 'L8d0rgo2i6ckjwxk0b6', 1);
INSERT INTO `video` VALUES ('V8d0rgo2i6ckjwxk0bl', 'Hướng dẫn guitar | NHỎ ƠI (Bản Chí Tài) | Full Intro | Đệm hát | Kèm TAB | Mendy Nguyễn', 1833, 'https://www.youtube.com/watch?v=YDTXp4cR_ak', 'L8d0rgo2i6ckjwxk0b6', 2);
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
