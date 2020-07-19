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
-- Table structure for table `qagile_rfs_rfs`
--

DROP TABLE IF EXISTS `qagile_rfs_rfs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qagile_rfs_rfs` (
  `rfs_id` int NOT NULL AUTO_INCREMENT,
  `rfs_request_id` int DEFAULT NULL,
  `rfs_estimate_id` int DEFAULT NULL,
  `rfs_resourceLoad_id` int DEFAULT NULL,
  `assumptions` mediumtext,
  `dependencies` mediumtext,
  `createDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `rfs_status` int DEFAULT NULL,
  `confidence` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`rfs_id`),
  KEY `fk_rfs_request_idx` (`rfs_request_id`),
  KEY `fk_rfs_status_idx` (`rfs_status`),
  CONSTRAINT `fk_rfs_request` FOREIGN KEY (`rfs_request_id`) REFERENCES `qagile_rfs_request` (`rfs_request_id`),
  CONSTRAINT `fk_rfs_status` FOREIGN KEY (`rfs_status`) REFERENCES `qagile_rfs_status` (`status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qagile_rfs_rfs`
--

LOCK TABLES `qagile_rfs_rfs` WRITE;
/*!40000 ALTER TABLE `qagile_rfs_rfs` DISABLE KEYS */;
/*!40000 ALTER TABLE `qagile_rfs_rfs` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-19 19:43:16