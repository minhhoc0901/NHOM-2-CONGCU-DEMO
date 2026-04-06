CREATE DATABASE  IF NOT EXISTS `phuyen_travel_5` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `phuyen_travel_5`;
-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: phuyen_travel_5
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `besttimes`
--

DROP TABLE IF EXISTS `besttimes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `besttimes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `location_id` int NOT NULL,
  `time_description` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `location_id` (`location_id`),
  CONSTRAINT `besttimes_ibfk_1` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=160 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `besttimes`
--

LOCK TABLES `besttimes` WRITE;
/*!40000 ALTER TABLE `besttimes` DISABLE KEYS */;
INSERT INTO `besttimes` VALUES (7,3,'Sáng sớm (5h30-8h00): Không khí trong lành, ánh nắng dịu nhẹ, lý tưởng để ngắm cảnh và chụp ảnh.'),(8,3,'Mùa khô (tháng 1-8): Thời tiết ổn định, nước biển trong, thuận lợi cho các hoạt động ngoài trời.'),(9,3,'Tháng (3-4): Thời điểm tôm hùm vào mùa, bạn có thể thưởng thức hải sản tươi ngon.'),(10,4,'Sáng sớm (6h00-8h00): Không khí mát mẻ, ánh sáng đẹp để chụp ảnh.'),(11,4,'Chiều muộn (16h00-18h00): Ngắm hoàng hôn từ đỉnh núi Nhạn, khung cảnh thành phố rất thơ mộng.'),(12,4,'Tháng 1 âm lịch: Tham gia Lễ hội Tháp Nhạn với nhiều hoạt động văn hóa đặc sắc.'),(13,5,'Sáng sớm (5h00-7h00): Ánh nắng dịu, lý tưởng để chụp ảnh và tận hưởng không khí trong lành.'),(14,5,'Hoàng hôn (16h30-18h00): Cảnh biển hoàng hôn tại Bãi Xép đẹp mê hồn, rất lãng mạn.'),(15,5,'Mùa khô (tháng 1-8): Thời tiết đẹp, biển êm, thuận tiện cho các hoạt động ngoài trời.'),(16,6,'Thủy triều rút (tháng 4-8): Thời điểm lý tưởng để nhìn thấy con đường cát dẫn ra đảo, thường vào buổi sáng sớm.'),(17,6,'Sáng sớm (5h30-7h30): Ánh nắng dịu, nước biển trong, thích hợp để lặn ngắm san hô.'),(18,6,'Mùa khô (tháng 1-8): Thời tiết đẹp, biển êm, thuận lợi cho các hoạt động ngoài trời.'),(33,7,'Sáng sớm (6h00-8h00): Không khí mát mẻ, ánh sáng tự nhiên làm nổi bật kiến trúc nhà thờ.'),(34,7,'Chiều muộn (16h00-18h00): Khung cảnh yên bình, lý tưởng để chụp ảnh và tham quan.'),(35,7,'Dịp lễ Giáng sinh: Nhà thờ được trang trí lộng lẫy, không khí rất nhộn nhịp.'),(93,2,'Bình minh (5h30-7h00): Ánh nắng sớm lung linh trên đá, không khí trong lành, lý tưởng để chụp ảnh.'),(94,2,'Hoàng hôn (16h30-18h00): Bầu trời đỏ rực phản chiếu trên mặt nước, mang lại vẻ đẹp lãng mạn.'),(95,2,'Mùa khô (tháng1-8): Thời tiết đẹp, ít mưa, thuận tiện khám phá.'),(155,1,'Sáng sớm (5h00-8h00): Ngắm bình minh tuyệt đẹp trên biển Tuy Hòa, ánh sáng dịu nhẹ lý tưởng để chụp ảnh.'),(156,1,'Chiều tối (16h00-19h00): Thưởng thức hoàng hôn và buổi trình diễn ánh sáng đặc sắc.'),(157,1,'Mùa khô (tháng 1-8): Thời tiết nắng đẹp, dễ dàng tham quan và tận hưởng không gian biển.');
/*!40000 ALTER TABLE `besttimes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking_details`
--

DROP TABLE IF EXISTS `booking_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `booking_id` int NOT NULL,
  `price_type` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT 'Loại vé',
  `quantity` int NOT NULL COMMENT 'Số lượng vé',
  `unit_price` decimal(15,2) NOT NULL COMMENT 'Đơn giá tại thời điểm đặt',
  `subtotal` decimal(15,2) NOT NULL COMMENT 'Thành tiền',
  PRIMARY KEY (`id`),
  KEY `idx_booking_details_booking_id` (`booking_id`),
  CONSTRAINT `booking_details_ibfk_1` FOREIGN KEY (`booking_id`) REFERENCES `bookings` (`id`) ON DELETE CASCADE,
  CONSTRAINT `booking_details_chk_1` CHECK ((`quantity` > 0)),
  CONSTRAINT `booking_details_chk_2` CHECK ((`unit_price` >= 0)),
  CONSTRAINT `booking_details_chk_3` CHECK ((`subtotal` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=163 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking_details`
--

LOCK TABLES `booking_details` WRITE;
/*!40000 ALTER TABLE `booking_details` DISABLE KEYS */;
INSERT INTO `booking_details` VALUES (85,49,'adult',1,1100000.00,1100000.00),(86,50,'child',6,800000.00,4800000.00),(87,50,'adult',7,1100000.00,7700000.00),(88,51,'child',1,800000.00,800000.00),(89,51,'adult',1,1100000.00,1100000.00),(90,52,'adult',1,1100000.00,1100000.00),(91,53,'adult',1,1100000.00,1100000.00),(92,54,'child',1,800000.00,800000.00),(93,54,'adult',1,1100000.00,1100000.00),(94,55,'adult',1,1100000.00,1100000.00),(95,56,'adult',1,1100000.00,1100000.00),(96,57,'child',1,800000.00,800000.00),(97,57,'adult',1,1100000.00,1100000.00),(98,58,'child',1,800000.00,800000.00),(99,58,'adult',1,1100000.00,1100000.00),(100,59,'child',1,800000.00,800000.00),(101,59,'adult',1,1100000.00,1100000.00),(102,60,'adult',1,1100000.00,1100000.00),(103,61,'adult',1,1100000.00,1100000.00),(104,62,'adult',1,1100000.00,1100000.00),(105,63,'adult',1,1100000.00,1100000.00),(106,64,'child',1,800000.00,800000.00),(107,64,'adult',2,1100000.00,2200000.00),(108,65,'child',1,1200000.00,1200000.00),(109,65,'adult',1,1800000.00,1800000.00),(110,66,'child',1,1200000.00,1200000.00),(111,66,'adult',2,1800000.00,3600000.00),(112,67,'child',2,1200000.00,2400000.00),(113,67,'adult',1,1800000.00,1800000.00),(114,68,'child',2,1200000.00,2400000.00),(115,68,'adult',2,1800000.00,3600000.00),(116,69,'child',2,500000.00,1000000.00),(117,69,'adult',2,800000.00,1600000.00),(118,70,'child',2,1200000.00,2400000.00),(119,70,'adult',1,1800000.00,1800000.00),(120,71,'child',1,1200000.00,1200000.00),(121,71,'adult',2,1800000.00,3600000.00),(122,72,'child',2,1200000.00,2400000.00),(123,72,'adult',1,1800000.00,1800000.00),(124,73,'child',1,1200000.00,1200000.00),(125,73,'adult',1,1800000.00,1800000.00),(126,74,'child',1,800000.00,800000.00),(127,74,'adult',1,1100000.00,1100000.00),(128,75,'child',3,1200000.00,3600000.00),(129,75,'adult',1,1800000.00,1800000.00),(130,76,'adult',1,1800000.00,1800000.00),(131,77,'child',2,800000.00,1600000.00),(132,77,'adult',1,1100000.00,1100000.00),(133,78,'child',2,800000.00,1600000.00),(134,78,'adult',1,1100000.00,1100000.00),(135,79,'child',2,800000.00,1600000.00),(136,79,'adult',1,1100000.00,1100000.00),(137,80,'child',1,1200000.00,1200000.00),(138,80,'adult',1,1800000.00,1800000.00),(139,81,'child',1,1200000.00,1200000.00),(140,81,'adult',1,1800000.00,1800000.00),(141,82,'adult',1,1800000.00,1800000.00),(142,83,'adult',1,1800000.00,1800000.00),(143,84,'child',2,1200000.00,2400000.00),(144,84,'adult',2,1800000.00,3600000.00),(145,85,'child',1,1200000.00,1200000.00),(146,85,'adult',1,1800000.00,1800000.00),(147,86,'child',1,1200000.00,1200000.00),(148,86,'adult',1,1800000.00,1800000.00),(149,87,'child',1,1200000.00,1200000.00),(150,87,'adult',1,1800000.00,1800000.00),(151,88,'child',3,1200000.00,3600000.00),(152,88,'adult',1,1800000.00,1800000.00),(153,89,'child',1,800000.00,800000.00),(154,89,'adult',1,1100000.00,1100000.00),(155,90,'child',1,800000.00,800000.00),(156,90,'adult',1,1100000.00,1100000.00),(157,91,'child',1,800000.00,800000.00),(158,91,'adult',1,1100000.00,1100000.00),(159,92,'child',1,800000.00,800000.00),(160,92,'adult',1,1100000.00,1100000.00),(161,93,'child',1,800000.00,800000.00),(162,93,'adult',1,1100000.00,1100000.00);
/*!40000 ALTER TABLE `booking_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookings`
--

DROP TABLE IF EXISTS `bookings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `tour_id` int NOT NULL,
  `tour_departure_id` int NOT NULL COMMENT 'Tham chiếu đến lịch khởi hành đã chọn',
  `original_amount` decimal(15,2) NOT NULL COMMENT 'Tổng tiền gốc',
  `final_amount` decimal(15,2) NOT NULL COMMENT 'Tổng tiền cuối cùng',
  `discount_amount` decimal(15,2) DEFAULT '0.00' COMMENT 'Số tiền được giảm',
  `promotion_id` int DEFAULT NULL COMMENT 'ID của mã khuyến mãi đã dùng',
  `status` enum('pending_payment','confirmed','pending_cancellation','cancelled','completed') NOT NULL DEFAULT 'pending_payment',
  `contact_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `contact_email` varchar(100) NOT NULL,
  `contact_phone` varchar(15) NOT NULL,
  `special_requests` text,
  `verification_token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `completion_date` timestamp NULL DEFAULT NULL COMMENT 'Ngày hoàn thành tour',
  `is_hidden` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `verification_token` (`verification_token`),
  KEY `promotion_id` (`promotion_id`),
  KEY `idx_bookings_user_id` (`user_id`),
  KEY `idx_bookings_tour_id` (`tour_id`),
  KEY `idx_bookings_departure_id` (`tour_departure_id`),
  CONSTRAINT `bookings_ibfk_3` FOREIGN KEY (`promotion_id`) REFERENCES `promotions` (`id`) ON DELETE SET NULL,
  CONSTRAINT `bookings_ibfk_4` FOREIGN KEY (`tour_departure_id`) REFERENCES `tour_departures` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fk_bookings_tour` FOREIGN KEY (`tour_id`) REFERENCES `tours` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fk_bookings_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `bookings_chk_1` CHECK ((`original_amount` >= 0)),
  CONSTRAINT `bookings_chk_2` CHECK ((`final_amount` >= 0)),
  CONSTRAINT `bookings_chk_3` CHECK ((`discount_amount` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookings`
--

LOCK TABLES `bookings` WRITE;
/*!40000 ALTER TABLE `bookings` DISABLE KEYS */;
INSERT INTO `bookings` VALUES (49,6,1,1,1100000.00,1100000.00,0.00,NULL,'cancelled','tran Manh hung','minhhoc0901@gmail.com','0383933441',NULL,NULL,'2025-11-15 18:29:24','2025-11-15 18:45:00',NULL,0),(50,6,1,1,12500000.00,12500000.00,0.00,NULL,'completed','tran Manh hung','minhhoc0901@gmail.com','0383933441',NULL,NULL,'2025-11-15 18:30:37','2025-12-01 17:00:00','2025-12-01 17:00:00',0),(51,6,1,1,1900000.00,1900000.00,0.00,NULL,'cancelled','tran Manh hung','minhhoc0901@gmail.com','0383933441',NULL,NULL,'2025-11-15 18:31:58','2025-11-15 18:32:05',NULL,0),(52,6,1,1,1100000.00,1100000.00,0.00,NULL,'cancelled','tran Manh hung','minhhoc0901@gmail.com','0383933441',NULL,NULL,'2025-11-15 18:35:16','2025-11-15 18:35:32',NULL,0),(53,6,1,1,1100000.00,1100000.00,0.00,NULL,'cancelled','tran Manh hung','minhhoc0901@gmail.com','0383933441',NULL,NULL,'2025-11-15 18:39:36','2025-11-15 18:39:49',NULL,0),(54,6,1,1,1900000.00,1900000.00,0.00,NULL,'cancelled','tran Manh hung','minhhoc0901@gmail.com','0383933441',NULL,NULL,'2025-11-15 18:40:11','2025-11-15 18:40:29',NULL,0),(55,6,1,1,1100000.00,1100000.00,0.00,NULL,'cancelled','tran Manh hung','minhhoc0901@gmail.com','0383933441',NULL,NULL,'2025-11-16 06:56:29','2025-11-16 06:59:19',NULL,0),(56,6,1,1,1100000.00,1100000.00,0.00,NULL,'cancelled','tran Manh hung','minhhoc0901@gmail.com','0383933441',NULL,NULL,'2025-11-16 06:58:28','2025-11-16 06:59:14',NULL,0),(57,6,1,1,1900000.00,1900000.00,0.00,NULL,'cancelled','tran Manh hung','minhhoc0901@gmail.com','0383933441',NULL,NULL,'2025-11-16 06:59:31','2025-11-16 07:15:00',NULL,0),(58,6,1,2,1900000.00,1900000.00,0.00,NULL,'cancelled','tran Manh hung','minhhoc0901@gmail.com','0383933441',NULL,NULL,'2025-11-16 07:06:31','2025-11-16 07:22:00',NULL,0),(59,6,1,2,1900000.00,1900000.00,0.00,NULL,'cancelled','tran Manh hung','minhhoc0901@gmail.com','0383933441',NULL,NULL,'2025-11-16 07:10:54','2025-11-16 07:26:00',NULL,0),(60,6,1,2,1100000.00,1100000.00,0.00,NULL,'cancelled','tran Manh hung','minhhoc0901@gmail.com','0383933441',NULL,NULL,'2025-11-16 07:22:33','2025-11-16 07:39:00',NULL,0),(61,6,1,2,1100000.00,1100000.00,0.00,NULL,'cancelled','tran Manh hung','minhhoc0901@gmail.com','0383933441',NULL,NULL,'2025-11-16 07:23:24','2025-11-16 07:39:00',NULL,0),(62,6,1,2,1100000.00,1100000.00,0.00,NULL,'cancelled','tran Manh hung','minhhoc0901@gmail.com','0383933441',NULL,NULL,'2025-11-16 07:24:27','2025-11-16 07:24:47',NULL,1),(63,6,1,1,1100000.00,1100000.00,0.00,NULL,'cancelled','tran Manh hung','minhhoc0901@gmail.com','0383933441',NULL,NULL,'2025-11-16 07:33:11','2025-11-16 07:33:25',NULL,1),(64,6,1,2,3000000.00,3000000.00,0.00,NULL,'completed','tran Manh hung','minhhoc0901@gmail.com','0383933441',NULL,'3e066f1e6296559e61c8654a3dd499ca7eb0a738','2025-11-16 08:21:37','2025-12-10 17:00:00','2025-12-10 17:00:00',0),(65,6,3,5,3000000.00,2700000.00,300000.00,4,'cancelled','tran Manh hung','minhhoc0901@gmail.com','0383933441',NULL,'12847878faea5287265545b2543ca01e6249d9e7','2025-12-01 02:52:11','2025-12-01 02:56:33',NULL,0),(66,6,3,5,4800000.00,4800000.00,0.00,NULL,'cancelled','tran Manh hung','minhhoc0901@gmail.com','0383933441',NULL,'76a2830277ed6c50550a06db2263956221c69f21','2025-12-01 02:55:36','2025-12-01 02:56:02',NULL,0),(67,6,3,5,4200000.00,4200000.00,0.00,NULL,'cancelled','tran Manh hung','minhhoc0901@gmail.com','0383933441',NULL,'05676fac374a0b2636ebcdb7faf5216db677504a','2025-12-01 02:59:20','2025-12-01 03:00:55',NULL,0),(68,6,3,5,6000000.00,6000000.00,0.00,NULL,'completed','tran Manh hung','minhhoc0901@gmail.com','0383933441',NULL,'bddbd22c7c28e4a1fc015628ac565b113578a66b','2025-12-01 03:30:42','2025-12-10 17:00:00','2025-12-10 17:00:00',0),(69,6,4,7,2600000.00,2600000.00,0.00,NULL,'completed','tran Manh hung','minhhoc0901@gmail.com','0383933441',NULL,'bfd53cc83173ef81689d68d2376fe23e674d7e21','2025-12-01 03:31:53','2025-12-10 17:00:00','2025-12-10 17:00:00',0),(70,6,3,5,4200000.00,4200000.00,0.00,NULL,'cancelled','tran Manh hung','minhhoc0901@gmail.com','0383933441',NULL,'fa160748710ce2c1f2c82602d8eb59273af828b6','2025-12-02 08:56:55','2026-03-30 10:51:43',NULL,0),(71,6,3,5,4800000.00,4800000.00,0.00,NULL,'cancelled','tran Manh hung','minhhoc0901@gmail.com','0383933441',NULL,'7acdea15277f7ec3fc0c9a1e3b8e2c36a57a8432','2025-12-02 09:10:54','2025-12-02 09:11:45',NULL,0),(72,6,3,5,4200000.00,4200000.00,0.00,NULL,'completed','tran Manh hung','minhhoc0901@gmail.com','0383933441',NULL,'acb99f57a92e80ab95278c4808ff53c545afa26f','2025-12-02 16:49:49','2025-12-10 17:00:00','2025-12-10 17:00:00',0),(73,6,3,5,3000000.00,3000000.00,0.00,NULL,'completed','tran Manh hung','minhhoc0901@gmail.com','0383933441',NULL,'7ee46f37250227a1d40a97d95049e95724b28462','2025-12-02 18:13:10','2025-12-10 17:00:00','2025-12-10 17:00:00',0),(74,6,1,3,1900000.00,1900000.00,0.00,NULL,'pending_cancellation','tran Manh hung','minhhoc0901@gmail.com','0383933441',NULL,'aacfaa729202c1c5b72c65d45dc1570dc18c121a','2025-12-02 18:15:10','2025-12-02 18:15:37',NULL,0),(75,6,3,5,5400000.00,5400000.00,0.00,NULL,'cancelled','tran Manh hung','minhhoc0901@gmail.com','0383933441',NULL,'25c63311c053bcfed02eb69a3df9e7f38142989c','2025-12-02 19:00:53','2025-12-02 19:01:35',NULL,0),(76,6,3,5,1800000.00,1800000.00,0.00,NULL,'cancelled','tran Manh hung','minhhoc0901@gmail.com','0383933441',NULL,'938f4a9fc80d50a28565affa16b5c12f4225ff89','2025-12-02 19:02:50','2025-12-02 19:02:59',NULL,0),(77,6,1,3,2700000.00,2700000.00,0.00,NULL,'cancelled','tran Manh hung','minhhoc0901@gmail.com','0383933441',NULL,'670d8ef9f8ce7ea15f7577790efcc0f597558bbe','2025-12-03 04:10:27','2025-12-03 04:22:43',NULL,0),(78,6,1,13,2700000.00,2700000.00,0.00,NULL,'cancelled','tran Manh hung','minhhoc0901@gmail.com','0383933441',NULL,'7bbdc5946b1cdb866f9ee22da256be7cf86c148a','2025-12-05 07:09:26','2025-12-05 07:13:40',NULL,0),(79,6,1,13,2700000.00,2700000.00,0.00,NULL,'cancelled','tran Manh hung','minhhoc0901@gmail.com','0383933441','hihi','10d4d550557d520493b33839306d5f2aa09984cb','2025-12-10 07:35:54','2025-12-10 07:51:00',NULL,0),(80,6,3,16,3000000.00,3000000.00,0.00,NULL,'cancelled','tran Manh hung','minhhoc0901@gmail.com','0383933441',NULL,'269b6e9eacac3091f03d8c838d440b9b5ee5d2c4','2025-12-14 13:46:27','2025-12-14 14:02:00',NULL,0),(81,6,3,16,3000000.00,3000000.00,0.00,NULL,'cancelled','tran Manh hung','minhhoc0901@gmail.com','0383933441',NULL,'43ff229e1eedce996d1a8b6fe4d02f883adb806a','2025-12-14 13:46:32','2025-12-14 14:02:00',NULL,0),(82,6,3,16,1800000.00,1800000.00,0.00,NULL,'completed','tran Manh hung','minhhoc0901@gmail.com','0383933441',NULL,'a0106cc6d2ee4f6ed76e575f2519cf3281e57b13','2025-12-14 13:47:13','2026-01-23 17:00:00','2026-01-23 17:00:00',0),(83,6,3,16,1800000.00,1800000.00,0.00,NULL,'cancelled','tran Manh hung','minhhoc0901@gmail.com','0383933441',NULL,'56bb7f6796039fad6c1e7a0d6e656ee2e22f568f','2025-12-14 13:58:00','2025-12-14 14:15:00',NULL,0),(84,6,3,16,6000000.00,5400000.00,600000.00,4,'completed','tran Manh hung','minhhoc0901@gmail.com','0383933441','Lưu ý có 1 người ăn chay nhé','e47af4c0dd08e453fb265b709369e3baf3e102d3','2025-12-16 10:12:27','2026-01-23 17:00:00','2026-01-23 17:00:00',0),(85,6,3,16,3000000.00,3000000.00,0.00,NULL,'cancelled','tran Manh hung','minhhoc0901@gmail.com','0383933441',NULL,'297bda51bf5f234c08d7349141fe94ed2f2e622f','2025-12-16 10:18:43','2025-12-16 10:21:13',NULL,0),(86,6,3,16,3000000.00,3000000.00,0.00,NULL,'cancelled','tran Manh hung','minhhoc0901@gmail.com','0383933441',NULL,'fba28988e17da34ca380b5e0cc1b860d85d3c9ee','2025-12-16 10:21:19','2025-12-16 10:21:48',NULL,0),(87,6,3,16,3000000.00,3000000.00,0.00,NULL,'cancelled','tran Manh hung','minhhoc0901@gmail.com','0383933441',NULL,'05de9d0ce5525f96c80760febe14975377fe4e62','2025-12-18 08:42:12','2025-12-18 08:58:00',NULL,0),(88,6,3,16,5400000.00,5400000.00,0.00,NULL,'completed','tran Manh hung','minhhoc0901@gmail.com','0383933441',NULL,'fdcd8b8a04823510422da398e0cfabd630b9e58e','2025-12-20 17:08:12','2026-01-23 17:00:00','2026-01-23 17:00:00',0),(89,1,1,17,1900000.00,1900000.00,0.00,NULL,'cancelled','le minh hao','minhhoc0605@gmail.com','0869680796',NULL,'004b9b644cb7f42ac8eb213a566fe72aa938ada6','2026-01-22 15:11:25','2026-01-23 08:49:00',NULL,0),(90,1,1,17,1900000.00,1900000.00,0.00,NULL,'cancelled','le minh hao','minhhoc0605@gmail.com','0869680796',NULL,'7821c046a5c5d0929dcb3c701a2788615d7ffbd3','2026-01-22 15:12:02','2026-01-23 08:49:00',NULL,0),(91,6,1,17,1900000.00,1900000.00,0.00,NULL,'cancelled','tran Manh hung','minhhoc0901@gmail.com','0383933441',NULL,'47a07fa2d67293c9b4df2f2c4f59b8a491ace5c6','2026-01-25 06:06:53','2026-01-25 06:22:00',NULL,0),(92,1,1,13,1900000.00,1900000.00,0.00,NULL,'cancelled','le minh hao','minhhoc0605@gmail.com','0869680796',NULL,'5ed732af4e8aee7a661242ff98338ed6d1d60ca7','2026-03-30 07:34:58','2026-03-30 11:26:20',NULL,0),(93,1,1,13,1900000.00,1900000.00,0.00,NULL,'confirmed','le minh hao','minhhoc0605@gmail.com','0869680796',NULL,'a7027994399127f0d32dd2c3e3bd23d0ade6dd3e','2026-03-30 12:21:24','2026-03-30 12:22:00',NULL,0);
/*!40000 ALTER TABLE `bookings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat_messages`
--

DROP TABLE IF EXISTS `chat_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chat_messages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `message` text NOT NULL,
  `is_bot` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `created_at` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=227 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat_messages`
--

LOCK TABLES `chat_messages` WRITE;
/*!40000 ALTER TABLE `chat_messages` DISABLE KEYS */;
INSERT INTO `chat_messages` VALUES (1,0,'hi',0,'2025-05-19 06:08:49'),(2,0,'Xin lỗi, tôi không thể trả lời câu hỏi này lúc này. Vui lòng thử lại sau.',1,'2025-05-19 06:08:50'),(3,0,'chào bạn',0,'2025-05-19 06:09:00'),(4,0,'Xin lỗi, tôi không thể trả lời câu hỏi này lúc này. Vui lòng thử lại sau.',1,'2025-05-19 06:09:01'),(5,0,'Thời tiết ở Gành Đá Đĩa hôm nay thế nào?',0,'2025-05-19 06:11:55'),(6,0,'Xin lỗi, tôi không thể trả lời câu hỏi này lúc này. Vui lòng thử lại sau.',1,'2025-05-19 06:11:57'),(7,0,'h',0,'2025-05-19 06:12:09'),(8,0,'Xin lỗi, tôi không thể trả lời câu hỏi này lúc này. Vui lòng thử lại sau.',1,'2025-05-19 06:12:11'),(9,0,'Đề xuất tour du lịch cho gia đình',0,'2025-05-19 06:14:13'),(10,0,'Xin lỗi, tôi không thể trả lời câu hỏi này lúc này. Vui lòng thử lại sau.',1,'2025-05-19 06:14:14'),(11,0,'Đề xuất tour du lịch cho gia đình',0,'2025-05-19 06:17:41'),(12,0,'Xin lỗi, tôi không thể trả lời câu hỏi này lúc này. Vui lòng thử lại sau.',1,'2025-05-19 06:17:43'),(13,0,'Thời tiết ở Gành Đá Đĩa hôm nay thế nào?',0,'2025-05-19 06:20:25'),(14,0,'Xin lỗi, tôi không thể trả lời câu hỏi này lúc này. Vui lòng thử lại sau.',1,'2025-05-19 06:20:26'),(15,0,'Thời tiết ở Gành Đá Đĩa hôm nay thế nào?',0,'2025-05-19 06:23:20'),(16,0,'Thời tiết ở Phú Yên thường rất đẹp từ tháng 2 đến tháng 8, với nhiệt độ từ 25-32°C. Đây là thời gian lý tưởng để tham quan các địa điểm ngoài trời. Mùa mưa thường bắt đầu từ tháng 9 đến tháng 1.',1,'2025-05-19 06:23:20'),(17,0,'hi',0,'2025-05-19 06:23:27'),(18,0,'Xin chào! Tôi là trợ lý du lịch Phú Yên. Tôi có thể giúp bạn tìm hiểu về các địa điểm du lịch như Gành Đá Đĩa, Bãi Xép, Mũi Điện, hoặc tư vấn khi nào nên đi Phú Yên (thời điểm lý tưởng là từ tháng 2-8). Bạn cần tư vấn gì về chuyến du lịch Phú Yên?',1,'2025-05-19 06:23:27'),(19,0,'bạn hãy cho tôi danh sách địa điểm du lịch',0,'2025-05-19 06:24:20'),(20,0,'Xin chào! Tôi là trợ lý du lịch Phú Yên. Tôi có thể giúp bạn tìm hiểu về các địa điểm du lịch như Gành Đá Đĩa, Bãi Xép, Mũi Điện, hoặc tư vấn khi nào nên đi Phú Yên (thời điểm lý tưởng là từ tháng 2-8). Bạn cần tư vấn gì về chuyến du lịch Phú Yên?',1,'2025-05-19 06:24:20'),(21,0,'tôi cần bạn tư vấn lịch trình du lịch 3 ngày ở phú yên',0,'2025-05-19 06:25:28'),(22,0,'Xin chào! Tôi là trợ lý du lịch Phú Yên. Tôi có thể giúp bạn tìm hiểu về các địa điểm du lịch như Gành Đá Đĩa, Bãi Xép, Mũi Điện, hoặc tư vấn khi nào nên đi Phú Yên (thời điểm lý tưởng là từ tháng 2-8). Bạn cần tư vấn gì về chuyến du lịch Phú Yên?',1,'2025-05-19 06:25:28'),(23,0,'Nên đi Phú Yên vào thời gian nào?',0,'2025-05-19 06:29:15'),(24,0,'Xin chào! Tôi là trợ lý du lịch Phú Yên. Tôi có thể giúp bạn tìm hiểu về các địa điểm du lịch như Gành Đá Đĩa, Bãi Xép, Mũi Điện, hoặc tư vấn khi nào nên đi Phú Yên (thời điểm lý tưởng là từ tháng 2-8). Bạn cần tư vấn gì về chuyến du lịch Phú Yên?',1,'2025-05-19 06:29:15'),(25,0,'sd',0,'2025-05-19 06:29:19'),(26,0,'Xin chào! Tôi là trợ lý du lịch Phú Yên. Tôi có thể giúp bạn tìm hiểu về các địa điểm du lịch như Gành Đá Đĩa, Bãi Xép, Mũi Điện, hoặc tư vấn khi nào nên đi Phú Yên (thời điểm lý tưởng là từ tháng 2-8). Bạn cần tư vấn gì về chuyến du lịch Phú Yên?',1,'2025-05-19 06:29:19'),(27,0,'hi',0,'2025-05-19 06:29:52'),(28,0,'Xin chào! Tôi là trợ lý du lịch Phú Yên. Tôi có thể giúp bạn tìm hiểu về các địa điểm du lịch như Gành Đá Đĩa, Bãi Xép, Mũi Điện, hoặc tư vấn khi nào nên đi Phú Yên (thời điểm lý tưởng là từ tháng 2-8). Bạn cần tư vấn gì về chuyến du lịch Phú Yên?',1,'2025-05-19 06:29:54'),(29,0,'Thời tiết ở Gành Đá Đĩa hôm nay thế nào?',0,'2025-05-19 06:32:44'),(30,0,'Thời tiết ở Phú Yên thường rất đẹp từ tháng 2 đến tháng 8, với nhiệt độ từ 25-32°C. Đây là thời gian lý tưởng để tham quan các địa điểm ngoài trời. Mùa mưa thường bắt đầu từ tháng 9 đến tháng 1.',1,'2025-05-19 06:32:45'),(31,0,'hi',0,'2025-05-19 06:32:50'),(32,0,'Xin chào! Tôi là trợ lý du lịch Phú Yên. Tôi có thể giúp bạn tìm hiểu về các địa điểm du lịch như Gành Đá Đĩa, Bãi Xép, Mũi Điện, hoặc tư vấn khi nào nên đi Phú Yên (thời điểm lý tưởng là từ tháng 2-8). Bạn cần tư vấn gì về chuyến du lịch Phú Yên?',1,'2025-05-19 06:32:51'),(33,0,'tôi cần tư vấn cho lịch trình 3 ngày ở phú yên',0,'2025-05-19 06:33:21'),(34,0,'Xin chào! Tôi là trợ lý du lịch Phú Yên. Tôi có thể giúp bạn tìm hiểu về các địa điểm du lịch như Gành Đá Đĩa, Bãi Xép, Mũi Điện, hoặc tư vấn khi nào nên đi Phú Yên (thời điểm lý tưởng là từ tháng 2-8). Bạn cần tư vấn gì về chuyến du lịch Phú Yên?',1,'2025-05-19 06:33:22'),(35,0,'Thời tiết ở Gành Đá Đĩa hôm nay thế nào?',0,'2025-05-19 10:09:36'),(36,0,'Thời tiết ở Phú Yên thường rất đẹp từ tháng 2 đến tháng 8, với nhiệt độ từ 25-32°C. Đây là thời gian lý tưởng để tham quan các địa điểm ngoài trời. Mùa mưa thường bắt đầu từ tháng 9 đến tháng 1.',1,'2025-05-19 10:09:37'),(37,0,'hi',0,'2025-05-19 10:09:40'),(38,0,'Xin chào! Tôi là trợ lý du lịch Phú Yên. Tôi có thể giúp bạn tìm hiểu về các địa điểm du lịch như Gành Đá Đĩa, Bãi Xép, Mũi Điện, hoặc tư vấn khi nào nên đi Phú Yên (thời điểm lý tưởng là từ tháng 2-8). Bạn cần tư vấn gì về chuyến du lịch Phú Yên?',1,'2025-05-19 10:09:40'),(39,0,'Gành Đá Đĩa, Bãi Xép, Mũi Điện, ',0,'2025-05-19 10:09:55'),(40,0,'Gành Đá Đĩa (ID: 1) là một trong những địa điểm nổi tiếng nhất của Phú Yên. Đây là một thắng cảnh thiên nhiên độc đáo với những khối đá bazan hình lục giác xếp chồng lên nhau như những chồng đĩa khổng lồ. Địa điểm này nằm ở xã An Ninh Đông, huyện Tuy An, cách thành phố Tuy Hòa khoảng 30km.',1,'2025-05-19 10:09:56'),(41,0,'hãy cho tôi ý tưởng về một chuyến du lịch 2 ngày 2 đêm ',0,'2025-05-19 10:10:44'),(42,0,'Xin chào! Tôi là trợ lý du lịch Phú Yên. Tôi có thể giúp bạn tìm hiểu về các địa điểm du lịch như Gành Đá Đĩa, Bãi Xép, Mũi Điện, hoặc tư vấn khi nào nên đi Phú Yên (thời điểm lý tưởng là từ tháng 2-8). Bạn cần tư vấn gì về chuyến du lịch Phú Yên?',1,'2025-05-19 10:10:44'),(43,0,'Nên đi Phú Yên vào thời gian nào?',0,'2025-05-19 10:19:07'),(44,0,'Xin chào! Tôi là trợ lý du lịch Phú Yên. Tôi có thể giúp bạn tìm hiểu về các địa điểm du lịch như Gành Đá Đĩa, Bãi Xép, Mũi Điện, hoặc tư vấn khi nào nên đi Phú Yên (thời điểm lý tưởng là từ tháng 2-8). Bạn cần tư vấn gì về chuyến du lịch Phú Yên?',1,'2025-05-19 10:19:08'),(45,0,'bạn là ai',0,'2025-05-19 10:19:20'),(46,0,'Xin chào! Tôi là trợ lý du lịch Phú Yên. Tôi có thể giúp bạn tìm hiểu về các địa điểm du lịch như Gành Đá Đĩa, Bãi Xép, Mũi Điện, hoặc tư vấn khi nào nên đi Phú Yên (thời điểm lý tưởng là từ tháng 2-8). Bạn cần tư vấn gì về chuyến du lịch Phú Yên?',1,'2025-05-19 10:19:21'),(47,0,'hi',0,'2025-05-19 10:25:02'),(48,0,'Xin chào! Tôi là trợ lý du lịch Phú Yên. Tôi có thể giúp bạn tìm hiểu về các địa điểm du lịch như Gành Đá Đĩa, Bãi Xép, Mũi Điện, hoặc tư vấn khi nào nên đi Phú Yên (thời điểm lý tưởng là từ tháng 2-8). Bạn cần tư vấn gì về chuyến du lịch Phú Yên?',1,'2025-05-19 10:25:03'),(49,0,'hãy  cho tôi ý tưởng du lich trong 2 ngày',0,'2025-05-19 10:25:26'),(50,0,'Xin chào! Tôi là trợ lý du lịch Phú Yên. Tôi có thể giúp bạn tìm hiểu về các địa điểm du lịch như Gành Đá Đĩa, Bãi Xép, Mũi Điện, hoặc tư vấn khi nào nên đi Phú Yên (thời điểm lý tưởng là từ tháng 2-8). Bạn cần tư vấn gì về chuyến du lịch Phú Yên?',1,'2025-05-19 10:25:27'),(51,1,'Khi nào nên đi Phú Yên?',0,'2025-05-19 11:26:32'),(52,1,'Xin chào! Tôi là trợ lý du lịch Phú Yên. Tôi có thể giúp bạn tìm hiểu về các địa điểm du lịch, đề xuất lịch trình hoặc tư vấn thời điểm tốt nhất để đi Phú Yên.',1,'2025-05-19 11:26:32'),(53,1,'hi',0,'2025-05-19 11:26:39'),(54,1,'Xin chào! Tôi là trợ lý du lịch Phú Yên. Tôi có thể giúp bạn tìm hiểu về các địa điểm du lịch, đề xuất lịch trình hoặc tư vấn thời điểm tốt nhất để đi Phú Yên.',1,'2025-05-19 11:26:39'),(55,1,'hãy gợi ý giúp tôi nên đi du lịch ở phú yên vào thời điểm nào',0,'2025-05-19 11:28:06'),(56,1,'Xin chào! Tôi là trợ lý du lịch Phú Yên. Tôi có thể giúp bạn tìm hiểu về các địa điểm du lịch như Gành Đá Đĩa, Bãi Xép, Mũi Điện, hoặc tư vấn khi nào nên đi Phú Yên (thời điểm lý tưởng là từ tháng 2-8). Bạn cần tư vấn gì về chuyến du lịch Phú Yên?',1,'2025-05-19 11:28:06'),(57,1,'hi',0,'2025-05-19 11:38:02'),(58,1,'Xin chào! Tôi là trợ lý du lịch Phú Yên. Tôi có thể giúp bạn tìm hiểu về các địa điểm du lịch, đề xuất lịch trình hoặc tư vấn thời điểm tốt nhất để đi Phú Yên.',1,'2025-05-19 11:38:02'),(59,1,'hãy gợi ý cho tôi nên đến phú yên vào mùa nào và đến những đâu',0,'2025-05-19 11:38:52'),(60,1,'Thời điểm lý tưởng để du lịch Phú Yên là từ tháng 2 đến tháng 8 khi thời tiết khô ráo, ít mưa. Đặc biệt, tháng 4 đến tháng 6 là mùa đẹp nhất với nhiệt độ dễ chịu và ít du khách. Nếu bạn muốn ngắm hoa vàng trên cỏ xanh, hãy đến vào tháng 3.',1,'2025-05-19 11:38:52'),(61,1,'hãy liệt kê cho tôi 1 số địa điểm hấp dẫn',0,'2025-05-19 11:39:36'),(62,1,'Xin chào! Tôi là trợ lý du lịch Phú Yên. Tôi có thể giúp bạn tìm hiểu về các địa điểm du lịch như Gành Đá Đĩa, Bãi Xép, Mũi Điện, hoặc tư vấn khi nào nên đi Phú Yên (thời điểm lý tưởng là từ tháng 2-8). Bạn cần tư vấn gì về chuyến du lịch Phú Yên?',1,'2025-05-19 11:39:36'),(63,1,'cảm ơn',0,'2025-05-19 11:39:54'),(64,1,'Xin chào! Tôi là trợ lý du lịch Phú Yên. Tôi có thể giúp bạn tìm hiểu về các địa điểm du lịch như Gành Đá Đĩa, Bãi Xép, Mũi Điện, hoặc tư vấn khi nào nên đi Phú Yên (thời điểm lý tưởng là từ tháng 2-8). Bạn cần tư vấn gì về chuyến du lịch Phú Yên?',1,'2025-05-19 11:39:54'),(65,1,'hi',0,'2025-05-19 12:05:16'),(66,1,'Xin chào! Tôi là trợ lý du lịch Phú Yên. Tôi có thể giúp bạn tìm hiểu về các địa điểm du lịch, đề xuất lịch trình hoặc tư vấn thời điểm tốt nhất để đi Phú Yên.',1,'2025-05-19 12:05:16'),(67,1,'hi',0,'2025-05-19 12:52:11'),(68,1,'Xin chào! Tôi là trợ lý du lịch Phú Yên. Tôi có thể giúp bạn tìm hiểu về các địa điểm du lịch, đề xuất lịch trình hoặc tư vấn thời điểm tốt nhất để đi Phú Yên.',1,'2025-05-19 12:52:11'),(69,1,'hi',0,'2025-05-19 13:04:49'),(70,1,'Xin chào! Tôi là trợ lý du lịch Phú Yên. Tôi có thể giúp bạn tìm hiểu về các địa điểm du lịch, đề xuất lịch trình hoặc tư vấn thời điểm tốt nhất để đi Phú Yên.',1,'2025-05-19 13:04:49'),(71,1,'tạo lịch trình',0,'2025-05-19 13:12:44'),(72,1,'Xin chào! Tôi là trợ lý du lịch Phú Yên. Tôi có thể giúp bạn tìm hiểu về các địa điểm du lịch như Gành Đá Đĩa, Bãi Xép, Mũi Điện, hoặc tư vấn khi nào nên đi Phú Yên (thời điểm lý tưởng là từ tháng 2-8). Bạn cần tư vấn gì về chuyến du lịch Phú Yên?',1,'2025-05-19 13:12:44'),(73,1,'hiaz',0,'2025-05-19 13:17:03'),(74,1,'Xin chào! Tôi là trợ lý du lịch Phú Yên. Tôi có thể giúp bạn tìm hiểu về các địa điểm du lịch, đề xuất lịch trình hoặc tư vấn thời điểm tốt nhất để đi Phú Yên.',1,'2025-05-19 13:17:03'),(75,1,'hãy gợi ý lịch trình tham quan phú yên giúp tôi',0,'2025-05-19 13:37:27'),(76,1,'Xin chào! Tôi là trợ lý du lịch Phú Yên. Tôi có thể giúp bạn tìm hiểu về các địa điểm du lịch như Gành Đá Đĩa, Bãi Xép, Mũi Điện, hoặc tư vấn khi nào nên đi Phú Yên (thời điểm lý tưởng là từ tháng 2-8). Bạn cần tư vấn gì về chuyến du lịch Phú Yên?',1,'2025-05-19 13:37:27'),(77,1,'hãy cho tôi biết danh sách các địa điểm có trong trang web này',0,'2025-05-19 13:46:47'),(78,1,'Xin chào! Tôi là trợ lý du lịch Phú Yên. Tôi có thể giúp bạn tìm hiểu về các địa điểm du lịch như Gành Đá Đĩa, Bãi Xép, Mũi Điện, hoặc tư vấn khi nào nên đi Phú Yên (thời điểm lý tưởng là từ tháng 2-8). Bạn cần tư vấn gì về chuyến du lịch Phú Yên?',1,'2025-05-19 13:46:47'),(79,1,'hãy giới thiểu về website của bạn',0,'2025-05-19 13:51:57'),(80,1,'Xin chào! Tôi là trợ lý du lịch Phú Yên. Tôi có thể giúp bạn tìm hiểu về các địa điểm du lịch, đề xuất lịch trình hoặc tư vấn thời điểm tốt nhất để đi Phú Yên.',1,'2025-05-19 13:51:57'),(81,1,'Hãy giới thiệu về  website của bn',0,'2025-05-19 13:58:29'),(82,1,'Xin chào! Tôi là trợ lý du lịch Phú Yên. Tôi có thể giúp bạn tìm hiểu về các địa điểm du lịch, đề xuất lịch trình hoặc tư vấn thời điểm tốt nhất để đi Phú Yên.',1,'2025-05-19 13:58:29'),(83,1,'hãy giới thiệu về website của bạn',0,'2025-05-19 14:12:29'),(84,1,'Xin chào! Tôi là trợ lý du lịch Phú Yên. Tôi có thể giúp bạn tìm hiểu về các địa điểm du lịch, đề xuất lịch trình hoặc tư vấn thời điểm tốt nhất để đi Phú Yên.',1,'2025-05-19 14:12:30'),(85,1,'hãy cho biết thông tin về địa điểm tháp nghinh phong ở phú yên',0,'2025-05-19 15:06:47'),(86,1,'Xin chào! Tôi là trợ lý du lịch Phú Yên. Tôi có thể giúp bạn tìm hiểu về các địa điểm du lịch, đề xuất lịch trình hoặc tư vấn thời điểm tốt nhất để đi Phú Yên.',1,'2025-05-19 15:06:48'),(87,1,'hãy cho tôi biết vê f phú yên',0,'2025-05-19 15:09:33'),(88,1,'Xin chào! Tôi là trợ lý du lịch Phú Yên. Tôi có thể giúp bạn tìm hiểu về các địa điểm du lịch như Gành Đá Đĩa, Bãi Xép, Mũi Điện, hoặc tư vấn khi nào nên đi Phú Yên (thời điểm lý tưởng là từ tháng 2-8). Bạn cần tư vấn gì về chuyến du lịch Phú Yên?',1,'2025-05-19 15:09:33'),(89,0,'bạn là ai',0,'2025-05-19 15:13:02'),(90,0,'Chào bạn! Mình là trợ lý du lịch ảo chuyên về Phú Yên, được tạo bởi Phú Yên Travel. Mình ở đây để giúp bạn khám phá và lên kế hoạch cho chuyến đi tuyệt vời đến Phú Yên đó! ?\n',1,'2025-05-19 15:13:04'),(91,0,'hãy cho giới  thiệu về trang web cảu bạn',0,'2025-05-19 15:13:35'),(92,0,'Chào bạn! Rất vui được hỗ trợ bạn khám phá Phú Yên. Tôi là trợ lý du lịch ảo của Phú Yên Travel, được tạo ra để cung cấp thông tin hữu ích và giúp bạn lên kế hoạch cho chuyến đi đáng nhớ đến vùng đất xinh đẹp này. \n',1,'2025-05-19 15:13:36'),(93,0,'hãy cho tôi danh sách địa điểm có trong website  này',0,'2025-05-19 15:14:10'),(94,0,'Chào bạn! Dưới đây là danh sách các địa điểm nổi bật tại Phú Yên mà bạn có thể tham khảo:\n\n*   **Di tích:**\n    *   Tháp Nghinh Phong – Biểu Tượng Mới Của Phú Yên (ID: 1)\n    *   Gành Đá Đĩa – Kiệt Tác Thiên Nhiên Ở Phú Yên (ID: 2)\n    *   Vịnh Vũng Rô – Viên Ngọc Xanh Giữa Lòng Phú Yên (ID: 3)\n    *   Tháp Nhạn – Biểu Tượng Lịch Sử Của Người Chăm Pa (ID: 4)\n    *   Bãi Xép – Vẻ Đẹp Hoang Sơ Bên Dòng Biển Xanh (ID: 5)\n    *   Hòn Yến – Quần Thể San Hô Đẹp Nhất Phú Yên (ID: 6)\n    *   Nhà Thờ Mằng Lăng – Chứng Nhân Lịch Sử Của Phú Yên (ID: 7)\n\n*   **Bãi biển:**\n    *   Hòn Yến – Quần Thể San Hô Đẹp Nhất Phú Yên (ID: 13)\n    *   Bãi Xép – Vẻ Đẹp Hoang Sơ Bên Dòng Biển Xanh (ID: 14)\n\n*   **Văn hóa:**\n    *   Nhà Thờ Mằng Lăng – Chứng Nhân Lịch Sử Của Phú Yên (ID: 15)\n\nBạn muốn tìm hiểu thêm về địa điểm nào không?\n',1,'2025-05-19 15:14:12'),(95,2,'Thời tiết ở Phú Yên như thế nào?',0,'2025-05-19 15:15:44'),(96,2,'Chào bạn! Phú Yên có khí hậu nhiệt đới gió mùa. Mùa khô từ tháng 1 đến tháng 8 rất thích hợp cho du lịch biển. Mùa mưa từ tháng 9 đến tháng 12, đôi khi có bão. Thời điểm đẹp nhất để du lịch Phú Yên là từ tháng 2 đến tháng 8 bạn nhé!\n',1,'2025-05-19 15:15:45'),(97,2,'hãy giới thiệu về tỉnh phú yên',0,'2025-05-19 15:16:17'),(98,2,'Chào bạn! Phú Yên là một tỉnh ven biển xinh đẹp với nhiều danh lam thắng cảnh nổi tiếng như Tháp Nghinh Phong (ID: 1), Gành Đá Đĩa (ID: 2), Vịnh Vũng Rô (ID: 3), Bãi Xép (ID: 5) và Hòn Yến (ID: 6). Thời điểm đẹp nhất để du lịch Phú Yên là từ tháng 2 đến tháng 8, khi thời tiết khô ráo, thích hợp cho các hoạt động biển. Bạn có muốn mình gợi ý thêm về địa điểm tham quan hoặc tour du lịch không ạ?\n',1,'2025-05-19 15:16:19'),(99,2,'hãy lên kế khoạch 3 ngày  3 đêm giúp tôi',0,'2025-05-19 15:17:09'),(100,2,'Chào bạn! Với 3 ngày 3 đêm ở Phú Yên, mình gợi ý lịch trình sau nhé:\n\n**Ngày 1:**\n\n*   Buổi sáng: Đến Phú Yên, nhận phòng khách sạn và nghỉ ngơi.\n*   Buổi chiều: Tham quan Tháp Nghinh Phong (ID: 1) - biểu tượng mới của Phú Yên và Gành Đá Đĩa (ID: 2) - kiệt tác thiên nhiên độc đáo.\n*   Buổi tối: Thưởng thức hải sản tươi ngon tại các nhà hàng ven biển.\n\n**Ngày 2:**\n\n*   Buổi sáng: Khám phá Vịnh Vũng Rô (ID: 3) - viên ngọc xanh của Phú Yên.\n*   Buổi chiều: Viếng Tháp Nhạn (ID: 4) - biểu tượng lịch sử của người Chăm Pa.\n*   Buổi tối: Dạo phố Tuy Hòa và thưởng thức các món ăn đặc sản địa phương.\n\n**Ngày 3:**\n\n*   Buổi sáng: Đến Bãi Xép (ID: 5) - vẻ đẹp hoang sơ từng xuất hiện trong phim \"Tôi thấy hoa vàng trên cỏ xanh\". Hoặc nếu bạn thích lặn ngắm san hô, có thể đến Hòn Yến (ID: 6, 13).\n*   Buổi chiều: Tham quan Nhà thờ Mằng Lăng (ID: 7, 15) - chứng nhân lịch sử của Phú Yên.\n*   Buổi tối: Ăn tối và chuẩn bị hành lý cho chuyến đi ngày hôm sau.\n\n**Lưu ý:**\n\n*   Thời điểm đẹp nhất để du lịch Phú Yên là từ tháng 2 đến tháng 8.\n*   Đừng quên mang theo kem chống nắng khi đi biển nhé.\n*   Bạn có thể thuê xe máy để tự do khám phá Phú Yên.\n\nChúc bạn có một chuyến đi thật vui và ý nghĩa tại Phú Yên!',1,'2025-05-19 15:17:12'),(101,2,'hãy cho tôi biết về lich sử phú yên',0,'2025-05-19 15:21:47'),(102,2,'Chào bạn! Phú Yên là vùng đất giàu truyền thống lịch sử và văn hóa. Nơi đây từng là trung tâm của vương quốc Chăm Pa cổ với những dấu tích còn sót lại như Tháp Nhạn (ID: 4). Phú Yên cũng là một trong những địa điểm đầu tiên đón nhận Kitô giáo tại Việt Nam với Nhà thờ Mằng Lăng (ID: 7, 15) cổ kính. Vịnh Vũng Rô (ID: 3) cũng là một địa danh lịch sử gắn liền với những chiến công trong kháng chiến. Bạn có muốn tìm hiểu thêm về địa điểm cụ thể nào không ạ?\n',1,'2025-05-19 15:21:49'),(103,2,'giới thiệu về tháp nghinh phong ở phú yêb',0,'2025-05-19 15:22:21'),(104,2,'Chào bạn! Tháp Nghinh Phong (ID: 1) là một biểu tượng mới của Phú Yên, nơi bạn có thể khám phá công trình kiến trúc độc đáo hòa quyện giữa thiên nhiên và văn hóa. Đây là một điểm đến không thể bỏ qua khi đến Phú Yên đó ạ!\n',1,'2025-05-19 15:22:22'),(105,2,'hi',0,'2025-05-19 15:27:43'),(106,2,'Xin chào! Tôi là trợ lý du lịch Phú Yên. Tôi có thể giúp bạn tìm hiểu về các địa điểm du lịch, đề xuất lịch trình hoặc tư vấn thời điểm tốt nhất để đi Phú Yên.',1,'2025-05-19 15:27:44'),(107,2,'hãy cho tôi biết về lịch sử phú yên',0,'2025-05-19 15:28:13'),(108,2,'Xin chào! Tôi là trợ lý du lịch Phú Yên. Tôi có thể giúp bạn tìm hiểu về các địa điểm du lịch như Gành Đá Đĩa, Bãi Xép, Mũi Điện, hoặc tư vấn khi nào nên đi Phú Yên (thời điểm lý tưởng là từ tháng 2-8). Bạn cần tư vấn gì về chuyến du lịch Phú Yên?',1,'2025-05-19 15:28:14'),(109,2,'hãy cho tôi biết về lịch sử phú yên',0,'2025-05-19 15:28:36'),(110,2,'Xin chào! Tôi là trợ lý du lịch Phú Yên. Tôi có thể giúp bạn tìm hiểu về các địa điểm du lịch như Gành Đá Đĩa, Bãi Xép, Mũi Điện, hoặc tư vấn khi nào nên đi Phú Yên (thời điểm lý tưởng là từ tháng 2-8). Bạn cần tư vấn gì về chuyến du lịch Phú Yên?',1,'2025-05-19 15:28:37'),(111,2,'hãy cho tôi biết về lịch sử phú yên',0,'2025-05-19 15:29:03'),(112,2,'Xin chào! Tôi là trợ lý du lịch Phú Yên. Tôi có thể giúp bạn tìm hiểu về các địa điểm du lịch như Gành Đá Đĩa, Bãi Xép, Mũi Điện, hoặc tư vấn khi nào nên đi Phú Yên. Bạn cần tư vấn gì về chuyến du lịch Phú Yên?',1,'2025-05-19 15:29:08'),(113,2,'hãy gợi ý  cho tôi vài lịch trình hấp dẫn',0,'2025-05-19 15:30:00'),(114,2,'Chào bạn! Phú Yên có rất nhiều điểm đến hấp dẫn. Dưới đây là một gợi ý lịch trình bạn có thể tham khảo:\n\n*   **Ngày 1:**\n    *   Buổi sáng: Tham quan Tháp Nhạn (ID: 4) - biểu tượng lịch sử của người Chăm Pa.\n    *   Buổi chiều: Khám phá Bãi Xép (ID: 5) - bãi biển tuyệt đẹp từng xuất hiện trong phim \"Tôi thấy hoa vàng trên cỏ xanh\".\n*   **Ngày 2:**\n    *   Buổi sáng: Đến Gành Đá Đĩa (ID: 2) - kiệt tác thiên nhiên độc đáo.\n    *   Buổi chiều: Khám phá Nhà Thờ Mằng Lăng (ID: 7) - chứng nhân lịch sử với kiến trúc Gothic cổ kính.\n*   **Ngày 3:**\n    *   Tham quan Vịnh Vũng Rô (ID: 3) - viên ngọc xanh giữa lòng Phú Yên, nơi có phong cảnh hoang sơ và lịch sử hào hùng.\n\nBạn có thể tham khảo thêm tour \"Tháp Nghinh Phong | Gành Đá Đĩa | Vịnh Vũng Rô RÔ\" (Tour 1) để khám phá vẻ đẹp kỳ vĩ của Phú Yên trong 3 ngày 2 đêm nhé! Chúc bạn có một chuyến đi thật vui vẻ!\n',1,'2025-05-19 15:30:03'),(115,2,'hãy gợi ý hợp lý theo thời tiết tại địa điểm đó',0,'2025-05-19 15:30:56'),(116,2,'Chào bạn! Để chuyến đi Phú Yên của bạn thêm trọn vẹn, bạn có thể cho mình biết thời tiết hiện tại ở Phú Yên như thế nào không? Nếu trời đẹp, mình gợi ý bạn nên đến Gành Đá Đĩa (ID: 2) hoặc Bãi Xép (ID: 5, 14) để thỏa sức khám phá vẻ đẹp thiên nhiên. Còn nếu trời mưa, những địa điểm như Nhà Thờ Mằng Lăng (ID: 7, 15) hoặc Tháp Nhạn (ID: 4) sẽ là lựa chọn tuyệt vời đó!\n',1,'2025-05-19 15:30:57'),(117,2,'hãy cho tôi biết nhiệt độ hiện tại của tháp nhạn là bao nhiêu',0,'2025-05-19 15:31:52'),(118,2,'Chào bạn, rất tiếc là tôi không có thông tin về nhiệt độ hiện tại ở Tháp Nhạn. Tuy nhiên, tôi có thể cung cấp thông tin về địa điểm này. Tháp Nhạn (ID: 4) là một công trình kiến trúc Chăm Pa cổ kính nằm ngay tại trung tâm Tuy Hòa, rất thuận tiện để bạn ghé thăm. Nếu bạn muốn tìm hiểu về lịch sử và kiến trúc Chăm Pa, đây là một điểm đến không thể bỏ qua.\n',1,'2025-05-19 15:31:53'),(119,1,'hi',0,'2025-05-25 13:07:44'),(120,1,'Chào bạn! Mình là trợ lý du lịch ảo của Phú Yên Travel, rất vui được hỗ trợ bạn khám phá Phú Yên xinh đẹp. Bạn có kế hoạch gì cho chuyến đi sắp tới không? Mình có thể giúp gì cho bạn?\n',1,'2025-05-25 13:07:45'),(121,1,'hãy giới thiệu về một số địa điểm nỗi tiengs ở Phú Yên',0,'2025-05-25 13:11:16'),(122,1,'Chào bạn! Phú Yên có rất nhiều địa điểm nổi tiếng để khám phá. Mình xin gợi ý một vài địa điểm sau nhé:\n\n*   **Tháp Nghinh Phong (ID: 1):** Biểu tượng mới của Phú Yên với kiến trúc độc đáo.\n*   **Gành Đá Đĩa (ID: 2):** Kiệt tác thiên nhiên độc đáo với những khối đá hình lục giác.\n*   **Vịnh Vũng Rô (ID: 3):** Viên ngọc xanh với vẻ đẹp hoang sơ và lịch sử hào hùng.\n*   **Bãi Xép (ID: 5):** Bãi biển thơ mộng từng xuất hiện trong phim \"Tôi thấy hoa vàng trên cỏ xanh\".\n\nBạn có muốn mình gợi ý thêm địa điểm nào khác không? Hoặc bạn thích loại hình du lịch nào (văn hóa, biển,...) để mình tư vấn cụ thể hơn nhé!\n',1,'2025-05-25 13:11:19'),(123,1,'hi',0,'2025-10-08 17:22:26'),(124,1,'Xin chào! Tôi là trợ lý du lịch Phú Yên. Tôi có thể giúp bạn tìm hiểu về các địa điểm du lịch, đề xuất lịch trình hoặc tư vấn thời điểm tốt nhất để đi Phú Yên.',1,'2025-10-08 17:22:27'),(125,6,'hi',0,'2025-12-11 11:25:04'),(126,6,'Xin chào! Tôi là trợ lý du lịch Phú Yên. Tôi có thể giúp bạn tìm hiểu về các địa điểm du lịch, đề xuất lịch trình hoặc tư vấn thời điểm tốt nhất để đi Phú Yên.',1,'2025-12-11 11:25:04'),(127,6,'hãy cho tô thông tin vế tour ở phú yên',0,'2025-12-11 11:25:24'),(128,6,'Phú Yên Travel có nhiều tour du lịch đa dạng. Tour phổ biến nhất là tour 3 ngày 2 đêm khám phá các điểm đến nổi tiếng như Gành Đá Đĩa, Bãi Xép, Đầm Ô Loan, và Mũi Điện. Chúng tôi cũng có các tour ngắn ngày và tour theo yêu cầu.',1,'2025-12-11 11:25:24'),(129,6,'danh sách tour',0,'2025-12-11 11:25:35'),(130,6,'Phú Yên Travel có nhiều tour du lịch đa dạng. Tour phổ biến nhất là tour 3 ngày 2 đêm khám phá các điểm đến nổi tiếng như Gành Đá Đĩa, Bãi Xép, Đầm Ô Loan, và Mũi Điện. Chúng tôi cũng có các tour ngắn ngày và tour theo yêu cầu.',1,'2025-12-11 11:25:36'),(131,6,'hi',0,'2025-12-14 11:19:25'),(132,6,'Xin chào! Tôi là trợ lý du lịch Phú Yên. Tôi có thể giúp bạn tìm hiểu về các địa điểm du lịch, đề xuất lịch trình hoặc tư vấn thời điểm tốt nhất để đi Phú Yên.',1,'2025-12-14 11:19:26'),(133,6,'hi',0,'2025-12-14 11:21:19'),(134,6,'Xin chào! Tôi là trợ lý du lịch Phú Yên. Tôi có thể giúp bạn tìm hiểu về các địa điểm du lịch, đề xuất lịch trình hoặc tư vấn thời điểm tốt nhất để đi Phú Yên.',1,'2025-12-14 11:21:19'),(135,6,'Cho tôi danh sách tour',0,'2025-12-14 11:39:11'),(136,6,'Phú Yên Travel có nhiều tour du lịch đa dạng. Tour phổ biến nhất là tour 3 ngày 2 đêm khám phá các điểm đến nổi tiếng như Gành Đá Đĩa, Bãi Xép, Đầm Ô Loan, và Mũi Điện. Chúng tôi cũng có các tour ngắn ngày và tour theo yêu cầu.',1,'2025-12-14 11:39:11'),(137,6,'Cho tôi danh sách tour',0,'2025-12-14 11:43:14'),(138,6,'Phú Yên Travel có nhiều tour du lịch đa dạng. Tour phổ biến nhất là tour 3 ngày 2 đêm khám phá các điểm đến nổi tiếng như Gành Đá Đĩa, Bãi Xép, Đầm Ô Loan, và Mũi Điện. Chúng tôi cũng có các tour ngắn ngày và tour theo yêu cầu.',1,'2025-12-14 11:43:14'),(139,6,'Cho tôi danh sách tour',0,'2025-12-14 11:45:04'),(140,6,'Phú Yên Travel có nhiều tour du lịch đa dạng. Tour phổ biến nhất là tour 3 ngày 2 đêm khám phá các điểm đến nổi tiếng như Gành Đá Đĩa, Bãi Xép, Đầm Ô Loan, và Mũi Điện. Chúng tôi cũng có các tour ngắn ngày và tour theo yêu cầu.',1,'2025-12-14 11:45:05'),(141,6,'Cho tôi danh sách tour',0,'2025-12-14 11:46:20'),(142,6,'Phú Yên Travel có nhiều tour du lịch đa dạng. Tour phổ biến nhất là tour 3 ngày 2 đêm khám phá các điểm đến nổi tiếng như Gành Đá Đĩa, Bãi Xép, Đầm Ô Loan, và Mũi Điện. Chúng tôi cũng có các tour ngắn ngày và tour theo yêu cầu.',1,'2025-12-14 11:46:21'),(143,6,'hi',0,'2025-12-14 11:47:11'),(144,6,'Xin chào! Tôi là trợ lý du lịch Phú Yên. Tôi có thể giúp bạn tìm hiểu về các địa điểm du lịch, đề xuất lịch trình hoặc tư vấn thời điểm tốt nhất để đi Phú Yên.',1,'2025-12-14 11:47:11'),(145,6,'hãy cho tôi đanh sách địa điểm ',0,'2025-12-14 11:47:27'),(146,6,'Xin chào! Tôi là trợ lý du lịch Phú Yên. Tôi có thể giúp bạn tìm hiểu về các địa điểm du lịch như Gành Đá Đĩa, Bãi Xép, Mũi Điện, hoặc tư vấn khi nào nên đi Phú Yên (thời điểm lý tưởng là từ tháng 2-8). Bạn cần tư vấn gì về chuyến du lịch Phú Yên?',1,'2025-12-14 11:47:27'),(147,6,'hãy cho tôi đanh sách địa điểm',0,'2025-12-14 11:53:03'),(148,6,'Dưới đây là các địa điểm du lịch nổi tiếng ở Phú Yên:\n\n1. **Gành Đá Đĩa** - Kỳ quan thiên nhiên với những khối đá bazan hình lục giác độc đáo\n2. **Bãi Xép** - Bãi biển hoang sơ với cát trắng mịn, nơi quay phim \"Tôi thấy hoa vàng trên cỏ xanh\"\n3. **Mũi Điện** - Điểm cực Đông của đất liền Việt Nam, ngắm bình minh tuyệt đẹp\n4. **Đầm Ô Loan** - Đầm nước mặn rộng lớn, nổi tiếng với hải sản tươi ngon\n5. **Vịnh Vũng Rô** - Vịnh đẹp kỳ vĩ, từng là bến cảng bí mật thời chiến tranh\n6. **Hòn Yến** - Hòn đảo đẹp với hang yến tự nhiên\n7. **Bãi Môn** - Bãi biển hoang sơ với đá tảng độc đáo\n\nBạn muốn tìm hiểu chi tiết về địa điểm nào?',1,'2025-12-14 11:53:04'),(149,6,'hãy cho tôi đanh sách địa điểm',0,'2025-12-14 11:55:21'),(150,6,'Dưới đây là các địa điểm du lịch nổi tiếng ở Phú Yên:\n\n1. **Gành Đá Đĩa** (ID: 1) - Kỳ quan thiên nhiên với đá bazan hình lục giác\n2. **Bãi Xép** (ID: 2) - Bãi biển hoang sơ, nơi quay phim \"Tôi thấy hoa vàng trên cỏ xanh\"\n3. **Mũi Điện** (ID: 3) - Điểm cực Đông của đất liền Việt Nam\n4. **Đầm Ô Loan** (ID: 4) - Đầm nước mặn với hải sản tươi ngon\n5. **Vịnh Vũng Rô** (ID: 5) - Vịnh đẹp kỳ vĩ\n6. **Hòn Yến** (ID: 6) - Hòn đảo với hang yến tự nhiên\n7. **Bãi Môn** (ID: 7) - Bãi biển với đá tảng độc đáo\n\nBạn muốn tìm hiểu chi tiết về địa điểm nào?',1,'2025-12-14 11:55:22'),(151,6,'hãy cho tôi đanh sách địa điểm',0,'2025-12-14 11:56:52'),(152,6,'Dưới đây là các địa điểm du lịch nổi tiếng ở Phú Yên:\n\n1. **Gành Đá Đĩa** (ID: 1) - Kỳ quan thiên nhiên với đá bazan hình lục giác\n2. **Bãi Xép** (ID: 2) - Bãi biển hoang sơ, nơi quay phim \"Tôi thấy hoa vàng trên cỏ xanh\"\n3. **Mũi Điện** (ID: 3) - Điểm cực Đông của đất liền Việt Nam\n4. **Đầm Ô Loan** (ID: 4) - Đầm nước mặn với hải sản tươi ngon\n5. **Vịnh Vũng Rô** (ID: 5) - Vịnh đẹp kỳ vĩ\n6. **Hòn Yến** (ID: 6) - Hòn đảo với hang yến tự nhiên\n7. **Bãi Môn** (ID: 7) - Bãi biển với đá tảng độc đáo\n\nBạn muốn tìm hiểu chi tiết về địa điểm nào?',1,'2025-12-14 11:56:53'),(153,6,'hãy giới thiệu về phú yên',0,'2025-12-14 11:58:20'),(154,6,'Chào bạn! Phú Yên là một điểm đến tuyệt vời với vẻ đẹp hoang sơ, hùng vĩ của thiên nhiên và những giá trị văn hóa, lịch sử độc đáo.\n\nBạn có thể khám phá kỳ quan địa chất Gành Đá Đĩa (ID: 2), chiêm ngưỡng Tháp Nghinh Phong (ID: 1) – biểu tượng kiến trúc mới, hay tìm hiểu lịch sử tại Tháp Nhạn (ID: 4',1,'2025-12-14 11:58:23'),(155,6,'hãy cho tôi nhiều địa điểm hơn',0,'2025-12-14 11:59:06'),(156,6,'Chào bạn! Phú Yên có rất nhiều địa điểm đẹp đang chờ bạn khám phá đây:',1,'2025-12-14 11:59:09'),(157,6,'hãy cho tôi nhiều địa điểm hơn',0,'2025-12-14 12:00:45'),(158,6,'Xin chào! Tôi là trợ lý du lịch Phú Yên. Tôi có thể giúp bạn tìm hiểu về các địa điểm du lịch, đề xuất lịch trình hoặc tư vấn thời điểm tốt nhất để đi Phú Yên.',1,'2025-12-14 12:00:45'),(159,6,'hi',0,'2025-12-14 12:02:02'),(160,6,'Chào bạn! Mình là trợ lý du lịch Phú Yên đây. Rất vui được hỗ trợ bạn khám phá mảnh đất xinh đẹp này.\n\nPhú Yên có rất nhiều cảnh đẹp độc đáo như Gành Đá Đĩa (ID: 2), Tháp Nghinh Phong (ID: 1) hay Bãi Xép (ID: 5). Thời điểm lý tưởng nhất để ghé thăm là từ tháng 2 đến tháng 8, khi thời tiết khô ráo, rất thích hợp cho các hoạt động biển.\n\nBạn đang quan tâm đến điều gì? Muốn tìm hiểu về địa điểm cụ thể, tour du lịch hay cần thông tin gì khác không?',1,'2025-12-14 12:02:05'),(161,6,'hãy giới thiệu tour 3 ngày giúp tôi',0,'2025-12-14 12:03:39'),(162,6,'Chào bạn! Phú Yên có 2 tour 3 ngày rất hấp dẫn dành cho bạn',1,'2025-12-14 12:03:43'),(163,6,'hãy giới thiệu tour 3 ngày giúp tôi',0,'2025-12-14 12:09:06'),(164,6,'Chào bạn! Rất vui được giới thiệu đến bạn những hành trình khám phá Phú Yên tuyệt vời trong 3 ngày 3 đêm nhé! ✨\n\n',1,'2025-12-14 12:09:11'),(165,6,'danh sách tour',0,'2025-12-14 12:09:30'),(166,6,'Chào bạn! Rất vui được giới thiệu đến bạn những hành trình khám phá Phú Yên đầy hấp dẫn của Phú Yên Travel. Dưới đây là danh sách các tour hiện có, mỗi tour đều mang đến những trải nghiệm độc đáo riêng, chắc chắn sẽ làm kỳ nghỉ của bạn thêm phần đáng nhớ:\n\n*   **Tour 1: Tháp Nghinh Phong (ID: 1) | Gành Đá Đĩa (ID: 2) | Vịnh Vũng Rô (ID: 3)**\n    *   Thời gian: 3 ngày 3 đêm ?\n    *   Mô tả: Đây là một hành trình tuyệt vời để khám phá vẻ đẹp kỳ vĩ của Phú Yên. Bạn sẽ được chiêm ngưỡng Tháp Nghinh Phong – biểu tượng kiến trúc độc đáo, ghé thăm Gành Đá Đĩa – kiệt tác địa chất có một không hai, và tận hưởng không gian yên bình tại Vịnh Vũng Rô với vẻ đẹp hoang sơ. Tour này rất phù hợp cho những ai yêu thiên nhiên và muốn có một kỳ nghỉ thư giãn.\n\n*   **Tour 2: Gành Đá Đĩa (ID: 2) | Vịnh Vũng Rô (ID: 3) | Bãi Xép (ID: 5)**\n    *   Thời gian: 4 ngày 3 đêm ?️\n    *   Mô tả: Hành trình này sẽ đưa bạn khám phá trọn vẹn vẻ đẹp của Phú Yên với các điểm đến nổi tiếng như Gành Đá Đĩa kỳ vĩ, Vịnh Vũng Rô hoang sơ và Bãi Xép thơ mộng, nơi từng xuất hiện trong phim \"Hoa Vàng Trên Cỏ Xanh\". Đây là lựa chọn lý tưởng cho những ai muốn tận hưởng kỳ nghỉ dài hơn và khám phá nhiều cảnh đẹp biển đảo.\n\n*   **Tour 3: Vịnh Vũng Rô (ID: 3) | Tháp Nhạn (ID: 4) | Hòn Yến (ID: 6)**\n    *   Thời gian: 3 ngày 3 đêm ?\n    *   Mô tả: Tour này sẽ mang đến cho bạn trải nghiệm thiên nhiên và văn hóa đặc sắc của Phú Yên. Bạn sẽ được khám phá vẻ đẹp hoang sơ của Vịnh Vũng Rô, tìm hiểu lịch sử tại Tháp Nhạn cổ kính của người Chăm Pa và chiêm ngưỡng quần thể san hô tuyệt đẹp dưới làn nước trong xanh tại Hòn Yến.\n\n*   **Tour 4: Tháp Nhạn (ID: 4) | Nhà Thờ Mằng Lăng (ID: 7) | Tháp Nghinh Phong (ID: 1)**\n    *   Thời gian: 2 ngày 1 đêm ?️\n    *   Mô tả: Đây là hành trình ngắn nhưng đầy trải nghiệm với những địa điểm văn hóa - lịch sử nổi tiếng của Phú Yên. Bạn sẽ được gh',1,'2025-12-14 12:09:35'),(167,6,'danh sách tour',0,'2025-12-14 12:13:37'),(168,6,'Xin chào! Tôi là trợ lý du lịch Phú Yên. Tôi có thể giúp bạn tìm hiểu về các địa điểm du lịch như Gành Đá Đĩa, Bãi Xép, Mũi Điện, hoặc tư vấn khi nào nên đi Phú Yên. Bạn cần tư vấn gì về chuyến du lịch Phú Yên?',1,'2025-12-14 12:13:42'),(169,6,'danh sách tour',0,'2025-12-14 12:21:30'),(170,6,'Chào bạn! Rất vui được hỗ trợ bạn khám phá những tour du lịch tuyệt vời tại Phú Yên ?. Dưới đây là danh sách các',1,'2025-12-14 12:21:36'),(171,6,'danh sách tour',0,'2025-12-14 12:26:35'),(172,6,'Dưới đây là danh sách các tour du lịch Phú Yên:\n\n**Tour 3 ngày:**\n- Tour ID: 1 - Tháp Nghinh Phong | Gành Đá Đĩa | Vịnh Vũng Rô (3 ngày 3 đêm)\n- Tour ID: 3 - Vịnh Vũng Rô | Tháp Nhạn | Hòn Yến (3 ngày 3 đêm)\n\n**Tour 4 ngày:**\n- Tour ID: 2 - Gành Đá Đĩa | Vịnh Vũng Rô | Bãi Xép (4 ngày 3 đêm)\n\n**Tour ngắn ngày:**\n- Tour ID: 4 - Tháp Nhạn | Nhà Thờ Mằng Lăng | Tháp Nghinh Phong (2 ngày 1 đêm)\n- Tour ID: 8 - Gành Đá Đĩa – Kiệt Tác Thiên Nhiên | Tháp Nhạn (1 ngày)\n\nBạn muốn tìm hiểu chi tiết về tour nào?',1,'2025-12-14 12:26:41'),(173,6,'chào bạn',0,'2025-12-14 12:30:03'),(174,6,'Chào bạn! Rất vui được hỗ trợ bạn khám phá vẻ đẹp của Phú Yên ?️! Đây là một điểm đến tuyệt vời với những cảnh quan thiên nhiên hùng vĩ, bãi biển hoang sơ và các di tích lịch sử độc đáo, chắc chắn sẽ mang lại cho bạn những trải nghiệm khó quên.\n\nThời gian lý tưởng nhất để bạn ghé thăm Phú Yên là từ tháng 2 đến tháng 8 hàng năm, khi thời tiết khô ráo, nắng đẹp, rất thích hợp cho các hoạt động tham quan, khám phá và tắm biển ?.\n\nBạn có thể bắt đầu hành trình với địa điểm ID: 1 - Tháp Nghinh Phong – Biểu Tượng Mới Của Phú Yên, một công trình kiến trúc độc đáo mang tính biểu tượng của thành phố. Sau đó, đừng quên ghé thăm địa điểm ID: 2 - Gành Đá Đĩa – Kiệt Tác Thiên Nhiên Ở Phú Yên, nơi bạn sẽ ngỡ ngàng trước những cột đá bazan hình lục giác xếp chồng lên nhau kỳ vĩ. Nếu bạn yêu thích lịch sử, địa điểm ID: 4 - Tháp Nhạn – Biểu Tượng Lịch Sử Của Người Chăm Pa cũng là một',1,'2025-12-14 12:30:16'),(175,6,'hãy cho tôi danh sách các địa điểm và tour ở phú yên',0,'2025-12-14 12:31:26'),(176,6,'? Dưới đây là danh sách các tour du lịch Phú Yên của chúng tôi:\n\n**? Tour 3 ngày 3 đêm:**\n- Tour ID: 1 - Tháp Nghinh Phong | Gành Đá Đĩa | Vịnh Vũng Rô\n  Khám phá 3 điểm đến nổi tiếng nhất Phú Yên\n  \n- Tour ID: 3 - Vịnh Vũng Rô | Tháp Nhạn | Hòn Yến\n  Trải nghiệm văn hóa Chăm Pa và biển đảo tuyệt đẹp\n\n**?️ Tour 4 ngày 3 đêm:**\n- Tour ID: 2 - Gành Đá Đĩa | Vịnh Vũng Rô | Bãi Xép\n  Tour dài ngày với nhiều trải nghiệm biển đảo\n\n**⚡ Tour ngắn ngày:**\n- Tour ID: 4 - Tháp Nhạn | Nhà Thờ Mằng Lăng | Tháp Nghinh Phong (2N1Đ)\n  Khám phá nhanh các di tích lịch sử\n  \n- Tour ID: 8 - Gành Đá Đĩa | Tháp Nhạn (1 ngày)\n  Tour trong ngày cho người bận rộn\n\nBạn muốn tìm hiểu chi tiết về tour nào? ?',1,'2025-12-14 12:31:48'),(177,6,'hãy đề xuất giúp tôi các địa điểm dụ lịch nỗi tiếng ở đây',0,'2025-12-14 12:34:29'),(178,6,'Chào bạn, tôi là trợ lý du lịch ảo từ Phú Yên Travel, rất vui được hỗ trợ bạn khám phá mảnh đất \"hoa vàng trên cỏ xanh',1,'2025-12-14 12:34:34'),(179,6,'hi',0,'2025-12-14 13:28:23'),(180,6,'Xin chào! ? Tôi là trợ lý du lịch Phú Yên của Phú Yên Travel. Tôi có thể giúp bạn:\n\n✅ Tìm hiểu về các địa điểm du lịch đẹp\n✅ Gợi ý các tour phù hợp\n✅ Tư vấn thời điểm lý tưởng để đi\n✅ Thông tin về thời tiết và lưu ý khi du lịch\n\nBạn muốn biết thông tin gì về Phú Yên? ?',1,'2025-12-14 13:28:23'),(181,6,'hãy giới thiệu các địa điểm ở phú uyên',0,'2025-12-14 13:29:05'),(182,6,'Xin chào! ? Tôi là trợ lý du lịch Phú Yên của Phú Yên Travel. Tôi có thể giúp bạn:\n\n✅ Tìm hiểu về các địa điểm du lịch đẹp\n✅ Gợi ý các tour phù hợp\n✅ Tư vấn thời điểm lý tưởng để đi\n✅ Thông tin về thời tiết và lưu ý khi du lịch\n\nBạn muốn biết thông tin gì về Phú Yên? ?',1,'2025-12-14 13:29:05'),(183,6,'chào bạn',0,'2025-12-15 03:36:14'),(184,6,'Xin chào! Tôi là trợ lý du lịch Phú Yên. Tôi có thể giúp bạn tìm hiểu về các địa điểm du lịch, đề xuất lịch trình hoặc tư vấn thời điểm tốt nhất để đi Phú Yên.',1,'2025-12-15 03:36:14'),(185,6,'chào bạn',0,'2025-12-15 03:46:44'),(186,6,'Xin chào! Tôi là trợ lý du lịch Phú Yên. Tôi có thể giúp bạn tìm hiểu về các địa điểm du lịch, đề xuất lịch trình hoặc tư vấn thời điểm tốt nhất để đi Phú Yên.',1,'2025-12-15 03:46:44'),(187,6,'chào bn',0,'2025-12-15 03:49:28'),(188,6,'Xin chào! Tôi là trợ lý du lịch Phú Yên. Tôi có thể giúp bạn tìm hiểu về các địa điểm du lịch, đề xuất lịch trình hoặc tư vấn thời điểm tốt nhất để đi Phú Yên.',1,'2025-12-15 03:49:28'),(189,6,'chào bạn',0,'2025-12-15 03:52:34'),(190,6,'Chào bạn! Mình là trợ lý du lịch ảo từ Phú Yên Travel, rất vui được hỗ trợ bạn khám phá Phú Yên. Bạn cần mình giúp gì nào? ?',1,'2025-12-15 03:52:36'),(191,6,'hãy cho mình danh sách các địa điểm nỗi tiếng',0,'2025-12-15 03:53:18'),(192,6,'Chào bạn, mình là trợ lý du lịch ảo của Phú Yên Travel đây! Dưới đây là danh sách các địa điểm nổi tiếng ở Phú Yên mà bạn có thể tham khảo nhé:\n\n*   **Tháp Nghinh Phong** (ID: 1): Biểu tượng mới của Phú Yên, công trình kiến trúc độc đáo hòa quyện giữa thiên nhiên và văn hóa.\n*   **Gành Đá Đĩa** (ID: 2): Kiệt tác thiên nhiên độc nhất Việt Nam, một kỳ quan địa chất bên bờ biển.\n*   **Vịnh Vũng Rô** (ID: 3): Viên ngọc xanh với vẻ đẹp hoang sơ và lịch sử hào hùng.\n*   **Tháp Nhạn** (ID: 4): Biểu tượng lịch sử của người Chăm Pa cổ kính giữa lòng Tuy Hòa.\n*   **Bãi Xép** (ID: 5): Bãi biển thơ mộng từng xuất hiện trong phim “Hoa Vàng Trên Cỏ Xanh”.\n*   **Hòn Yến** (ID: 6): Quần thể san hô đẹp nhất Phú Yên, vẻ đẹp ẩn mình dưới làn nước trong xanh.\n*   **Nhà Thờ Mằng Lăng** (ID: 7): Di tích lịch sử với kiến trúc Gothic độc đáo, một chứng nhân của Phú Yên.\n\nHy vọng bạn sẽ có một chuyến đi thật vui vẻ!',1,'2025-12-15 03:53:21'),(193,6,'danh sách tour',0,'2025-12-15 03:55:08'),(194,6,'Phú Yên Travel có nhiều tour du lịch đa dạng. Tour phổ biến nhất là tour 3 ngày 2 đêm khám phá các điểm đến nổi tiếng như Gành Đá Đĩa, Bãi Xép, Đầm Ô Loan, và Mũi Điện. Chúng tôi cũng có các tour ngắn ngày và tour theo yêu cầu.',1,'2025-12-15 03:55:08'),(195,6,'chào bạn',0,'2025-12-15 03:55:49'),(196,6,'Chào bạn, tôi là trợ lý du lịch ảo của Phú Yên Travel. Rất vui được hỗ trợ bạn khám phá mảnh đất \"hoa vàng trên cỏ xanh\" này. Bạn đang muốn tìm hiểu về điều gì ở Phú Yên?',1,'2025-12-15 03:55:52'),(197,6,'giới thiệu về phú yên',0,'2025-12-15 03:58:21'),(198,6,'Chào bạn, mình là trợ lý du lịch ảo chuyên về Phú Yên của Phú Yên Travel đây!\n\nPhú Yên là một điểm đến tuyệt vời với vẻ đẹp hoang sơ, hùng vĩ của thiên nhiên kết hợp cùng những di tích lịch sử và văn hóa độc đáo. Đến với Phú Yên, bạn sẽ có cơ hội khám phá những bãi biển xanh trong, những ghềnh đá kỳ vĩ, cùng những công trình kiến trúc cổ kính.\n\nThời điểm lý tưởng nhất để bạn ghé thăm Phú Yên là từ **tháng 2 đến tháng 8**, khi thời tiết khô ráo, nắng đẹp rất thích hợp cho các hoạt động tham quan biển và ngoại cảnh đó!\n\nBạn muốn mình giới thiệu cụ thể về địa điểm hay tour nào không?',1,'2025-12-15 03:58:24'),(199,6,'hãy cho tôi danh sách các địa điểm',0,'2025-12-15 03:59:02'),(200,6,'Chào bạn, Phú Yên Travel rất vui được hỗ trợ bạn! Dưới đây là danh sách các địa điểm nổi bật tại Phú Yên mà bạn có thể khám phá:\n\n1.  **Tháp Nghinh Phong** (ID: 1): Biểu tượng mới của Phú Yên với kiến trúc độc đáo.\n2.  **Gành Đá Đĩa** (ID: 2): Kỳ quan địa chất độc nhất Việt Nam.\n3.  **Vịnh Vũng Rô** (ID: 3): Vẻ đẹp hoang sơ và lịch sử hào hùng.\n4.  **Tháp Nhạn** (ID: 4): Biểu tượng lịch sử của người Chăm Pa.\n5.  **Bãi Xép** (ID: 5): Bãi biển thơ mộng từng xuất hiện trong phim \"Hoa Vàng Trên Cỏ Xanh\".\n6.  **Hòn Yến** (ID: 6): Quần thể san hô đẹp nhất Phú Yên.\n7.  **Nhà Thờ Mằng Lăng** (ID: 7): Nhà thờ cổ kính với kiến trúc Gothic độc đáo.\n\nChúc bạn có những trải nghiệm tuyệt vời tại Phú Yên nhé!',1,'2025-12-15 03:59:10'),(201,6,'hi',0,'2025-12-15 04:21:10'),(202,6,'Chào bạn! Mình là trợ lý du lịch ảo chuyên về Phú Yên, được tạo bởi Phú Yên Travel. Rất vui được hỗ trợ bạn. Bạn đang muốn tìm hiểu điều gì về Phú Yên ạ?',1,'2025-12-15 04:21:12'),(203,6,'chào bạn',0,'2025-12-15 04:33:45'),(204,6,'Xin chào! Tôi là trợ lý du lịch Phú Yên. Tôi có thể giúp bạn tìm hiểu về các địa điểm du lịch, đề xuất lịch trình hoặc tư vấn thời điểm tốt nhất để đi Phú Yên.',1,'2025-12-15 04:33:46'),(205,6,'g',0,'2025-12-15 04:35:02'),(206,6,'Chào bạn! Mình là trợ lý du lịch ảo của Phú Yên Travel. Bạn muốn tìm hiểu thông tin gì về Phú Yên ạ?',1,'2025-12-15 04:35:06'),(207,6,'cho tôi danh sách địa điểm',0,'2025-12-15 04:35:25'),(208,6,'Xin chào! Tôi là trợ lý du lịch Phú Yên. Tôi có thể giúp bạn tìm hiểu về các địa điểm du lịch như Gành Đá Đĩa, Bãi Xép, Mũi Điện, hoặc tư vấn khi nào nên đi Phú Yên (thời điểm lý tưởng là từ tháng 2-8). Bạn cần tư vấn gì về chuyến du lịch Phú Yên?',1,'2025-12-15 04:35:26'),(209,0,'cho tôi danh sách các địa điểm',0,'2025-12-15 04:49:58'),(210,6,'Xin chào! Tôi là trợ lý du lịch Phú Yên. Tôi có thể giúp bạn tìm hiểu về các địa điểm du lịch như Gành Đá Đĩa, Bãi Xép, Mũi Điện, hoặc tư vấn khi nào nên đi Phú Yên (thời điểm lý tưởng là từ tháng 2-8). Bạn cần tư vấn gì về chuyến du lịch Phú Yên?',1,'2025-12-15 04:49:59'),(211,6,'cho danh sách các địa điểm',0,'2025-12-15 04:52:27'),(212,6,'Xin chào! Tôi là trợ lý du lịch Phú Yên. Tôi có thể giúp bạn tìm hiểu về các địa điểm du lịch như Gành Đá Đĩa, Bãi Xép, Mũi Điện, hoặc tư vấn khi nào nên đi Phú Yên (thời điểm lý tưởng là từ tháng 2-8). Bạn cần tư vấn gì về chuyến du lịch Phú Yên?',1,'2025-12-15 04:52:27'),(213,6,'cho danh sách các địa điểm',0,'2025-12-15 04:53:39'),(214,6,'Xin chào! Tôi là trợ lý du lịch Phú Yên. Tôi có thể giúp bạn tìm hiểu về các địa điểm du lịch như Gành Đá Đĩa, Bãi Xép, Mũi Điện, hoặc tư vấn khi nào nên đi Phú Yên (thời điểm lý tưởng là từ tháng 2-8). Bạn cần tư vấn gì về chuyến du lịch Phú Yên?',1,'2025-12-15 04:53:40'),(215,6,'hi',0,'2025-12-15 04:54:29'),(216,6,'Chào bạn, tôi là trợ lý du lịch ảo của Phú Yên Travel đây. Bạn cần tôi hỗ trợ gì về chuyến đi sắp tới của mình tại Phú Yên không ạ?',1,'2025-12-15 04:54:31'),(217,6,'hãy cho tôi danh sách địa điểm',0,'2025-12-15 04:55:02'),(218,6,'Chào bạn, rất vui được hỗ trợ bạn khám phá Phú Yên! Dưới đây là danh sách các địa điểm du lịch nổi bật tại Phú Yên:\n\n*   **Tháp Nghinh Phong** – Biểu Tượng Mới Của Phú Yên (ID: 1): Văn hóa.\n*   **Gành Đá Đĩa** – Kiệt Tác Thiên Nhiên Ở Phú Yên (ID: 2): Di tích.\n*   **Vịnh Vũng Rô** – Viên Ngọc Xanh Giữa Lòng Phú Yên (ID: 3): Di tích.\n*   **Tháp Nhạn** – Biểu Tượng Lịch Sử Của Người Chăm Pa (ID: 4): Di tích.\n*   **Bãi Xép** – Vẻ Đẹp Hoang Sơ Bên Dòng Biển Xanh (ID: 5): Di tích.\n*   **Hòn Yến** – Quần Thể San Hô Đẹp Nhất Phú Yên (ID: 6): Di tích.\n*   **Nhà Thờ Mằng Lăng** – Chứng Nhân Lịch Sử Của Phú Yên (ID: 7): Di tích lịch sử.\n\nHy vọng bạn sẽ có một chuyến đi tuyệt vời đến Phú Yên!',1,'2025-12-15 04:55:05'),(219,6,'cho danh sánh các tour',0,'2025-12-15 04:55:58'),(220,6,'Chào bạn, tôi là trợ lý du lịch ảo của Phú Yên Travel đây ạ! Phú Yên có nhiều tour hấp dẫn để bạn khám phá, dưới đây là danh sách các tour hiện có:\n\n*   **Tour 8:** Gành Đá Đĩa – Kiệt Tác Thiên Nhiên Ở Phú Yên (ID: 2) | Tháp Nhạn – Biểu Tượng Lịch Sử Của Người Chăm Pa (ID: 4) (2 ngày 1 đêm)\n*   **Tour 1:** Tháp Nghinh Phong (ID: 1) | Gành Đá Đĩa (ID: 2) | Vịnh Vũng Rô (ID: 3) (3 ngày 3 đêm)\n*   **Tour 2:** Gành Đá Đĩa (ID: 2) | Vịnh Vũng Rô (ID: 3) | Bãi Xếp (ID: 5) (4 ngày 3 đêm)\n*   **Tour 3:** Vịnh Vũng Rô (ID: 3) | Tháp Nhạn (ID: 4) | Hòn Yến (ID: 6) (3 ngày 3 đêm)\n*   **Tour 4:** Tháp Nhạn (ID: 4) | Nhà Thờ Mằng Lăng (ID: 7) | Tháp Nghinh Phong (ID: 1) (2 ngày 1 đêm)\n\nBạn có muốn biết thêm chi tiết về tour nào không ạ?',1,'2025-12-15 04:56:00'),(221,6,'thời tiết hôm nay ở phú yên như nào',0,'2025-12-15 05:09:28'),(222,6,'Chào bạn, tôi là trợ lý du lịch ảo của Phú Yên Travel đây ạ!\n\nPhú Yên có khí hậu nhiệt đới gió mùa, mùa khô từ tháng 1 đến tháng 8 rất thích hợp cho du lịch biển. Mùa mưa thường từ tháng 9 đến tháng 12.\n\nĐể biết chính xác thời tiết hôm nay như thế nào, bạn vui lòng theo dõi dự báo thời tiết nhé. Nếu trời đẹp, tôi gợi ý bạn nên ghé thăm **Gành Đá Đĩa (ID: 2)** hoặc **Bãi Xép (ID: 5)** để chiêm ngưỡng vẻ đẹp thiên nhiên tuyệt vời ạ!',1,'2025-12-15 05:09:30'),(223,6,'cho danh sách các địa điểm',0,'2025-12-15 05:40:13'),(224,6,'Chào bạn, rất vui được hỗ trợ bạn khám phá Phú Yên! Dưới đây là danh sách các địa điểm du lịch nổi bật tại Phú Yên:\n\n*   **Tháp Nghinh Phong** (ID: 1): Công trình kiến trúc độc đáo hòa quyện giữa thiên nhiên và văn hóa.\n*   **Gành Đá Đĩa** (ID: 2): Kỳ quan địa chất độc nhất Việt Nam với những khối đá hình lục giác xếp chồng lên nhau.\n*   **Vịnh Vũng Rô** (ID: 3): Viên ngọc xanh với vẻ đẹp hoang sơ và lịch sử hào hùng.\n*   **Tháp Nhạn** (ID: 4): Biểu tượng lịch sử của người Chăm Pa, nằm giữa lòng Tuy Hòa.\n*   **Bãi Xép** (ID: 5): Bãi biển thơ mộng từng xuất hiện trong phim \"Hoa Vàng Trên Cỏ Xanh\".\n*   **Hòn Yến** (ID: 6): Quần thể san hô tuyệt đẹp dưới làn nước trong xanh.\n*   **Nhà Thờ Mằng Lăng** (ID: 7): Nhà thờ cổ kính với kiến trúc Gothic độc đáo, là chứng nhân lịch sử của Phú Yên.\n\nNếu bạn muốn tìm hiểu thêm về các tour du lịch kết hợp những địa điểm này hoặc có câu hỏi nào khác, đừng ngần ngại hỏi nhé!',1,'2025-12-15 05:40:16'),(225,6,'cho danh sách tour',0,'2025-12-15 05:56:36'),(226,6,'Chào bạn, rất vui được hỗ trợ bạn khám phá Phú Yên! Dưới đây là danh sách các tour du lịch Phú Yên hiện có:\n\n*   **Tour 8:** Gành Đá Đĩa – Kiệt Tác Thiên Nhiên Ở Phú Yên (ID: 2) | Tháp Nhạn – Biểu Tượng Lịch Sử Của Người Chăm Pa (ID: 4) (2 ngày 1 đêm)\n*   **Tour 1:** Tháp Nghinh Phong (ID: 1) | Gành Đá Đĩa (ID: 2) | Vịnh Vũng Rô (ID: 3) (3 ngày 3 đêm)\n*   **Tour 2:** Gành Đá Đĩa (ID: 2) | Vịnh Vũng Rô (ID: 3) | Bãi Xép (ID: 5) (4 ngày 3 đêm)\n*   **Tour 3:** Vịnh Vũng Rô (ID: 3) | Tháp Nhạn (ID: 4) | Hòn Yến (ID: 6) (3 ngày 3 đêm)\n*   **Tour 4:** Tháp Nhạn (ID: 4) | Nhà Thờ Mằng Lăng (ID: 7) | Tháp Nghinh Phong (ID: 1) (2 ngày 1 đêm)\n\nBạn quan tâm đến tour nào hoặc muốn tìm hiểu thêm thông tin về địa điểm nào không ạ?',1,'2025-12-15 05:56:38');
/*!40000 ALTER TABLE `chat_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat_with_admin`
--

DROP TABLE IF EXISTS `chat_with_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chat_with_admin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sender_id` int NOT NULL,
  `receiver_id` int NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `image_url` json DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat_with_admin`
--

LOCK TABLES `chat_with_admin` WRITE;
/*!40000 ALTER TABLE `chat_with_admin` DISABLE KEYS */;
INSERT INTO `chat_with_admin` VALUES (1,6,1,'hi',1,NULL,0,'2025-10-12 12:41:54'),(2,6,1,'hihi',1,NULL,0,'2025-10-12 12:42:14'),(3,6,1,'ss',1,'[\"/uploads/chat_admin_images/1760272954357_scaled_34.jpg\", \"/uploads/chat_admin_images/1760272954511_scaled_35.jpg\"]',0,'2025-10-12 12:42:34'),(4,1,6,'sd',1,NULL,0,'2025-10-12 12:43:53'),(5,6,1,'ds',1,NULL,0,'2025-10-12 12:48:20'),(6,1,6,'thành công',1,NULL,0,'2025-10-12 12:48:49'),(7,6,1,'sd',1,NULL,0,'2025-10-12 12:58:19'),(8,6,1,'dds',1,'[\"/uploads/chat_admin_images/1760273921140_scaled_35.jpg\"]',0,'2025-10-12 12:58:41'),(9,1,6,'á',1,NULL,0,'2025-10-12 12:59:09'),(10,1,6,'hello',1,NULL,0,'2025-10-12 15:36:23'),(11,1,6,'2',1,NULL,0,'2025-10-12 15:36:41'),(12,1,6,'mời dô',1,NULL,0,'2025-10-12 16:10:06'),(13,1,6,'dc',1,NULL,0,'2025-10-12 16:10:20'),(14,6,1,'dep khong',1,'[\"/uploads/chat_admin_images/1760285714314_scaled_35.jpg\"]',0,'2025-10-12 16:15:14'),(15,1,6,'s',1,NULL,0,'2025-10-12 16:27:38'),(16,1,6,'s',1,NULL,0,'2025-10-12 16:28:29'),(17,1,6,'ád',1,NULL,0,'2025-10-12 16:28:40'),(18,1,6,'ád',1,NULL,0,'2025-10-12 16:36:06'),(19,1,6,'ád',1,NULL,0,'2025-10-12 16:46:13'),(20,6,1,'oke oke',1,'[\"/uploads/chat_admin_images/1760288225108_scaled_34.jpg\", \"/uploads/chat_admin_images/1760288225412_scaled_35.jpg\"]',0,'2025-10-12 16:57:05'),(21,1,6,'ád',1,'[\"/uploads/chat_admin_images/1760288253141_Screenshot 2024-12-29 174915.png\"]',0,'2025-10-12 16:57:33'),(22,1,6,'',1,'[\"/uploads/chat_admin_images/1760288301965_Screenshot 2025-02-11 174003.png\"]',0,'2025-10-12 16:58:21'),(23,1,6,'nâng ly',1,'[\"/uploads/chat_admin_images/1760289185814_Screenshot 2025-10-12 204942.png\", \"/uploads/chat_admin_images/1760289185814_Screenshot 2025-10-12 203048.png\"]',0,'2025-10-12 17:13:05'),(24,6,1,'sd',1,NULL,0,'2025-10-13 04:22:39'),(25,1,6,'as',0,NULL,0,'2025-10-13 04:37:45'),(26,6,1,'user sen admin',1,NULL,0,'2025-10-13 04:40:08'),(27,6,1,'user',1,'[\"/uploads/chat_admin_images/1760330447347_Screenshot 2024-12-21 212850.png\", \"/uploads/chat_admin_images/1760330447347_Screenshot 2024-12-29 180132.png\"]',0,'2025-10-13 04:40:47'),(28,1,6,'ádasd',0,'[\"/uploads/chat_admin_images/1760341158182_Screenshot 2024-12-29 174915.png\", \"/uploads/chat_admin_images/1760341158182_Screenshot 2025-02-11 175244.png\"]',0,'2025-10-13 07:39:18'),(29,1,6,'oke',0,NULL,0,'2025-10-13 07:52:25'),(30,1,6,'ádsadasd',0,NULL,0,'2025-10-13 07:57:55'),(31,1,6,'ád',0,NULL,0,'2025-10-13 08:01:07'),(32,1,6,'ádasd',0,'[\"/uploads/chat_admin_images/1760342520661_Screenshot 2024-12-21 212850.png\", \"/uploads/chat_admin_images/1760342520661_Screenshot 2024-12-29 174915.png\"]',0,'2025-10-13 08:02:00'),(33,1,6,'ádas',0,NULL,0,'2025-10-13 08:02:58'),(34,6,1,'tran hung chao admin',1,NULL,0,'2025-10-13 08:13:12'),(35,1,6,'hi',0,NULL,0,'2025-10-13 08:13:46'),(36,1,6,'sda',0,NULL,0,'2025-10-13 08:25:17'),(37,1,6,'okee rồi',0,NULL,0,'2025-10-13 08:25:30'),(38,1,6,'ádasd',0,'[\"/uploads/chat_admin_images/1760344355423_Screenshot 2024-12-29 174915.png\", \"/uploads/chat_admin_images/1760344355423_Screenshot 2024-12-29 180132.png\"]',0,'2025-10-13 08:32:35'),(39,1,6,'',0,'[\"/uploads/chat_admin_images/1760344830990_Screenshot 2025-10-12 204942.png\"]',0,'2025-10-13 08:40:30'),(40,1,6,'ád',0,NULL,0,'2025-10-13 08:42:51'),(41,1,6,'hi',0,NULL,0,'2025-10-27 04:23:34'),(42,1,6,'Bạn cần mình tư ván gì ạ',0,NULL,0,'2025-10-27 04:33:35'),(43,1,6,'Xin chào',0,NULL,0,'2025-10-27 04:49:16'),(44,6,1,'chao ban',1,NULL,0,'2025-10-27 05:17:45'),(45,1,6,'Bạn cần mình tư vấn gì ạ',0,NULL,0,'2025-10-27 05:18:08'),(46,6,1,'Minh can ho tro lay lai mk',1,NULL,0,'2025-10-27 05:19:17'),(47,1,6,'vui long cung cap email cua ban',0,NULL,0,'2025-10-27 05:20:07'),(48,6,1,'Tin nhắn đã được thu hồi',1,NULL,1,'2025-10-27 05:22:06'),(49,1,6,'cảm ơn bạn, hệ thống đang xử lý',0,NULL,0,'2025-10-27 05:22:51'),(50,14,1,'Xin chào, tôi muốn được hỗ trợ về tài khoản',1,NULL,0,'2025-10-27 12:10:19'),(51,1,14,'Chào bạn, bạn cần hỗ trợ đăng ký tài khoản hay quên mật khẩu ạ',0,NULL,0,'2025-10-27 12:12:43'),(52,1,14,'hi',0,NULL,0,'2025-10-27 12:19:58'),(53,6,1,'hi',1,NULL,0,'2025-10-29 06:47:34'),(54,1,6,'hi',0,NULL,0,'2025-10-29 06:48:30'),(55,1,6,'2',0,NULL,0,'2025-12-11 11:32:15'),(56,1,6,'chào bn',0,NULL,0,'2025-12-14 11:17:59'),(57,1,6,'Xin chào',0,NULL,0,'2025-12-14 15:21:12');
/*!40000 ALTER TABLE `chat_with_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_messages`
--

DROP TABLE IF EXISTS `contact_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_messages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` enum('pending','replied') DEFAULT 'pending',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_messages`
--

LOCK TABLES `contact_messages` WRITE;
/*!40000 ALTER TABLE `contact_messages` DISABLE KEYS */;
INSERT INTO `contact_messages` VALUES (1,'minh hoc','minhhoc0605@gmail.com','áds','ssadsdads','2025-05-15 17:54:07','pending'),(2,'Lê Minh Học','minhhoc0605@gmail.com','shi','sd','2025-06-06 15:05:38','pending'),(3,'Lê Minh Học','minhhoc0901@gmail.com','test vaildate','test vaildate','2025-12-01 03:06:04','pending');
/*!40000 ALTER TABLE `contact_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `credit_transactions`
--

DROP TABLE IF EXISTS `credit_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `credit_transactions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `transaction_type` enum('refund','payment','bonus','withdrawal') NOT NULL,
  `amount` decimal(12,2) NOT NULL,
  `balance_after` decimal(12,2) NOT NULL,
  `related_id` int DEFAULT NULL COMMENT 'ID của refund/booking',
  `description` varchar(500) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `credit_transactions_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `credit_transactions`
--

LOCK TABLES `credit_transactions` WRITE;
/*!40000 ALTER TABLE `credit_transactions` DISABLE KEYS */;
INSERT INTO `credit_transactions` VALUES (1,6,'refund',1350000.00,1350000.00,1,'Hoàn tiền từ booking #65','2025-12-01 02:56:33'),(2,6,'withdrawal',-100000.00,1350000.00,1,'Yêu cầu rút tiền #1','2025-12-01 03:12:24'),(3,6,'withdrawal',-150000.00,1350000.00,2,'Yêu cầu rút tiền #2','2025-12-01 04:11:18'),(4,6,'withdrawal',-500000.00,750000.00,3,'Yêu cầu rút tiền #3','2025-12-01 19:05:23'),(5,6,'withdrawal',-50000.00,700000.00,4,'Yêu cầu rút tiền #4','2025-12-01 19:13:37'),(6,6,'refund',50000.00,750000.00,4,'Hoàn tiền từ yêu cầu rút tiền #4 bị từ chối','2025-12-01 19:14:09'),(7,6,'refund',2400000.00,3150000.00,4,'Hoàn tiền từ booking #71','2025-12-02 09:11:45'),(8,6,'refund',2100000.00,5250000.00,5,'Hoàn tiền từ hủy booking #72','2025-12-02 16:53:15'),(9,6,'payment',-3000000.00,2250000.00,73,'Thanh toán booking #73','2025-12-02 18:13:22'),(10,6,'payment',-1900000.00,350000.00,74,'Thanh toán booking #74','2025-12-02 18:15:15'),(11,6,'withdrawal',-50000.00,300000.00,5,'Yêu cầu rút tiền #5','2025-12-03 04:25:52'),(12,6,'withdrawal',-50000.00,200000.00,6,'Yêu cầu rút tiền #6','2025-12-03 04:48:48'),(13,6,'withdrawal',-50000.00,100000.00,7,'Yêu cầu rút tiền #7','2025-12-03 04:54:26'),(14,6,'refund',50000.00,150000.00,7,'Hoàn tiền từ yêu cầu rút tiền #7 bị từ chối','2025-12-03 04:55:31'),(15,6,'withdrawal',-50000.00,100000.00,8,'Yêu cầu rút tiền #8','2025-12-03 06:18:59'),(16,6,'refund',150000.00,250000.00,2,'Hoàn tiền từ yêu cầu rút tiền #2 bị từ chối','2025-12-03 06:20:16'),(17,6,'refund',2160000.00,2410000.00,9,'Hoàn tiền từ hủy booking #78','2025-12-05 07:13:40'),(18,6,'withdrawal',-500000.00,1910000.00,9,'Yêu cầu rút tiền #9','2026-02-05 17:19:38');
/*!40000 ALTER TABLE `credit_transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cuisines`
--

DROP TABLE IF EXISTS `cuisines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cuisines` (
  `id` int NOT NULL AUTO_INCREMENT,
  `location_id` int NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `location_id` (`location_id`),
  CONSTRAINT `cuisines_ibfk_1` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=142 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuisines`
--

LOCK TABLES `cuisines` WRITE;
/*!40000 ALTER TABLE `cuisines` DISABLE KEYS */;
INSERT INTO `cuisines` VALUES (7,3,'Tôm hùm Vũng Rô: Tươi ngon, chế biến hấp hoặc nướng bơ tỏi.'),(8,3,'Mực nướng: Tươi, cay nồng, thơm lừng.'),(9,3,'Mắt cá ngừ đại dương: Hấp hành gừng, bổ dưỡng.'),(10,4,'Bánh canh hẹ: Món ăn đặc trưng của Tuy Hòa, gần khu vực Tháp Nhạn.'),(11,4,'Bánh bèo chén: Nhỏ xinh, topping đa dạng, giá rẻ.'),(12,4,'Mắt cá ngừ đại dương: Hấp hành gừng, bổ dưỡng.'),(13,5,'Bánh canh hẹ: Món ăn đặc trưng của Phú Yên, dễ tìm gần Bãi Xép.'),(14,5,'Mực nướng: Hải sản tươi sống, nướng tại chỗ, rất thơm ngon.'),(15,5,'Cá thu nướng: Tươi ngon, thịt ngọt, ăn kèm rau sống.'),(16,6,'Mực nướng: Hải sản tươi sống, nướng tại chỗ, rất thơm ngon.'),(17,6,'Cá thu nướng: Tươi ngon, thịt ngọt, ăn kèm rau sống.'),(18,6,'Sò huyết đầm Ô Loan: Tươi ngọt, chế biến hấp sả ớt.'),(31,7,'Bánh canh hẹ: Món ăn đặc trưng của Phú Yên, dễ tìm gần khu vực nhà thờ.'),(32,7,'Bánh bèo chén: Nhỏ xinh, topping đa dạng, giá rẻ.'),(33,7,'Sò huyết đầm Ô Loan: Tươi ngọt, chế biến hấp sả ớt.'),(91,2,'Bánh canh hẹ: Nước dùng ngọt thanh, sợi bánh mềm.'),(92,2,'Sò huyết đầm Ô Loan: Tươi ngọt, hấp sả ớt hoặc nướng mọi.'),(93,2,'Cá ngừ đại dương: Gỏi, lẩu, hoặc mắt cá chưng cách thủy.'),(130,1,'ádasd'),(134,1,'sadsdasd'),(135,1,'ádsadsad');
/*!40000 ALTER TABLE `cuisines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `experiences`
--

DROP TABLE IF EXISTS `experiences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `experiences` (
  `id` int NOT NULL AUTO_INCREMENT,
  `location_id` int NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `location_id` (`location_id`),
  CONSTRAINT `experiences_ibfk_1` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=142 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `experiences`
--

LOCK TABLES `experiences` WRITE;
/*!40000 ALTER TABLE `experiences` DISABLE KEYS */;
INSERT INTO `experiences` VALUES (7,3,'Chèo thuyền kayak: Khám phá vịnh và những bãi đá hoang sơ, tận hưởng cảm giác yên bình giữa thiên nhiên.'),(8,3,'Lặn ngắm san hô: Vịnh Vũng Rô có nhiều rạn san hô đẹp, nước trong, rất lý tưởng để lặn biển.'),(9,3,'Tham quan bè tôm hùm: Tìm hiểu cách nuôi tôm hùm của ngư dân và thưởng thức tôm hùm tươi ngon ngay tại chỗ.'),(10,4,'Ngắm toàn cảnh Tuy Hòa: Từ đỉnh núi Nhạn, bạn có thể nhìn thấy sông Đà Rằng và thành phố từ trên cao.'),(11,4,'Khám phá kiến trúc Chăm Pa: Chiêm ngưỡng các họa tiết chạm khắc tinh xảo trên tháp.'),(12,4,'Tham gia lễ hội: Nếu đến vào tháng Giêng âm lịch, bạn sẽ được trải nghiệm không khí lễ hội Tháp Nhạn sôi động.'),(13,5,'Chụp ảnh trên đồi cỏ: Cánh đồng cỏ xanh mướt trên đồi cao là nơi lý tưởng để chụp ảnh sống ảo.'),(14,5,'Tắm biển và thư giãn: Biển tại Bãi Xép sạch và yên tĩnh, rất thích hợp để bơi lội.'),(15,5,'Khám phá ghềnh đá: Đi dạo trên các ghềnh đá Gành Ông và Gành Bà, ngắm cảnh biển từ nhiều góc độ.'),(16,6,'Lặn ngắm san hô: Hòn Yến có những rạn san hô đẹp, nước trong, rất lý tưởng để lặn nông.'),(17,6,'Đi bộ trên con đường giữa biển: Khi thủy triều rút, bạn có thể đi bộ từ bờ ra đảo trên con đường cát trắng.'),(18,6,'Chụp ảnh sống ảo: Hòn Yến với làn nước trong xanh và rạn san hô là nơi lý tưởng để có những bức ảnh đẹp.'),(31,7,'Chiêm ngưỡng kiến trúc Gothic: Khám phá các chi tiết hoa văn và không gian bên trong nhà thờ.'),(32,7,'Tìm hiểu lịch sử chữ Quốc ngữ: Xem bản sao cuốn “Phép Giảng Tám Ngày” và nghe kể về lịch sử nhà thờ.'),(33,7,'Chụp ảnh check-in: Nhà thờ với kiến trúc cổ kính và khung cảnh đồng lúa xung quanh là nơi lý tưởng để chụp ảnh.'),(91,2,'Khám phá kỳ quan: Đi chân trần trên những phiến đá mát lạnh, cảm nhận sóng biển vỗ vào.'),(92,2,'Chụp ảnh “sống ảo”: Từ góc cận cảnh đá bazan đến toàn cảnh biển trời, đây là thiên đường cho những bức ảnh ấn tượng, đặc biệt vào bình minh hay hoàng hôn.'),(93,2,'Ngồi trên các tảng đá bằng phẳng, thả hồn vào tiếng sóng rì rào và làn gió mặn mà từ đại dương, tận hưởng không gian yên bình.'),(129,1,'Tham quan ban đêm: Xem trình diễn ánh sáng và khám phá không gian lung linh của tháp.'),(130,1,'Nghe “bản nhạc gió”: Đứng giữa khe gió để cảm nhận âm thanh độc đáo từ thiên nhiên.'),(131,1,'Check-in sống ảo: Mọi góc chụp từ xa đến gần đều mang lại những bức ảnh ấn tượng, đặc biệt với trang phục sáng màu như trắng, xanh.');
/*!40000 ALTER TABLE `experiences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotels`
--

DROP TABLE IF EXISTS `hotels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hotels` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT 'Tên khách sạn',
  `address` text COMMENT 'Địa chỉ khách sạn',
  `latitude` decimal(10,8) DEFAULT NULL COMMENT 'Vĩ độ',
  `longitude` decimal(11,8) DEFAULT NULL COMMENT 'Kinh độ',
  `phone` varchar(20) DEFAULT NULL COMMENT 'Số điện thoại',
  `email` varchar(255) DEFAULT NULL COMMENT 'Email liên hệ',
  `website` varchar(255) DEFAULT NULL COMMENT 'Website',
  `rating` decimal(3,2) DEFAULT NULL COMMENT 'Đánh giá (0-5)',
  `price_range` varchar(100) DEFAULT NULL COMMENT 'Khoảng giá',
  `description` text COMMENT 'Mô tả chi tiết',
  `image` varchar(500) DEFAULT NULL COMMENT 'Đường dẫn ảnh',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Ngày tạo',
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Ngày cập nhật',
  PRIMARY KEY (`id`),
  KEY `idx_name` (`name`),
  KEY `idx_rating` (`rating`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotels`
--

LOCK TABLES `hotels` WRITE;
/*!40000 ALTER TABLE `hotels` DISABLE KEYS */;
INSERT INTO `hotels` VALUES (1,'Stelia Beach Resort','Lô C1 Độc Lập, Phường 9, Tuy Hòa, Phú Yên',13.10283300,109.32145600,'02573666678','info@steliabeachresort.com','https://steliabeachresort.com',5.00,'3.500.000 - 10.000.000 VND','Khu nghỉ dưỡng sang trọng phong cách Địa Trung Hải nằm ngay sát biển Tuy Hòa.','https://res.cloudinary.com/dapsnr3xi/image/upload/v1774865349/travel_phuyen/hotels/l8fkaxzv2ya6zktrylk3.png','2025-12-18 08:50:22','2026-03-30 12:14:56'),(2,'Sala Tuy Hoa Beach Hotel','51 Độc Lập, Phường 7, Tuy Hòa, Phú Yên',13.09754400,109.31987600,'02573686666','info@salatuyhoabeach.com','http://salatuyhoabeach.com',4.50,'1.200.000 - 2.500.000 VND','Khách sạn hiện đại với view biển tuyệt đẹp và hồ bơi ngoài trời.','https://example.com/images/sala.jpg','2025-12-18 08:50:22','2025-12-18 08:50:22'),(3,'Rosa Alba Resort & Villas','88 Lê Duẩn, Phường 9, Tuy Hòa, Phú Yên',13.10543200,109.31876500,'02572222222','res@rosaalbaresort.com','https://rosaalbaresort.com',4.70,'2.800.000 - 15.000.000 VND','Resort cao cấp có đường hầm thông ra biển và hệ thống villa hiện đại.','https://example.com/images/rosaalba.jpg','2025-12-18 08:50:22','2025-12-18 08:50:22'),(4,'CenDeluxe Hotel','02 Hải Dương, Tuy Hòa, Phú Yên',13.09123400,109.30567800,'02573818818','info@cendeluxehotel.com','http://cendeluxehotel.com',4.30,'1.000.000 - 3.000.000 VND','Khách sạn 5 sao đầu tiên tại Phú Yên với tầm nhìn bao quát toàn thành phố.','https://res.cloudinary.com/dapsnr3xi/image/upload/v1774872869/travel_phuyen/hotels/kvhutqggrruzreuy38vd.jpg','2025-12-18 08:50:22','2026-03-30 12:14:30'),(5,'Zannier Hotels Bãi San Hô','Hòa Thạnh, Xuân Cảnh, Sông Cầu, Phú Yên',13.45678900,109.23456700,'02573830000','reservations@baisanho.com','https://www.zannierhotels.com/baisanho',4.90,'15.000.000 - 40.000.000 VND','Khu nghỉ dưỡng siêu sang ẩn mình trong vịnh biệt lập tại Sông Cầu.','https://example.com/images/baisanho.jpg','2025-12-18 08:50:22','2025-12-18 08:50:22'),(6,'Khách sạn Sài Gòn Phú Yên','541 Trần Hưng Đạo, Tuy Hòa, Phú Yên',13.08765400,109.30123400,'02573822999','info@saigonphuyenhotel.vn','http://saigonphuyenhotel.vn',4.00,'800.000 - 1.500.000 VND','Khách sạn nằm ở trung tâm thành phố, thuận tiện đi lại và mua sắm.','https://example.com/images/saigonphuyen.jpg','2025-12-18 08:50:22','2025-12-18 08:50:22'),(7,'VietStar Resort & Spa','Núi Thơm, An Phú, Tuy Hòa, Phú Yên',13.14567800,109.28901200,'02573789999','info@vietstarresort.com','http://vietstarresort.com',4.20,'1.500.000 - 4.500.000 VND','Resort nằm trên đồi cao, không gian xanh mát và yên tĩnh.','https://example.com/images/vietstar.jpg','2025-12-18 08:50:22','2025-12-18 08:50:22'),(8,'Kool House Homestay','B7 Khu dân cư Rạch Bầu Hạ, Tuy Hòa, Phú Yên',13.10123400,109.31012300,'0905123456','koolhousepy@gmail.com','',4.40,'300.000 - 600.000 VND','Nhà nghỉ dạng homestay trẻ trung, phù hợp cho khách du lịch bụi.','https://example.com/images/koolhouse.jpg','2025-12-18 08:50:22','2025-12-18 08:50:22'),(9,'Hùng Vương Hotel','239 Hùng Vương, Phường 5, Tuy Hòa, Phú Yên',13.09345600,109.31234500,'02573811234','hungvuonghotel@gmail.com',NULL,3.80,'400.000 - 800.000 VND','Khách sạn bình dân nằm trên trục đường lớn nhất thành phố.','https://res.cloudinary.com/dapsnr3xi/image/upload/v1774872885/travel_phuyen/hotels/vi5bwz3jvfajatta0tsz.png','2025-12-18 08:50:22','2026-03-30 12:14:45'),(10,'Nhà nghỉ PHD','241 Lê Lợi, Phường 5, Tuy Hòa, Phú Yên',13.08901200,109.30789000,'02573822122','','',3.50,'200.000 - 400.000 VND','Nhà nghỉ sạch sẽ, giá cả phải chăng cho khách lưu trú ngắn ngày.','https://example.com/images/phd.jpg','2025-12-18 08:50:22','2025-12-18 08:50:22');
/*!40000 ALTER TABLE `hotels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location_comments`
--

DROP TABLE IF EXISTS `location_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `location_comments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `location_id` int NOT NULL,
  `user_id` int NOT NULL,
  `parent_id` int DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_location_id` (`location_id`),
  KEY `idx_user_id` (`user_id`),
  KEY `parent_id` (`parent_id`),
  CONSTRAINT `location_comments_ibfk_1` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`) ON DELETE CASCADE,
  CONSTRAINT `location_comments_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `location_comments_ibfk_3` FOREIGN KEY (`parent_id`) REFERENCES `location_comments` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location_comments`
--

LOCK TABLES `location_comments` WRITE;
/*!40000 ALTER TABLE `location_comments` DISABLE KEYS */;
INSERT INTO `location_comments` VALUES (1,1,1,NULL,'Thật tuyệt','2026-01-24 07:47:42','2026-01-24 07:47:42');
/*!40000 ALTER TABLE `location_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location_images`
--

DROP TABLE IF EXISTS `location_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `location_images` (
  `id` int NOT NULL AUTO_INCREMENT,
  `location_id` int NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `image_type` enum('default','introduction','architecture','experience','cuisine') NOT NULL,
  `reference_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_location_type` (`location_id`,`image_type`),
  CONSTRAINT `location_images_ibfk_1` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=238 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location_images`
--

LOCK TABLES `location_images` WRITE;
/*!40000 ALTER TABLE `location_images` DISABLE KEYS */;
INSERT INTO `location_images` VALUES (1,1,'/uploads/locations/1/1-def.jpg','default',NULL,'2025-05-15 03:05:46'),(2,1,'https://res.cloudinary.com/dapsnr3xi/image/upload/v1774865350/travel_phuyen/locations/wra6ofydblxtvfb8zhjt.jpg','introduction',NULL,'2025-05-15 03:05:46'),(4,1,'https://res.cloudinary.com/dapsnr3xi/image/upload/v1774865352/travel_phuyen/locations/wu41taz652tjrjdugst7.png','experience',1,'2025-05-15 03:05:46'),(5,1,'https://res.cloudinary.com/dapsnr3xi/image/upload/v1774865353/travel_phuyen/locations/xlcdbhoymxurogsv3mwx.png','experience',2,'2025-05-15 03:05:46'),(6,1,'https://res.cloudinary.com/dapsnr3xi/image/upload/v1774865354/travel_phuyen/locations/asohfi8xvdulltaykeng.png','experience',3,'2025-05-15 03:05:46'),(7,1,'https://res.cloudinary.com/dapsnr3xi/image/upload/v1774865355/travel_phuyen/locations/zgcqbkyyw42dkqkadkmv.png','cuisine',1,'2025-05-15 03:05:46'),(8,1,'https://res.cloudinary.com/dapsnr3xi/image/upload/v1774865356/travel_phuyen/locations/iqnghrvrd7kvhblnq9sg.webp','cuisine',2,'2025-05-15 03:05:46'),(9,1,'https://res.cloudinary.com/dapsnr3xi/image/upload/v1774865357/travel_phuyen/locations/ocusvintktvrvcilhdp4.png','cuisine',3,'2025-05-15 03:05:46'),(10,2,'/uploads/locations/2/2-def.jpg','default',NULL,'2025-05-15 03:05:46'),(11,2,'https://res.cloudinary.com/dapsnr3xi/image/upload/v1774865359/travel_phuyen/locations/kv98xk4uk25qd1mizbhg.jpg','introduction',NULL,'2025-05-15 03:05:46'),(12,2,'https://res.cloudinary.com/dapsnr3xi/image/upload/v1774865360/travel_phuyen/locations/p3t3ebcipflzh6u1zxi1.jpg','architecture',NULL,'2025-05-15 03:05:46'),(13,2,'https://res.cloudinary.com/dapsnr3xi/image/upload/v1774865361/travel_phuyen/locations/yidx806kopvydliv9g8r.jpg','experience',4,'2025-05-15 03:05:46'),(14,2,'https://res.cloudinary.com/dapsnr3xi/image/upload/v1774865362/travel_phuyen/locations/m1srtgchqkpjuzam14vb.jpg','experience',5,'2025-05-15 03:05:46'),(15,2,'https://res.cloudinary.com/dapsnr3xi/image/upload/v1774865363/travel_phuyen/locations/u6fzoprba0oblp9s3kju.jpg','experience',6,'2025-05-15 03:05:46'),(16,2,'https://res.cloudinary.com/dapsnr3xi/image/upload/v1774865364/travel_phuyen/locations/yqotib3hd8nnccnmlc93.jpg','cuisine',4,'2025-05-15 03:05:46'),(17,2,'https://res.cloudinary.com/dapsnr3xi/image/upload/v1774865365/travel_phuyen/locations/jsqmtqd5xkmzr6wkcag7.jpg','cuisine',5,'2025-05-15 03:05:46'),(18,2,'https://res.cloudinary.com/dapsnr3xi/image/upload/v1774865366/travel_phuyen/locations/kgjzym5tv3hrraupqqzl.jpg','cuisine',6,'2025-05-15 03:05:46'),(19,3,'/uploads/locations/3/3-def.jpg','default',NULL,'2025-05-15 03:05:46'),(20,3,'https://res.cloudinary.com/dapsnr3xi/image/upload/v1774865366/travel_phuyen/locations/ydmmxsvihoihalcd1xh8.jpg','introduction',NULL,'2025-05-15 03:05:46'),(21,3,'https://res.cloudinary.com/dapsnr3xi/image/upload/v1774865367/travel_phuyen/locations/jknfc38w3wzxeuemgkhc.jpg','architecture',NULL,'2025-05-15 03:05:46'),(22,3,'https://res.cloudinary.com/dapsnr3xi/image/upload/v1774865368/travel_phuyen/locations/oo4b8fsysauxdyga2ipy.jpg','experience',7,'2025-05-15 03:05:46'),(23,3,'https://res.cloudinary.com/dapsnr3xi/image/upload/v1774865369/travel_phuyen/locations/lthjbb4wgfse8avemzw1.jpg','experience',8,'2025-05-15 03:05:46'),(24,3,'https://res.cloudinary.com/dapsnr3xi/image/upload/v1774865370/travel_phuyen/locations/rfyppts50gvnroui0jym.jpg','experience',9,'2025-05-15 03:05:46'),(25,3,'https://res.cloudinary.com/dapsnr3xi/image/upload/v1774865371/travel_phuyen/locations/fizcewxaiznorhm2v9wd.webp','cuisine',7,'2025-05-15 03:05:46'),(26,3,'https://res.cloudinary.com/dapsnr3xi/image/upload/v1774865372/travel_phuyen/locations/griavnpltqqvl3cxxwny.webp','cuisine',8,'2025-05-15 03:05:46'),(27,3,'https://res.cloudinary.com/dapsnr3xi/image/upload/v1774865373/travel_phuyen/locations/g8av5xdtvcyt2mmiwtix.jpg','cuisine',9,'2025-05-15 03:05:46'),(28,4,'/uploads/locations/4/4-def.jpg','default',NULL,'2025-05-15 03:05:46'),(29,4,'https://res.cloudinary.com/dapsnr3xi/image/upload/v1774865375/travel_phuyen/locations/lhisas8pzln0e9pah6kg.jpg','introduction',NULL,'2025-05-15 03:05:46'),(30,4,'https://res.cloudinary.com/dapsnr3xi/image/upload/v1774865376/travel_phuyen/locations/mxcp4cteilxk9kmvafuo.jpg','architecture',NULL,'2025-05-15 03:05:46'),(31,4,'https://res.cloudinary.com/dapsnr3xi/image/upload/v1774865377/travel_phuyen/locations/ivlrkajcjp7kqdah5auu.jpg','experience',10,'2025-05-15 03:05:46'),(32,4,'https://res.cloudinary.com/dapsnr3xi/image/upload/v1774865378/travel_phuyen/locations/szedqwkbcaddiwpztbsy.jpg','experience',11,'2025-05-15 03:05:46'),(33,4,'https://res.cloudinary.com/dapsnr3xi/image/upload/v1774865379/travel_phuyen/locations/kuanlont9vca5c5eygib.jpg','experience',12,'2025-05-15 03:05:46'),(34,4,'https://res.cloudinary.com/dapsnr3xi/image/upload/v1774865381/travel_phuyen/locations/dxyotrdginiv1aowlle3.jpg','cuisine',10,'2025-05-15 03:05:46'),(35,4,'https://res.cloudinary.com/dapsnr3xi/image/upload/v1774865381/travel_phuyen/locations/wuotyqe9n8ogea42wpim.jpg','cuisine',11,'2025-05-15 03:05:46'),(36,4,'https://res.cloudinary.com/dapsnr3xi/image/upload/v1774865382/travel_phuyen/locations/jvw4xjxb2paus4ld6pws.jpg','cuisine',12,'2025-05-15 03:05:46'),(37,5,'/uploads/locations/5/5-def.jpg','default',NULL,'2025-05-15 03:05:46'),(38,5,'https://res.cloudinary.com/dapsnr3xi/image/upload/v1774865383/travel_phuyen/locations/tmczelrm9atbgznojlfo.webp','introduction',NULL,'2025-05-15 03:05:46'),(39,5,'https://res.cloudinary.com/dapsnr3xi/image/upload/v1774865385/travel_phuyen/locations/uzxmldixbczboayogagz.jpg','architecture',NULL,'2025-05-15 03:05:46'),(40,5,'https://res.cloudinary.com/dapsnr3xi/image/upload/v1774865386/travel_phuyen/locations/mfasofxlwdz0wgxbatoz.jpg','experience',13,'2025-05-15 03:05:46'),(41,5,'https://res.cloudinary.com/dapsnr3xi/image/upload/v1774865387/travel_phuyen/locations/xvwbo5v1iheqkfwdw6ri.jpg','experience',14,'2025-05-15 03:05:46'),(42,5,'https://res.cloudinary.com/dapsnr3xi/image/upload/v1774865388/travel_phuyen/locations/jg2xz1r6gqryslakjitr.jpg','experience',15,'2025-05-15 03:05:46'),(43,5,'https://res.cloudinary.com/dapsnr3xi/image/upload/v1774865389/travel_phuyen/locations/rhh2cin5sl4vbiodp4ro.jpg','cuisine',13,'2025-05-15 03:05:46'),(44,5,'https://res.cloudinary.com/dapsnr3xi/image/upload/v1774865390/travel_phuyen/locations/cdrjxaoryikmyvxwlyyn.webp','cuisine',14,'2025-05-15 03:05:46'),(45,5,'https://res.cloudinary.com/dapsnr3xi/image/upload/v1774865393/travel_phuyen/locations/ibuafzviaqbegb0jpcwc.jpg','cuisine',15,'2025-05-15 03:05:46'),(46,6,'/uploads/locations/6/6-def.jpg','default',NULL,'2025-05-15 03:05:46'),(47,6,'https://res.cloudinary.com/dapsnr3xi/image/upload/v1774865394/travel_phuyen/locations/dvncuzcykme9ixfg4iiw.jpg','introduction',NULL,'2025-05-15 03:05:46'),(48,6,'https://res.cloudinary.com/dapsnr3xi/image/upload/v1774865395/travel_phuyen/locations/nurjhfpsl4o76esmyosm.jpg','architecture',NULL,'2025-05-15 03:05:46'),(49,6,'https://res.cloudinary.com/dapsnr3xi/image/upload/v1774865397/travel_phuyen/locations/sajazwu9bofdeqxpte8i.webp','experience',16,'2025-05-15 03:05:46'),(50,6,'https://res.cloudinary.com/dapsnr3xi/image/upload/v1774865399/travel_phuyen/locations/betogc9bqnbsgbjzztkg.jpg','experience',17,'2025-05-15 03:05:46'),(51,6,'https://res.cloudinary.com/dapsnr3xi/image/upload/v1774865401/travel_phuyen/locations/wc9vgj09o6clkqx33hq2.jpg','experience',18,'2025-05-15 03:05:46'),(52,6,'https://res.cloudinary.com/dapsnr3xi/image/upload/v1774865402/travel_phuyen/locations/tw1bxic8evctegtp8iyf.webp','cuisine',16,'2025-05-15 03:05:46'),(53,6,'https://res.cloudinary.com/dapsnr3xi/image/upload/v1774865403/travel_phuyen/locations/fvp9geffulckdyyrsayl.jpg','cuisine',17,'2025-05-15 03:05:46'),(54,6,'https://res.cloudinary.com/dapsnr3xi/image/upload/v1774865404/travel_phuyen/locations/faazbzxfnmim65w0hbbr.jpg','cuisine',18,'2025-05-15 03:05:46'),(55,7,'/uploads/locations/7/7-def.jpg','default',NULL,'2025-05-15 03:05:46'),(56,7,'https://res.cloudinary.com/dapsnr3xi/image/upload/v1774865405/travel_phuyen/locations/kdshg3luftz5kyvxg9zk.jpg','introduction',NULL,'2025-05-15 03:05:46'),(57,7,'https://res.cloudinary.com/dapsnr3xi/image/upload/v1774865406/travel_phuyen/locations/btfpvek3fr0su8wthmx6.jpg','architecture',NULL,'2025-05-15 03:05:46'),(58,7,'https://res.cloudinary.com/dapsnr3xi/image/upload/v1774865407/travel_phuyen/locations/iqw0ncbzbliq6qucngie.jpg','experience',19,'2025-05-15 03:05:46'),(59,7,'https://res.cloudinary.com/dapsnr3xi/image/upload/v1774865409/travel_phuyen/locations/xwvgyayb5c7femdjunvl.jpg','experience',20,'2025-05-15 03:05:46'),(60,7,'https://res.cloudinary.com/dapsnr3xi/image/upload/v1774865410/travel_phuyen/locations/xioy8zckfgvrj1v461xn.jpg','experience',21,'2025-05-15 03:05:46'),(61,7,'https://res.cloudinary.com/dapsnr3xi/image/upload/v1774865411/travel_phuyen/locations/g518yekvaq1hszk4ljwp.jpg','cuisine',19,'2025-05-15 03:05:46'),(62,7,'https://res.cloudinary.com/dapsnr3xi/image/upload/v1774865413/travel_phuyen/locations/x2sgfcw3k5cettebr18y.jpg','cuisine',20,'2025-05-15 03:05:46'),(63,7,'https://res.cloudinary.com/dapsnr3xi/image/upload/v1774865414/travel_phuyen/locations/lno4b0opsklxloyznkqn.jpg','cuisine',21,'2025-05-15 03:05:46'),(144,1,'https://res.cloudinary.com/dapsnr3xi/image/upload/v1774865431/travel_phuyen/locations/yqqjlnhm7c3t72dlcj58.jpg','experience',100,'2026-03-30 10:10:32'),(145,1,'https://res.cloudinary.com/dapsnr3xi/image/upload/v1774865432/travel_phuyen/locations/yqfjwpfviseepfja98gg.jpg','experience',101,'2026-03-30 10:10:33'),(146,1,'https://res.cloudinary.com/dapsnr3xi/image/upload/v1774865437/travel_phuyen/locations/gmrxswicwj2cjrpocx6b.jpg','experience',103,'2026-03-30 10:10:38'),(147,1,'https://res.cloudinary.com/dapsnr3xi/image/upload/v1774865438/travel_phuyen/locations/nzgaknvvgjwhuzwcph6n.jpg','experience',104,'2026-03-30 10:10:39'),(148,1,'https://res.cloudinary.com/dapsnr3xi/image/upload/v1774865439/travel_phuyen/locations/d7ugadcnphbwjscozdvh.jpg','experience',105,'2026-03-30 10:10:40'),(149,1,'https://res.cloudinary.com/dapsnr3xi/image/upload/v1774865440/travel_phuyen/locations/rqchszz6ey6y4hbnr9gy.jpg','experience',106,'2026-03-30 10:10:41'),(150,1,'https://res.cloudinary.com/dapsnr3xi/image/upload/v1774865442/travel_phuyen/locations/kfbh6owosy0ahmv8c3px.jpg','experience',107,'2026-03-30 10:10:42'),(151,1,'https://res.cloudinary.com/dapsnr3xi/image/upload/v1774865443/travel_phuyen/locations/ccx0u4xejdmhsq0kgoan.jpg','experience',108,'2026-03-30 10:10:43'),(152,1,'https://res.cloudinary.com/dapsnr3xi/image/upload/v1774869407/travel_phuyen/locations/ublckln5i6a83awhea6u.jpg','cuisine',109,'2026-03-30 11:16:48'),(153,1,'https://res.cloudinary.com/dapsnr3xi/image/upload/v1774869413/travel_phuyen/locations/scnb3ex7ax0a1snjiozj.png','cuisine',110,'2026-03-30 11:16:53'),(154,1,'https://res.cloudinary.com/dapsnr3xi/image/upload/v1774869416/travel_phuyen/locations/ohg5fcaryyjvizcv72y4.jpg','cuisine',111,'2026-03-30 11:16:57'),(155,1,'https://res.cloudinary.com/dapsnr3xi/image/upload/v1774869475/travel_phuyen/locations/up08srv5dfbe5aejyzpy.jpg','experience',112,'2026-03-30 11:17:56'),(156,1,'https://res.cloudinary.com/dapsnr3xi/image/upload/v1774869476/travel_phuyen/locations/oe2py5emslsxppck4klw.jpg','experience',113,'2026-03-30 11:17:57'),(157,1,'https://res.cloudinary.com/dapsnr3xi/image/upload/v1774869477/travel_phuyen/locations/qkglqi1uq185asdtrjl2.jpg','experience',114,'2026-03-30 11:17:58'),(167,1,'https://res.cloudinary.com/dapsnr3xi/image/upload/v1774870629/travel_phuyen/locations/qk4jo2u10kxb4umk8wka.jpg','architecture',NULL,'2026-03-30 11:37:09'),(168,1,'https://res.cloudinary.com/dapsnr3xi/image/upload/v1774870630/travel_phuyen/locations/hkz5yxrnhpurek78rtve.jpg','cuisine',122,'2026-03-30 11:37:10'),(169,1,'https://res.cloudinary.com/dapsnr3xi/image/upload/v1774870631/travel_phuyen/locations/yfwez3adgnkvxkfvb7c7.jpg','cuisine',123,'2026-03-30 11:37:11'),(170,1,'https://res.cloudinary.com/dapsnr3xi/image/upload/v1774870633/travel_phuyen/locations/ntzrql7ecczqinpamyqu.jpg','cuisine',124,'2026-03-30 11:37:14'),(171,1,'https://res.cloudinary.com/dapsnr3xi/image/upload/v1774870710/travel_phuyen/locations/npoms4a4f5bif2r9wmw1.jpg','experience',123,'2026-03-30 11:38:30'),(172,1,'https://res.cloudinary.com/dapsnr3xi/image/upload/v1774870715/travel_phuyen/locations/jrqt9ukrkrixjx5ayej3.jpg','experience',124,'2026-03-30 11:38:37'),(173,1,'https://res.cloudinary.com/dapsnr3xi/image/upload/v1774870718/travel_phuyen/locations/oqe9ytxorol8jlnrch24.png','experience',125,'2026-03-30 11:38:40'),(174,1,'https://res.cloudinary.com/dapsnr3xi/image/upload/v1774871102/travel_phuyen/locations/m4fvaxi8v4hpo5q1ny4l.jpg','cuisine',128,'2026-03-30 11:45:03'),(175,1,'https://res.cloudinary.com/dapsnr3xi/image/upload/v1774871104/travel_phuyen/locations/hdygx8lgrm6fd6ott2hs.jpg','cuisine',129,'2026-03-30 11:45:04'),(222,1,'https://res.cloudinary.com/dapsnr3xi/image/upload/v1774872268/travel_phuyen/locations/wchxvxzlgy0xiieygc2y.jpg','experience',129,'2026-03-30 12:04:30'),(223,1,'https://res.cloudinary.com/dapsnr3xi/image/upload/v1774872270/travel_phuyen/locations/pg51vbobncx9r4znrib6.jpg','experience',130,'2026-03-30 12:04:32'),(224,1,'https://res.cloudinary.com/dapsnr3xi/image/upload/v1774872273/travel_phuyen/locations/avww0anphsnzzdpr2dxv.jpg','experience',131,'2026-03-30 12:04:35'),(225,1,'https://res.cloudinary.com/dapsnr3xi/image/upload/v1774872275/travel_phuyen/locations/qi8uj1sf5tamli8neet4.jpg','cuisine',130,'2026-03-30 12:04:37'),(226,1,'https://res.cloudinary.com/dapsnr3xi/image/upload/v1774872278/travel_phuyen/locations/m3cvxhh0fs4gcg8v8tqq.jpg','cuisine',134,'2026-03-30 12:04:40'),(227,1,'https://res.cloudinary.com/dapsnr3xi/image/upload/v1774872282/travel_phuyen/locations/cfcfjjz6gwqt4nzyz8vc.png','cuisine',135,'2026-03-30 12:04:43');
/*!40000 ALTER TABLE `location_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locationdetails`
--

DROP TABLE IF EXISTS `locationdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `locationdetails` (
  `id` int NOT NULL AUTO_INCREMENT,
  `location_id` int NOT NULL,
  `subtitle` text,
  `introduction` text,
  `why_visit_architecture_title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `why_visit_architecture_text` text,
  `why_visit_culture` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `location_id` (`location_id`),
  CONSTRAINT `locationdetails_ibfk_1` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locationdetails`
--

LOCK TABLES `locationdetails` WRITE;
/*!40000 ALTER TABLE `locationdetails` DISABLE KEYS */;
INSERT INTO `locationdetails` VALUES (1,1,'Khám phá công trình kiến trúc độc đáo hòa quyện giữa thiên nhiên và văn hóa','Tháp Nghinh Phong tọa lạc tại Quảng trường Nghinh Phong, ngã tư đường Nguyễn Hữu Thọ và Độc Lập, phường 9, thành phố Tuy Hòa, tỉnh Phú Yên. Được khánh thành vào ngày 30/4/2022, đây là một công trình kiến trúc hiện đại lấy cảm hứng từ Gành Đá Đĩa – kỳ quan địa chất nổi tiếng của Phú Yên – và truyền thuyết “Trăm trứng trăm con” của Lạc Long Quân và Âu Cơ. Tháp gồm hai cột chính: cột cao 35 mét tượng trưng cho Lạc Long Quân và cột cao 30 mét tượng trưng cho Âu Cơ, bên dưới là 100 khối đá xếp chồng, chia đều hai bên, thể hiện 50 người con lên núi và 50 người con xuống biển.\r\nVới vị trí đắc địa bên bờ biển Tuy Hòa, Tháp Nghinh Phong không chỉ là biểu tượng mới của du lịch Phú Yên mà còn là một tác phẩm nghệ thuật kết hợp giữa kiến trúc, âm thanh, và ánh sáng. Công trình được vinh danh tại Giải Cảnh quan Đô thị châu Á năm 2023, trở thành đại diện duy nhất của Đông Nam Á nhờ không gian cộng đồng gắn kết và thiết kế thích ứng với thời tiết biển khắc nghiệt.','Vẻ đẹp kiến trúc độc đáo','Tháp Nghinh Phong gây ấn tượng với thiết kế đôi tháp sừng sững, giữa hai tháp là khe gió rộng 2 mét tạo ra âm thanh tự nhiên như “bản nhạc của biển” mỗi khi gió thổi qua. Ban đêm, công trình trở nên lung linh nhờ hệ thống chiếu sáng hiện đại với công nghệ 3D mapping và laser, mang đến trải nghiệm thị giác mãn nhãn. Các phù điêu khắc trên đá granite kể lại lịch sử và văn hóa Phú Yên, từ truyền thuyết dân tộc đến đời sống ngư dân.','Tháp không chỉ là điểm check-in mà còn mang ý nghĩa văn hóa sâu sắc, thể hiện khát vọng vươn ra biển lớn của người dân Phú Yên, đồng thời gắn kết quá khứ và tương lai của vùng đất “xứ Nẫu”.'),(2,2,'Khám phá kỳ quan địa chất độc nhất Việt Nam bên bờ biển Phú Yên','Nằm tại xã An Ninh Đông, huyện Tuy An, tỉnh Phú Yên, cách trung tâm TP. Tuy Hòa khoảng 40 km về phía Bắc, Gành Đá Đĩa là một kỳ quan thiên nhiên độc đáo. Với chiều rộng khoảng 50 mét và trải dài hơn 200 mét dọc bờ biển, nơi đây nổi bật bởi những khối đá bazan hình lăng trụ xếp chồng lên nhau như những chiếc đĩa khổng lồ. Chúng được hình thành từ hoạt động phun trào núi lửa ở cao nguyên Vân Hòa cách đây hàng triệu năm, khi dung nham nóng chảy gặp nước biển lạnh, đông cứng và nứt ra theo các mạch, tạo nên cảnh quan kỳ vĩ hiếm có.\r\nĐược công nhận là Di tích Thắng cảnh Quốc gia năm 1997, Gành Đá Đĩa không chỉ mang giá trị địa chất mà còn là biểu tượng tự hào của du lịch Phú Yên, sánh ngang Giant’s Causeway (Bắc Ireland) hay đảo Jeju (Hàn Quốc).','Vẻ đẹp huyền bí','Hàng nghìn khối đá đen óng ánh, khi ánh nắng chiếu xuống tạo mảng màu vàng rực rỡ, trông như một tổ ong khổng lồ lấn mình ra biển cả. Sóng biển trong xanh vỗ nhẹ hòa cùng tiếng gió mang đến không gian yên bình, gần gũi với thiên nhiên. Vào ngày nước cạn, bạn có thể thấy cua, ốc nhỏ bám trên đá, làm tăng vẻ sống động cho bức tranh thiên nhiên tuyệt mỹ này.','Gành Đá Đĩa gắn liền với lễ hội Cầu Ngư (tháng 2 hoặc tháng 8 âm lịch), nơi ngư dân tổ chức nghi thức truyền thống cầu mưa thuận gió hòa, mùa màng bội thu.'),(3,3,'Khám phá vẻ đẹp hoang sơ và lịch sử hào hùng bên bờ biển Đông','Vịnh Vũng Rô nằm tại xã Hòa Xuân Nam, huyện Đông Hòa, tỉnh Phú Yên, cách trung tâm TP. Tuy Hòa khoảng 30 km về phía Nam. Đây là một trong những vịnh đẹp nhất Việt Nam, được bao bọc bởi dãy núi Đèo Cả, núi Đá Bia và núi Hòn Bà, tạo nên một bức tranh thiên nhiên hùng vĩ. Vịnh có diện tích khoảng 16,4 km² với làn nước trong xanh, bãi cát mịn và những rạn san hô đầy màu sắc.\nVũng Rô không chỉ nổi tiếng với vẻ đẹp thiên nhiên mà còn mang ý nghĩa lịch sử sâu sắc. Trong thời kỳ kháng chiến chống Mỹ, nơi đây là bến cảng quan trọng trên tuyến đường Hồ Chí Minh trên biển, nơi tiếp nhận hàng hóa và vũ khí từ miền Bắc để hỗ trợ miền Nam. Được công nhận là Di tích Lịch sử Quốc gia năm 1997, Vũng Rô ngày nay là điểm đến lý tưởng để khám phá thiên nhiên và tìm hiểu lịch sử.','Vẻ đẹp thiên nhiên hoang sơ','Vịnh Vũng Rô sở hữu làn nước trong xanh, bãi cát trắng mịn và những rạn san hô rực rỡ. Xung quanh vịnh là những dãy núi hùng vĩ, tạo nên khung cảnh yên bình, lý tưởng để thư giãn. Du khách có thể ngắm nhìn những bè nuôi tôm hùm nổi trên mặt nước, hòa mình vào cuộc sống của ngư dân địa phương.','Vũng Rô gắn liền với lịch sử hào hùng của dân tộc, nơi ghi dấu những chuyến tàu không số trên tuyến đường Hồ Chí Minh trên biển. Đến đây, bạn có thể tham quan các di tích lịch sử và tìm hiểu về tinh thần bất khuất của người dân Phú Yên.'),(4,4,'Khám phá công trình kiến trúc Chăm Pa cổ kính giữa lòng Tuy Hòa','Tháp Nhạn nằm trên núi Nhạn, phường 1, thành phố Tuy Hòa, tỉnh Phú Yên, là một công trình kiến trúc Chăm Pa cổ kính được xây dựng vào khoảng thế kỷ 11-12. Tháp cao khoảng 20 mét, được xây bằng gạch nung đỏ đặc trưng của văn hóa Chăm Pa, với các họa tiết điêu khắc tinh xảo. Đây là nơi người Chăm Pa xưa tổ chức các nghi lễ tôn giáo, thờ cúng thần linh.\nTháp Nhạn không chỉ là một di tích lịch sử mà còn là biểu tượng văn hóa của Phú Yên, thu hút du khách bởi vẻ đẹp cổ kính và không gian yên bình. Từ đỉnh núi Nhạn, bạn có thể ngắm nhìn toàn cảnh thành phố Tuy Hòa, sông Đà Rằng và những cánh đồng lúa xanh mướt.','Vẻ đẹp kiến trúc Chăm Pa','Tháp Nhạn được xây dựng với phong cách kiến trúc Chăm Pa độc đáo, với các khối gạch nung được xếp khít không cần vữa. Các họa tiết chạm khắc trên tháp thể hiện sự tinh tế và tài hoa của người Chăm xưa. Đặc biệt, vào ban đêm, tháp được thắp sáng lung linh, tạo nên khung cảnh huyền ảo.','Tháp Nhạn là nơi lưu giữ ký ức văn hóa Chăm Pa, đồng thời gắn liền với đời sống tâm linh của người dân Phú Yên. Hàng năm, nơi đây diễn ra các lễ hội truyền thống như Lễ hội Tháp Nhạn vào tháng Giêng âm lịch.'),(5,5,'Khám phá bãi biển thơ mộng từng xuất hiện trong phim “Hoa Vàng Trên Cỏ Xanh”','Bãi Xép nằm tại xã An Chấn, huyện Tuy An, tỉnh Phú Yên, cách trung tâm TP. Tuy Hòa khoảng 14 km về phía Bắc. Với chiều dài chỉ khoảng 500 mét, Bãi Xép mang vẻ đẹp hoang sơ với bãi cát vàng mịn, nước biển trong xanh và những ghềnh đá độc đáo. Nơi đây nổi tiếng sau khi trở thành bối cảnh chính trong bộ phim “Tôi Thấy Hoa Vàng Trên Cỏ Xanh” của đạo diễn Victor Vũ, thu hút hàng nghìn du khách đến check-in.\nBãi Xép được bao quanh bởi hai ghềnh đá lớn là Gành Ông và Gành Bà, tạo nên một không gian yên bình, tách biệt. Điểm nhấn của Bãi Xép là cánh đồng cỏ xanh mướt trên đồi cao, nơi bạn có thể ngắm nhìn toàn cảnh biển cả và chụp những bức ảnh tuyệt đẹp.','Vẻ đẹp thiên nhiên thơ mộng','Bãi Xép gây ấn tượng với làn nước trong xanh, bãi cát mịn và những ghềnh đá nhô ra biển. Trên đồi cao là cánh đồng cỏ xanh mướt, nơi từng là bối cảnh trong phim “Hoa Vàng Trên Cỏ Xanh”. Đây là nơi lý tưởng để thư giãn và chụp ảnh sống ảo.','Bãi Xép gắn liền với đời sống của ngư dân làng chài, nơi bạn có thể trải nghiệm văn hóa miền biển qua các hoạt động như kéo lưới, bắt cá cùng người dân địa phương.'),(6,6,'Khám phá vẻ đẹp ẩn mình dưới làn nước trong xanh của Hòn Yến','Hòn Yến nằm tại xã An Hòa Hải, huyện Tuy An, tỉnh Phú Yên, cách trung tâm TP. Tuy Hòa khoảng 20 km về phía Bắc. Đây là một cụm đảo nhỏ với làn nước trong xanh, những rạn san hô rực rỡ và bãi cát trắng mịn. Hòn Yến nổi bật với hiện tượng thủy triều rút, để lộ con đường cát trắng dẫn ra đảo, tạo nên khung cảnh kỳ diệu giữa lòng biển cả.\nHòn Yến là nơi lý tưởng để khám phá thiên nhiên, lặn ngắm san hô và tận hưởng không gian yên bình. Nơi đây còn là điểm đến yêu thích của các nhiếp ảnh gia nhờ vẻ đẹp hoang sơ và thơ mộng, đặc biệt vào những ngày thủy triều xuống.','Vẻ đẹp san hô và con đường giữa biển','Hòn Yến nổi tiếng với những rạn san hô đầy màu sắc, nằm ngay dưới làn nước trong vắt. Khi thủy triều rút, một con đường cát trắng hiện ra, nối liền bờ với đảo, tạo nên cảnh tượng độc đáo. Đây là nơi lý tưởng để lặn ngắm san hô và chụp ảnh.','Hòn Yến gắn liền với đời sống của ngư dân làng chài An Hòa, nơi bạn có thể tìm hiểu về nghề đánh bắt và văn hóa miền biển của người dân Phú Yên.'),(7,7,'Khám phá nhà thờ cổ kính với kiến trúc Gothic độc đáo','Nhà thờ Mằng Lăng nằm tại xã An Thạch, huyện Tuy An, tỉnh Phú Yên, cách trung tâm TP. Tuy Hòa khoảng 35 km về phía Bắc. Được xây dựng từ năm 1892 bởi linh mục Joseph Lacassagne, nhà thờ mang phong cách kiến trúc Gothic đặc trưng với những vòm cong và tháp chuông cao vút. Đây là một trong những nhà thờ cổ nhất Việt Nam và là nơi lưu giữ cuốn sách in chữ Quốc ngữ đầu tiên – “Phép Giảng Tám Ngày” của linh mục Alexandre de Rhodes.\r\nNhà thờ Mằng Lăng không chỉ là điểm đến tâm linh mà còn là nơi thu hút du khách bởi vẻ đẹp cổ kính và không gian yên bình. Xung quanh nhà thờ là những cánh đồng lúa xanh mướt, tạo nên khung cảnh thơ mộng, đậm chất thôn quê.','Kiến trúc Gothic cổ kính','Nhà thờ Mằng Lăng nổi bật với kiến trúc Gothic, với những vòm cong, cửa sổ kính màu và tháp chuông cao 25 mét. Bên trong nhà thờ là không gian trang nghiêm với các họa tiết hoa văn tinh xảo, mang đậm dấu ấn kiến trúc phương Tây thế kỷ 19.','Nhà thờ là nơi lưu giữ cuốn sách in chữ Quốc ngữ đầu tiên, đánh dấu một cột mốc quan trọng trong lịch sử văn hóa Việt Nam. Đây cũng là nơi tổ chức các lễ hội Công giáo lớn, thu hút người dân địa phương và khách hành hương.');
/*!40000 ALTER TABLE `locationdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locationhotels`
--

DROP TABLE IF EXISTS `locationhotels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `locationhotels` (
  `location_id` int NOT NULL,
  `hotel_id` int NOT NULL,
  PRIMARY KEY (`location_id`,`hotel_id`),
  KEY `hotel_id` (`hotel_id`),
  CONSTRAINT `locationhotels_ibfk_1` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`) ON DELETE CASCADE,
  CONSTRAINT `locationhotels_ibfk_2` FOREIGN KEY (`hotel_id`) REFERENCES `hotels` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locationhotels`
--

LOCK TABLES `locationhotels` WRITE;
/*!40000 ALTER TABLE `locationhotels` DISABLE KEYS */;
INSERT INTO `locationhotels` VALUES (1,6),(2,6),(1,8),(2,8),(1,9);
/*!40000 ALTER TABLE `locationhotels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locations`
--

DROP TABLE IF EXISTS `locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `locations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `type` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `description` text,
  `latitude` decimal(10,6) NOT NULL,
  `longitude` decimal(10,6) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_locations_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locations`
--

LOCK TABLES `locations` WRITE;
/*!40000 ALTER TABLE `locations` DISABLE KEYS */;
INSERT INTO `locations` VALUES (1,'Tháp Nghinh Phong – Biểu Tượng Mới Của Phú Yên','Văn hóa','Khám phá công trình kiến trúc độc đáo hòa quyện giữa thiên nhiên và văn hóa',13.095500,109.308700,'2025-05-15 03:05:46','2025-11-03 10:23:24'),(2,'Gành Đá Đĩa – Kiệt Tác Thiên Nhiên Ở Phú Yên','di tích','Khám phá kỳ quan địa chất độc nhất Việt Nam bên bờ biển Phú Yên',13.353980,109.293750,'2025-05-15 03:05:46','2025-05-15 03:05:46'),(3,'Vịnh Vũng Rô – Viên Ngọc Xanh Giữa Lòng Phú Yên','di tích','Khám phá vẻ đẹp hoang sơ và lịch sử hào hùng bên bờ biển Đông',12.877320,109.419670,'2025-05-15 03:05:46','2025-05-15 03:05:46'),(4,'Tháp Nhạn – Biểu Tượng Lịch Sử Của Người Chăm Pa','di tích','Khám phá công trình kiến trúc Chăm Pa cổ kính giữa lòng Tuy Hòa',13.082320,109.301640,'2025-05-15 03:05:46','2025-05-15 03:05:46'),(5,'Bãi Xép – Vẻ Đẹp Hoang Sơ Bên Dòng Biển Xanh','di tích','Khám phá bãi biển thơ mộng từng xuất hiện trong phim “Hoa Vàng Trên Cỏ Xanh”',13.192220,109.300740,'2025-05-15 03:05:46','2025-05-15 03:05:46'),(6,'Hòn Yến – Quần Thể San Hô Đẹp Nhất Phú Yên','di tích','Khám phá vẻ đẹp ẩn mình dưới làn nước trong xanh của Hòn Yến',13.226470,109.305260,'2025-05-15 03:05:46','2025-05-15 03:05:46'),(7,'Nhà Thờ Mằng Lăng – Chứng Nhân Lịch Sử Của Phú Yên','Di tích lịch sử','Khám phá nhà thờ cổ kính với kiến trúc Gothic độc đáo',13.334140,109.225760,'2025-05-15 03:05:46','2025-05-15 19:17:16');
/*!40000 ALTER TABLE `locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nearbylocations`
--

DROP TABLE IF EXISTS `nearbylocations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nearbylocations` (
  `location_id` int NOT NULL,
  `nearby_location_id` int NOT NULL,
  PRIMARY KEY (`location_id`,`nearby_location_id`),
  KEY `nearby_location_id` (`nearby_location_id`),
  CONSTRAINT `nearbylocations_ibfk_1` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`) ON DELETE CASCADE,
  CONSTRAINT `nearbylocations_ibfk_2` FOREIGN KEY (`nearby_location_id`) REFERENCES `locations` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nearbylocations`
--

LOCK TABLES `nearbylocations` WRITE;
/*!40000 ALTER TABLE `nearbylocations` DISABLE KEYS */;
INSERT INTO `nearbylocations` VALUES (5,1),(5,2),(6,2),(1,3),(1,5),(6,5),(2,7);
/*!40000 ALTER TABLE `nearbylocations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notifications` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `message` text NOT NULL,
  `type` varchar(50) DEFAULT 'system',
  `related_id` int DEFAULT NULL,
  `action_url` varchar(255) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_is_read` (`is_read`),
  KEY `idx_created_at` (`created_at`),
  KEY `idx_user_type` (`user_id`,`type`),
  KEY `idx_user_read` (`user_id`,`is_read`),
  CONSTRAINT `notifications_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=191 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
INSERT INTO `notifications` VALUES (5,1,'Chúc mừng năm mới!','system',NULL,NULL,1,'2025-10-27 04:45:56'),(6,2,'Chúc mừng năm mới!','system',NULL,NULL,0,'2025-10-27 04:45:56'),(13,6,'Admin: Bạn cần mình tư vấn gì ạ','new_message',45,'/chat-with-admin',1,'2025-10-27 05:18:08'),(14,6,'Admin: vui long cung cap email cua ban','new_message',47,'/chat-with-admin',1,'2025-10-27 05:20:07'),(15,6,'Admin: cảm ơn bạn, hệ thống đang xử lý','new_message',49,'/chat-with-admin',1,'2025-10-27 05:22:51'),(20,6,'sd','system',NULL,NULL,1,'2025-10-27 05:41:53'),(21,1,'Một người dùng đã đánh giá ⭐⭐⭐⭐ (4/5) tour \"Tháp Nghinh Phong | Gành Đá Đĩa | Vịnh Vũng Rô\" của bạn','new_review',1,'/itinerary/1',1,'2025-10-27 12:07:49'),(22,14,'Admin: Chào bạn, bạn cần hỗ trợ đăng ký tài khoản hay quê...','new_message',51,'/chat-with-admin',1,'2025-10-27 12:12:43'),(23,14,'Chúc mừng năm mới','system',NULL,NULL,1,'2025-10-27 12:17:49'),(24,14,'Admin: hi','new_message',52,'/chat-with-admin',0,'2025-10-27 12:19:59'),(25,1,'Một người dùng đã đánh giá ⭐⭐⭐⭐ (4/5) tour \"Tháp Nghinh Phong | Gành Đá Đĩa | Vịnh Vũng Rô\" của bạn','new_review',1,'/itinerary/1',0,'2025-10-29 06:47:01'),(26,6,'Admin: hi','new_message',54,'/chat-with-admin',1,'2025-10-29 06:48:30'),(27,6,'? Đơn đặt tour #65 đã được tạo thành công!\n? Tổng tiền: 2.700.000 VNĐ\n⏰ Vui lòng thanh toán trong vòng 15 phút.','booking_created',65,'/profile/my-bookings',0,'2025-12-01 02:52:11'),(28,1,'? Booking mới #65\n? Khách hàng: tran Manh hung\n?️ Tour: Vịnh Vũng Rô | Tháp Nhạn | Hòn Yến\n? 2.700.000 VNĐ','booking_created',65,'/admin/bookings',0,'2025-12-01 02:52:11'),(29,6,'? Thanh toán thành công 2.700.000 VNĐ cho Booking #65','payment_success',65,'/profile/my-bookings',0,'2025-12-01 02:53:36'),(30,1,'? Thanh toán thành công!\n? Booking #65\n? 2.700.000 VNĐ','payment_success',65,'/admin/bookings',0,'2025-12-01 02:53:36'),(31,6,'? Đơn đặt tour #66 đã được tạo thành công!\n? Tổng tiền: 4.800.000 VNĐ\n⏰ Vui lòng thanh toán trong vòng 15 phút.','booking_created',66,'/profile/my-bookings',0,'2025-12-01 02:55:36'),(32,1,'? Booking mới #66\n? Khách hàng: tran Manh hung\n?️ Tour: Vịnh Vũng Rô | Tháp Nhạn | Hòn Yến\n? 4.800.000 VNĐ','booking_created',66,'/admin/bookings',0,'2025-12-01 02:55:36'),(33,6,'❌ Booking #66 đã bị hủy.','booking_cancelled',66,'/profile/my-bookings',0,'2025-12-01 02:56:02'),(34,6,'✅ Yêu cầu hoàn tiền cho booking #65 (\"Vịnh Vũng Rô | Tháp Nhạn | Hòn Yến\") đã được duyệt!\n\n? Số tiền: 1.350.000 VNĐ đã được cộng vào Ví Credit của bạn','refund_approved',65,'/profile/my-bookings',0,'2025-12-01 02:56:33'),(35,6,'? Đơn đặt tour #67 đã được tạo thành công!\n? Tổng tiền: 4.200.000 VNĐ\n⏰ Vui lòng thanh toán trong vòng 15 phút.','booking_created',67,'/profile/my-bookings',0,'2025-12-01 02:59:20'),(36,1,'? Booking mới #67\n? Khách hàng: tran Manh hung\n?️ Tour: Vịnh Vũng Rô | Tháp Nhạn | Hòn Yến\n? 4.200.000 VNĐ','booking_created',67,'/admin/bookings',0,'2025-12-01 02:59:20'),(37,6,'? Thanh toán thành công 4.200.000 VNĐ cho Booking #67','payment_success',67,'/profile/my-bookings',0,'2025-12-01 03:00:04'),(38,1,'? Thanh toán thành công!\n? Booking #67\n? 4.200.000 VNĐ','payment_success',67,'/admin/bookings',0,'2025-12-01 03:00:04'),(39,6,'⏳ Yêu cầu hoàn tiền cho booking #67 (\"Vịnh Vũng Rô | Tháp Nhạn | Hòn Yến\") đang được xử lý.\n\n? Số tiền: 2.058.000 VNĐ\n⏱️ Thời gian xử lý: 7-10 ngày làm việc\n\nChúng tôi sẽ thông báo khi có kết quả.','refund_pending',67,'/profile/my-bookings',1,'2025-12-01 03:00:55'),(40,1,'? Yêu cầu hoàn tiền mới!\n\n? Booking: #67\n? Tour: Vịnh Vũng Rô | Tháp Nhạn | Hòn Yến\n? Số tiền: 2.058.000 VNĐ\n? User ID: 6\n\nVui lòng xem xét và xử lý.','admin_new_refund',67,'/admin/refunds/67',1,'2025-12-01 03:00:55'),(41,1,'? Yêu cầu rút tiền mới từ User 6\n\nSố tiền: 100.000 VNĐ\nNgân hàng: MB Bank\nSố TK: 0869680796\nChủ TK: LE MINH HOC','admin_new_withdrawal',1,'/admin/withdrawals',1,'2025-12-01 03:12:24'),(42,6,'? Đơn đặt tour #68 đã được tạo thành công!\n? Tổng tiền: 6.000.000 VNĐ\n⏰ Vui lòng thanh toán trong vòng 15 phút.','booking_created',68,'/profile/my-bookings',0,'2025-12-01 03:30:42'),(43,1,'? Booking mới #68\n? Khách hàng: tran Manh hung\n?️ Tour: Vịnh Vũng Rô | Tháp Nhạn | Hòn Yến\n? 6.000.000 VNĐ','booking_created',68,'/admin/bookings',0,'2025-12-01 03:30:42'),(44,6,'? Thanh toán thành công 6.000.000 VNĐ cho Booking #68','payment_success',68,'/profile/my-bookings',0,'2025-12-01 03:31:19'),(45,1,'? Thanh toán thành công!\n? Booking #68\n? 6.000.000 VNĐ','payment_success',68,'/admin/bookings',0,'2025-12-01 03:31:19'),(46,6,'? Đơn đặt tour #69 đã được tạo thành công!\n? Tổng tiền: 2.600.000 VNĐ\n⏰ Vui lòng thanh toán trong vòng 15 phút.','booking_created',69,'/profile/my-bookings',0,'2025-12-01 03:31:53'),(47,1,'? Booking mới #69\n? Khách hàng: tran Manh hung\n?️ Tour: Tháp Nhạn | Nhà Thờ Mằng Lăng | Tháp Nghinh Phong\n? 2.600.000 VNĐ','booking_created',69,'/admin/bookings',0,'2025-12-01 03:31:53'),(48,6,'? Thanh toán thành công 2.600.000 VNĐ cho Booking #69','payment_success',69,'/profile/my-bookings',0,'2025-12-01 03:32:31'),(49,1,'? Thanh toán thành công!\n? Booking #69\n? 2.600.000 VNĐ','payment_success',69,'/admin/bookings',0,'2025-12-01 03:32:31'),(50,1,'? Yêu cầu rút tiền mới từ User 6\n\nSố tiền: 150.000 VNĐ\nNgân hàng: MB Bank\nSố TK: 0869680796\nChủ TK: LE MINH HOC','admin_new_withdrawal',2,'/admin/withdrawals',1,'2025-12-01 04:11:18'),(51,6,'✅ Yêu cầu rút tiền #1 đã được duyệt!\n\n? Số tiền: 100000.00 VNĐ\n? Ngân hàng: MB Bank\n\nSố tiền sẽ được chuyển trong 3-5 ngày làm việc.','withdrawal_approved',1,'/profile/credit-wallet',0,'2025-12-01 04:12:40'),(52,6,'✅ Đã chuyển tiền cho yêu cầu rút tiền #1\n\n? Số tiền: 100000.00 VNĐ\n? Ngân hàng: MB Bank\n? Mã giao dịch: MBK12343\n\nVui lòng kiểm tra tài khoản của bạn.','withdrawal_completed',1,'/profile/credit-wallet',0,'2025-12-01 04:16:37'),(53,6,'? Tour \"Tháp Nghinh Phong | Gành Đá Đĩa | Vịnh Vũng Rô\" (Booking #50) đã hoàn thành!\n✨ Cảm ơn bạn đã sử dụng dịch vụ!\n? Hãy để lại đánh giá cho tour này.','booking_completed',50,'/profile/my-bookings',1,'2025-12-01 17:00:00'),(54,1,'? Yêu cầu rút tiền mới từ User 6\n\nSố tiền: 500.000 VNĐ\nNgân hàng: MB Bank\nSố TK: 0869680796\nChủ TK: LE MINH HOC','admin_new_withdrawal',3,'/admin/withdrawals',0,'2025-12-01 19:05:23'),(55,6,'❌ Yêu cầu rút tiền #3 đã bị từ chối\n\n? Số tiền: 500000.00 VNĐ\n\n? Lý do: Không hợp lệ\n\nVui lòng liên hệ admin để biết thêm chi tiết.','withdrawal_rejected',3,'/profile/credit-wallet',1,'2025-12-01 19:06:27'),(56,1,'? Yêu cầu rút tiền mới từ User 6\n\nSố tiền: 50.000 VNĐ\nNgân hàng: MB Bank\nSố TK: 0869680796\nChủ TK: LE MINH HOC','admin_new_withdrawal',4,'/admin/withdrawals',0,'2025-12-01 19:13:37'),(57,6,'❌ Yêu cầu rút tiền #4 đã bị từ chối\n\n? Số tiền: 50000.00 VNĐ\n\n? Lý do: 2w\n\nVui lòng liên hệ admin để biết thêm chi tiết.','withdrawal_rejected',4,'/profile/credit-wallet',1,'2025-12-01 19:14:09'),(58,6,'? Đơn đặt tour #70 đã được tạo thành công!\n? Tổng tiền: 4.200.000 VNĐ\n⏰ Vui lòng thanh toán trong vòng 15 phút.','booking_created',70,'/profile/my-bookings',0,'2025-12-02 08:56:55'),(59,1,'? Booking mới #70\n? Khách hàng: tran Manh hung\n?️ Tour: Vịnh Vũng Rô | Tháp Nhạn | Hòn Yến\n? 4.200.000 VNĐ','booking_created',70,'/admin/bookings',0,'2025-12-02 08:56:55'),(60,6,'? Thanh toán thành công 4.200.000 VNĐ cho Booking #70','payment_success',70,'/profile/my-bookings',0,'2025-12-02 08:57:57'),(61,1,'? Thanh toán thành công!\n? Booking #70\n? 4.200.000 VNĐ','payment_success',70,'/admin/bookings',0,'2025-12-02 08:57:57'),(62,6,'⏳ Yêu cầu hoàn tiền cho booking #70 (\"Vịnh Vũng Rô | Tháp Nhạn | Hòn Yến\") đang được xử lý.\n\n? Số tiền: 2.058.000 VNĐ\n⏱️ Thời gian xử lý: 7-10 ngày làm việc\n\nChúng tôi sẽ thông báo khi có kết quả.','refund_pending',70,'/profile/my-bookings',0,'2025-12-02 08:59:25'),(63,1,'? Yêu cầu hoàn tiền mới!\n\n? Booking: #70\n? Tour: Vịnh Vũng Rô | Tháp Nhạn | Hòn Yến\n? Số tiền: 2.058.000 VNĐ\n? User ID: 6\n\nVui lòng xem xét và xử lý.','admin_new_refund',70,'/admin/refunds/70',0,'2025-12-02 08:59:25'),(64,6,'? Đơn đặt tour #71 đã được tạo thành công!\n? Tổng tiền: 4.800.000 VNĐ\n⏰ Vui lòng thanh toán trong vòng 15 phút.','booking_created',71,'/profile/my-bookings',0,'2025-12-02 09:10:54'),(65,1,'? Booking mới #71\n? Khách hàng: tran Manh hung\n?️ Tour: Vịnh Vũng Rô | Tháp Nhạn | Hòn Yến\n? 4.800.000 VNĐ','booking_created',71,'/admin/bookings',0,'2025-12-02 09:10:54'),(66,6,'? Thanh toán thành công 4.800.000 VNĐ cho Booking #71','payment_success',71,'/profile/my-bookings',0,'2025-12-02 09:11:36'),(67,1,'? Thanh toán thành công!\n? Booking #71\n? 4.800.000 VNĐ','payment_success',71,'/admin/bookings',0,'2025-12-02 09:11:36'),(68,6,'✅ Yêu cầu hoàn tiền cho booking #71 (\"Vịnh Vũng Rô | Tháp Nhạn | Hòn Yến\") đã được duyệt!\n\n? Số tiền: 2.400.000 VNĐ đã được cộng vào Ví Credit của bạn','refund_approved',71,'/profile/my-bookings',0,'2025-12-02 09:11:45'),(69,6,'? Đơn đặt tour #72 đã được tạo thành công!\n? Tổng tiền: 4.200.000 VNĐ\n⏰ Vui lòng thanh toán trong vòng 15 phút.','booking_created',72,'/profile/my-bookings',0,'2025-12-02 16:49:49'),(70,1,'? Booking mới #72\n? Khách hàng: tran Manh hung\n?️ Tour: Vịnh Vũng Rô | Tháp Nhạn | Hòn Yến\n? 4.200.000 VNĐ','booking_created',72,'/admin/bookings',0,'2025-12-02 16:49:49'),(71,6,'? Thanh toán thành công 4.200.000 VNĐ cho Booking #72','payment_success',72,'/profile/my-bookings',0,'2025-12-02 16:50:38'),(72,1,'? Thanh toán thành công!\n? Booking #72\n? 4.200.000 VNĐ','payment_success',72,'/admin/bookings',0,'2025-12-02 16:50:38'),(73,6,'? Đơn đặt tour #73 đã được tạo thành công!\n? Tổng tiền: 3.000.000 VNĐ\n⏰ Vui lòng thanh toán trong vòng 15 phút.','booking_created',73,'/profile/my-bookings',0,'2025-12-02 18:13:10'),(74,1,'? Booking mới #73\n? Khách hàng: tran Manh hung\n?️ Tour: Vịnh Vũng Rô | Tháp Nhạn | Hòn Yến\n? 3.000.000 VNĐ','booking_created',73,'/admin/bookings',0,'2025-12-02 18:13:10'),(75,6,'? Thanh toán thành công 3.000.000 VNĐ cho Booking #73','payment_success',73,'/profile/my-bookings',0,'2025-12-02 18:13:22'),(76,1,'? Thanh toán thành công!\n? Booking #73\n? 3.000.000 VNĐ','payment_success',73,'/admin/bookings',0,'2025-12-02 18:13:22'),(77,6,'? Đơn đặt tour #74 đã được tạo thành công!\n? Tổng tiền: 1.900.000 VNĐ\n⏰ Vui lòng thanh toán trong vòng 15 phút.','booking_created',74,'/profile/my-bookings',0,'2025-12-02 18:15:10'),(78,1,'? Booking mới #74\n? Khách hàng: tran Manh hung\n?️ Tour: Tháp Nghinh Phong | Gành Đá Đĩa | Vịnh Vũng Rô\n? 1.900.000 VNĐ','booking_created',74,'/admin/bookings',0,'2025-12-02 18:15:10'),(79,6,'? Thanh toán thành công 1.900.000 VNĐ cho Booking #74','payment_success',74,'/profile/my-bookings',0,'2025-12-02 18:15:15'),(80,1,'? Thanh toán thành công!\n? Booking #74\n? 1.900.000 VNĐ','payment_success',74,'/admin/bookings',0,'2025-12-02 18:15:15'),(81,6,'⏳ Yêu cầu hoàn tiền đã được gửi\n\n? Booking: #74\n?️ Tour: Tháp Nghinh Phong | Gành Đá Đĩa | Vịnh Vũng Rô\n? Số tiền dự kiến: 950.000 VNĐ\n? Phương thức: hoàn vào ví Credit\n? Hủy trước: 6 ngày\n\nAdmin sẽ xem xét trong 24-48h.','refund_pending',74,'/profile/my-bookings',0,'2025-12-02 18:15:37'),(82,1,'? Yêu cầu hoàn tiền mới!\n\n? Booking: #74\n? Tour: Tháp Nghinh Phong | Gành Đá Đĩa | Vịnh Vũng Rô\n? Số tiền: 950.000 VNĐ\n? Phương thức: Credit\n? User ID: 6\n\nVui lòng xem xét và xử lý.','admin_new_refund',6,'/admin/refunds/6',0,'2025-12-02 18:15:37'),(83,6,'? Đơn đặt tour #75 đã được tạo thành công!\n? Tổng tiền: 5.400.000 VNĐ\n⏰ Vui lòng thanh toán trong vòng 15 phút.','booking_created',75,'/profile/my-bookings',0,'2025-12-02 19:00:53'),(84,1,'? Booking mới #75\n? Khách hàng: tran Manh hung\n?️ Tour: Vịnh Vũng Rô | Tháp Nhạn | Hòn Yến\n? 5.400.000 VNĐ','booking_created',75,'/admin/bookings',0,'2025-12-02 19:00:53'),(85,6,'? Thanh toán thành công 5.400.000 VNĐ cho Booking #75','payment_success',75,'/profile/my-bookings',0,'2025-12-02 19:01:22'),(86,1,'? Thanh toán thành công!\n? Booking #75\n? 5.400.000 VNĐ','payment_success',75,'/admin/bookings',0,'2025-12-02 19:01:22'),(87,6,'? Tour đã được hủy\n\n? Booking: #75\n?️ Tour: Vịnh Vũng Rô | Tháp Nhạn | Hòn Yến\n? Hủy trước: 2 ngày\n\n⚠️ Hủy muộn (dưới 3 ngày) nên không được hoàn tiền theo chính sách.\n\nXin cảm ơn sự thông cảm của bạn.','booking_cancelled',75,'/profile/my-bookings',0,'2025-12-02 19:01:35'),(88,6,'? Đơn đặt tour #76 đã được tạo thành công!\n? Tổng tiền: 1.800.000 VNĐ\n⏰ Vui lòng thanh toán trong vòng 15 phút.','booking_created',76,'/profile/my-bookings',0,'2025-12-02 19:02:50'),(89,1,'? Booking mới #76\n? Khách hàng: tran Manh hung\n?️ Tour: Vịnh Vũng Rô | Tháp Nhạn | Hòn Yến\n? 1.800.000 VNĐ','booking_created',76,'/admin/bookings',0,'2025-12-02 19:02:50'),(90,6,'❌ Booking #76 đã bị hủy.','booking_cancelled',76,'/profile/my-bookings',0,'2025-12-02 19:02:59'),(91,6,'? Đơn đặt tour #77 đã được tạo thành công!\n? Tổng tiền: 2.700.000 VNĐ\n⏰ Vui lòng thanh toán trong vòng 15 phút.','booking_created',77,'/profile/my-bookings',0,'2025-12-03 04:10:27'),(92,1,'? Booking mới #77\n? Khách hàng: tran Manh hung\n?️ Tour: Tháp Nghinh Phong | Gành Đá Đĩa | Vịnh Vũng Rô\n? 2.700.000 VNĐ','booking_created',77,'/admin/bookings',0,'2025-12-03 04:10:27'),(93,6,'? Thanh toán thành công 2.700.000 VNĐ cho Booking #77','payment_success',77,'/profile/my-bookings',0,'2025-12-03 04:11:06'),(94,1,'? Thanh toán thành công!\n? Booking #77\n? 2.700.000 VNĐ','payment_success',77,'/admin/bookings',0,'2025-12-03 04:11:06'),(95,6,'⏳ Yêu cầu hoàn tiền đã được gửi\n\n? Booking: #77\n?️ Tour: Tháp Nghinh Phong | Gành Đá Đĩa | Vịnh Vũng Rô\n? Số tiền dự kiến: 1.350.000 VNĐ\n? Phương thức: chuyển khoản ngân hàng\n? Hủy trước: 6 ngày\n\nAdmin sẽ xem xét trong 24-48h.','refund_pending',77,'/profile/my-bookings',1,'2025-12-03 04:11:45'),(96,1,'? Yêu cầu hoàn tiền mới!\n\n? Booking: #77\n? Tour: Tháp Nghinh Phong | Gành Đá Đĩa | Vịnh Vũng Rô\n? Số tiền: 1.350.000 VNĐ\n? Phương thức: Chuyển khoản\n? User ID: 6\n\nVui lòng xem xét và xử lý.','admin_new_refund',8,'/admin/refunds/8',1,'2025-12-03 04:11:45'),(97,6,'✅ Yêu cầu hoàn tiền đã được duyệt!\n\n? Booking: #77\n?️ Tour: Tháp Nghinh Phong | Gành Đá Đĩa | Vịnh Vũng Rô\n? Số tiền: 1323000.00 VNĐ sẽ được chuyển khoản trong 3-5 ngày làm việc','refund_approved',77,'/profile/my-bookings',1,'2025-12-03 04:22:43'),(98,6,'❌ Yêu cầu hoàn tiền bị từ chối\n\n? Booking: #72\n?️ Tour: Vịnh Vũng Rô | Tháp Nhạn | Hòn Yến\n? Lý do: không hợp lệ\n\nVui lòng liên hệ admin để biết thêm chi tiết.','refund_rejected',72,'/profile/my-bookings',0,'2025-12-03 04:24:24'),(99,1,'? Yêu cầu rút tiền mới từ User 6\n\nSố tiền: 50.000 VNĐ\nNgân hàng: Agribank\nSố TK: 0869680796\nChủ TK: LE MINH HOC','admin_new_withdrawal',5,'/admin/withdrawals',1,'2025-12-03 04:25:52'),(100,6,'✅ Yêu cầu rút tiền #5 đã được duyệt!\n\n? Số tiền: 50000.00 VNĐ\n? Ngân hàng: Agribank\n\nSố tiền sẽ được chuyển trong 3-5 ngày làm việc.','withdrawal_approved',5,'/profile/credit-wallet',0,'2025-12-03 04:26:25'),(101,6,'✅ Đã chuyển tiền cho yêu cầu rút tiền #5\n\n? Số tiền: 50000.00 VNĐ\n? Ngân hàng: Agribank\n? Mã giao dịch: ACB09809\n\nVui lòng kiểm tra tài khoản của bạn.','withdrawal_completed',5,'/profile/credit-wallet',0,'2025-12-03 04:26:44'),(102,1,'? Yêu cầu rút tiền mới từ User 6\n\nSố tiền: 50.000 VNĐ\nNgân hàng: MB Bank\nSố TK: 0869680796\nChủ TK: NGUYEN HUNG','admin_new_withdrawal',6,'/admin/withdrawals',1,'2025-12-03 04:48:48'),(103,6,'✅ Yêu cầu rút tiền #6 đã được duyệt!\n\n? Số tiền: 50000.00 VNĐ\n? Ngân hàng: MB Bank\n\nSố tiền sẽ được chuyển trong 3-5 ngày làm việc.','withdrawal_approved',6,'/profile/credit-wallet',0,'2025-12-03 04:50:35'),(104,6,'✅ Đã chuyển tiền cho yêu cầu rút tiền #6\n\n? Số tiền: 50000.00 VNĐ\n? Ngân hàng: MB Bank\n? Mã giao dịch: VCB84534\n\nVui lòng kiểm tra tài khoản của bạn.','withdrawal_completed',6,'/profile/credit-wallet',0,'2025-12-03 04:50:59'),(105,1,'? Yêu cầu rút tiền mới từ User 6\n\nSố tiền: 50.000 VNĐ\nNgân hàng: BIDV\nSố TK: 000000000\nChủ TK: TRAN MANH HUNG','admin_new_withdrawal',7,'/admin/withdrawals',0,'2025-12-03 04:54:26'),(106,6,'❌ Yêu cầu rút tiền #7 đã bị từ chối\n\n? Số tiền: 50000.00 VNĐ\n\n? Lý do: okee\n\nVui lòng liên hệ admin để biết thêm chi tiết.','withdrawal_rejected',7,'/profile/credit-wallet',0,'2025-12-03 04:55:31'),(107,1,'? Yêu cầu rút tiền mới từ User 6\n\nSố tiền: 50.000 VNĐ\nNgân hàng: BIDV\nSố TK: 123456565\nChủ TK: TRAN HUNG','admin_new_withdrawal',8,'/admin/withdrawals',1,'2025-12-03 06:18:59'),(108,6,'❌ Yêu cầu rút tiền #2 đã bị từ chối\n\n? Số tiền: 150000.00 VNĐ\n\n? Lý do: s\n\nVui lòng liên hệ admin để biết thêm chi tiết.','withdrawal_rejected',2,'/profile/credit-wallet',0,'2025-12-03 06:20:16'),(109,6,'✅ Yêu cầu rút tiền #8 đã được duyệt!\n\n? Số tiền: 50000.00 VNĐ\n? Ngân hàng: BIDV\n\nSố tiền sẽ được chuyển trong 3-5 ngày làm việc.','withdrawal_approved',8,'/profile/credit-wallet',1,'2025-12-03 06:20:49'),(110,6,'✅ Đã chuyển tiền cho yêu cầu rút tiền #8\n\n? Số tiền: 50000.00 VNĐ\n? Ngân hàng: BIDV\n? Mã giao dịch: VCB77723\n\nVui lòng kiểm tra tài khoản của bạn.','withdrawal_completed',8,'/profile/credit-wallet',0,'2025-12-03 06:21:24'),(111,6,'? Đơn đặt tour #78 đã được tạo thành công!\n? Tổng tiền: 2.700.000 VNĐ\n⏰ Vui lòng thanh toán trong vòng 15 phút.','booking_created',78,'/profile/my-bookings',0,'2025-12-05 07:09:26'),(112,1,'? Booking mới #78\n? Khách hàng: tran Manh hung\n?️ Tour: Tháp Nghinh Phong | Gành Đá Đĩa | Vịnh Vũng Rô\n? 2.700.000 VNĐ','booking_created',78,'/admin/bookings',0,'2025-12-05 07:09:26'),(113,6,'? Thanh toán thành công 2.700.000 VNĐ cho Booking #78','payment_success',78,'/profile/my-bookings',0,'2025-12-05 07:11:22'),(114,1,'? Thanh toán thành công!\n? Booking #78\n? 2.700.000 VNĐ','payment_success',78,'/admin/bookings',0,'2025-12-05 07:11:22'),(115,6,'⏳ Yêu cầu hoàn tiền đã được gửi\n\n? Booking: #78\n?️ Tour: Tháp Nghinh Phong | Gành Đá Đĩa | Vịnh Vũng Rô\n? Số tiền dự kiến: 2.160.000 VNĐ\n? Phương thức: hoàn vào ví Credit\n? Hủy trước: 7 ngày\n\nAdmin sẽ xem xét trong 24-48h.','refund_pending',78,'/profile/my-bookings',0,'2025-12-05 07:12:45'),(116,1,'? Yêu cầu hoàn tiền mới!\n\n? Booking: #78\n? Tour: Tháp Nghinh Phong | Gành Đá Đĩa | Vịnh Vũng Rô\n? Số tiền: 2.160.000 VNĐ\n? Phương thức: Credit\n? User ID: 6\n\nVui lòng xem xét và xử lý.','admin_new_refund',9,'/admin/refunds/9',0,'2025-12-05 07:12:45'),(118,6,'? Đơn đặt tour #79 đã được tạo thành công!\n? Tổng tiền: 2.700.000 VNĐ\n⏰ Vui lòng thanh toán trong vòng 15 phút.','booking_created',79,'/profile/my-bookings',0,'2025-12-10 07:35:54'),(119,1,'? Booking mới #79\n? Khách hàng: tran Manh hung\n?️ Tour: Tháp Nghinh Phong | Gành Đá Đĩa | Vịnh Vũng Rô\n? 2.700.000 VNĐ','booking_created',79,'/admin/bookings',0,'2025-12-10 07:35:54'),(120,6,'⏰ Đơn đặt tour #79 đã hết hạn thanh toán (15 phút).\n? Bạn có thể đặt lại tour bất cứ lúc nào!','booking_cancelled',79,'/profile/my-bookings',0,'2025-12-10 07:51:00'),(121,6,'? Tour \"Tháp Nghinh Phong | Gành Đá Đĩa | Vịnh Vũng Rô\" (Booking #64) đã hoàn thành!\n✨ Cảm ơn bạn đã sử dụng dịch vụ!\n? Hãy để lại đánh giá cho tour này.','booking_completed',64,'/profile/my-bookings',0,'2025-12-10 17:00:00'),(122,6,'? Tour \"Vịnh Vũng Rô | Tháp Nhạn | Hòn Yến\" (Booking #68) đã hoàn thành!\n✨ Cảm ơn bạn đã sử dụng dịch vụ!\n? Hãy để lại đánh giá cho tour này.','booking_completed',68,'/profile/my-bookings',0,'2025-12-10 17:00:00'),(123,6,'? Tour \"Tháp Nhạn | Nhà Thờ Mằng Lăng | Tháp Nghinh Phong\" (Booking #69) đã hoàn thành!\n✨ Cảm ơn bạn đã sử dụng dịch vụ!\n? Hãy để lại đánh giá cho tour này.','booking_completed',69,'/profile/my-bookings',0,'2025-12-10 17:00:00'),(124,6,'? Tour \"Vịnh Vũng Rô | Tháp Nhạn | Hòn Yến\" (Booking #72) đã hoàn thành!\n✨ Cảm ơn bạn đã sử dụng dịch vụ!\n? Hãy để lại đánh giá cho tour này.','booking_completed',72,'/profile/my-bookings',0,'2025-12-10 17:00:00'),(125,6,'? Tour \"Vịnh Vũng Rô | Tháp Nhạn | Hòn Yến\" (Booking #73) đã hoàn thành!\n✨ Cảm ơn bạn đã sử dụng dịch vụ!\n? Hãy để lại đánh giá cho tour này.','booking_completed',73,'/profile/my-bookings',0,'2025-12-10 17:00:00'),(126,6,'Admin: 2','new_message',55,NULL,0,'2025-12-11 11:32:15'),(127,6,'Admin: chào bn','new_message',56,NULL,1,'2025-12-14 11:17:59'),(128,6,'? Đơn đặt tour #80 đã được tạo thành công!\n? Tổng tiền: 3.000.000 VNĐ\n⏰ Vui lòng thanh toán trong vòng 15 phút.','booking_created',80,'/profile/my-bookings',0,'2025-12-14 13:46:27'),(129,1,'? Booking mới #80\n? Khách hàng: tran Manh hung\n?️ Tour: Vịnh Vũng Rô | Tháp Nhạn | Hòn Yến\n? 3.000.000 VNĐ','booking_created',80,'/admin/bookings',0,'2025-12-14 13:46:27'),(130,6,'? Đơn đặt tour #81 đã được tạo thành công!\n? Tổng tiền: 3.000.000 VNĐ\n⏰ Vui lòng thanh toán trong vòng 15 phút.','booking_created',81,'/profile/my-bookings',0,'2025-12-14 13:46:32'),(131,1,'? Booking mới #81\n? Khách hàng: tran Manh hung\n?️ Tour: Vịnh Vũng Rô | Tháp Nhạn | Hòn Yến\n? 3.000.000 VNĐ','booking_created',81,'/admin/bookings',0,'2025-12-14 13:46:32'),(132,6,'? Đơn đặt tour #82 đã được tạo thành công!\n? Tổng tiền: 1.800.000 VNĐ\n⏰ Vui lòng thanh toán trong vòng 15 phút.','booking_created',82,'/profile/my-bookings',0,'2025-12-14 13:47:13'),(133,1,'? Booking mới #82\n? Khách hàng: tran Manh hung\n?️ Tour: Vịnh Vũng Rô | Tháp Nhạn | Hòn Yến\n? 1.800.000 VNĐ','booking_created',82,'/admin/bookings',0,'2025-12-14 13:47:13'),(134,6,'? Thanh toán thành công 1.800.000 VNĐ cho Booking #82','payment_success',82,'/profile/my-bookings',0,'2025-12-14 13:48:21'),(135,1,'? Thanh toán thành công!\n? Booking #82\n? 1.800.000 VNĐ','payment_success',82,'/admin/bookings',0,'2025-12-14 13:48:21'),(136,6,'? Đơn đặt tour #83 đã được tạo thành công!\n? Tổng tiền: 1.800.000 VNĐ\n⏰ Vui lòng thanh toán trong vòng 15 phút.','booking_created',83,'/profile/my-bookings',0,'2025-12-14 13:58:01'),(137,1,'? Booking mới #83\n? Khách hàng: tran Manh hung\n?️ Tour: Vịnh Vũng Rô | Tháp Nhạn | Hòn Yến\n? 1.800.000 VNĐ','booking_created',83,'/admin/bookings',0,'2025-12-14 13:58:01'),(138,6,'⏰ Đơn đặt tour #80 đã hết hạn thanh toán (15 phút).\n? Bạn có thể đặt lại tour bất cứ lúc nào!','booking_cancelled',80,'/profile/my-bookings',0,'2025-12-14 14:02:00'),(139,6,'⏰ Đơn đặt tour #81 đã hết hạn thanh toán (15 phút).\n? Bạn có thể đặt lại tour bất cứ lúc nào!','booking_cancelled',81,'/profile/my-bookings',0,'2025-12-14 14:02:00'),(140,6,'⏰ Đơn đặt tour #83 đã hết hạn thanh toán (15 phút).\n? Bạn có thể đặt lại tour bất cứ lúc nào!','booking_cancelled',83,'/profile/my-bookings',0,'2025-12-14 14:15:00'),(141,6,'Admin: Xin chào','new_message',57,NULL,0,'2025-12-14 15:21:12'),(142,6,'? Đơn đặt tour #84 đã được tạo thành công!\n? Tổng tiền: 5.400.000 VNĐ\n⏰ Vui lòng thanh toán trong vòng 15 phút.','booking_created',84,'/profile/my-bookings',0,'2025-12-16 10:12:27'),(143,1,'? Booking mới #84\n? Khách hàng: tran Manh hung\n?️ Tour: Vịnh Vũng Rô | Tháp Nhạn | Hòn Yến\n? 5.400.000 VNĐ','booking_created',84,'/admin/bookings',0,'2025-12-16 10:12:27'),(144,6,'? Thanh toán thành công 5.400.000 VNĐ cho Booking #84','payment_success',84,'/profile/my-bookings',0,'2025-12-16 10:15:20'),(145,1,'? Thanh toán thành công!\n? Booking #84\n? 5.400.000 VNĐ','payment_success',84,'/admin/bookings',0,'2025-12-16 10:15:20'),(146,6,'? Đơn đặt tour #85 đã được tạo thành công!\n? Tổng tiền: 3.000.000 VNĐ\n⏰ Vui lòng thanh toán trong vòng 15 phút.','booking_created',85,'/profile/my-bookings',0,'2025-12-16 10:18:43'),(147,1,'? Booking mới #85\n? Khách hàng: tran Manh hung\n?️ Tour: Vịnh Vũng Rô | Tháp Nhạn | Hòn Yến\n? 3.000.000 VNĐ','booking_created',85,'/admin/bookings',0,'2025-12-16 10:18:43'),(148,6,'❌ Booking #85 đã bị hủy.','booking_cancelled',85,'/profile/my-bookings',0,'2025-12-16 10:21:13'),(149,6,'? Đơn đặt tour #86 đã được tạo thành công!\n? Tổng tiền: 3.000.000 VNĐ\n⏰ Vui lòng thanh toán trong vòng 15 phút.','booking_created',86,'/profile/my-bookings',0,'2025-12-16 10:21:19'),(150,1,'? Booking mới #86\n? Khách hàng: tran Manh hung\n?️ Tour: Vịnh Vũng Rô | Tháp Nhạn | Hòn Yến\n? 3.000.000 VNĐ','booking_created',86,'/admin/bookings',0,'2025-12-16 10:21:19'),(151,6,'❌ Booking #86 đã bị hủy.','booking_cancelled',86,'/profile/my-bookings',0,'2025-12-16 10:21:48'),(152,6,'? Đơn đặt tour #87 đã được tạo thành công!\n? Tổng tiền: 3.000.000 VNĐ\n⏰ Vui lòng thanh toán trong vòng 15 phút.','booking_created',87,'/profile/my-bookings',0,'2025-12-18 08:42:12'),(153,1,'? Booking mới #87\n? Khách hàng: tran Manh hung\n?️ Tour: Vịnh Vũng Rô | Tháp Nhạn | Hòn Yến\n? 3.000.000 VNĐ','booking_created',87,'/admin/bookings',0,'2025-12-18 08:42:12'),(154,6,'⏰ Đơn đặt tour #87 đã hết hạn thanh toán (15 phút).\n? Bạn có thể đặt lại tour bất cứ lúc nào!','booking_cancelled',87,'/profile/my-bookings',0,'2025-12-18 08:58:00'),(155,6,'? Đơn đặt tour #88 đã được tạo thành công!\n? Tổng tiền: 5.400.000 VNĐ\n⏰ Vui lòng thanh toán trong vòng 15 phút.','booking_created',88,'/profile/my-bookings',0,'2025-12-20 17:08:12'),(156,1,'? Booking mới #88\n? Khách hàng: tran Manh hung\n?️ Tour: Vịnh Vũng Rô | Tháp Nhạn | Hòn Yến\n? 5.400.000 VNĐ','booking_created',88,'/admin/bookings',0,'2025-12-20 17:08:12'),(157,6,'? Thanh toán thành công 5.400.000 VNĐ cho Booking #88','payment_success',88,'/profile/my-bookings',0,'2025-12-20 17:09:20'),(158,1,'? Thanh toán thành công!\n? Booking #88\n? 5.400.000 VNĐ','payment_success',88,'/admin/bookings',0,'2025-12-20 17:09:20'),(159,1,'? Đơn đặt tour #89 đã được tạo thành công!\n? Tổng tiền: 1.900.000 VNĐ\n⏰ Vui lòng thanh toán trong vòng 15 phút.','booking_created',89,'/profile/my-bookings',0,'2026-01-22 15:11:25'),(160,1,'? Booking mới #89\n? Khách hàng: le minh hao\n?️ Tour: Tháp Nghinh Phong | Gành Đá Đĩa | Vịnh Vũng Rô\n? 1.900.000 VNĐ','booking_created',89,'/admin/bookings',0,'2026-01-22 15:11:25'),(161,1,'? Đơn đặt tour #90 đã được tạo thành công!\n? Tổng tiền: 1.900.000 VNĐ\n⏰ Vui lòng thanh toán trong vòng 15 phút.','booking_created',90,'/profile/my-bookings',0,'2026-01-22 15:12:02'),(162,1,'? Booking mới #90\n? Khách hàng: le minh hao\n?️ Tour: Tháp Nghinh Phong | Gành Đá Đĩa | Vịnh Vũng Rô\n? 1.900.000 VNĐ','booking_created',90,'/admin/bookings',0,'2026-01-22 15:12:02'),(163,1,'⏰ Đơn đặt tour #89 đã hết hạn thanh toán (15 phút).\n? Bạn có thể đặt lại tour bất cứ lúc nào!','booking_cancelled',89,'/profile/my-bookings',0,'2026-01-23 08:49:00'),(164,1,'⏰ Đơn đặt tour #90 đã hết hạn thanh toán (15 phút).\n? Bạn có thể đặt lại tour bất cứ lúc nào!','booking_cancelled',90,'/profile/my-bookings',0,'2026-01-23 08:49:00'),(165,1,'?️ Tour mới chờ duyệt\n? Điểm đến: Vịnh Vũng Rô – Viên Ngọc Xanh Giữa Lòng Phú Yên | Tháp Nhạn – Biểu Tượng Lịch Sử Của Người Chăm Pa\n? Tạo bởi: le minh hao\n? Thời gian: 3 ngày 2 đêm\n? Khởi hành từ: Bình Dương','tour_pending',9,'/admin/tours',0,'2026-01-23 09:02:20'),(166,6,'? Tour \"Vịnh Vũng Rô | Tháp Nhạn | Hòn Yến\" (Booking #82) đã hoàn thành!\n✨ Cảm ơn bạn đã sử dụng dịch vụ!\n? Hãy để lại đánh giá cho tour này.','booking_completed',82,'/profile/my-bookings',0,'2026-01-23 17:00:00'),(167,6,'? Tour \"Vịnh Vũng Rô | Tháp Nhạn | Hòn Yến\" (Booking #84) đã hoàn thành!\n✨ Cảm ơn bạn đã sử dụng dịch vụ!\n? Hãy để lại đánh giá cho tour này.','booking_completed',84,'/profile/my-bookings',0,'2026-01-23 17:00:00'),(168,6,'? Tour \"Vịnh Vũng Rô | Tháp Nhạn | Hòn Yến\" (Booking #88) đã hoàn thành!\n✨ Cảm ơn bạn đã sử dụng dịch vụ!\n? Hãy để lại đánh giá cho tour này.','booking_completed',88,'/profile/my-bookings',0,'2026-01-23 17:00:00'),(169,6,'? Đơn đặt tour #91 đã được tạo thành công!\n? Tổng tiền: 1.900.000 VNĐ\n⏰ Vui lòng thanh toán trong vòng 15 phút.','booking_created',91,'/profile/my-bookings',0,'2026-01-25 06:06:53'),(170,1,'? Booking mới #91\n? Khách hàng: tran Manh hung\n?️ Tour: Tháp Nghinh Phong | Gành Đá Đĩa | Vịnh Vũng Rô\n? 1.900.000 VNĐ','booking_created',91,'/admin/bookings',0,'2026-01-25 06:06:53'),(171,6,'⏰ Đơn đặt tour #91 đã hết hạn thanh toán (15 phút).\n? Bạn có thể đặt lại tour bất cứ lúc nào!','booking_cancelled',91,'/profile/my-bookings',0,'2026-01-25 06:22:00'),(172,1,'✅ Tour \"Vịnh Vũng Rô – Viên Ngọc Xanh Giữa Lòng Phú Yên | Tháp Nhạn – Biểu Tượng Lịch Sử Của Người Chăm Pa\" của bạn đã được duyệt và hiển thị công khai!','tour_approved',9,'/tours/9',0,'2026-02-05 17:05:40'),(173,1,'❌ Tour \"Hòn Yến | Bãi Xếp | Gành Đá Đĩa\" đã bị từ chối.\nVui lòng liên hệ quản trị viên để biết thêm chi tiết.','tour_rejected',6,'/user/my-tours',0,'2026-02-05 17:05:53'),(174,1,'? Yêu cầu rút tiền mới từ User 6\n\nSố tiền: 500.000 VNĐ\nNgân hàng: MB Bank - Ngân hàng TMCP Quân Đội\nSố TK: 0869680796\nChủ TK: LE MINH HOC','admin_new_withdrawal',9,'/admin/withdrawals',0,'2026-02-05 17:19:38'),(175,6,'✅ Yêu cầu rút tiền #9 đã được duyệt!\n\n? Số tiền: 500000.00 VNĐ\n? Ngân hàng: MB Bank - Ngân hàng TMCP Quân Đội\n\nSố tiền sẽ được chuyển trong 3-5 ngày làm việc.','withdrawal_approved',9,'/profile/credit-wallet',0,'2026-02-05 17:20:47'),(176,6,'✅ Đã chuyển tiền cho yêu cầu rút tiền #9\n\n? Số tiền: 500000.00 VNĐ\n? Ngân hàng: MB Bank - Ngân hàng TMCP Quân Đội\n? Mã giao dịch: MB766776\n\nVui lòng kiểm tra tài khoản của bạn.','withdrawal_completed',9,'/profile/credit-wallet',0,'2026-02-05 17:23:57'),(177,1,'? Đơn đặt tour #92 đã được tạo thành công!\n? Tổng tiền: 1.900.000 VNĐ\n⏰ Vui lòng thanh toán trong vòng 15 phút.','booking_created',92,'/profile/my-bookings',0,'2026-03-30 07:34:58'),(178,1,'? Booking mới #92\n? Khách hàng: le minh hao\n?️ Tour: Tháp Nghinh Phong | Gành Đá Đĩa | Vịnh Vũng Rô\n? 1.900.000 VNĐ','booking_created',92,'/admin/bookings',0,'2026-03-30 07:34:58'),(179,1,'? Thanh toán thành công 1.900.000 VNĐ cho Booking #92','payment_success',92,'/profile/my-bookings',0,'2026-03-30 07:43:09'),(180,1,'? Thanh toán thành công!\n? Booking #92\n? 1.900.000 VNĐ','payment_success',92,'/admin/bookings',0,'2026-03-30 07:43:09'),(181,1,'✅ Tour \"Hòn Yến | Bãi Xếp | Gành Đá Đĩa\" của bạn đã được duyệt và hiển thị công khai!','tour_approved',6,'/tours/6',0,'2026-03-30 10:39:52'),(182,1,'❌ Tour \"Vịnh Vũng Rô – Viên Ngọc Xanh Giữa Lòng Phú Yên | Tháp Nhạn – Biểu Tượng Lịch Sử Của Người Chăm Pa\" đã bị từ chối.\nVui lòng liên hệ quản trị viên để biết thêm chi tiết.','tour_rejected',9,'/user/my-tours',0,'2026-03-30 10:40:11'),(183,6,'✅ Yêu cầu hoàn tiền đã được duyệt!\n\n? Booking: #70\n?️ Tour: Vịnh Vũng Rô | Tháp Nhạn | Hòn Yến\n? Số tiền: 2058000.00 VNĐ sẽ được chuyển khoản trong 3-5 ngày làm việc','refund_approved',70,'/profile/my-bookings',0,'2026-03-30 10:51:43'),(184,1,'?️ Tour mới chờ duyệt\n? Điểm đến: Tháp Nhạn – Biểu Tượng Lịch Sử Của Người Chăm Pa | Bãi Xép – Vẻ Đẹp Hoang Sơ Bên Dòng Biển Xanh\n? Tạo bởi: le minh hao\n? Thời gian: 3 ngày 2 đêm\n? Khởi hành từ: Bình Dương','tour_pending',10,'/admin/tours',0,'2026-03-30 11:24:40'),(185,1,'? Tour đã được hủy\n\n? Booking: #92\n?️ Tour: Tháp Nghinh Phong | Gành Đá Đĩa | Vịnh Vũng Rô\n? Hủy trước: 0 ngày\n\n⚠️ Hủy muộn (dưới 3 ngày) nên không được hoàn tiền theo chính sách.\n\nXin cảm ơn sự thông cảm của bạn.','booking_cancelled',92,'/profile/my-bookings',0,'2026-03-30 11:26:20'),(186,1,'?️ Tour mới chờ duyệt\n? Điểm đến: Gành Đá Đĩa – Kiệt Tác Thiên Nhiên Ở Phú Yên | Tháp Nhạn – Biểu Tượng Lịch Sử Của Người Chăm Pa\n? Tạo bởi: le minh hao\n? Thời gian: 3 ngày 2 đêm\n? Khởi hành từ: Hà Giang','tour_pending',11,'/admin/tours',0,'2026-03-30 12:08:26'),(187,1,'? Đơn đặt tour #93 đã được tạo thành công!\n? Tổng tiền: 1.900.000 VNĐ\n⏰ Vui lòng thanh toán trong vòng 15 phút.','booking_created',93,'/profile/my-bookings',0,'2026-03-30 12:21:24'),(188,1,'? Booking mới #93\n? Khách hàng: le minh hao\n?️ Tour: Tháp Nghinh Phong | Gành Đá Đĩa | Vịnh Vũng Rô\n? 1.900.000 VNĐ','booking_created',93,'/admin/bookings',0,'2026-03-30 12:21:24'),(189,1,'? Thanh toán thành công 1.900.000 VNĐ cho Booking #93','payment_success',93,'/profile/my-bookings',0,'2026-03-30 12:22:00'),(190,1,'? Thanh toán thành công!\n? Booking #93\n? 1.900.000 VNĐ','payment_success',93,'/admin/bookings',0,'2026-03-30 12:22:00');
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `booking_id` int NOT NULL,
  `payment_method` varchar(50) NOT NULL DEFAULT 'VNPAY',
  `amount` decimal(15,2) NOT NULL COMMENT 'Số tiền thanh toán',
  `payment_status` enum('pending','success','failed') NOT NULL DEFAULT 'pending',
  `payment_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `vnp_TxnRef` varchar(255) DEFAULT NULL COMMENT 'Mã tham chiếu cho mỗi lần thanh toán',
  `vnp_TransactionNo` varchar(255) DEFAULT NULL COMMENT 'Mã giao dịch của VNPAY',
  `vnp_ResponseCode` varchar(10) DEFAULT NULL COMMENT 'Mã phản hồi của VNPAY',
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `vnp_TxnRef` (`vnp_TxnRef`),
  KEY `booking_id` (`booking_id`),
  CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`booking_id`) REFERENCES `bookings` (`id`) ON DELETE CASCADE,
  CONSTRAINT `payments_chk_1` CHECK ((`amount` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (51,50,'VNPAY',12500000.00,'success','2025-11-15 18:30:37','501763231437150','15263834','00','2025-11-15 18:31:11'),(52,62,'VNPAY',1100000.00,'pending','2025-11-16 07:24:27','621763277867541',NULL,NULL,'2025-11-16 07:24:27'),(53,64,'VNPAY',3000000.00,'success','2025-11-16 08:21:37','641763281297993','15264400','00','2025-11-16 08:22:09'),(54,65,'VNPAY',2700000.00,'success','2025-12-01 02:52:18','651764557538501','15311962','00','2025-12-01 02:53:36'),(55,67,'VNPAY',4200000.00,'success','2025-12-01 02:59:24','671764557964591','15311971','00','2025-12-01 03:00:04'),(56,68,'VNPAY',6000000.00,'success','2025-12-01 03:30:45','681764559845535','15312041','00','2025-12-01 03:31:19'),(57,69,'VNPAY',2600000.00,'success','2025-12-01 03:31:55','691764559915150','15312043','00','2025-12-01 03:32:31'),(58,70,'VNPAY',4200000.00,'success','2025-12-02 08:57:14','701764665834509','15315053','00','2025-12-02 08:57:57'),(59,71,'VNPAY',4800000.00,'success','2025-12-02 09:10:58','711764666658726','15315089','00','2025-12-02 09:11:36'),(60,72,'VNPAY',4200000.00,'success','2025-12-02 16:49:53','721764694193048','15316004','00','2025-12-02 16:50:38'),(61,73,'credit',3000000.00,'success','2025-12-02 18:13:22','CREDIT_73_1764699202326',NULL,NULL,'2025-12-02 18:13:22'),(62,74,'credit',1900000.00,'success','2025-12-02 18:15:15','CREDIT_74_1764699315905',NULL,NULL,'2025-12-02 18:15:15'),(63,75,'VNPAY',5400000.00,'success','2025-12-02 19:00:56','751764702056219','15316163','00','2025-12-02 19:01:22'),(64,77,'VNPAY',2700000.00,'success','2025-12-03 04:10:29','771764735029880','15316685','00','2025-12-03 04:11:06'),(65,78,'VNPAY',2700000.00,'success','2025-12-05 07:10:34','781764918634261','15321864','00','2025-12-05 07:11:22'),(66,82,'VNPAY',1800000.00,'success','2025-12-14 13:47:16','821765720036148','15340832','00','2025-12-14 13:48:21'),(67,84,'VNPAY',5400000.00,'failed','2025-12-16 10:12:57','841765879977227',NULL,NULL,'2025-12-16 10:14:49'),(68,84,'VNPAY',5400000.00,'success','2025-12-16 10:14:49','841765880089770','15347996','00','2025-12-16 10:15:20'),(69,88,'VNPAY',5400000.00,'success','2025-12-20 17:08:15','881766250495498','15357385','00','2025-12-20 17:09:20'),(70,90,'VNPAY',1900000.00,'pending','2026-01-22 15:12:26','901769094746962',NULL,NULL,'2026-01-22 15:12:26'),(71,92,'VNPAY',1900000.00,'failed','2026-03-30 07:35:08','921774856108497',NULL,NULL,'2026-03-30 07:41:00'),(72,92,'VNPAY',1900000.00,'failed','2026-03-30 07:41:00','921774856460558',NULL,NULL,'2026-03-30 07:41:48'),(73,92,'VNPAY',1900000.00,'success','2026-03-30 07:41:48','921774856508626','15474699','00','2026-03-30 07:43:09'),(74,93,'VNPAY',1900000.00,'success','2026-03-30 12:21:25','931774873285927','15475210','00','2026-03-30 12:22:00');
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promotions`
--

DROP TABLE IF EXISTS `promotions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `promotions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(50) NOT NULL,
  `description` text,
  `discount_type` enum('percentage','fixed_amount') NOT NULL,
  `discount_value` decimal(10,2) NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `max_usage` int DEFAULT NULL,
  `usage_count` int DEFAULT '0',
  `is_active` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  CONSTRAINT `promotions_chk_1` CHECK ((`discount_value` >= 0)),
  CONSTRAINT `promotions_chk_2` CHECK ((`usage_count` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promotions`
--

LOCK TABLES `promotions` WRITE;
/*!40000 ALTER TABLE `promotions` DISABLE KEYS */;
INSERT INTO `promotions` VALUES (2,'SALE15','Giảm 15% cho tất cả tour','percentage',15.00,'2025-10-01 00:00:00','2025-10-31 23:59:59',200,56,0,'2025-10-20 16:51:24'),(3,'GIAM500K','Giảm 500.000 VNĐ cho đơn hàng từ 5 triệu','fixed_amount',500000.00,'2025-10-15 00:00:00','2025-11-15 23:59:59',100,10,0,'2025-10-20 16:51:24'),(4,'VNPAY10','Giảm 10% khi thanh toán qua VNPAY','percentage',10.00,'2025-01-01 00:00:00','2025-12-31 23:59:59',NULL,122,0,'2025-10-20 16:51:24'),(5,'SUMMER2025','Khuyến mãi hè 2025 (đã hết hạn)','percentage',20.00,'2025-06-01 00:00:00','2025-08-31 23:59:59',500,498,0,'2025-10-20 16:51:24'),(6,'BLACKFRIDAY','Sale Black Friday (sắp diễn ra)','fixed_amount',1000000.00,'2025-11-28 00:00:00','2025-11-30 23:59:59',50,0,0,'2025-10-20 16:51:24'),(7,'KHACHMOI','Giảm 100.000 VNĐ cho khách hàng mới','fixed_amount',100000.00,'2025-01-01 00:00:00','2025-12-31 23:59:59',NULL,305,0,'2025-10-20 16:51:24'),(8,'FLASH1H','Flash sale (đã hết lượt)','percentage',50.00,'2025-10-18 12:00:00','2025-10-18 13:00:00',10,10,0,'2025-10-20 16:51:24'),(9,'TESTCODE','Mã test (đã tắt)','percentage',90.00,'2025-01-01 00:00:00','2025-12-31 23:59:59',NULL,2,0,'2025-10-20 16:51:24'),(10,'PHUQUOC20','Giảm 20% cho tour Phú Quốc','percentage',20.00,'2025-10-10 00:00:00','2025-10-25 23:59:59',50,5,0,'2025-10-20 16:51:24'),(11,'GIAM200K','Giảm 200.000 VNĐ','fixed_amount',200000.00,'2025-08-31 07:00:00','2026-02-28 07:00:00',100,100,0,'2025-10-20 16:51:24');
/*!40000 ALTER TABLE `promotions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refunds`
--

DROP TABLE IF EXISTS `refunds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `refunds` (
  `id` int NOT NULL AUTO_INCREMENT,
  `booking_id` int NOT NULL COMMENT 'ID của booking bị hủy',
  `refund_amount` decimal(15,2) NOT NULL COMMENT 'Số tiền hoàn (VNĐ)',
  `refund_percent` int NOT NULL COMMENT 'Phần trăm hoàn (0-100)',
  `refund_reason` text COMMENT 'Lý do hoàn tiền (VD: Hủy trước 7 ngày)',
  `refund_status` enum('pending','approved','processing','completed','rejected') NOT NULL DEFAULT 'pending' COMMENT 'Trạng thái hoàn tiền',
  `refund_method` varchar(50) DEFAULT 'bank_transfer' COMMENT 'Phương thức hoàn: credit/bank_transfer',
  `processing_fee` decimal(10,2) DEFAULT '0.00' COMMENT 'Phí xử lý 2% nếu chọn bank_transfer',
  `refund_reference` varchar(255) DEFAULT NULL COMMENT 'Mã tham chiếu hoàn tiền (VD: TXN123456789)',
  `processed_by` int DEFAULT NULL COMMENT 'ID Admin xử lý',
  `processed_at` timestamp NULL DEFAULT NULL COMMENT 'Thời gian xử lý',
  `approved_at` timestamp NULL DEFAULT NULL COMMENT 'Thời gian duyệt hoàn tiền',
  `admin_notes` text COMMENT 'Ghi chú từ admin',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Thời gian tạo yêu cầu hoàn tiền',
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Thời gian cập nhật cuối',
  PRIMARY KEY (`id`),
  KEY `processed_by` (`processed_by`),
  KEY `idx_booking_id` (`booking_id`),
  KEY `idx_refund_status` (`refund_status`),
  KEY `idx_refund_method` (`refund_method`),
  KEY `idx_created_at` (`created_at` DESC),
  CONSTRAINT `refunds_ibfk_1` FOREIGN KEY (`booking_id`) REFERENCES `bookings` (`id`) ON DELETE CASCADE,
  CONSTRAINT `refunds_ibfk_2` FOREIGN KEY (`processed_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `refunds_chk_1` CHECK ((`refund_amount` >= 0)),
  CONSTRAINT `refunds_chk_2` CHECK ((`refund_percent` between 0 and 100))
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refunds`
--

LOCK TABLES `refunds` WRITE;
/*!40000 ALTER TABLE `refunds` DISABLE KEYS */;
INSERT INTO `refunds` VALUES (1,65,1350000.00,50,'Hủy trước 4 ngày, được hoàn 50%','approved','credit',0.00,NULL,NULL,NULL,'2025-12-01 02:56:33',NULL,'2025-12-01 02:56:33','2025-12-01 02:56:33'),(2,67,2058000.00,50,'Hủy trước 4 ngày, được hoàn 50%','pending','bank_transfer',42000.00,NULL,NULL,NULL,NULL,NULL,'2025-12-01 03:00:55','2025-12-01 03:00:55'),(3,70,2058000.00,50,'Hủy trước 3 ngày, được hoàn 50%','processing','bank_transfer',42000.00,NULL,1,'2026-03-30 10:51:43',NULL,'','2025-12-02 08:59:25','2026-03-30 10:51:43'),(4,71,2400000.00,50,'Hủy trước 3 ngày, được hoàn 50%','approved','credit',0.00,NULL,NULL,NULL,'2025-12-02 09:11:45',NULL,'2025-12-02 09:11:45','2025-12-02 09:11:45'),(5,72,2100000.00,50,'ád (Hủy 3 ngày trước khởi hành)','rejected','credit',0.00,NULL,1,'2025-12-03 04:24:24',NULL,'không hợp lệ','2025-12-02 16:51:14','2025-12-03 04:24:24'),(6,74,950000.00,50,NULL,'pending','credit',0.00,NULL,NULL,NULL,NULL,NULL,'2025-12-02 18:15:37','2025-12-02 18:15:37'),(7,75,0.00,0,NULL,'rejected','none',0.00,NULL,NULL,'2025-12-02 19:01:35',NULL,NULL,'2025-12-02 19:01:35','2025-12-02 19:01:35'),(8,77,1323000.00,50,'Hủy trước 6 ngày (3-6 ngày), được hoàn 50% theo chính sách','processing','bank_transfer',27000.00,NULL,1,'2025-12-03 04:22:43',NULL,'oke','2025-12-03 04:11:45','2025-12-03 04:22:43'),(9,78,2160000.00,80,'Hủy trước 7 ngày (7-14 ngày), được hoàn 80% theo chính sách','approved','credit',0.00,NULL,1,'2025-12-05 07:13:40','2025-12-05 07:13:40','','2025-12-05 07:12:45','2025-12-05 07:13:40'),(10,92,0.00,0,'Hủy muộn (0 ngày trước khởi hành, dưới 3 ngày), không được hoàn tiền theo chính sách','rejected','none',0.00,NULL,NULL,'2026-03-30 11:26:20',NULL,NULL,'2026-03-30 11:26:20','2026-03-30 11:26:20');
/*!40000 ALTER TABLE `refunds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review_images`
--

DROP TABLE IF EXISTS `review_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review_images` (
  `id` int NOT NULL AUTO_INCREMENT,
  `review_id` int NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `uploaded_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `review_id` (`review_id`),
  CONSTRAINT `review_images_ibfk_1` FOREIGN KEY (`review_id`) REFERENCES `reviews` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review_images`
--

LOCK TABLES `review_images` WRITE;
/*!40000 ALTER TABLE `review_images` DISABLE KEYS */;
INSERT INTO `review_images` VALUES (2,8,'https://res.cloudinary.com/dapsnr3xi/image/upload/v1774865415/travel_phuyen/reviews/mhzf2x3sh6rdd4gi2vid.png','2025-10-06 13:03:28'),(8,19,'/uploads/review_images/review-1-2-1761540460625-606269329.png','2025-10-27 04:47:40'),(9,24,'/uploads/review_images/review-14-1-1761566869688-947232150.jpg','2025-10-27 12:07:49'),(10,25,'/uploads/review_images/review-6-1-1761720421879-705860523.jpg','2025-10-29 06:47:01');
/*!40000 ALTER TABLE `review_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviews` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `tour_id` int NOT NULL,
  `rating` int NOT NULL,
  `comment` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `idx_reviews_tour_id` (`tour_id`),
  CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`tour_id`) REFERENCES `tours` (`id`) ON DELETE CASCADE,
  CONSTRAINT `reviews_chk_1` CHECK ((`rating` between 1 and 5))
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES (1,1,1,5,'tuyệt vời','2025-05-25 10:16:51'),(2,2,1,4,'Thật là một trải nghiệm tuyệt vời','2025-05-25 10:53:59'),(4,1,3,4,'tuyệt vời','2025-10-06 08:22:34'),(8,1,1,3,'ádasdasd','2025-10-06 13:03:28'),(16,1,2,4,'ds','2025-10-07 11:26:39'),(18,1,2,5,'một trải nghiệm thật tuyệt vời','2025-10-27 04:31:31'),(19,1,2,5,'Tuyệt vời','2025-10-27 04:47:40'),(20,1,2,4,'cảnh thật đẹp','2025-10-27 04:51:02'),(21,1,2,4,'Một chuyến đi thật thú vị','2025-10-27 05:07:20'),(22,1,2,5,'Tuyệt vời','2025-10-27 05:23:27'),(23,1,2,4,'hi','2025-10-27 05:30:03'),(24,14,1,4,'cảnh ở đây rất đẹp','2025-10-27 12:07:49'),(25,6,1,4,'hi','2025-10-29 06:47:01');
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedule_activities`
--

DROP TABLE IF EXISTS `schedule_activities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schedule_activities` (
  `id` int NOT NULL AUTO_INCREMENT,
  `schedule_id` int NOT NULL,
  `activity` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `schedule_id` (`schedule_id`),
  CONSTRAINT `schedule_activities_ibfk_1` FOREIGN KEY (`schedule_id`) REFERENCES `tour_schedule` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=226 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedule_activities`
--

LOCK TABLES `schedule_activities` WRITE;
/*!40000 ALTER TABLE `schedule_activities` DISABLE KEYS */;
INSERT INTO `schedule_activities` VALUES (66,4,'05:00: Xe và HDV đón khách tại điểm hẹn, khởi hành đi Phú Yên'),(67,4,'12:00: Đến Tuy Hòa, dùng cơm trưa tại nhà hàng địa phương'),(68,4,'14:00: Tham quan Tháp Nghinh Phong - ngắm toàn cảnh thành phố'),(69,4,'17:00: Nhận phòng khách sạn, nghỉ ngơi'),(70,4,'18:30: Dùng bữa tối, tự do khám phá thành phố Tuy Hòa về đêm'),(71,5,'06:00: Dùng bữa sáng tại khách sạn'),(72,5,'07:30: Khởi hành đi Gành Đá Đĩa - thắng cảnh địa chất nổi tiếng'),(73,5,'11:30: Dùng bữa trưa tại nhà hàng địa phương'),(74,5,'14:00: Tham quan, tắm biển tại Bãi Xếp (bối cảnh phim \'Tôi thấy hoa vàng trên cỏ xanh\')'),(75,5,'17:00: Trở về khách sạn nghỉ ngơi'),(76,5,'18:30: Dùng bữa tối với hải sản địa phương'),(77,6,'06:30: Dùng bữa sáng, trả phòng khách sạn'),(78,6,'08:00: Tham quan Vịnh Vũng Rô - vịnh biển đẹp bậc nhất Việt Nam'),(79,6,'11:30: Dùng bữa trưa, nghỉ ngơi'),(80,6,'13:00: Khởi hành về TP.HCM'),(81,6,'21:00: Về đến TP.HCM, kết thúc chương trình tour'),(82,7,'05:00: Xe và HDV đón khách tại điểm hẹn, khởi hành đi Phú Yên'),(83,7,'12:00: Đến Tuy Hòa, dùng cơm trưa'),(84,7,'14:00: Nhận phòng khách sạn, nghỉ ngơi'),(85,7,'16:00: Tham quan Quảng trường 1/4, Nhà thờ Mằng Lăng'),(86,7,'18:30: Dùng bữa tối, tự do khám phá thành phố'),(87,8,'06:00: Dùng bữa sáng tại khách sạn'),(88,8,'07:30: Tham quan Gành Đá Đĩa - thắng cảnh độc đáo của Phú Yên'),(89,8,'11:30: Dùng bữa trưa'),(90,8,'14:00: Tham quan Mũi Điện - điểm đón ánh bình minh đầu tiên của Việt Nam'),(91,8,'17:00: Trở về khách sạn, nghỉ ngơi'),(92,8,'18:30: Dùng bữa tối với hải sản địa phương'),(93,9,'06:30: Dùng bữa sáng tại khách sạn'),(94,9,'08:00: Khởi hành đi Vịnh Vũng Rô, tham gia tour thuyền ngắm vịnh'),(95,9,'11:30: Dùng bữa trưa tại nhà hàng ven biển'),(96,9,'14:00: Tham quan, tắm biển tại Bãi Xếp'),(97,9,'17:00: Trở về khách sạn nghỉ ngơi'),(98,9,'18:30: Dùng bữa tối, tự do khám phá thành phố về đêm'),(99,10,'06:30: Dùng bữa sáng, trả phòng khách sạn'),(100,10,'08:00: Tham quan chợ Tuy Hòa, mua đặc sản địa phương'),(101,10,'11:00: Dùng bữa trưa, nghỉ ngơi'),(102,10,'12:30: Khởi hành về TP.HCM'),(103,10,'20:30: Về đến TP.HCM, kết thúc chương trình tour'),(104,11,'05:00: Xe và HDV đón khách tại điểm hẹn, khởi hành đi Phú Yên'),(105,11,'12:00: Đến Tuy Hòa, dùng cơm trưa tại nhà hàng địa phương'),(106,11,'14:00: Tham quan Tháp Nhạn - di tích kiến trúc Chăm Pa cổ kính'),(107,11,'16:30: Nhận phòng khách sạn, nghỉ ngơi'),(108,11,'18:30: Dùng bữa tối, tự do khám phá thành phố Tuy Hòa về đêm'),(109,12,'06:00: Dùng bữa sáng tại khách sạn'),(110,12,'07:30: Khởi hành đi Vịnh Vũng Rô, tham quan và tắm biển'),(111,12,'11:30: Dùng bữa trưa với hải sản tươi ngon'),(112,12,'14:00: Tham quan Đầm Ô Loan, thưởng thức sò huyết'),(113,12,'17:00: Trở về khách sạn nghỉ ngơi'),(114,12,'18:30: Dùng bữa tối, tự do khám phá thành phố'),(115,13,'05:30: Dùng bữa sáng sớm, trả phòng khách sạn'),(116,13,'06:30: Di chuyển đến Hòn Yến - tham quan con đường rạn san hô kỳ vĩ (phụ thuộc vào thủy triều)'),(117,13,'11:00: Dùng bữa trưa, nghỉ ngơi'),(118,13,'13:00: Khởi hành về TP.HCM'),(119,13,'21:00: Về đến TP.HCM, kết thúc chương trình tour'),(140,27,'05:00: Xe và HDV đón khách tại điểm hẹn, khởi hành đi Phú Yên'),(141,27,'12:00: Đến Tuy Hòa, dùng cơm trưa tại nhà hàng địa phương'),(142,27,'14:00: Tham quan Tháp Nghinh Phong - ngắm toàn cảnh thành phố'),(143,27,'17:00: Nhận phòng khách sạn, nghỉ ngơi'),(144,27,'18:30: Dùng bữa tối, tự do khám phá thành phố Tuy Hòa về đêm'),(145,28,'06:30: Dùng bữa sáng, trả phòng khách sạn'),(146,28,'08:00: Tham quan Vịnh Vũng Rô - vịnh biển đẹp bậc nhất Việt Nam'),(147,28,'11:30: Dùng bữa trưa, nghỉ ngơi'),(148,28,'13:00: Khởi hành về TP.HCM'),(149,28,'21:00: Về đến TP.HCM, kết thúc chương trình tour'),(150,29,'05:00: Xe và HDV đón khách tại điểm hẹn, khởi hành đi Phú Yên'),(151,29,'12:00: Đến Tuy Hòa, dùng cơm trưa tại nhà hàng địa phương'),(152,29,'14:00: Tham quan Tháp Nghinh Phong - ngắm toàn cảnh thành phố'),(153,29,'17:00: Nhận phòng khách sạn, nghỉ ngơi'),(154,29,'18:30: Dùng bữa tối, tự do khám phá thành phố Tuy Hòa về đêm'),(155,30,'06:00: Dùng bữa sáng tại khách sạn'),(156,30,'07:30: Khởi hành đi Gành Đá Đĩa - thắng cảnh địa chất nổi tiếng'),(157,30,'11:30: Dùng bữa trưa tại nhà hàng địa phương'),(158,30,'14:00: Tham quan, tắm biển tại Bãi Xép'),(159,30,'17:00: Trở về khách sạn nghỉ ngơi'),(160,30,'18:30: Dùng bữa tối với hải sản địa phương'),(161,31,'06:30: Dùng bữa sáng, trả phòng khách sạn'),(162,31,'08:00: Tham quan Vịnh Vũng Rô - vịnh biển đẹp bậc nhất Việt Nam'),(163,31,'11:30: Dùng bữa trưa, nghỉ ngơi'),(164,31,'13:00: Khởi hành về TP.HCM'),(165,31,'21:00: Về đến TP.HCM, kết thúc chương trình tour'),(182,35,'05:00: Xe và HDV đón khách tại điểm hẹn, khởi hành đi Phú Yên'),(183,35,'12:00: Đến Tuy Hòa, dùng cơm trưa tại nhà hàng địa phương'),(184,35,'14:00: Tham quan Tháp Nghinh Phong - ngắm toàn cảnh thành phố'),(185,35,'17:00: Nhận phòng khách sạn, nghỉ ngơi'),(186,35,'18:30: Dùng bữa tối, tự do khám phá thành phố Tuy Hòa về đêm'),(187,36,'06:00: Dùng bữa sáng tại khách sạn'),(188,36,'07:30: Khởi hành đi Gành Đá Đĩa - thắng cảnh địa chất nổi tiếng'),(189,36,'11:30: Dùng bữa trưa tại nhà hàng địa phương'),(190,36,'14:00: Tham quan, tắm biển tại Bãi Xép'),(191,36,'17:00: Trở về khách sạn nghỉ ngơi'),(192,36,'18:30: Dùng bữa tối với hải sản địa phương'),(193,37,'06:30: Dùng bữa sáng, trả phòng khách sạn'),(194,37,'08:00: Tham quan Vịnh Vũng Rô - vịnh biển đẹp bậc nhất Việt Nam'),(195,37,'11:30: Dùng bữa trưa, nghỉ ngơi'),(196,37,'13:00: Khởi hành về TP.HCM'),(197,37,'21:00: Về đến TP.HCM, kết thúc chương trình tour'),(212,41,'07:00: Khởi hành từ điểm hẹn'),(213,41,'12:00: Dùng bữa trưa tại nhà hàng địa phương'),(214,41,'15:00: Đến khách sạn, nhận phòng và nghỉ ngơi'),(215,41,'18:30: Dùng bữa tối và tự do khám phá thành phố'),(216,42,'06:00: Dùng bữa sáng tại khách sạn'),(217,42,'07:30: Khởi hành đi Gành Đá Đĩa - thắng cảnh địa chất nổi tiếng'),(218,42,'11:30: Dùng bữa trưa tại nhà hàng địa phương'),(219,42,'14:00: Tham quan, tắm biển tại Bãi Xếp'),(220,42,'17:00: Trở về khách sạn nghỉ ngơi'),(221,42,'18:30: Dùng bữa tối với hải sản địa phương'),(222,43,'07:00: Dùng điểm tâm tại khách sạn'),(223,43,'09:00: Trả phòng và mua sắm đặc sản'),(224,43,'13:00: Khởi hành về TP.HCM'),(225,43,'21:00: Về đến TP.HCM, kết thúc chương trình tour');
/*!40000 ALTER TABLE `schedule_activities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tips`
--

DROP TABLE IF EXISTS `tips`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tips` (
  `id` int NOT NULL AUTO_INCREMENT,
  `location_id` int NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `location_id` (`location_id`),
  CONSTRAINT `tips_ibfk_1` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=168 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tips`
--

LOCK TABLES `tips` WRITE;
/*!40000 ALTER TABLE `tips` DISABLE KEYS */;
INSERT INTO `tips` VALUES (7,3,'Mang giày dép chống trơn nếu tham gia lặn hoặc khám phá bãi đá.'),(8,3,'Đặt trước thuyền nếu đi nhóm đông để tránh chờ đợi.'),(9,3,'Bảo vệ môi trường, không xả rác xuống biển.'),(10,4,'Tránh leo núi vào giờ nắng gắt, vì khu vực khá nóng.'),(11,4,'Tôn trọng không gian linh thiêng của tháp, không viết vẽ bậy.'),(12,4,'Mang theo ô/dù nếu đi vào mùa mưa.'),(13,5,'Mang theo nước uống, vì khu vực còn hoang sơ, ít hàng quán.'),(14,5,'Cẩn thận khi leo ghềnh đá, tránh trượt ngã.'),(15,5,'Không để lại rác, giữ gìn vẻ đẹp tự nhiên của bãi biển.'),(16,6,'Mang kính lặn và giày chống trơn để bảo vệ chân khi lặn ngắm san hô.'),(17,6,'Tránh đi vào ngày biển động, vì san hô có thể khó nhìn thấy.'),(18,6,'Không làm hỏng san hô, giữ gìn hệ sinh thái biển.'),(34,7,'Tôn trọng không gian linh thiêng, không chụp ảnh trong lúc làm lễ.'),(35,7,'Mang giày dép thoải mái để đi dạo quanh khu vực nhà thờ.'),(36,7,'Hỏi người dân địa phương về các quán ăn ngon gần đó.'),(37,7,'Hỏi người dân địa phương về các quán ăn ngon gần đó.'),(96,2,'Trang phục: Giày dép chống trơn, mũ, kem chống nắng.'),(97,2,'An toàn: Di chuyển cẩn thận trên đá ướt, tránh xa mép khi sóng lớn.'),(98,2,'Môi trường: Không xả rác, giữ gìn vẻ đẹp tự nhiên.'),(161,1,'Mang mũ, kem chống nắng'),(162,1,'Tránh giờ nắng gắt (11:00 – 15:00)'),(163,1,'Không xả rác, bảo vệ môi trường');
/*!40000 ALTER TABLE `tips` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tour_departures`
--

DROP TABLE IF EXISTS `tour_departures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tour_departures` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tour_id` int NOT NULL,
  `departure_date` date NOT NULL COMMENT 'Ngày khởi hành',
  `duration` varchar(50) DEFAULT NULL COMMENT 'Thời gian tour (copy từ Tours)',
  `end_date` date DEFAULT NULL COMMENT 'Ngày kết thúc tour (calculated)',
  `capacity` int NOT NULL COMMENT 'Tổng số chỗ (vé) có thể bán',
  `slots_booked` int NOT NULL DEFAULT '0' COMMENT 'Số chỗ đã được đặt',
  `status` enum('OPEN','CLOSED','CANCELLED') NOT NULL DEFAULT 'OPEN' COMMENT 'Trạng thái lịch: Mở bán, Đóng, Hủy',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_tour_departure_date` (`tour_id`,`departure_date`),
  KEY `idx_end_date` (`end_date`),
  KEY `idx_departure_end` (`departure_date`,`end_date`),
  CONSTRAINT `tour_departures_ibfk_1` FOREIGN KEY (`tour_id`) REFERENCES `tours` (`id`) ON DELETE CASCADE,
  CONSTRAINT `chk_slots_capacity` CHECK ((`slots_booked` <= `capacity`))
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tour_departures`
--

LOCK TABLES `tour_departures` WRITE;
/*!40000 ALTER TABLE `tour_departures` DISABLE KEYS */;
INSERT INTO `tour_departures` VALUES (1,1,'2025-11-25','3 ngày 3 đêm','2025-11-27',20,13,'OPEN'),(2,1,'2025-12-02','3 ngày 3 đêm','2025-12-04',20,3,'OPEN'),(3,1,'2025-12-09','3 ngày 3 đêm','2025-12-11',30,2,'OPEN'),(4,3,'2025-11-28','3 ngày 3 đêm','2025-11-30',25,5,'OPEN'),(5,3,'2025-12-05','3 ngày 3 đêm','2025-12-07',25,6,'OPEN'),(6,4,'2025-11-29','2 ngày 1 đêm','2025-11-30',30,0,'OPEN'),(7,4,'2025-12-06','2 ngày 1 đêm','2025-12-07',30,4,'OPEN'),(8,5,'2025-11-30','2 ngày 1 đêm','2025-12-01',20,20,'CLOSED'),(9,6,'2025-12-07','2 ngày 1 đêm','2025-12-08',20,0,'OPEN'),(10,6,'2025-12-01','2 ngày 1 đêm','2025-12-02',25,0,'OPEN'),(11,8,'2025-12-08','2 ngày 1 đêm','2025-12-09',25,0,'CANCELLED'),(12,1,'2026-04-08','3 ngày 3 đêm','2026-04-10',50,0,'OPEN'),(13,1,'2026-03-30','3 ngày 3 đêm','2026-04-01',40,2,'OPEN'),(14,2,'2025-12-14','4 ngày 3 đêm','2025-12-17',30,0,'OPEN'),(15,2,'2025-12-18','4 ngày 3 đêm','2025-12-21',35,0,'OPEN'),(16,3,'2026-01-01','3 ngày 3 đêm','2026-01-03',34,9,'OPEN'),(17,1,'2026-04-03','3 ngày 3 đêm','2026-04-05',50,0,'OPEN'),(18,4,'2026-02-11','2 ngày 1 đêm','2026-02-12',50,0,'OPEN');
/*!40000 ALTER TABLE `tour_departures` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `before_insert_tour_departure` BEFORE INSERT ON `tour_departures` FOR EACH ROW BEGIN
    SELECT duration INTO @tour_duration FROM tours WHERE id = NEW.tour_id;
    SET NEW.duration = @tour_duration;
    
    IF NEW.duration IS NOT NULL THEN
        SET NEW.end_date = DATE_ADD(
            NEW.departure_date, 
            INTERVAL CAST(SUBSTRING_INDEX(NEW.duration, ' ', 1) AS UNSIGNED) - 1 DAY
        );
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `before_update_tour_departure` BEFORE UPDATE ON `tour_departures` FOR EACH ROW BEGIN
    IF NEW.departure_date != OLD.departure_date THEN
        IF NEW.duration IS NOT NULL THEN
            SET NEW.end_date = DATE_ADD(
                NEW.departure_date, 
                INTERVAL CAST(SUBSTRING_INDEX(NEW.duration, ' ', 1) AS UNSIGNED) - 1 DAY
            );
        END IF;
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `tour_excludes`
--

DROP TABLE IF EXISTS `tour_excludes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tour_excludes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tour_id` int NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tour_id` (`tour_id`),
  CONSTRAINT `tour_excludes_ibfk_1` FOREIGN KEY (`tour_id`) REFERENCES `tours` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tour_excludes`
--

LOCK TABLES `tour_excludes` WRITE;
/*!40000 ALTER TABLE `tour_excludes` DISABLE KEYS */;
INSERT INTO `tour_excludes` VALUES (4,1,'Chi phí cá nhân, đồ uống'),(5,1,'Các chi phí không được đề cập trong mục bao gồm'),(6,1,'Tiền tip cho hướng dẫn viên và tài xế'),(7,2,'Chi phí cá nhân, đồ uống'),(8,2,'Các chi phí không được đề cập trong mục bao gồm'),(9,2,'Tiền tip cho hướng dẫn viên và tài xế'),(10,3,'Chi phí cá nhân, đồ uống'),(11,3,'Các chi phí không được đề cập trong mục bao gồm'),(12,3,'Tiền tip cho hướng dẫn viên và tài xế'),(13,4,'Chi phí cá nhân, đồ uống'),(14,4,'Các chi phí không được đề cập trong mục bao gồm'),(15,4,'Tiền tip cho hướng dẫn viên và tài xế'),(16,5,'Chi phí cá nhân'),(17,5,'Nước uống ngoài chương trình'),(18,5,'Tiền tip cho HDV'),(19,6,'Chi phí cá nhân'),(20,6,'Nước uống ngoài chương trình'),(21,6,'Tip cho tài xế và HDV'),(28,8,'Chi phí cá nhân, đồ uống'),(29,8,'Các chi phí không được đề cập trong mục bao gồm'),(30,8,'Tiền tip cho hướng dẫn viên và tài xế'),(31,9,'Chi phí cá nhân, đồ uống'),(32,9,'Các chi phí không được đề cập trong mục bao gồm'),(33,9,'Tiền tip cho hướng dẫn viên và tài xế'),(37,10,'Chi phí cá nhân, đồ uống'),(38,10,'Các chi phí không được đề cập trong mục bao gồm'),(39,10,'Tiền tip cho hướng dẫn viên và tài xế'),(42,11,'Chi phí cá nhân'),(43,11,'Tiền tip cho hướng dẫn viên');
/*!40000 ALTER TABLE `tour_excludes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tour_highlights`
--

DROP TABLE IF EXISTS `tour_highlights`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tour_highlights` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tour_id` int NOT NULL,
  `highlight` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tour_id` (`tour_id`),
  CONSTRAINT `tour_highlights_ibfk_1` FOREIGN KEY (`tour_id`) REFERENCES `tours` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tour_highlights`
--

LOCK TABLES `tour_highlights` WRITE;
/*!40000 ALTER TABLE `tour_highlights` DISABLE KEYS */;
INSERT INTO `tour_highlights` VALUES (5,1,'Chiêm ngưỡng Tháp Nghinh Phong - biểu tượng của thành phố Tuy Hòa'),(6,1,'Khám phá Gành Đá Đĩa - kỳ quan địa chất độc đáo'),(7,1,'Thưởng ngoạn vẻ đẹp hoang sơ của Vịnh Vũng Rô'),(8,1,'Thưởng thức hải sản tươi ngon đặc trưng vùng biển Phú Yên'),(9,2,'Tham quan Gành Đá Đĩa - di sản địa chất độc đáo'),(10,2,'Trải nghiệm du thuyền khám phá Vịnh Vũng Rô'),(11,2,'Tắm biển tại Bãi Xếp - bãi biển đẹp nhất Phú Yên'),(12,2,'Thưởng thức ẩm thực đặc sản Phú Yên'),(13,3,'Chiêm ngưỡng vẻ đẹp hoang sơ của Vịnh Vũng Rô'),(14,3,'Tìm hiểu văn hóa Chăm qua kiến trúc Tháp Nhạn cổ kính'),(15,3,'Trải nghiệm con đường rạn san hô độc đáo tại Hòn Yến'),(16,3,'Thưởng thức đặc sản Phú Yên với nhiều món hải sản tươi ngon'),(17,4,'Khám phá Tháp Nhạn - di tích kiến trúc cổ lâu đời'),(18,4,'Tham quan Nhà Thờ Mằng Lăng - nơi lưu giữ cuốn sách quốc ngữ đầu tiên'),(19,4,'Chiêm ngưỡng Tháp Nghinh Phong với kiến trúc độc đáo'),(20,4,'Thưởng thức ẩm thực đặc trưng của vùng đất Phú Yên'),(21,5,'Tắm biển tại Bãi Xếp - cảnh đẹp trong phim \'Tôi thấy hoa vàng trên cỏ xanh\''),(22,5,'Khám phá Gành Đá Đĩa với cấu trúc đá tự nhiên độc đáo'),(23,5,'Tham quan Vịnh Vũng Rô - thiên đường biển yên bình'),(24,6,'Chiêm ngưỡng rạn san hô tại Hòn Yến khi thủy triều rút'),(25,6,'Tắm biển, dạo chơi tại Bãi Xếp'),(26,6,'Check-in Gành Đá Đĩa với cảnh sắc hùng vĩ'),(35,8,'sadasdsa'),(36,8,'ádasd'),(37,8,'adsdasd'),(38,8,'ádasdsd'),(39,9,'ádsad'),(40,9,'ádasd'),(41,9,'ádasd'),(42,9,'ádasd'),(47,10,'ád'),(48,10,'sad'),(49,10,'ád'),(50,10,'ád'),(53,11,'ádasd'),(54,11,'ádasd');
/*!40000 ALTER TABLE `tour_highlights` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tour_includes`
--

DROP TABLE IF EXISTS `tour_includes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tour_includes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tour_id` int NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tour_id` (`tour_id`),
  CONSTRAINT `tour_includes_ibfk_1` FOREIGN KEY (`tour_id`) REFERENCES `tours` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tour_includes`
--

LOCK TABLES `tour_includes` WRITE;
/*!40000 ALTER TABLE `tour_includes` DISABLE KEYS */;
INSERT INTO `tour_includes` VALUES (7,1,'Xe du lịch đời mới máy lạnh suốt tuyến'),(8,1,'Khách sạn tiêu chuẩn 3 sao (2 người/phòng)'),(9,1,'Các bữa ăn theo chương trình'),(10,1,'Hướng dẫn viên nhiệt tình, kinh nghiệm'),(11,1,'Vé tham quan các điểm theo lịch trình'),(12,1,'Bảo hiểm du lịch (mức đền bù tối đa 30 triệu đồng/người/vụ)'),(13,2,'Xe du lịch đời mới máy lạnh suốt tuyến'),(14,2,'Khách sạn tiêu chuẩn 3 sao (2 người/phòng)'),(15,2,'Các bữa ăn theo chương trình'),(16,2,'Hướng dẫn viên nhiệt tình, kinh nghiệm'),(17,2,'Vé tham quan các điểm theo lịch trình'),(18,2,'Tour thuyền Vịnh Vũng Rô'),(19,2,'Bảo hiểm du lịch (mức đền bù tối đa 30 triệu đồng/người/vụ)'),(20,3,'Xe du lịch đời mới máy lạnh suốt tuyến'),(21,3,'Khách sạn tiêu chuẩn 3 sao (2 người/phòng)'),(22,3,'Các bữa ăn theo chương trình'),(23,3,'Hướng dẫn viên nhiệt tình, kinh nghiệm'),(24,3,'Vé tham quan các điểm theo lịch trình'),(25,3,'Bảo hiểm du lịch (mức đền bù tối đa 30 triệu đồng/người/vụ)'),(26,4,'Xe du lịch đời mới máy lạnh suốt tuyến'),(27,4,'Khách sạn tiêu chuẩn 3 sao (2 người/phòng)'),(28,4,'Các bữa ăn theo chương trình'),(29,4,'Hướng dẫn viên nhiệt tình, kinh nghiệm'),(30,4,'Vé tham quan các điểm theo lịch trình'),(31,4,'Bảo hiểm du lịch (mức đền bù tối đa 30 triệu đồng/người/vụ)'),(32,5,'Xe giường nằm cao cấp khứ hồi'),(33,5,'1 đêm khách sạn tiêu chuẩn'),(34,5,'Các bữa ăn theo chương trình'),(35,5,'Vé tham quan'),(36,5,'Hướng dẫn viên'),(37,5,'Bảo hiểm du lịch'),(38,6,'Xe du lịch máy lạnh'),(39,6,'Khách sạn tiêu chuẩn'),(40,6,'Vé tham quan'),(41,6,'Hướng dẫn viên'),(42,6,'Bảo hiểm du lịch'),(55,8,'Xe du lịch đời mới máy lạnh'),(56,8,'Khách sạn tiêu chuẩn 3 sao (2 người/phòng)'),(57,8,'Các bữa ăn theo chương trình'),(58,8,'Hướng dẫn viên nhiệt tình, kinh nghiệm'),(59,8,'Vé tham quan các điểm theo lịch trình'),(60,8,'Bảo hiểm du lịch'),(61,9,'Xe du lịch đời mới máy lạnh'),(62,9,'Khách sạn tiêu chuẩn 3 sao (2 người/phòng)'),(63,9,'Các bữa ăn theo chương trình'),(64,9,'Hướng dẫn viên nhiệt tình, kinh nghiệm'),(65,9,'Vé tham quan các điểm theo lịch trình'),(66,9,'Bảo hiểm du lịch'),(73,10,'Xe du lịch đời mới máy lạnh'),(74,10,'Khách sạn tiêu chuẩn 3 sao (2 người/phòng)'),(75,10,'Các bữa ăn theo chương trình'),(76,10,'Hướng dẫn viên nhiệt tình, kinh nghiệm'),(77,10,'Vé tham quan các điểm theo lịch trình'),(78,10,'Bảo hiểm du lịch'),(81,11,'Xe du lịch đời mới máy lạnh'),(82,11,'Khách sạn tiêu chuẩn 3 sao');
/*!40000 ALTER TABLE `tour_includes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tour_locations`
--

DROP TABLE IF EXISTS `tour_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tour_locations` (
  `tour_id` int NOT NULL,
  `location_id` int NOT NULL,
  `schedule_id` int NOT NULL,
  PRIMARY KEY (`tour_id`,`location_id`,`schedule_id`),
  KEY `schedule_id` (`schedule_id`),
  KEY `idx_tour_schedule` (`tour_id`,`schedule_id`),
  KEY `idx_location` (`location_id`),
  CONSTRAINT `tour_locations_ibfk_1` FOREIGN KEY (`tour_id`) REFERENCES `tours` (`id`) ON DELETE CASCADE,
  CONSTRAINT `tour_locations_ibfk_2` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`) ON DELETE CASCADE,
  CONSTRAINT `tour_locations_ibfk_3` FOREIGN KEY (`schedule_id`) REFERENCES `tour_schedule` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tour_locations`
--

LOCK TABLES `tour_locations` WRITE;
/*!40000 ALTER TABLE `tour_locations` DISABLE KEYS */;
INSERT INTO `tour_locations` VALUES (1,1,4),(1,2,5),(1,3,6),(2,2,7),(2,3,8),(2,5,9),(3,3,10),(3,4,11),(3,6,12),(4,4,13),(4,7,14),(4,1,15),(5,5,16),(5,2,17),(5,3,18),(6,6,19),(6,5,20),(6,2,21),(8,5,27),(8,5,28),(9,3,29),(9,4,30),(10,4,35),(10,5,36),(11,2,41),(11,4,42),(11,6,43);
/*!40000 ALTER TABLE `tour_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tour_notes`
--

DROP TABLE IF EXISTS `tour_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tour_notes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tour_id` int NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tour_id` (`tour_id`),
  CONSTRAINT `tour_notes_ibfk_1` FOREIGN KEY (`tour_id`) REFERENCES `tours` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tour_notes`
--

LOCK TABLES `tour_notes` WRITE;
/*!40000 ALTER TABLE `tour_notes` DISABLE KEYS */;
INSERT INTO `tour_notes` VALUES (5,1,'Quý khách vui lòng mang theo giấy tờ tùy thân (CMND/CCCD).'),(6,1,'Lịch trình có thể thay đổi tùy theo điều kiện thời tiết và tình hình thực tế.'),(7,1,'Trẻ em dưới 2 tuổi miễn phí, từ 2-5 tuổi tính 50% giá tour, từ 6 tuổi trở lên tính như người lớn.'),(8,1,'Quý khách nên mang theo thuốc đau bụng, cảm sốt, thuốc chống say xe.'),(9,2,'Quý khách vui lòng mang theo giấy tờ tùy thân (CMND/CCCD).'),(10,2,'Lịch trình có thể thay đổi tùy theo điều kiện thời tiết và tình hình thực tế.'),(11,2,'Trẻ em dưới 2 tuổi miễn phí, từ 2-5 tuổi tính 50% giá tour, từ 6 tuổi trở lên tính như người lớn.'),(12,2,'Quý khách nên mang theo thuốc đau bụng, cảm sốt, thuốc chống say xe.'),(13,3,'Quý khách vui lòng mang theo giấy tờ tùy thân (CMND/CCCD).'),(14,3,'Lịch trình có thể thay đổi tùy theo điều kiện thời tiết và tình hình thực tế.'),(15,3,'Trẻ em dưới 2 tuổi miễn phí, từ 2-5 tuổi tính 50% giá tour, từ 6 tuổi trở lên tính như người lớn.'),(16,3,'Quý khách nên mang theo thuốc đau bụng, cảm sốt, thuốc chống say xe.'),(17,4,'Quý khách vui lòng mang theo giấy tờ tùy thân (CMND/CCCD).'),(18,4,'Lịch trình có thể thay đổi tùy theo điều kiện thời tiết và tình hình thực tế.'),(19,4,'Trẻ em dưới 2 tuổi miễn phí, từ 2-5 tuổi tính 50% giá tour, từ 6 tuổi trở lên tính như người lớn.'),(20,4,'Quý khách nên mang theo thuốc đau bụng, cảm sốt, thuốc chống say xe.'),(21,5,'Quý khách vui lòng mang theo giấy tờ tùy thân (CMND/CCCD).'),(22,5,'Lịch trình có thể thay đổi tùy theo điều kiện thời tiết và tình hình thực tế.'),(23,5,'Trẻ em dưới 2 tuổi miễn phí, từ 2-5 tuổi tính 50% giá tour, từ 6 tuổi trở lên tính như người lớn.'),(24,5,'Quý khách nên mang theo thuốc đau bụng, cảm sốt, thuốc chống say xe.'),(25,6,'Quý khách vui lòng mang theo giấy tờ tùy thân (CMND/CCCD).'),(26,6,'Lịch trình có thể thay đổi tùy theo điều kiện thời tiết và tình hình thực tế.'),(27,6,'Trẻ em dưới 2 tuổi miễn phí, từ 2-5 tuổi tính 50% giá tour, từ 6 tuổi trở lên tính như người lớn.'),(28,6,'Quý khách nên mang theo thuốc đau bụng, cảm sốt, thuốc chống say xe.'),(37,8,'Quý khách vui lòng mang theo giấy tờ tùy thân (CMND/CCCD).'),(38,8,'Lịch trình có thể thay đổi tùy theo điều kiện thời tiết và tình hình thực tế.'),(39,8,'Trẻ em dưới 2 tuổi miễn phí, từ 2-5 tuổi tính 50% giá tour, từ 6 tuổi trở lên tính như người lớn.'),(40,8,'Quý khách nên mang theo thuốc đau bụng, cảm sốt, thuốc chống say xe.'),(41,9,'Quý khách vui lòng mang theo giấy tờ tùy thân (CMND/CCCD).'),(42,9,'Lịch trình có thể thay đổi tùy theo điều kiện thời tiết và tình hình thực tế.'),(43,9,'Trẻ em dưới 2 tuổi miễn phí, từ 2-5 tuổi tính 50% giá tour, từ 6 tuổi trở lên tính như người lớn.'),(44,9,'Quý khách nên mang theo thuốc đau bụng, cảm sốt, thuốc chống say xe.'),(49,10,'Quý khách vui lòng mang theo giấy tờ tùy thân (CMND/CCCD).'),(50,10,'Lịch trình có thể thay đổi tùy theo điều kiện thời tiết và tình hình thực tế.'),(51,10,'Trẻ em dưới 2 tuổi miễn phí, từ 2-5 tuổi tính 50% giá tour, từ 6 tuổi trở lên tính như người lớn.'),(52,10,'Quý khách nên mang theo thuốc đau bụng, cảm sốt, thuốc chống say xe.'),(54,11,'Quý khách vui lòng mang theo giấy tờ tùy thân');
/*!40000 ALTER TABLE `tour_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tour_prices`
--

DROP TABLE IF EXISTS `tour_prices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tour_prices` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tour_id` int NOT NULL,
  `price_type` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT 'Ví dụ: người lớn, trẻ em',
  `price` decimal(15,2) NOT NULL COMMENT 'Giá gốc',
  `sale_price` decimal(15,2) DEFAULT NULL COMMENT 'Giá khuyến mãi, NULL nếu không giảm',
  PRIMARY KEY (`id`),
  UNIQUE KEY `tour_price_type` (`tour_id`,`price_type`),
  CONSTRAINT `tour_prices_ibfk_1` FOREIGN KEY (`tour_id`) REFERENCES `tours` (`id`) ON DELETE CASCADE,
  CONSTRAINT `chk_sale_price_logic` CHECK (((`sale_price` is null) or (`sale_price` <= `price`))),
  CONSTRAINT `tour_prices_chk_1` CHECK ((`price` >= 0)),
  CONSTRAINT `tour_prices_chk_2` CHECK (((`sale_price` is null) or (`sale_price` >= 0)))
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tour_prices`
--

LOCK TABLES `tour_prices` WRITE;
/*!40000 ALTER TABLE `tour_prices` DISABLE KEYS */;
INSERT INTO `tour_prices` VALUES (1,1,'adult',1500000.00,1100000.00),(2,1,'child',1000000.00,800000.00),(3,2,'adult',2200000.00,2000000.00),(4,2,'child',1500000.00,1350000.00),(5,3,'adult',1800000.00,NULL),(6,3,'child',1200000.00,NULL),(7,4,'adult',950000.00,800000.00),(8,4,'child',600000.00,500000.00),(9,5,'adult',1300000.00,1150000.00),(10,5,'child',900000.00,800000.00),(11,6,'adult',1400000.00,NULL),(12,6,'child',1000000.00,850000.00);
/*!40000 ALTER TABLE `tour_prices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tour_schedule`
--

DROP TABLE IF EXISTS `tour_schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tour_schedule` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tour_id` int NOT NULL,
  `day` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_tour_schedule_tour_id` (`tour_id`),
  CONSTRAINT `tour_schedule_ibfk_1` FOREIGN KEY (`tour_id`) REFERENCES `tours` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tour_schedule`
--

LOCK TABLES `tour_schedule` WRITE;
/*!40000 ALTER TABLE `tour_schedule` DISABLE KEYS */;
INSERT INTO `tour_schedule` VALUES (4,1,'Ngày 1','TP.HCM - TUY HÒA - THÁP NGHINH PHONG'),(5,1,'Ngày 2','GÀNH ĐÁ ĐĨA - BÃI XẾP'),(6,1,'Ngày 3','VỊNH VŨNG RÔ - TP.HCM'),(7,1,'Ngày 1','TP.HCM - TUY HÒA - THÁP NGHINH PHONG'),(8,1,'Ngày 2','GÀNH ĐÁ ĐĨA - BÃI XẾP'),(9,1,'Ngày 3','VỊNH VŨNG RÔ - TP.HCM'),(10,2,'Ngày 1','TP.HCM - TUY HÒA'),(11,2,'Ngày 2','GÀNH ĐÁ ĐĨA - MŨI ĐIỆN'),(12,2,'Ngày 3','VỊNH VŨNG RÔ - BÃI XẾP'),(13,2,'Ngày 4','TUY HÒA - TP.HCM'),(14,3,'Ngày 1','TP.HCM - PHÚ YÊN - THÁP NHẠN'),(15,3,'Ngày 2','VỊNH VŨNG RÔ - ĐẦM Ô LOAN'),(16,3,'Ngày 3','HÒN YẾN - TP.HCM'),(17,4,'Ngày 1','TP.HCM - TUY HÒA - THÁP NHẠN - THÁP NGHINH PHONG'),(18,4,'Ngày 2','NHÀ THỜ MẰNG LĂNG - TP.HCM'),(19,5,'Ngày 1','TP.HCM - TUY HÒA - GÀNH ĐÁ ĐĨA - BÃI XẾP'),(20,5,'Ngày 2','VỊNH VŨNG RÔ - TP.HCM'),(21,6,'Ngày 1','TP.HCM - PHÚ YÊN - HÒN YẾN - BÃI XẾP'),(22,6,'Ngày 2','GÀNH ĐÁ ĐĨA - TP.HCM'),(27,8,'Ngày 1','TP.HCM - TUY HÒA - THÁP NGHINH PHONG'),(28,8,'Ngày 2','VỊNH VŨNG RÔ - TP.HCM'),(29,9,'Ngày 1','TP.HCM - TUY HÒA - THÁP NGHINH PHONG'),(30,9,'Ngày 2','GÀNH ĐÁ ĐĨA - BÃI XẾP'),(31,9,'Ngày 3','VỊNH VŨNG RÔ - TP.HCM'),(35,10,'Ngày 1','TP.HCM - TUY HÒA - THÁP NGHINH PHONG'),(36,10,'Ngày 2','GÀNH ĐÁ ĐĨA - BÃI XẾP'),(37,10,'Ngày 3','VỊNH VŨNG RÔ - TP.HCM'),(41,11,'Ngày 1','KHỞI HÀNH'),(42,11,'Ngày 2','GÀNH ĐÁ ĐĨA - BÃI XẾP'),(43,11,'Ngày 3','KẾT THÚC HÀNH TRÌNH');
/*!40000 ALTER TABLE `tour_schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tours`
--

DROP TABLE IF EXISTS `tours`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tours` (
  `id` int NOT NULL AUTO_INCREMENT,
  `destination` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `image` varchar(255) NOT NULL,
  `departure_from` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `duration` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `description` text NOT NULL,
  `status` enum('pending','approved','rejected') NOT NULL DEFAULT 'pending',
  `user_id` int DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_tours_destination` (`destination`),
  KEY `idx_tour_status` (`status`),
  KEY `idx_tour_user` (`user_id`),
  KEY `idx_is_active` (`is_active`),
  CONSTRAINT `fk_tour_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tours`
--

LOCK TABLES `tours` WRITE;
/*!40000 ALTER TABLE `tours` DISABLE KEYS */;
INSERT INTO `tours` VALUES (1,'Tháp Nghinh Phong | Gành Đá Đĩa | Vịnh Vũng Rô','https://res.cloudinary.com/dapsnr3xi/image/upload/v1774865341/travel_phuyen/tours/wideup3b609hnmntmjvc.png','Hồ Chí Minh','3 ngày 3 đêm','Khám phá vẻ đẹp kỳ vĩ của Phú Yên với tour hấp dẫn đến Tháp Nghinh Phong, Gành Đá Đĩa và Vịnh Vũng Rô. Tận hưởng không gian yên bình, gần gũi với thiên nhiên.','approved',1,1,'2025-05-22 06:03:46','2026-03-30 10:09:02'),(2,'Gành Đá Đĩa | Vịnh Vũng Rô | Bãi Xếp','https://res.cloudinary.com/dapsnr3xi/image/upload/v1774865342/travel_phuyen/tours/umtwxyca0qztj3auy9kk.jpg','Hồ Chí Minh','4 ngày 3 đêm','Hành trình khám phá trọn vẹn vẻ đẹp của Phú Yên với điểm đến nổi tiếng: Gành Đá Đĩa, Vịnh Vũng Rô và Bãi Xếp. Tận hưởng kỳ nghỉ đáng nhớ giữa thiên nhiên hoang sơ.','approved',6,1,'2025-05-22 06:03:46','2026-03-30 10:09:03'),(3,'Vịnh Vũng Rô | Tháp Nhạn | Hòn Yến','https://res.cloudinary.com/dapsnr3xi/image/upload/v1774865343/travel_phuyen/tours/ix2dd0a7rqs8igmkb2o7.jpg','Hồ Chí Minh','3 ngày 3 đêm','Khám phá vẻ đẹp hoang sơ của Phú Yên với hành trình trải nghiệm thiên nhiên và văn hóa đặc sắc tại Vịnh Vũng Rô, Tháp Nhạn và Hòn Yến.','approved',1,1,'2025-05-22 06:03:46','2026-03-30 10:09:04'),(4,'Tháp Nhạn | Nhà Thờ Mằng Lăng | Tháp Nghinh Phong','https://res.cloudinary.com/dapsnr3xi/image/upload/v1774865344/travel_phuyen/tours/qibpj5hcwfpqjpyhjwbq.jpg','Hồ Chí Minh','2 ngày 1 đêm','Hành trình ngắn nhưng đầy trải nghiệm với những địa điểm văn hóa - lịch sử nổi tiếng của Phú Yên: Tháp Nhạn, Nhà Thờ Mằng Lăng và Tháp Nghinh Phong.','approved',1,1,'2025-05-22 06:03:46','2026-03-30 10:09:05'),(5,'Bãi Xếp | Gành Đá Đĩa | Vịnh Vũng Rô','https://res.cloudinary.com/dapsnr3xi/image/upload/v1774865346/travel_phuyen/tours/srt0odob8c6y5grh8u75.jpg','Tp Hồ Chí Minh','2 ngày 1 đêm','Tour du lịch nhanh gọn đến những điểm đẹp nhất của Phú Yên như Bãi Xếp, Gành Đá Đĩa và Vịnh Vũng Rô. Phù hợp cho những ai muốn tận hưởng thiên nhiên biển xanh chỉ trong 2 ngày.','rejected',NULL,0,'2025-05-22 06:03:46','2026-03-30 10:09:07'),(6,'Hòn Yến | Bãi Xếp | Gành Đá Đĩa','https://res.cloudinary.com/dapsnr3xi/image/upload/v1774865347/travel_phuyen/tours/cu0cul1a7zrhuw2wqkyc.jpg','Tp Hồ Chí Minh','2 ngày 1 đêm','Khám phá trọn vẹn vẻ đẹp tự nhiên và kỳ bí của Phú Yên với hành trình đến Hòn Yến, Bãi Xếp và Gành Đá Đĩa trong 2 ngày thú vị.','approved',1,1,'2025-05-22 06:03:46','2026-03-30 10:39:52'),(8,'Gành Đá Đĩa – Kiệt Tác Thiên Nhiên Ở Phú Yên | Tháp Nhạn – Biểu Tượng Lịch Sử Của Người Chăm Pa','https://res.cloudinary.com/dapsnr3xi/image/upload/v1774865348/travel_phuyen/tours/gwsgkoa1dumjsuncj5ih.png','Bình Thuận','2 ngày 1 đêm','ádadasdasd','approved',1,1,'2025-06-22 09:30:57','2026-03-30 10:09:09'),(9,'Vịnh Vũng Rô – Viên Ngọc Xanh Giữa Lòng Phú Yên | Tháp Nhạn – Biểu Tượng Lịch Sử Của Người Chăm Pa','/uploads/tours/1769158940640-Screenshot 2025-02-11 175007.png','Bình Dương','3 ngày 2 đêm','ádsadsadsad','rejected',1,1,'2026-01-23 09:02:20','2026-03-30 10:40:11'),(10,'Tháp Nhạn – Biểu Tượng Lịch Sử Của Người Chăm Pa | Bãi Xép – Vẻ Đẹp Hoang Sơ Bên Dòng Biển Xanh','https://res.cloudinary.com/dapsnr3xi/image/upload/v1774870019/travel_phuyen/tours/wtdvssjggpdq3jblt0vc.jpg','Bình Dương','3 ngày 2 đêm','ádsadsa','pending',1,1,'2026-03-30 11:24:40','2026-03-30 11:27:00'),(11,'Gành Đá Đĩa – Kiệt Tác Thiên Nhiên Ở Phú Yên | Tháp Nhạn – Biểu Tượng Lịch Sử Của Người Chăm Pa','https://res.cloudinary.com/dapsnr3xi/image/upload/v1774872529/travel_phuyen/tours/qxokmvy2uvuc0mkflhpg.jpg','Hà Giang','3 ngày 2 đêm','ádasd','pending',1,1,'2026-03-30 12:08:26','2026-03-30 12:08:50');
/*!40000 ALTER TABLE `tours` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `after_update_tour_duration` AFTER UPDATE ON `tours` FOR EACH ROW BEGIN
    IF NEW.duration != OLD.duration THEN
        UPDATE tour_departures td
        SET 
            td.duration = NEW.duration,
            td.end_date = DATE_ADD(
                td.departure_date, 
                INTERVAL CAST(SUBSTRING_INDEX(NEW.duration, ' ', 1) AS UNSIGNED) - 1 DAY
            )
WHERE td.tour_id = NEW.id;
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `travelinfo`
--

DROP TABLE IF EXISTS `travelinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `travelinfo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `location_id` int NOT NULL,
  `ticket_price` text,
  `tip` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `location_id` (`location_id`),
  CONSTRAINT `travelinfo_ibfk_1` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `travelinfo`
--

LOCK TABLES `travelinfo` WRITE;
/*!40000 ALTER TABLE `travelinfo` DISABLE KEYS */;
INSERT INTO `travelinfo` VALUES (1,1,'Miễn phí (thuộc quảng trường công cộng).','Đi sớm hoặc chiều muộn để tránh nắng gắt, mang theo nước uống vì khu vực ít cây xanh.'),(2,2,'Người lớn: 40.000 VNĐ | Trẻ em (dưới 16 tuổi): 20.000 VNĐ','Chuẩn bị GPS hoặc bản đồ vì cung đường ven biển có thể khó tìm.'),(3,3,'Miễn phí (khu vực tự nhiên). Thuê thuyền tham quan: 200.000-500.000 VNĐ/nhóm.','Mang theo nước uống và đồ ăn nhẹ nếu định ở lại lâu, vì khu vực còn hoang sơ, ít dịch vụ.'),(4,4,'Miễn phí.','Mang giày thể thao để leo núi Nhạn, chuẩn bị nước uống vì khu vực không có nhiều dịch vụ.'),(5,5,'Miễn phí.','Mang giày dép thoải mái để leo lên đồi cỏ, chuẩn bị kem chống nắng và mũ.'),(6,6,'Miễn phí.','Kiểm tra lịch thủy triều trước khi đi để thấy con đường cát. Mang giày dép chống trơn để lặn ngắm san hô.'),(7,7,'Miễn phí.','Mặc trang phục lịch sự khi tham quan nhà thờ, tránh làm ồn trong không gian linh thiêng.');
/*!40000 ALTER TABLE `travelinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `travelmethods`
--

DROP TABLE IF EXISTS `travelmethods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `travelmethods` (
  `id` int NOT NULL AUTO_INCREMENT,
  `location_id` int NOT NULL,
  `method_type` enum('fromTuyHoa','fromElsewhere') NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `location_id` (`location_id`),
  CONSTRAINT `travelmethods_ibfk_1` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=214 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `travelmethods`
--

LOCK TABLES `travelmethods` WRITE;
/*!40000 ALTER TABLE `travelmethods` DISABLE KEYS */;
INSERT INTO `travelmethods` VALUES (9,3,'fromTuyHoa','Xe máy: 40 phút, theo Quốc lộ 1A về phía Nam, qua đèo Cả.'),(10,3,'fromTuyHoa','Ô tô/taxi: 30 phút, giá khoảng 200.000-300.000 VNĐ.'),(11,3,'fromElsewhere','Máy bay: Đáp xuống sân bay Tuy Hòa, sau đó di chuyển bằng xe máy hoặc taxi.'),(12,3,'fromElsewhere','Tàu hỏa: Dừng tại ga Tuy Hòa, tiếp tục đi xe máy hoặc taxi khoảng 30 km.'),(13,4,'fromTuyHoa','Đi bộ/xe máy: 5-10 phút từ trung tâm TP. Tuy Hòa, tháp nằm ngay trong thành phố.'),(14,4,'fromTuyHoa','Taxi: Chi phí khoảng 30.000-50.000 VNĐ.'),(15,4,'fromElsewhere','Máy bay: Đáp xuống sân bay Tuy Hòa, tháp cách sân bay khoảng 5 km, di chuyển bằng taxi hoặc xe máy.'),(16,4,'fromElsewhere','Tàu hỏa: Từ ga Tuy Hòa, đi xe máy hoặc taxi khoảng 2-3 km.'),(17,5,'fromTuyHoa','Xe máy: 20 phút, theo Quốc lộ 1A về phía Bắc, rẽ vào đường ven biển.'),(18,5,'fromTuyHoa','Ô tô/taxi: 15 phút, giá khoảng 150.000-200.000 VNĐ.'),(19,5,'fromElsewhere','Máy bay: Đáp xuống sân bay Tuy Hòa, di chuyển bằng xe máy hoặc taxi khoảng 14 km.'),(20,5,'fromElsewhere','Tàu hỏa: Từ ga Tuy Hòa, đi xe máy hoặc taxi khoảng 15 phút.'),(21,6,'fromTuyHoa','Xe máy: 30 phút, theo Quốc lộ 1A về phía Bắc, rẽ vào xã An Hòa Hải.'),(22,6,'fromTuyHoa','Ô tô/taxi: 20 phút, giá khoảng 200.000-250.000 VNĐ.'),(23,6,'fromElsewhere','Máy bay: Đáp xuống sân bay Tuy Hòa, di chuyển bằng xe máy hoặc taxi khoảng 20 km.'),(24,6,'fromElsewhere','Tàu hỏa: Từ ga Tuy Hòa, đi xe máy hoặc taxi khoảng 25 phút.'),(45,7,'fromTuyHoa','Xe máy: 45 phút, theo Quốc lộ 1A về phía Bắc, rẽ vào xã An Thạch.'),(46,7,'fromTuyHoa','Ô tô/taxi: 30 phút, giá khoảng 300.000-350.000 VNĐ.'),(47,7,'fromElsewhere','Máy bay: Đáp xuống sân bay Tuy Hòa, di chuyển bằng xe máy hoặc taxi khoảng 35 km.'),(48,7,'fromElsewhere','Tàu hỏa: Từ ga Tuy Hòa, đi xe máy hoặc taxi khoảng 40 phút.'),(125,2,'fromTuyHoa','Xe máy: 50 phút, theo Quốc lộ 1A đến thị trấn Chí Thạnh rồi rẽ phải 12 km.'),(126,2,'fromTuyHoa','Ô tô/taxi: 30 phút, giá khoảng 300.000-400.000 VNĐ.'),(127,2,'fromElsewhere','Máy bay: Đáp xuống sân bay Tuy Hòa, thuê xe máy hoặc ô tô.'),(128,2,'fromElsewhere','Tàu hỏa: Dừng tại ga Tuy Hòa, tiếp tục bằng xe máy hoặc taxi.'),(208,1,'fromTuyHoa','Xe máy: 5-10 phút từ trung tâm, đi theo đường Độc Lập hoặc Nguyễn Hữu Thọ.'),(209,1,'fromTuyHoa','Taxi: Chi phí khoảng 50.000-100.000 VNĐ, thuận tiện cho nhóm nhỏ.'),(210,1,'fromElsewhere','Máy bay: Đáp xuống sân bay Tuy Hòa, cách tháp khoảng 10 km, thuê xe máy hoặc taxi.'),(211,1,'fromElsewhere','Tàu hỏa: Từ ga Tuy Hòa, di chuyển thêm 3-5 km bằng xe máy hoặc taxi.');
/*!40000 ALTER TABLE `travelmethods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_credits`
--

DROP TABLE IF EXISTS `user_credits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_credits` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `amount` decimal(12,2) NOT NULL DEFAULT '0.00',
  `last_updated` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `user_credits_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_credits`
--

LOCK TABLES `user_credits` WRITE;
/*!40000 ALTER TABLE `user_credits` DISABLE KEYS */;
INSERT INTO `user_credits` VALUES (1,6,1910000.00,'2026-02-05 17:19:38');
/*!40000 ALTER TABLE `user_credits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_otps`
--

DROP TABLE IF EXISTS `user_otps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_otps` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `otp` varchar(6) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `expires_at` timestamp NOT NULL,
  `used` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_email_otp` (`email`,`otp`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_otps`
--

LOCK TABLES `user_otps` WRITE;
/*!40000 ALTER TABLE `user_otps` DISABLE KEYS */;
INSERT INTO `user_otps` VALUES (2,'haol71639@gmail.com','285316','2025-05-15 03:20:34','2025-05-15 03:25:34',0),(28,'minhhoc0901@gmail.com','118867','2025-12-03 11:00:23','2025-12-03 11:05:23',1),(30,'tamthanhr404@gmail.com','769714','2025-12-20 15:58:47','2025-12-20 16:03:47',1),(31,'minhhoc0605@gmail.com','470986','2026-01-22 15:07:29','2026-01-22 15:12:29',1);
/*!40000 ALTER TABLE `user_otps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `phone` varchar(15) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `role` enum('admin','user') NOT NULL DEFAULT 'user',
  `full_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `avatar` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','minhhoc0605@gmail.com','0869680796','$2b$10$2me/Ur1eI7UZHzPMSNTXSuZ00VaL6bauycKsD1Ini61fKgatLSE3C','admin','le minh hao','2025-05-15 03:19:05','https://res.cloudinary.com/dapsnr3xi/image/upload/v1774865339/travel_phuyen/avatars/kckeg8ixwtokcafzo7sq.jpg'),(2,'minhhoc0901','haol71639@gmail.com','0383933444','$2b$10$uwXsEjr89iDCwALfndLxeO2dktslTERSyIfopGfnOLLAcuICVPdN.','user','Lê Minh Học','2025-05-15 03:21:03','/uploads/avatars/user_2_1748168331664.jpg'),(6,'tranhung','minhhoc0901@gmail.com','0383933441','$2b$10$M7OON1mxc8GiTHcHl6.kQufSitcY///hjYgU9/UsZ2adbaMp./nkW','user','tran Manh hung','2025-10-02 16:29:07','https://res.cloudinary.com/dapsnr3xi/image/upload/v1774865340/travel_phuyen/avatars/xtvlikkbqjt33ro6g6nf.jpg'),(14,'minhhoc09','tamthanhr404@gmail.com','0869680777','$2b$10$z4o2MdG1QXqF.LL3oo9XIOOWHMmSmEYv.AktcP3.eH1MyOLRpCrV6','user','Lê Minh Học','2025-10-27 11:19:52','/uploads/avatars/user_14_1761564958190.jpg');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `withdrawal_requests`
--

DROP TABLE IF EXISTS `withdrawal_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `withdrawal_requests` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID yêu cầu rút tiền',
  `user_id` int NOT NULL COMMENT 'ID người dùng',
  `amount` decimal(15,2) NOT NULL COMMENT 'Số tiền yêu cầu rút',
  `bank_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Tên ngân hàng',
  `account_number` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Số tài khoản',
  `account_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Tên chủ tài khoản',
  `status` enum('pending','approved','rejected','completed') COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `admin_note` text COLLATE utf8mb4_unicode_ci COMMENT 'Ghi chú của admin',
  `transaction_ref` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Mã giao dịch',
  `processed_at` timestamp NULL DEFAULT NULL COMMENT 'Thời gian xử lý',
  `completed_at` timestamp NULL DEFAULT NULL COMMENT 'Thời gian hoàn thành',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_withdrawal_user` (`user_id`),
  KEY `idx_withdrawal_status` (`status`),
  KEY `idx_withdrawal_created` (`created_at`),
  KEY `idx_withdrawal_transaction_ref` (`transaction_ref`),
  KEY `idx_withdrawal_status_created` (`status`,`created_at`),
  CONSTRAINT `withdrawal_requests_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `chk_amount` CHECK ((`amount` >= 50000))
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `withdrawal_requests`
--

LOCK TABLES `withdrawal_requests` WRITE;
/*!40000 ALTER TABLE `withdrawal_requests` DISABLE KEYS */;
INSERT INTO `withdrawal_requests` VALUES (1,6,100000.00,'MB Bank','0869680796','LE MINH HOC','completed','đã duyệt','MBK12343','2025-12-01 04:12:40','2025-12-01 04:16:37','2025-12-01 03:12:24'),(2,6,150000.00,'MB Bank','0869680796','LE MINH HOC','rejected','s',NULL,'2025-12-03 06:20:16',NULL,'2025-12-01 04:11:18'),(3,6,500000.00,'MB Bank','0869680796','LE MINH HOC','rejected','Không hợp lệ',NULL,'2025-12-01 19:06:27',NULL,'2025-12-01 19:05:23'),(4,6,50000.00,'MB Bank','0869680796','LE MINH HOC','rejected','2w',NULL,'2025-12-01 19:14:09',NULL,'2025-12-01 19:13:37'),(5,6,50000.00,'Agribank','0869680796','LE MINH HOC','completed','','ACB09809','2025-12-03 04:26:25','2025-12-03 04:26:44','2025-12-03 04:25:52'),(6,6,50000.00,'MB Bank','0869680796','NGUYEN HUNG','completed','','VCB84534','2025-12-03 04:50:35','2025-12-03 04:50:59','2025-12-03 04:48:48'),(7,6,50000.00,'BIDV','000000000','TRAN MANH HUNG','rejected','okee',NULL,'2025-12-03 04:55:31',NULL,'2025-12-03 04:54:26'),(8,6,50000.00,'BIDV','123456565','TRAN HUNG','completed','ok','VCB77723','2025-12-03 06:20:49','2025-12-03 06:21:24','2025-12-03 06:18:59'),(9,6,500000.00,'MB Bank - Ngân hàng TMCP Quân Đội','0869680796','LE MINH HOC','completed','Duyệt','MB766776','2026-02-05 17:20:47','2026-02-05 17:23:57','2026-02-05 17:19:38');
/*!40000 ALTER TABLE `withdrawal_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'phuyen_travel_5'
--

--
-- Dumping routines for database 'phuyen_travel_5'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-03-30 20:25:46
