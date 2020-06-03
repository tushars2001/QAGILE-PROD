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
-- Table structure for table `qagile_rfs_estimates_raci_head`
--

DROP TABLE IF EXISTS `qagile_rfs_estimates_raci_head`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qagile_rfs_estimates_raci_head` (
  `recordid` int NOT NULL AUTO_INCREMENT,
  `rfs_request_Id` int DEFAULT NULL,
  `SITRole` varchar(45) DEFAULT NULL,
  `SITScope` mediumtext,
  `UATRole` varchar(45) DEFAULT NULL,
  `UATScope` mediumtext,
  `total_qa_comments` mediumtext,
  PRIMARY KEY (`recordid`),
  KEY `fk_estimate_head_rfs_id_idx` (`rfs_request_Id`),
  CONSTRAINT `fk_estimate_head_rfs_id` FOREIGN KEY (`rfs_request_Id`) REFERENCES `qagile_rfs_request` (`rfs_request_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qagile_rfs_estimates_raci_head`
--

LOCK TABLES `qagile_rfs_estimates_raci_head` WRITE;
/*!40000 ALTER TABLE `qagile_rfs_estimates_raci_head` DISABLE KEYS */;
INSERT INTO `qagile_rfs_estimates_raci_head` VALUES (25,2,'QA CoE lead - Full Scope','full sit scope','QA CoE Support','just supporting uat','this is total qa cost'),(27,10,NULL,NULL,NULL,NULL,NULL),(33,11,NULL,NULL,NULL,NULL,NULL),(35,12,NULL,NULL,NULL,NULL,NULL),(36,13,NULL,NULL,NULL,NULL,NULL),(37,8,NULL,NULL,NULL,NULL,NULL),(38,1,NULL,NULL,NULL,NULL,NULL),(39,23,NULL,NULL,NULL,NULL,NULL),(40,28,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `qagile_rfs_estimates_raci_head` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-31 14:26:21
