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
-- Table structure for table `qagile_rfs_resourceloading_weeks_approved`
--

DROP TABLE IF EXISTS `qagile_rfs_resourceloading_weeks_approved`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qagile_rfs_resourceloading_weeks_approved` (
  `recordid` int NOT NULL AUTO_INCREMENT,
  `rfs_request_id` int DEFAULT NULL,
  `weekstart` datetime DEFAULT NULL,
  `numofweeks` int DEFAULT '0',
  `approval_num` int NOT NULL DEFAULT '9999999',
  PRIMARY KEY (`recordid`)
) ENGINE=InnoDB AUTO_INCREMENT=132 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qagile_rfs_resourceloading_weeks_approved`
--

LOCK TABLES `qagile_rfs_resourceloading_weeks_approved` WRITE;
/*!40000 ALTER TABLE `qagile_rfs_resourceloading_weeks_approved` DISABLE KEYS */;
INSERT INTO `qagile_rfs_resourceloading_weeks_approved` VALUES (76,23,'2020-03-30 00:00:00',3,1),(97,38,'2020-04-06 00:00:00',18,1),(98,46,'2020-04-20 00:00:00',8,1),(99,52,'2020-04-27 00:00:00',10,1),(101,52,'2020-04-27 00:00:00',10,2),(102,46,'2020-04-20 00:00:00',8,2),(105,46,'2020-04-20 00:00:00',8,3),(108,53,'2020-04-27 00:00:00',6,1),(109,53,'2020-04-27 00:00:00',6,3),(110,53,'2020-04-27 00:00:00',6,4),(111,53,'2020-04-27 00:00:00',6,5),(112,53,'2020-04-27 00:00:00',6,6),(113,54,'2020-04-20 00:00:00',10,1),(114,54,'2020-04-20 00:00:00',10,2),(115,54,'2020-04-20 00:00:00',10,3),(116,54,'2020-04-20 00:00:00',10,4),(117,54,'2020-04-20 00:00:00',10,5),(118,55,'2020-04-27 00:00:00',8,1),(119,55,'2020-04-27 00:00:00',8,2),(120,57,'2020-04-13 00:00:00',10,1),(121,57,'2020-04-13 00:00:00',10,2),(122,58,'2020-04-13 00:00:00',10,1),(123,58,'2020-04-13 00:00:00',10,2),(124,60,'2020-05-18 00:00:00',10,1),(125,46,'2020-04-20 00:00:00',8,4),(126,10,'2020-04-20 00:00:00',4,5),(127,68,'2020-03-02 00:00:00',32,1),(128,70,'2020-03-23 00:00:00',37,1),(129,71,'2020-02-10 00:00:00',21,1),(130,71,'2020-02-10 00:00:00',21,2),(131,73,'2020-05-04 00:00:00',13,1);
/*!40000 ALTER TABLE `qagile_rfs_resourceloading_weeks_approved` ENABLE KEYS */;
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
