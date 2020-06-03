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
-- Table structure for table `qagile_rfs_estimates_raci_codes`
--

DROP TABLE IF EXISTS `qagile_rfs_estimates_raci_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qagile_rfs_estimates_raci_codes` (
  `raci_id` int NOT NULL AUTO_INCREMENT,
  `raci_code` varchar(5) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  `sequence` int DEFAULT NULL,
  PRIMARY KEY (`raci_id`),
  UNIQUE KEY `raci_code_UNIQUE` (`raci_code`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qagile_rfs_estimates_raci_codes`
--

LOCK TABLES `qagile_rfs_estimates_raci_codes` WRITE;
/*!40000 ALTER TABLE `qagile_rfs_estimates_raci_codes` DISABLE KEYS */;
INSERT INTO `qagile_rfs_estimates_raci_codes` VALUES (1,'CCQC','Create and Configure QC Projects',1),(2,'TPLPR','Test Plan and Test Preparation',2),(3,'TC2QC','Upload TC\'s to QC, Setup Lab',3),(4,'EXCTC','Execute TCs and Record Results in QC',4),(5,'MNGQC','Create / Manage Defects in QC',5),(6,'CDTER','Create Daily Test Execution Report',6),(7,'RDTC','Run Daily Test Call',7),(8,'WTR','Weekly Test Reporting',8),(9,'MXE2E','Manage and Coordinate x-team / E2E testing',9);
/*!40000 ALTER TABLE `qagile_rfs_estimates_raci_codes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-02 21:59:31
