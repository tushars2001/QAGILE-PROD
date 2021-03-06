CREATE DATABASE  IF NOT EXISTS `qagile` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `qagile`;
-- MySQL dump 10.13  Distrib 8.0.17, for macos10.14 (x86_64)
--
-- Host: localhost    Database: qagile
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `qagile_rfs_wf_log`
--

DROP TABLE IF EXISTS `qagile_rfs_wf_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qagile_rfs_wf_log` (
  `record_id` int NOT NULL AUTO_INCREMENT,
  `rfs_request_id` int DEFAULT NULL,
  `rfs_status` varchar(45) DEFAULT NULL,
  `record_dt` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`record_id`),
  KEY `fk_wf_rfs_id_idx` (`rfs_request_id`),
  CONSTRAINT `fk_wf_rfs_id` FOREIGN KEY (`rfs_request_id`) REFERENCES `qagile_rfs_request` (`rfs_request_id`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qagile_rfs_wf_log`
--

LOCK TABLES `qagile_rfs_wf_log` WRITE;
/*!40000 ALTER TABLE `qagile_rfs_wf_log` DISABLE KEYS */;
INSERT INTO `qagile_rfs_wf_log` VALUES (1,2,'NEW','2020-03-21 18:03:39'),(2,2,'SUBMITTED','2020-03-21 18:03:43'),(3,2,'NEW','2020-03-21 18:03:46'),(4,2,'NEW','2020-03-21 18:03:51'),(5,2,'SUBMITTED','2020-03-21 18:03:53'),(6,2,'APPROVED','2020-03-21 18:03:55'),(7,2,'APPROVED','2020-03-21 18:05:59'),(8,2,'APPROVED','2020-03-21 18:06:02'),(9,2,'APPROVED','2020-03-21 18:09:44'),(10,2,'NEW','2020-03-21 18:10:06'),(11,9,'NEW','2020-03-29 15:47:18'),(12,9,'NEW','2020-03-29 15:55:51'),(13,24,'NEW','2020-03-30 13:29:25'),(14,25,'NEW','2020-03-30 13:58:44'),(15,26,'NEW','2020-03-30 13:59:08'),(16,27,'NEW','2020-03-30 13:59:15'),(17,27,'NEW','2020-03-30 14:03:20'),(18,11,'SUBMITTED','2020-03-30 17:17:29'),(19,11,'NEW','2020-03-30 17:17:35'),(20,11,'SUBMITTED','2020-03-30 17:17:54'),(21,10,'NEW','2020-03-30 19:13:32'),(22,10,'SUBMITTED','2020-03-30 19:13:34'),(23,10,'APPROVED','2020-03-30 19:13:36'),(24,10,'NEW','2020-03-30 19:13:38'),(25,10,'SUBMITTED','2020-03-30 19:13:40'),(26,10,'NEW','2020-03-30 19:13:43'),(27,10,'SUBMITTED','2020-03-30 19:13:45'),(28,10,'NEW','2020-03-30 19:13:48'),(29,10,'SUBMITTED','2020-03-30 19:13:50'),(30,10,'SUBMITTED','2020-03-30 19:13:52'),(31,10,'APPROVED','2020-03-30 19:13:54'),(32,11,'NULL','2020-03-30 19:14:14'),(33,12,'NULL','2020-03-30 19:15:35'),(34,12,'NULL','2020-03-30 19:16:59'),(35,12,'NULL','2020-03-30 19:17:05'),(36,12,'NULL','2020-03-30 19:17:07'),(37,12,'NULL','2020-03-30 19:17:09'),(38,12,'NULL','2020-03-30 19:17:22'),(39,12,'NULL','2020-03-30 19:17:28'),(40,12,'NULL','2020-03-30 19:18:34'),(41,13,'NULL','2020-03-30 19:21:43'),(42,14,'None','2020-03-30 19:22:13'),(43,8,'SUBMITTED','2020-03-30 19:23:20'),(44,8,'NULL','2020-03-30 19:23:54'),(45,1,'NULL','2020-03-30 19:27:11'),(46,2,'NULL','2020-03-30 19:27:26'),(47,23,'NEW','2020-03-30 19:45:22'),(48,28,'NEW','2020-03-30 19:48:25'),(49,29,'NEW','2020-03-31 15:00:23'),(50,29,'NEW','2020-03-31 15:02:14'),(51,30,'NEW','2020-04-01 10:46:15'),(52,31,'NEW','2020-04-07 09:55:44'),(53,32,'NEW','2020-04-07 13:47:48'),(54,32,'NEW','2020-04-07 13:49:12'),(55,33,'NEW','2020-04-07 14:08:52'),(56,23,'NEW','2020-04-08 19:49:06'),(57,34,'NEW','2020-04-09 08:50:44'),(58,9,'NEW','2020-04-11 12:15:49'),(59,9,'NEW','2020-04-11 12:16:05'),(60,35,'NEW','2020-04-11 21:40:02'),(61,36,'NEW','2020-04-11 21:49:08'),(62,37,'NEW','2020-04-11 21:53:13'),(63,38,'NEW','2020-04-11 22:02:20'),(64,38,'NEW','2020-04-11 22:26:36'),(65,38,'NEW','2020-04-11 22:31:33'),(66,38,'NEW','2020-04-11 22:36:08'),(67,38,'NEW','2020-04-11 22:36:26'),(68,38,'NEW','2020-04-11 22:59:58'),(69,38,'NEW','2020-04-11 23:01:05'),(70,38,'NEW','2020-04-11 23:02:23'),(71,38,'NEW','2020-04-12 11:38:16'),(72,9,'NEW','2020-04-12 11:38:32'),(73,39,'NEW','2020-04-12 11:40:02'),(74,40,'NEW','2020-04-13 09:09:43'),(75,23,'SUBMITTED','2020-04-13 09:22:08'),(76,23,'APPROVED','2020-04-13 09:22:40'),(77,23,'NEW','2020-04-13 09:22:42'),(78,41,'NEW','2020-04-14 14:21:28'),(79,23,'SUBMITTED','2020-04-14 14:27:49'),(80,42,'NEW','2020-04-15 12:06:40'),(81,43,'NEW','2020-04-16 12:07:43'),(82,38,'NEW','2020-04-16 12:11:58'),(83,38,'NEW','2020-04-16 20:46:52'),(84,38,'NEW','2020-04-16 20:47:05'),(85,38,'NEW','2020-04-16 20:47:27'),(86,38,'NEW','2020-04-16 20:47:39'),(87,38,'NEW','2020-04-16 21:26:25'),(88,44,'NEW','2020-04-16 21:42:29');
/*!40000 ALTER TABLE `qagile_rfs_wf_log` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-16 22:02:59
