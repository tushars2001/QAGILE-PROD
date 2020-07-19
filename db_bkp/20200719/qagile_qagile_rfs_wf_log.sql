CREATE DATABASE  IF NOT EXISTS `qagile` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `qagile`;
-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: localhost    Database: qagile
-- ------------------------------------------------------
-- Server version	8.0.20

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
) ENGINE=InnoDB AUTO_INCREMENT=468 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qagile_rfs_wf_log`
--

LOCK TABLES `qagile_rfs_wf_log` WRITE;
/*!40000 ALTER TABLE `qagile_rfs_wf_log` DISABLE KEYS */;
INSERT INTO `qagile_rfs_wf_log` VALUES (1,2,'NEW','2020-03-21 18:03:39'),(2,2,'SUBMITTED','2020-03-21 18:03:43'),(3,2,'NEW','2020-03-21 18:03:46'),(4,2,'NEW','2020-03-21 18:03:51'),(5,2,'SUBMITTED','2020-03-21 18:03:53'),(6,2,'APPROVED','2020-03-21 18:03:55'),(7,2,'APPROVED','2020-03-21 18:05:59'),(8,2,'APPROVED','2020-03-21 18:06:02'),(9,2,'APPROVED','2020-03-21 18:09:44'),(10,2,'NEW','2020-03-21 18:10:06'),(11,9,'NEW','2020-03-29 15:47:18'),(12,9,'NEW','2020-03-29 15:55:51'),(13,24,'NEW','2020-03-30 13:29:25'),(14,25,'NEW','2020-03-30 13:58:44'),(15,26,'NEW','2020-03-30 13:59:08'),(16,27,'NEW','2020-03-30 13:59:15'),(17,27,'NEW','2020-03-30 14:03:20'),(18,11,'SUBMITTED','2020-03-30 17:17:29'),(19,11,'NEW','2020-03-30 17:17:35'),(20,11,'SUBMITTED','2020-03-30 17:17:54'),(21,10,'NEW','2020-03-30 19:13:32'),(22,10,'SUBMITTED','2020-03-30 19:13:34'),(23,10,'APPROVED','2020-03-30 19:13:36'),(24,10,'NEW','2020-03-30 19:13:38'),(25,10,'SUBMITTED','2020-03-30 19:13:40'),(26,10,'NEW','2020-03-30 19:13:43'),(27,10,'SUBMITTED','2020-03-30 19:13:45'),(28,10,'NEW','2020-03-30 19:13:48'),(29,10,'SUBMITTED','2020-03-30 19:13:50'),(30,10,'SUBMITTED','2020-03-30 19:13:52'),(31,10,'APPROVED','2020-03-30 19:13:54'),(32,11,'NULL','2020-03-30 19:14:14'),(33,12,'NULL','2020-03-30 19:15:35'),(34,12,'NULL','2020-03-30 19:16:59'),(35,12,'NULL','2020-03-30 19:17:05'),(36,12,'NULL','2020-03-30 19:17:07'),(37,12,'NULL','2020-03-30 19:17:09'),(38,12,'NULL','2020-03-30 19:17:22'),(39,12,'NULL','2020-03-30 19:17:28'),(40,12,'NULL','2020-03-30 19:18:34'),(41,13,'NULL','2020-03-30 19:21:43'),(42,14,'None','2020-03-30 19:22:13'),(43,8,'SUBMITTED','2020-03-30 19:23:20'),(44,8,'NULL','2020-03-30 19:23:54'),(45,1,'NULL','2020-03-30 19:27:11'),(46,2,'NULL','2020-03-30 19:27:26'),(47,23,'NEW','2020-03-30 19:45:22'),(48,28,'NEW','2020-03-30 19:48:25'),(49,29,'NEW','2020-03-31 15:00:23'),(50,29,'NEW','2020-03-31 15:02:14'),(51,30,'NEW','2020-04-01 10:46:15'),(52,31,'NEW','2020-04-07 09:55:44'),(53,32,'NEW','2020-04-07 13:47:48'),(54,32,'NEW','2020-04-07 13:49:12'),(55,33,'NEW','2020-04-07 14:08:52'),(56,23,'NEW','2020-04-08 19:49:06'),(57,34,'NEW','2020-04-09 08:50:44'),(58,9,'NEW','2020-04-11 12:15:49'),(59,9,'NEW','2020-04-11 12:16:05'),(60,35,'NEW','2020-04-11 21:40:02'),(61,36,'NEW','2020-04-11 21:49:08'),(62,37,'NEW','2020-04-11 21:53:13'),(63,38,'NEW','2020-04-11 22:02:20'),(64,38,'NEW','2020-04-11 22:26:36'),(65,38,'NEW','2020-04-11 22:31:33'),(66,38,'NEW','2020-04-11 22:36:08'),(67,38,'NEW','2020-04-11 22:36:26'),(68,38,'NEW','2020-04-11 22:59:58'),(69,38,'NEW','2020-04-11 23:01:05'),(70,38,'NEW','2020-04-11 23:02:23'),(71,38,'NEW','2020-04-12 11:38:16'),(72,9,'NEW','2020-04-12 11:38:32'),(73,39,'NEW','2020-04-12 11:40:02'),(74,40,'NEW','2020-04-13 09:09:43'),(75,23,'SUBMITTED','2020-04-13 09:22:08'),(76,23,'APPROVED','2020-04-13 09:22:40'),(77,23,'NEW','2020-04-13 09:22:42'),(78,41,'NEW','2020-04-14 14:21:28'),(79,23,'SUBMITTED','2020-04-14 14:27:49'),(80,42,'NEW','2020-04-15 12:06:40'),(81,43,'NEW','2020-04-16 12:07:43'),(82,38,'NEW','2020-04-16 12:11:58'),(83,38,'NEW','2020-04-16 20:46:52'),(84,38,'NEW','2020-04-16 20:47:05'),(85,38,'NEW','2020-04-16 20:47:27'),(86,38,'NEW','2020-04-16 20:47:39'),(87,38,'NEW','2020-04-16 21:26:25'),(88,44,'NEW','2020-04-16 21:42:29'),(89,45,'NEW','2020-04-17 18:36:20'),(90,46,'NEW','2020-04-17 18:41:07'),(91,47,'NEW','2020-04-17 18:41:45'),(92,48,'NEW','2020-04-17 18:42:31'),(93,49,'NEW','2020-04-17 19:19:41'),(94,50,'NEW','2020-04-17 19:45:05'),(95,51,'NEW','2020-04-19 13:17:34'),(96,51,'NEW','2020-04-19 13:17:39'),(97,51,'SUBMITTED','2020-04-19 13:17:41'),(98,51,'NEW','2020-04-19 13:17:43'),(99,51,'SUBMITTED','2020-04-19 13:17:44'),(100,51,'APPROVED','2020-04-19 13:17:46'),(101,51,'NEW','2020-04-19 13:17:47'),(102,51,'SUBMITTED','2020-04-19 13:19:36'),(103,51,'APPROVED','2020-04-19 13:19:38'),(104,38,'SUBMITTED','2020-04-19 15:54:22'),(105,38,'APPROVED','2020-04-19 15:54:24'),(106,38,'NEW','2020-04-19 15:57:55'),(107,38,'NEW','2020-04-19 15:57:55'),(108,38,'SUBMITTED','2020-04-19 15:59:17'),(109,38,'SUBMITTED','2020-04-19 15:59:17'),(110,38,'APPROVED','2020-04-19 16:03:37'),(111,38,'APPROVED','2020-04-19 16:03:37'),(112,38,'NEW','2020-04-19 16:04:44'),(113,38,'NEW','2020-04-19 16:04:47'),(114,38,'NEW','2020-04-19 16:05:04'),(115,38,'NEW','2020-04-19 16:05:32'),(116,38,'NEW','2020-04-19 16:08:04'),(117,38,'NEW','2020-04-19 16:09:53'),(118,38,'NEW','2020-04-19 16:09:53'),(119,38,'SUBMITTED','2020-04-19 16:09:55'),(120,38,'SUBMITTED','2020-04-19 16:09:55'),(121,38,'APPROVED','2020-04-19 16:10:09'),(122,38,'APPROVED','2020-04-19 16:10:56'),(123,38,'APPROVED','2020-04-19 16:13:21'),(124,38,'APPROVED','2020-04-19 16:13:22'),(125,38,NULL,'2020-04-19 20:26:40'),(126,38,NULL,'2020-04-19 20:26:40'),(127,38,NULL,'2020-04-19 20:27:37'),(128,38,NULL,'2020-04-19 20:27:37'),(129,10,'NEW','2020-04-19 20:38:55'),(130,10,'NEW','2020-04-19 20:38:55'),(131,10,'SUBMITTED','2020-04-19 20:38:59'),(132,10,'SUBMITTED','2020-04-19 20:38:59'),(133,10,'APPROVED','2020-04-19 20:39:00'),(134,10,'APPROVED','2020-04-19 20:39:00'),(135,10,'APPROVED','2020-04-19 20:39:09'),(136,10,'APPROVED','2020-04-19 20:39:09'),(137,10,'APPROVED','2020-04-19 20:40:28'),(138,10,'APPROVED','2020-04-19 20:40:28'),(139,10,'APPROVED','2020-04-19 20:41:28'),(140,10,'APPROVED','2020-04-19 20:41:28'),(141,10,'SUBMITTED','2020-04-19 20:46:49'),(142,10,'SUBMITTED','2020-04-19 20:46:49'),(143,23,'APPROVED','2020-04-19 20:47:44'),(144,23,'APPROVED','2020-04-19 20:47:44'),(145,52,'NEW','2020-04-21 08:10:30'),(146,52,'NEW','2020-04-21 08:10:30'),(147,52,'NEW','2020-04-21 08:11:04'),(148,52,'NEW','2020-04-21 08:11:04'),(149,52,'NEW','2020-04-21 08:13:06'),(150,52,'NEW','2020-04-21 08:14:56'),(151,52,'SUBMITTED','2020-04-21 08:15:21'),(152,52,'SUBMITTED','2020-04-21 08:15:21'),(153,52,'APPROVED','2020-04-21 08:15:23'),(154,52,'APPROVED','2020-04-21 08:15:24'),(155,52,'NEW','2020-04-21 08:16:01'),(156,52,'NEW','2020-04-21 08:16:01'),(157,52,'NEW','2020-04-21 08:17:12'),(158,52,'NEW','2020-04-21 08:17:30'),(159,52,'SUBMITTED','2020-04-21 08:17:33'),(160,52,'APPROVED','2020-04-21 08:17:35'),(161,52,'NEW','2020-04-21 08:48:08'),(162,52,'NEW','2020-04-21 08:48:08'),(163,52,'NEW','2020-04-21 08:48:16'),(164,52,'NEW','2020-04-21 08:48:16'),(165,46,'SUBMITTED','2020-04-21 11:11:50'),(166,46,'SUBMITTED','2020-04-21 11:11:50'),(167,46,'APPROVED','2020-04-21 11:11:52'),(168,46,'APPROVED','2020-04-21 11:11:52'),(169,46,'NEW','2020-04-21 11:11:59'),(170,46,'NEW','2020-04-21 11:11:59'),(171,46,'NEW','2020-04-21 11:13:00'),(172,46,'NEW','2020-04-21 11:13:29'),(173,46,'SUBMITTED','2020-04-21 11:13:35'),(174,46,'APPROVED','2020-04-21 11:13:37'),(175,46,'NEW','2020-04-21 12:47:09'),(176,46,'NEW','2020-04-21 12:47:09'),(177,46,'NEW','2020-04-21 12:47:51'),(178,46,'SUBMITTED','2020-04-21 12:47:55'),(179,46,'APPROVED','2020-04-21 12:47:57'),(180,53,'NEW','2020-04-21 15:41:19'),(181,53,'NEW','2020-04-21 15:41:19'),(182,53,'NEW','2020-04-21 15:42:03'),(183,53,'SUBMITTED','2020-04-21 15:42:11'),(184,53,'APPROVED','2020-04-21 15:42:13'),(185,53,'NEW','2020-04-21 15:47:15'),(186,53,'NEW','2020-04-21 15:47:15'),(187,53,'SUBMITTED','2020-04-21 15:47:17'),(188,53,'SUBMITTED','2020-04-21 15:47:17'),(189,53,'APPROVED','2020-04-21 15:47:18'),(190,53,'NEW','2020-04-21 15:47:59'),(191,53,'NEW','2020-04-21 15:47:59'),(192,53,'SUBMITTED','2020-04-21 15:48:00'),(193,53,'SUBMITTED','2020-04-21 15:48:00'),(194,53,'APPROVED','2020-04-21 15:48:01'),(195,53,'NEW','2020-04-21 15:51:01'),(196,53,'NEW','2020-04-21 15:51:01'),(197,53,'SUBMITTED','2020-04-21 15:51:06'),(198,53,'SUBMITTED','2020-04-21 15:51:06'),(199,53,'APPROVED','2020-04-21 15:51:07'),(200,53,'NEW','2020-04-21 15:54:32'),(201,53,'NEW','2020-04-21 15:54:32'),(202,53,'SUBMITTED','2020-04-21 15:54:33'),(203,53,'SUBMITTED','2020-04-21 15:54:33'),(204,53,'APPROVED','2020-04-21 15:54:35'),(205,53,'APPROVED','2020-04-21 15:54:35'),(206,53,'NEW','2020-04-21 15:54:57'),(207,53,'NEW','2020-04-21 15:54:57'),(208,53,'NEW','2020-04-21 15:55:36'),(209,53,'SUBMITTED','2020-04-21 15:55:43'),(210,53,'SUBMITTED','2020-04-21 15:55:43'),(211,53,'APPROVED','2020-04-21 15:55:44'),(212,53,'APPROVED','2020-04-21 15:55:44'),(213,10,'SUBMITTED','2020-04-21 17:25:40'),(214,10,'SUBMITTED','2020-04-21 17:27:50'),(215,10,'SUBMITTED','2020-04-21 17:33:43'),(216,10,'SUBMITTED','2020-04-21 17:41:38'),(217,10,'SUBMITTED','2020-04-21 19:22:27'),(218,10,'SUBMITTED','2020-04-21 19:22:53'),(219,10,'SUBMITTED','2020-04-21 19:25:54'),(220,53,'NEW','2020-04-22 12:03:52'),(221,53,'NEW','2020-04-22 12:03:52'),(222,53,'NEW','2020-04-22 12:04:31'),(223,53,'NEW','2020-04-22 12:04:31'),(224,53,'NEW','2020-04-22 12:05:13'),(225,53,'SUBMITTED','2020-04-22 12:05:18'),(226,53,'APPROVED','2020-04-22 12:05:20'),(227,53,'NEW','2020-04-22 12:24:00'),(228,53,'NEW','2020-04-22 12:24:31'),(229,54,'NEW','2020-04-22 15:33:01'),(230,54,'NEW','2020-04-22 15:33:01'),(231,54,'NEW','2020-04-22 15:39:03'),(232,54,'NEW','2020-04-22 15:39:03'),(233,54,'NEW','2020-04-22 15:46:03'),(234,54,'NEW','2020-04-22 15:48:50'),(235,54,'SUBMITTED','2020-04-22 15:51:22'),(236,54,'APPROVED','2020-04-22 15:51:25'),(237,54,'APPROVED','2020-04-22 15:53:07'),(238,54,'NEW','2020-04-22 16:00:22'),(239,54,'SUBMITTED','2020-04-22 16:00:27'),(240,54,'APPROVED','2020-04-22 16:00:29'),(241,54,'NEW','2020-04-22 16:07:32'),(242,54,'NEW','2020-04-22 16:07:32'),(243,54,'NEW','2020-04-22 16:08:50'),(244,54,'NEW','2020-04-22 16:13:31'),(245,54,'SUBMITTED','2020-04-22 16:13:42'),(246,54,'APPROVED','2020-04-22 16:13:45'),(247,54,'NEW','2020-04-22 17:02:53'),(248,54,'NEW','2020-04-22 17:02:53'),(249,54,'NEW','2020-04-22 17:03:19'),(250,54,'SUBMITTED','2020-04-22 17:04:18'),(251,54,'APPROVED','2020-04-22 17:04:21'),(252,10,'SUBMITTED','2020-04-26 11:54:29'),(253,10,'SUBMITTED','2020-04-26 11:54:29'),(254,10,'SUBMITTED','2020-04-26 11:55:06'),(255,10,'SUBMITTED','2020-04-26 11:55:06'),(256,10,'SUBMITTED','2020-04-26 11:56:13'),(257,10,'SUBMITTED','2020-04-26 11:56:13'),(258,10,'SUBMITTED','2020-04-26 11:56:37'),(259,10,'SUBMITTED','2020-04-26 11:56:37'),(260,9,'NEW','2020-04-26 15:25:39'),(261,9,'NEW','2020-04-26 15:25:39'),(262,9,'NEW','2020-04-26 15:26:47'),(263,9,'NEW','2020-04-26 15:26:47'),(264,55,'NEW','2020-04-27 11:09:29'),(265,55,'NEW','2020-04-27 11:09:29'),(266,55,'NEW','2020-04-27 11:10:12'),(267,55,'NEW','2020-04-27 11:10:12'),(268,55,'NEW','2020-04-27 11:11:55'),(269,55,'NEW','2020-04-27 11:23:53'),(270,55,'SUBMITTED','2020-04-27 11:24:06'),(271,55,'APPROVED','2020-04-27 11:24:09'),(272,55,'NEW','2020-04-27 11:24:31'),(273,55,'NEW','2020-04-27 11:24:31'),(274,55,'NEW','2020-04-27 11:25:07'),(275,55,'SUBMITTED','2020-04-27 11:25:12'),(276,55,'SUBMITTED','2020-04-27 11:25:12'),(277,55,'SUBMITTED','2020-04-27 11:25:24'),(278,55,'APPROVED','2020-04-27 11:25:27'),(279,56,'NEW','2020-04-28 08:30:54'),(280,56,'NEW','2020-04-28 08:30:54'),(281,57,'NEW','2020-04-29 20:24:24'),(282,57,'NEW','2020-04-29 20:24:24'),(283,57,'NEW','2020-04-29 20:24:52'),(284,57,'NEW','2020-04-29 20:24:52'),(285,57,'NEW','2020-04-29 20:27:05'),(286,57,'NEW','2020-04-29 20:28:13'),(287,57,'SUBMITTED','2020-04-29 20:28:21'),(288,57,'APPROVED','2020-04-29 20:28:23'),(289,57,'NEW','2020-04-29 20:28:40'),(290,57,'NEW','2020-04-29 20:29:04'),(291,57,'SUBMITTED','2020-04-29 20:29:08'),(292,57,'NEW','2020-04-29 20:29:22'),(293,57,'NEW','2020-04-29 20:29:38'),(294,57,'SUBMITTED','2020-04-29 20:29:39'),(295,57,'APPROVED','2020-04-29 20:29:43'),(296,58,'NEW','2020-04-30 08:25:42'),(297,58,'NEW','2020-04-30 08:25:42'),(298,58,'NEW','2020-04-30 08:26:08'),(299,58,'NEW','2020-04-30 08:26:08'),(300,58,'NEW','2020-04-30 08:27:45'),(301,58,'NEW','2020-04-30 08:28:46'),(302,58,'SUBMITTED','2020-04-30 08:28:54'),(303,58,'APPROVED','2020-04-30 08:28:56'),(304,58,'NEW','2020-04-30 08:29:08'),(305,58,'NEW','2020-04-30 08:29:29'),(306,58,'NEW','2020-04-30 08:29:47'),(307,58,'SUBMITTED','2020-04-30 08:29:49'),(308,58,'APPROVED','2020-04-30 08:29:52'),(309,10,'SUBMITTED','2020-04-30 15:54:43'),(310,59,'NEW','2020-05-05 17:13:30'),(311,59,'NEW','2020-05-05 17:13:30'),(312,60,'NEW','2020-05-06 11:17:05'),(313,60,'NEW','2020-05-06 11:17:05'),(314,60,'NEW','2020-05-06 11:19:20'),(315,60,'NEW','2020-05-06 11:20:34'),(316,60,'SUBMITTED','2020-05-06 11:20:36'),(317,60,'APPROVED','2020-05-06 11:20:37'),(318,60,'NEW','2020-05-06 11:20:39'),(319,46,'NEW','2020-05-06 11:22:38'),(320,46,'NEW','2020-05-06 11:22:38'),(321,46,'NEW','2020-05-06 11:23:00'),(322,46,'SUBMITTED','2020-05-06 11:23:02'),(323,46,'APPROVED','2020-05-06 11:23:04'),(324,61,'NEW','2020-05-06 13:29:07'),(325,61,'NEW','2020-05-06 13:29:07'),(326,61,'NEW','2020-05-06 13:29:19'),(327,61,'NEW','2020-05-06 13:29:19'),(328,61,'NEW','2020-05-06 13:33:04'),(329,61,'NEW','2020-05-06 13:33:04'),(330,61,'NEW','2020-05-06 13:35:33'),(331,61,'NEW','2020-05-06 13:35:33'),(332,62,'NEW','2020-05-06 14:25:00'),(333,62,'NEW','2020-05-06 14:25:00'),(334,63,'NEW','2020-05-06 14:28:16'),(335,63,'NEW','2020-05-06 14:28:16'),(336,63,'NEW','2020-05-06 14:32:30'),(337,63,'NEW','2020-05-06 14:32:30'),(338,63,'SUBMITTED','2020-05-06 14:32:33'),(339,63,'SUBMITTED','2020-05-06 14:32:33'),(340,63,'SUBMITTED','2020-05-06 14:41:16'),(341,63,'SUBMITTED','2020-05-06 15:23:16'),(342,63,'SUBMITTED','2020-05-06 15:23:27'),(343,63,'SUBMITTED','2020-05-06 15:28:35'),(344,63,'SUBMITTED','2020-05-06 18:27:23'),(345,63,'SUBMITTED','2020-05-06 18:29:12'),(346,63,'SUBMITTED','2020-05-06 18:39:32'),(347,63,'SUBMITTED','2020-05-06 18:39:50'),(348,63,'SUBMITTED','2020-05-06 18:43:41'),(349,63,'SUBMITTED','2020-05-06 18:43:58'),(350,63,'SUBMITTED','2020-05-06 18:44:07'),(351,63,'NEW','2020-05-06 18:48:19'),(352,10,'SUBMITTED','2020-05-08 11:54:43'),(353,10,'SUBMITTED','2020-05-08 11:54:43'),(354,64,'NEW','2020-05-08 11:55:05'),(355,64,'NEW','2020-05-08 11:55:05'),(356,65,'NEW','2020-05-08 12:12:58'),(357,65,'NEW','2020-05-08 12:12:58'),(358,65,'NEW','2020-05-08 12:14:56'),(359,65,'NEW','2020-05-08 12:15:23'),(360,65,'NEW','2020-05-08 12:15:39'),(361,65,'SUBMITTED','2020-05-08 12:15:59'),(362,65,'SUBMITTED','2020-05-08 12:15:59'),(363,63,'SUBMITTED','2020-05-08 12:33:05'),(364,63,'SUBMITTED','2020-05-08 12:33:05'),(365,66,'NEW','2020-05-08 15:37:44'),(366,66,'NEW','2020-05-08 15:37:44'),(367,66,'NEW','2020-05-08 15:37:48'),(368,66,'NEW','2020-05-08 15:37:48'),(369,66,'NEW','2020-05-08 15:39:12'),(370,66,'SUBMITTED','2020-05-08 15:39:25'),(371,66,'SUBMITTED','2020-05-08 15:39:51'),(372,66,'SUBMITTED','2020-05-08 15:40:05'),(373,10,'SUBMITTED','2020-05-09 18:37:15'),(374,10,'SUBMITTED','2020-05-09 18:37:43'),(375,10,'SUBMITTED','2020-05-09 18:47:50'),(376,10,'SUBMITTED','2020-05-09 18:50:03'),(377,10,'SUBMITTED','2020-05-09 18:50:36'),(378,10,'SUBMITTED','2020-05-09 18:53:25'),(379,10,'SUBMITTED','2020-05-09 18:55:10'),(380,10,'APPROVED','2020-05-09 18:55:30'),(381,10,'NEW','2020-05-10 19:14:27'),(382,10,'NEW','2020-05-10 19:16:10'),(383,10,'NEW','2020-05-10 19:20:13'),(384,10,'NEW','2020-05-10 19:20:59'),(385,10,'NEW','2020-05-10 19:21:48'),(386,10,'NEW','2020-05-10 19:23:47'),(387,10,'NEW','2020-05-10 19:29:46'),(388,10,'NEW','2020-05-10 19:29:58'),(389,10,'NEW','2020-05-10 19:35:23'),(390,10,'NEW','2020-05-10 19:35:31'),(391,10,'NEW','2020-05-10 19:36:16'),(392,10,'NEW','2020-05-10 19:36:46'),(393,10,'NEW','2020-05-10 19:38:28'),(394,10,'NEW','2020-05-10 19:39:44'),(395,66,'NEW','2020-05-18 17:41:58'),(396,66,'NEW','2020-05-18 17:41:58'),(397,68,'NEW','2020-05-24 12:07:42'),(398,68,'NEW','2020-05-24 12:07:42'),(399,68,'NEW','2020-05-24 12:21:25'),(400,68,'NEW','2020-05-24 12:24:02'),(401,68,'NEW','2020-05-24 12:25:33'),(402,68,'NEW','2020-05-24 12:29:12'),(403,68,'SUBMITTED','2020-05-24 12:29:34'),(404,68,'SUBMITTED','2020-05-24 12:29:34'),(405,68,'APPROVED','2020-05-24 12:29:37'),(406,68,'APPROVED','2020-05-24 12:29:37'),(407,69,'NEW','2020-05-27 15:41:56'),(408,69,'NEW','2020-05-27 15:41:56'),(409,69,'NEW','2020-05-27 15:42:57'),(410,69,'NEW','2020-05-27 15:43:03'),(411,69,'NEW','2020-05-27 15:44:03'),(412,69,'NEW','2020-05-27 15:44:03'),(413,70,'NEW','2020-06-04 14:04:46'),(414,70,'NEW','2020-06-04 14:04:46'),(415,70,'NEW','2020-06-04 14:09:05'),(416,70,'NEW','2020-06-04 14:12:09'),(417,70,'SUBMITTED','2020-06-04 14:12:20'),(418,70,'APPROVED','2020-06-04 14:12:23'),(419,71,'NEW','2020-06-04 14:18:57'),(420,71,'NEW','2020-06-04 14:18:57'),(421,71,'NEW','2020-06-04 14:59:15'),(422,71,'NEW','2020-06-04 14:59:54'),(423,71,'SUBMITTED','2020-06-04 15:00:05'),(424,71,'APPROVED','2020-06-04 15:00:07'),(425,72,'NEW','2020-06-11 17:11:49'),(426,72,'NEW','2020-06-11 17:11:49'),(427,72,'NEW','2020-06-11 17:16:08'),(428,72,'NEW','2020-06-11 17:17:20'),(429,73,'NEW','2020-06-12 13:53:02'),(430,73,'NEW','2020-06-12 13:53:02'),(431,73,'NEW','2020-06-12 13:55:17'),(432,73,'NEW','2020-06-12 13:56:57'),(433,73,'NEW','2020-06-12 13:58:36'),(434,68,'NEW','2020-06-17 08:50:24'),(435,68,'NEW','2020-06-17 08:50:24'),(436,68,'NEW','2020-06-17 08:52:49'),(437,68,'NEW','2020-06-17 08:55:10'),(438,68,'NEW','2020-06-17 09:00:53'),(439,68,'NEW','2020-06-17 09:07:36'),(440,68,'NEW','2020-06-17 09:10:19'),(441,68,'NEW','2020-06-17 09:13:26'),(442,68,'NEW','2020-06-17 09:16:02'),(443,68,'NEW','2020-06-17 09:20:01'),(444,68,'NEW','2020-06-17 09:23:28'),(445,68,'NEW','2020-06-17 09:26:19'),(446,68,'NEW','2020-06-17 09:34:40'),(447,68,'NEW','2020-06-17 09:41:37'),(448,68,'NEW','2020-06-17 09:56:31'),(449,68,'NEW','2020-06-17 11:37:18'),(450,68,'NEW','2020-06-17 11:40:47'),(451,68,'NEW','2020-06-17 11:43:36'),(452,68,'NEW','2020-06-17 11:53:07'),(453,68,'NEW','2020-06-17 11:56:39'),(454,68,'NEW','2020-06-17 12:00:42'),(455,74,'NEW','2020-06-18 18:50:43'),(456,74,'NEW','2020-06-18 18:50:43'),(457,74,'NEW','2020-06-18 18:52:21'),(458,71,'NEW','2020-06-18 19:07:33'),(459,71,'NEW','2020-06-18 19:07:38'),(460,71,'SUBMITTED','2020-06-18 19:07:40'),(461,71,'APPROVED','2020-06-18 19:07:42'),(462,73,'NEW','2020-06-18 19:08:55'),(463,73,'SUBMITTED','2020-06-18 19:08:59'),(464,73,'APPROVED','2020-06-18 19:09:00'),(465,75,'NEW','2020-06-18 23:05:52'),(466,75,'NEW','2020-06-18 23:05:52'),(467,75,'NEW','2020-06-18 23:06:26');
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

-- Dump completed on 2020-07-19 19:43:15