-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: db
-- ------------------------------------------------------
-- Server version	8.0.22

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bill`
--

DROP TABLE IF EXISTS `bill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bill` (
  `user_id` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `course_id` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `activation_code` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `status` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`user_id`,`course_id`) USING BTREE,
  KEY `FK_bill_course_idx` (`course_id`) USING BTREE,
  CONSTRAINT `FK_bill_course` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_bill_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill`
--

LOCK TABLES `bill` WRITE;
/*!40000 ALTER TABLE `bill` DISABLE KEYS */;
INSERT INTO `bill` VALUES ('1','C01','GN02','2020-12-23','Hoàn thành'),('1','C02','GD02','2020-12-23','Hoàn thành'),('Uswyrp2a4kitph7ft','C01','GN01','2020-12-23','Hoàn thành'),('Uswyrp2a4kitph7ft','C02','GD01','2020-12-23','Hoàn thành');
/*!40000 ALTER TABLE `bill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `cart_id` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `course_id` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`cart_id`,`course_id`) USING BTREE,
  KEY `FK_cart_course_idx` (`course_id`) USING BTREE,
  CONSTRAINT `FK_cart_course` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_cart_shoppingcart` FOREIGN KEY (`cart_id`) REFERENCES `shopping_cart` (`cart_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `category_id` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `category_name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `parent_id` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`category_id`) USING BTREE,
  KEY `catcat_idx` (`parent_id`),
  KEY `fk_cat_cat_idx` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES ('1','Lập trình web','3'),('2','Lập trình thiết bị di động','3'),('3','Lập trình',NULL),('4','Marketing',NULL),('5','Marketing căn bản','4'),('6','Digital Marketing','4');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course` (
  `course_id` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `course_name` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `description` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `intro_image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `price` double NOT NULL,
  `deal_value` int DEFAULT NULL,
  `course_intro_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `course_intro_video` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `course_benefit_description` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `course_suitability` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `lecturer_id` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `categoty_id` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `status` varchar(45) DEFAULT 'Chưa hoàn thành',
  `create_date` date DEFAULT NULL,
  PRIMARY KEY (`course_id`) USING BTREE,
  KEY `FK_course_lecturer_idx` (`lecturer_id`) USING BTREE,
  KEY `FK_course_category_idx` (`categoty_id`) USING BTREE,
  CONSTRAINT `FK_course_category` FOREIGN KEY (`categoty_id`) REFERENCES `category` (`category_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_course_lecturer` FOREIGN KEY (`lecturer_id`) REFERENCES `user` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES ('C01','Bí quyết giao tiếp để thành công','Tiến sĩ Lê Thẩm Dương tiết lộ bí quyết giao tiếp để thành công','images/productTesting.png',699000,50,NULL,NULL,NULL,NULL,'U8d0rgoojskj03tm75','1','Chưa hoàn thành',NULL),('C02','Học troll game','Tiến sĩ Lê Hoàng Phúc tiết lộ bí quyết giao tiếp để thành công','images/product_ID2.jpg',123123,50,NULL,NULL,NULL,NULL,'U8d0rgoojskj03tm75','2','Chưa hoàn thành',NULL),('C03','Thành thạo ngôn ngữ lập trình C++','Thành thạo ngôn ngữ lập trình C++','images/product_ID1.jpg',699000,74,NULL,NULL,NULL,NULL,'U8d0rgoojskj03tm75','1','Chưa hoàn thành',NULL),('C04','VBA - Giải pháp tối ưu công việc trên Excel','VBA - Giải pháp tối ưu công việc trên Excel','images/product_ID3.jpg',599000,70,NULL,NULL,NULL,NULL,'U8d0rgoojskj03tm75','1','Chưa hoàn thành',NULL),('Cswyrp498kjdsuj8s','Nhập môn lập trình Web','Web','/upload/course/Cswyrp498kjdsuj8s.jpg',699000,0,'<p>Bạn l&agrave; người mới v&agrave; mu&ocirc;́n bước đ&acirc;̀u t&igrave;m hi&ecirc;̉u v&ecirc;̀ l&acirc;̣p tr&igrave;nh web?</p>\r\n\r\n<p>Bạn mu&ocirc;́n tự x&acirc;y dựng trang web cho sản ph&acirc;̉m của m&igrave;nh?</p>\r\n\r\n<p>Bạn mu&ocirc;́n t&igrave;m t&ograve;i học hỏi những đi&ecirc;̀u mới, chuy&ecirc;n m&ocirc;n mới?</p>\r\n\r\n<p>Bạn c&oacute; niềm đam m&ecirc; với bộ m&ocirc;n lập tr&igrave;nh web nhưng đang băn khoăn kh&ocirc;ng biết n&ecirc;n chọn kh&oacute;a học n&agrave;o?</p>\r\n\r\n<p>Đừng lo lắng! H&atilde;y đến với kh&oacute;a học &quot;Nhập m&ocirc;n l&acirc;p tr&igrave;nh web&quot; của ch&uacute;ng t&ocirc;i để học tất cả những điều căn bản nhất về lập tr&igrave;nh web.</p>\r\n\r\n<p>Kh&oacute;a học &quot;Nh&acirc;̣p m&ocirc;n l&acirc;̣p tr&igrave;nh Web&quot; sẽ cho bạn c&aacute;i nh&igrave;n t&ocirc;̉ng quan nh&acirc;́t v&ecirc;̀ l&acirc;̣p tr&igrave;nh web. Những y&ecirc;́u t&ocirc;́ gi&uacute;p bạn đưa ra quy&ecirc;́t định c&oacute; n&ecirc;n học l&acirc;̣p tr&igrave;nh web hay kh&ocirc;ng.</p>\r\n\r\n<p>Đồng thời kh&oacute;a học cũng giới thiệu c&aacute;ch thức sử dụng c&aacute;c c&ocirc;ng cụ đơn giản v&agrave; dễ d&ugrave;ng nhất để x&acirc;y dựng một trang web của ri&ecirc;ng bạn.</p>\r\n',NULL,'Biết được lý do tại sao bạn nên học lập trình web mà không phải một môn lập trình nào khác.\r\nHiểu được lập trình web là gì và những kiến thức cơ bản nhất về lập trình web.','Những người mong muốn học lập trình web.\r\nHọc sinh, sinh viên khoa CNTT.\r\nHọc sinh, sinh viên có ngành khác mong muốn học hỏi cái mới.','Uswyrp45kkj5e5nrw','1','Chưa hoàn thành','2021-01-01'),('Cswyrp61kkj9sbfva','Lập trình backend cho website bằng PHP/Mysql theo mô hình MVC','Backend PHP MySQL','/upload/course/Cswyrp61kkj9sbfva.jpg',699000,0,'<p>Điểm kh&aacute;c biệt của kh&oacute;a học n&agrave;y so với c&aacute;c kh&oacute;a học online kh&aacute;c c&ugrave;ng chủ đề lập tr&igrave;nh PHP l&agrave; g&igrave; vậy ?<br />\r\nKh&aacute;c người tr&igrave;nh b&agrave;y bạn ạ. M&igrave;nh nghĩ cũng ảnh hưởng một phần đ&oacute;, mỗi người một c&aacute;ch tr&igrave;nh b&agrave;y v&agrave; tiếp cận kh&aacute;c nhau, sẽ hợp với từng người kh&aacute;c nhau, hi vọng bạn v&agrave; m&igrave;nh &quot;&quot;tương th&iacute;ch&quot;&quot;. Hơn nữa m&igrave;nh tự tin ở phần l&agrave; rất chi tiết, m&igrave;nh nghĩ l&agrave; kh&ocirc;ng ai n&oacute;i chi tiết như thế bạn ạ, để đảm bảo l&agrave; bạn hiểu tận ng&oacute;c ng&aacute;ch v&agrave; bản chất của vấn đề. Einestern đ&atilde; n&oacute;i l&agrave; nếu bạn kh&ocirc;ng thể giải th&iacute;ch cho một đứa trẻ hiểu th&igrave; bạn cũng chẳng hiểu r&otilde; vấn đề. Bạn thử học nh&eacute;. &quot;</p>\r\n',NULL,'Tự lập trình phần mềm phù hợp với nhu cầu và công việc cá nhân\r\nKiến thức ở khóa này là nền tảng cho khóa nâng cao sau này và các khóa về fullstact angular sẽ xuất bản tới','Sinh viên học về công nghệ thông tin\r\nNhững bạn chưa biết rõ bản chất của lập trình MVC\r\nNhững bạn muốn học về lập trình web\r\nNhững bạn muốn tự lập trình backend cho website của mình','Uswyrp45kkj5e5nrw','2','Chưa hoàn thành','2020-12-31');
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deal`
--

DROP TABLE IF EXISTS `deal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deal` (
  `code_id` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `value` double DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`code_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deal`
--

LOCK TABLES `deal` WRITE;
/*!40000 ALTER TABLE `deal` DISABLE KEYS */;
/*!40000 ALTER TABLE `deal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favourite`
--

DROP TABLE IF EXISTS `favourite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `favourite` (
  `user_id` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `course_id` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`user_id`) USING BTREE,
  KEY `FK_favourite_course_idx` (`course_id`) USING BTREE,
  CONSTRAINT `FK_favourite_course` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_favourite_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favourite`
--

LOCK TABLES `favourite` WRITE;
/*!40000 ALTER TABLE `favourite` DISABLE KEYS */;
/*!40000 ALTER TABLE `favourite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lesson_list`
--

DROP TABLE IF EXISTS `lesson_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lesson_list` (
  `list_id` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `chapter_number` int DEFAULT NULL,
  `chapter_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `course_id` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`list_id`) USING BTREE,
  KEY `FK_lessonlist_course_idx` (`course_id`) USING BTREE,
  CONSTRAINT `FK_lessonlist_course` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lesson_list`
--

LOCK TABLES `lesson_list` WRITE;
/*!40000 ALTER TABLE `lesson_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `lesson_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `session_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `expires` int unsigned NOT NULL,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('VB1rfPCDJQPBSx9ARNK15sdjT4ke13XK',1609567126,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"auth\":true,\"authUser\":{\"user_id\":\"Uswyrp45kkj5e5nrw\",\"name\":\"Lưu Thiện Nhân\",\"gender\":\"Khác\",\"dob\":\"2020-12-01\",\"phone_number\":\"0703002347\",\"email\":\"nguoiamphu\",\"password\":\"$2a$10$UtYSET9vR1AAWNbHyEsuMeS5ljiVslyl/iGzXWkin4hpXPhFmiK7W\",\"password_lvl2\":null,\"avatar\":\"/upload/user_avatar/Uswyrp45kkj5e5nrw.jpg\",\"description\":\"ádqwqd\\r\\nqưd\\r\\nqư\\r\\ndqw\\r\\nd\\r\\nqưdfqwfqfqfw\",\"role\":1,\"address\":\"123 Nguyễn Văn Cừ Q.5\"},\"cid\":\"Cswyrp498kjdsuj8s\"}'),('s-8e1C-0LRsg8fuPtQA5OTIh-yc5PVAW',1609481392,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"auth\":false,\"retUrl\":\"/lecturer/addcourse\"}');
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shopping_cart`
--

DROP TABLE IF EXISTS `shopping_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shopping_cart` (
  `cart_id` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `user_id` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `code_id` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`cart_id`) USING BTREE,
  KEY `FK_cart_user_idx` (`user_id`) USING BTREE,
  KEY `FK_cart_deal_idx` (`code_id`) USING BTREE,
  CONSTRAINT `FK_shoppingcart_deal` FOREIGN KEY (`code_id`) REFERENCES `deal` (`code_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_shoppingcart_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shopping_cart`
--

LOCK TABLES `shopping_cart` WRITE;
/*!40000 ALTER TABLE `shopping_cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `shopping_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `star_rating`
--

DROP TABLE IF EXISTS `star_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `star_rating` (
  `user_id` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `course_id` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `num_star` int DEFAULT NULL,
  `comment` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`user_id`,`course_id`) USING BTREE,
  KEY `FK_starrating_course_idx` (`course_id`) USING BTREE,
  CONSTRAINT `FK_starrating_course` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_starrating_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `star_rating`
--

LOCK TABLES `star_rating` WRITE;
/*!40000 ALTER TABLE `star_rating` DISABLE KEYS */;
INSERT INTO `star_rating` VALUES ('1','C01',4,'ok'),('1','C02',4,'ok'),('Uswyrp2a4kitph7ft','C01',5,'Good'),('Uswyrp2a4kitph7ft','C02',5,'good');
/*!40000 ALTER TABLE `star_rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `user_id` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `gender` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone_number` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `email` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password_lvl2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `avatar` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `role` int DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('1','Luu a',NULL,NULL,NULL,'phuc@gmail.com','123123',NULL,'images/BecomeInstructor/ltn.jpg',NULL,0,NULL),('U8d0rgoojskj03tm75','Lê Hoàng Phúc',NULL,NULL,NULL,'phucyugi@gmail.com','$2a$10$eaeN/x0vA8RF.0egO0mX5OUu1FmCEue6vCRCfGE2YkYbdTM/1xkee',NULL,'images/BecomeInstructor/ltn.jpg',NULL,1,NULL),('Uswyrp2a4kitph7ft','Luu Thien Nhan',NULL,NULL,NULL,'nhanluu838@gmail.com','$2a$10$kYroKyRFPmJn1zYPkWsl2OVFhzlap4ZpnQOlN.IxABE/RNYO5Qwj6',NULL,'images/BecomeInstructor/ltn.jpg',NULL,0,NULL),('Uswyrp45kkj5e5nrw','Lưu Thiện Nhân','Khác','2020-12-01','0703002347','nguoiamphu','$2a$10$UtYSET9vR1AAWNbHyEsuMeS5ljiVslyl/iGzXWkin4hpXPhFmiK7W',NULL,'/upload/user_avatar/Uswyrp45kkj5e5nrw.jpg','ádqwqd\r\nqưd\r\nqư\r\ndqw\r\nd\r\nqưdfqwfqfqfw',1,'123 Nguyễn Văn Cừ Q.5');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `video`
--

DROP TABLE IF EXISTS `video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `video` (
  `video_id` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `video_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `video_duration` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `list_id` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`video_id`) USING BTREE,
  KEY `FK_video_lessonlist_idx` (`list_id`) USING BTREE,
  CONSTRAINT `FK_video_lessonlist` FOREIGN KEY (`list_id`) REFERENCES `lesson_list` (`list_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `video`
--

LOCK TABLES `video` WRITE;
/*!40000 ALTER TABLE `video` DISABLE KEYS */;
/*!40000 ALTER TABLE `video` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-01 13:00:12
