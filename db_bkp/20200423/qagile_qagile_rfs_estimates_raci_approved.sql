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
-- Table structure for table `qagile_rfs_estimates_raci_approved`
--

DROP TABLE IF EXISTS `qagile_rfs_estimates_raci_approved`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qagile_rfs_estimates_raci_approved` (
  `record_id` int NOT NULL DEFAULT '0',
  `rfs_request_id` int DEFAULT NULL,
  `raci_code` varchar(5) DEFAULT NULL,
  `raci_scope` varchar(3) DEFAULT NULL COMMENT 'SIT or UAT',
  `p_or_q` varchar(1) DEFAULT NULL,
  `RACI` varchar(1) DEFAULT NULL,
  `approval_num` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qagile_rfs_estimates_raci_approved`
--

LOCK TABLES `qagile_rfs_estimates_raci_approved` WRITE;
/*!40000 ALTER TABLE `qagile_rfs_estimates_raci_approved` DISABLE KEYS */;
INSERT INTO `qagile_rfs_estimates_raci_approved` VALUES (0,54,'CCQC','SIT','P','R',3),(0,54,'CCQC','SIT','P','A',3),(0,54,'CCQC','SIT','P','C',3),(0,54,'CCQC','SIT','P','I',3),(0,54,'TPLPR','SIT','P','R',3),(0,54,'TPLPR','SIT','P','A',3),(0,54,'TPLPR','SIT','P','I',3),(0,54,'TPLPR','SIT','Q','C',3),(0,54,'TC2QC','SIT','P','R',3),(0,54,'TC2QC','SIT','P','A',3),(0,54,'TC2QC','SIT','P','I',3),(0,54,'TC2QC','SIT','Q','C',3),(0,54,'EXCTC','SIT','P','R',3),(0,54,'EXCTC','SIT','P','C',3),(0,54,'EXCTC','SIT','Q','A',3),(0,54,'EXCTC','SIT','Q','I',3),(0,54,'MNGQC','SIT','P','R',3),(0,54,'MNGQC','SIT','P','I',3),(0,54,'MNGQC','SIT','Q','A',3),(0,54,'MNGQC','SIT','Q','C',3),(0,54,'CDTER','SIT','P','R',3),(0,54,'CDTER','SIT','P','C',3),(0,54,'CDTER','SIT','P','I',3),(0,54,'CDTER','SIT','Q','A',3),(0,54,'RDTC','SIT','P','R',3),(0,54,'RDTC','SIT','P','C',3),(0,54,'RDTC','SIT','Q','A',3),(0,54,'RDTC','SIT','Q','I',3),(0,54,'WTR','SIT','P','C',3),(0,54,'WTR','SIT','P','I',3),(0,54,'WTR','SIT','Q','R',3),(0,54,'WTR','SIT','Q','A',3),(0,54,'MXE2E','SIT','P','R',3),(0,54,'MXE2E','SIT','P','A',3),(0,54,'MXE2E','SIT','P','C',3),(0,54,'MXE2E','SIT','Q','I',3),(0,54,'CCQC','UAT','P','R',3),(0,54,'CCQC','UAT','P','A',3),(0,54,'CCQC','UAT','Q','C',3),(0,54,'CCQC','UAT','Q','I',3),(0,54,'TPLPR','UAT','P','R',3),(0,54,'TPLPR','UAT','P','I',3),(0,54,'TPLPR','UAT','Q','A',3),(0,54,'TPLPR','UAT','Q','C',3),(0,54,'TC2QC','UAT','P','R',3),(0,54,'TC2QC','UAT','P','C',3),(0,54,'TC2QC','UAT','Q','A',3),(0,54,'TC2QC','UAT','Q','I',3),(0,54,'EXCTC','UAT','P','A',3),(0,54,'EXCTC','UAT','P','I',3),(0,54,'EXCTC','UAT','Q','R',3),(0,54,'EXCTC','UAT','Q','C',3),(0,54,'MNGQC','UAT','P','I',3),(0,54,'MNGQC','UAT','Q','R',3),(0,54,'MNGQC','UAT','Q','A',3),(0,54,'MNGQC','UAT','Q','C',3),(0,54,'CDTER','UAT','P','R',3),(0,54,'CDTER','UAT','P','I',3),(0,54,'CDTER','UAT','Q','C',3),(0,54,'RDTC','UAT','P','R',3),(0,54,'RDTC','UAT','P','A',3),(0,54,'RDTC','UAT','Q','C',3),(0,54,'WTR','UAT','Q','R',3),(0,54,'WTR','UAT','Q','A',3),(0,54,'WTR','UAT','Q','C',3),(0,54,'WTR','UAT','Q','I',3),(0,54,'MXE2E','UAT','P','R',3),(0,54,'MXE2E','UAT','P','C',3),(0,54,'MXE2E','UAT','P','I',3),(0,54,'MXE2E','UAT','Q','A',3),(0,54,'CCQC','SIT','P','R',4),(0,54,'CCQC','SIT','P','A',4),(0,54,'CCQC','SIT','P','C',4),(0,54,'CCQC','SIT','P','I',4),(0,54,'TPLPR','SIT','P','R',4),(0,54,'TPLPR','SIT','P','A',4),(0,54,'TPLPR','SIT','P','C',4),(0,54,'TPLPR','SIT','P','I',4),(0,54,'TC2QC','SIT','P','R',4),(0,54,'TC2QC','SIT','P','A',4),(0,54,'TC2QC','SIT','P','C',4),(0,54,'TC2QC','SIT','P','I',4),(0,54,'EXCTC','SIT','P','R',4),(0,54,'EXCTC','SIT','P','A',4),(0,54,'EXCTC','SIT','P','C',4),(0,54,'EXCTC','SIT','P','I',4),(0,54,'MNGQC','SIT','P','R',4),(0,54,'MNGQC','SIT','P','A',4),(0,54,'MNGQC','SIT','P','C',4),(0,54,'MNGQC','SIT','P','I',4),(0,54,'CDTER','SIT','P','R',4),(0,54,'CDTER','SIT','P','A',4),(0,54,'CDTER','SIT','P','C',4),(0,54,'CDTER','SIT','P','I',4),(0,54,'RDTC','SIT','P','R',4),(0,54,'RDTC','SIT','P','A',4),(0,54,'RDTC','SIT','P','C',4),(0,54,'RDTC','SIT','P','I',4),(0,54,'WTR','SIT','P','R',4),(0,54,'WTR','SIT','P','A',4),(0,54,'WTR','SIT','P','C',4),(0,54,'WTR','SIT','P','I',4),(0,54,'MXE2E','SIT','P','R',4),(0,54,'MXE2E','SIT','P','A',4),(0,54,'MXE2E','SIT','P','C',4),(0,54,'MXE2E','SIT','P','I',4),(0,54,'CCQC','UAT','Q','R',4),(0,54,'CCQC','UAT','Q','A',4),(0,54,'CCQC','UAT','Q','C',4),(0,54,'CCQC','UAT','Q','I',4),(0,54,'TPLPR','UAT','Q','R',4),(0,54,'TPLPR','UAT','Q','A',4),(0,54,'TPLPR','UAT','Q','C',4),(0,54,'TPLPR','UAT','Q','I',4),(0,54,'TC2QC','UAT','Q','R',4),(0,54,'TC2QC','UAT','Q','A',4),(0,54,'TC2QC','UAT','Q','C',4),(0,54,'TC2QC','UAT','Q','I',4),(0,54,'EXCTC','UAT','Q','R',4),(0,54,'EXCTC','UAT','Q','A',4),(0,54,'EXCTC','UAT','Q','C',4),(0,54,'EXCTC','UAT','Q','I',4),(0,54,'MNGQC','UAT','Q','R',4),(0,54,'MNGQC','UAT','Q','A',4),(0,54,'MNGQC','UAT','Q','C',4),(0,54,'MNGQC','UAT','Q','I',4),(0,54,'CDTER','UAT','Q','R',4),(0,54,'CDTER','UAT','Q','A',4),(0,54,'CDTER','UAT','Q','C',4),(0,54,'CDTER','UAT','Q','I',4),(0,54,'RDTC','UAT','Q','R',4),(0,54,'RDTC','UAT','Q','A',4),(0,54,'RDTC','UAT','Q','C',4),(0,54,'RDTC','UAT','Q','I',4),(0,54,'WTR','UAT','Q','R',4),(0,54,'WTR','UAT','Q','A',4),(0,54,'WTR','UAT','Q','C',4),(0,54,'WTR','UAT','Q','I',4),(0,54,'MXE2E','UAT','Q','R',4),(0,54,'MXE2E','UAT','Q','A',4),(0,54,'MXE2E','UAT','Q','C',4),(0,54,'MXE2E','UAT','Q','I',4),(0,54,'CCQC','SIT','P','R',5),(0,54,'CCQC','SIT','P','A',5),(0,54,'CCQC','SIT','P','C',5),(0,54,'CCQC','SIT','P','I',5),(0,54,'TPLPR','SIT','P','R',5),(0,54,'TPLPR','SIT','P','A',5),(0,54,'TPLPR','SIT','P','C',5),(0,54,'TPLPR','SIT','P','I',5),(0,54,'TC2QC','SIT','P','R',5),(0,54,'TC2QC','SIT','P','A',5),(0,54,'TC2QC','SIT','P','C',5),(0,54,'TC2QC','SIT','P','I',5),(0,54,'EXCTC','SIT','P','R',5),(0,54,'EXCTC','SIT','P','A',5),(0,54,'EXCTC','SIT','P','C',5),(0,54,'EXCTC','SIT','P','I',5),(0,54,'MNGQC','SIT','P','R',5),(0,54,'MNGQC','SIT','P','A',5),(0,54,'MNGQC','SIT','P','C',5),(0,54,'MNGQC','SIT','P','I',5),(0,54,'CDTER','SIT','P','R',5),(0,54,'CDTER','SIT','P','A',5),(0,54,'CDTER','SIT','P','C',5),(0,54,'CDTER','SIT','P','I',5),(0,54,'RDTC','SIT','P','R',5),(0,54,'RDTC','SIT','P','A',5),(0,54,'RDTC','SIT','P','C',5),(0,54,'RDTC','SIT','P','I',5),(0,54,'WTR','SIT','P','R',5),(0,54,'WTR','SIT','P','A',5),(0,54,'WTR','SIT','P','C',5),(0,54,'WTR','SIT','P','I',5),(0,54,'MXE2E','SIT','P','R',5),(0,54,'MXE2E','SIT','P','A',5),(0,54,'MXE2E','SIT','P','C',5),(0,54,'MXE2E','SIT','P','I',5),(0,54,'CCQC','UAT','Q','R',5),(0,54,'CCQC','UAT','Q','A',5),(0,54,'CCQC','UAT','Q','C',5),(0,54,'CCQC','UAT','Q','I',5),(0,54,'TPLPR','UAT','Q','R',5),(0,54,'TPLPR','UAT','Q','A',5),(0,54,'TPLPR','UAT','Q','C',5),(0,54,'TPLPR','UAT','Q','I',5),(0,54,'TC2QC','UAT','Q','R',5),(0,54,'TC2QC','UAT','Q','A',5),(0,54,'TC2QC','UAT','Q','C',5),(0,54,'TC2QC','UAT','Q','I',5),(0,54,'EXCTC','UAT','Q','R',5),(0,54,'EXCTC','UAT','Q','A',5),(0,54,'EXCTC','UAT','Q','C',5),(0,54,'EXCTC','UAT','Q','I',5),(0,54,'MNGQC','UAT','Q','R',5),(0,54,'MNGQC','UAT','Q','A',5),(0,54,'MNGQC','UAT','Q','C',5),(0,54,'MNGQC','UAT','Q','I',5),(0,54,'CDTER','UAT','Q','R',5),(0,54,'CDTER','UAT','Q','A',5),(0,54,'CDTER','UAT','Q','C',5),(0,54,'CDTER','UAT','Q','I',5),(0,54,'RDTC','UAT','Q','R',5),(0,54,'RDTC','UAT','Q','A',5),(0,54,'RDTC','UAT','Q','C',5),(0,54,'RDTC','UAT','Q','I',5),(0,54,'WTR','UAT','Q','R',5),(0,54,'WTR','UAT','Q','A',5),(0,54,'WTR','UAT','Q','C',5),(0,54,'WTR','UAT','Q','I',5),(0,54,'MXE2E','UAT','Q','R',5),(0,54,'MXE2E','UAT','Q','A',5),(0,54,'MXE2E','UAT','Q','C',5),(0,54,'MXE2E','UAT','Q','I',5);
/*!40000 ALTER TABLE `qagile_rfs_estimates_raci_approved` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-23 12:14:47
