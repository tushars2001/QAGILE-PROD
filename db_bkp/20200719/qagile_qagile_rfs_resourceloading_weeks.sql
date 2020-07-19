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
-- Table structure for table `qagile_rfs_resourceloading_weeks`
--

DROP TABLE IF EXISTS `qagile_rfs_resourceloading_weeks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qagile_rfs_resourceloading_weeks` (
  `recordid` int NOT NULL AUTO_INCREMENT,
  `rfs_request_id` int DEFAULT NULL,
  `weekstart` datetime DEFAULT NULL,
  `numofweeks` int DEFAULT '0',
  PRIMARY KEY (`recordid`),
  UNIQUE KEY `uq` (`rfs_request_id`),
  KEY `fk_rl_weeks_rfs_id_idx` (`rfs_request_id`),
  CONSTRAINT `fk_rl_weeks_rfs_id` FOREIGN KEY (`rfs_request_id`) REFERENCES `qagile_rfs_request` (`rfs_request_id`)
) ENGINE=InnoDB AUTO_INCREMENT=219 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qagile_rfs_resourceloading_weeks`
--

LOCK TABLES `qagile_rfs_resourceloading_weeks` WRITE;
/*!40000 ALTER TABLE `qagile_rfs_resourceloading_weeks` DISABLE KEYS */;
INSERT INTO `qagile_rfs_resourceloading_weeks` VALUES (25,1,'2020-04-06 00:00:00',10),(41,9,'2020-03-02 00:00:00',32),(42,27,'2020-03-16 00:00:00',6),(43,2,'2020-03-23 00:00:00',4),(57,28,'2020-03-30 00:00:00',0),(58,32,'2020-04-20 00:00:00',8),(59,33,'2020-04-13 00:00:00',8),(60,34,'2020-04-13 00:00:00',8),(76,23,'2020-03-30 00:00:00',3),(78,39,'2020-04-20 00:00:00',12),(79,40,'2020-04-20 00:00:00',12),(80,41,'2020-04-20 00:00:00',12),(81,42,'2020-04-20 00:00:00',12),(82,43,'2020-04-20 00:00:00',17),(97,38,'2020-04-06 00:00:00',18),(101,52,'2020-04-27 00:00:00',10),(124,53,'2020-04-27 00:00:00',8),(129,54,'2020-04-20 00:00:00',10),(131,55,'2020-04-27 00:00:00',8),(137,57,'2020-04-13 00:00:00',10),(142,58,'2020-04-13 00:00:00',10),(143,60,'2020-05-18 00:00:00',10),(146,46,'2020-04-20 00:00:00',8),(158,63,'2020-05-04 00:00:00',5),(159,65,'2020-05-25 00:00:00',1),(160,66,'2020-05-04 00:00:00',3),(182,10,'2020-04-20 00:00:00',4),(186,69,'2020-04-06 00:00:00',6),(187,70,'2020-03-23 00:00:00',37),(189,72,'2020-06-08 00:00:00',8),(209,68,'2020-03-02 00:00:00',35),(210,74,'2020-10-19 00:00:00',16),(214,71,'2020-02-10 00:00:00',21),(217,73,'2020-05-04 00:00:00',13),(218,75,'2020-06-15 00:00:00',24);
/*!40000 ALTER TABLE `qagile_rfs_resourceloading_weeks` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-19 19:43:17
