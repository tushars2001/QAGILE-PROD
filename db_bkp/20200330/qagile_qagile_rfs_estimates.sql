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
-- Table structure for table `qagile_rfs_estimates`
--

DROP TABLE IF EXISTS `qagile_rfs_estimates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qagile_rfs_estimates` (
  `record_id` int NOT NULL AUTO_INCREMENT,
  `rfs_request_id` int DEFAULT NULL,
  `activity_code` varchar(5) DEFAULT NULL,
  `effort` decimal(5,2) DEFAULT NULL,
  `unit` varchar(45) DEFAULT NULL COMMENT 'Hours/days\n',
  `comment` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`record_id`),
  KEY `fk_rfs_estimate_rfs_activity_code_idx` (`activity_code`),
  CONSTRAINT `fk_rfs_estimate_rfs_activity_code` FOREIGN KEY (`activity_code`) REFERENCES `qagile_rfs_estimates_activity` (`activity_code`)
) ENGINE=InnoDB AUTO_INCREMENT=258 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qagile_rfs_estimates`
--

LOCK TABLES `qagile_rfs_estimates` WRITE;
/*!40000 ALTER TABLE `qagile_rfs_estimates` DISABLE KEYS */;
INSERT INTO `qagile_rfs_estimates` VALUES (248,2,'KTAPP',100.00,NULL,'for KT'),(249,2,'KTSSR',200.00,NULL,'for SSR'),(250,2,'SIT',12.00,NULL,'int test'),(251,2,'UAT',23.00,NULL,'uat support'),(252,2,'PERF',34.00,NULL,'perf'),(253,2,'SEC',32.00,NULL,'sec test'),(254,2,'ACC',12.00,NULL,'acc test'),(255,2,'PRDAT',5.00,NULL,'prod act'),(256,2,'POM',8.00,NULL,'pom '),(257,2,'TRVCO',200.00,NULL,'onsite visit');
/*!40000 ALTER TABLE `qagile_rfs_estimates` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-29 13:04:24
