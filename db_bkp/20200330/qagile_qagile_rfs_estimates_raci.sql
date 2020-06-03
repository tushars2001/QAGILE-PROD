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
-- Table structure for table `qagile_rfs_estimates_raci`
--

DROP TABLE IF EXISTS `qagile_rfs_estimates_raci`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qagile_rfs_estimates_raci` (
  `record_id` int NOT NULL AUTO_INCREMENT,
  `rfs_request_id` int DEFAULT NULL,
  `raci_code` varchar(5) DEFAULT NULL,
  `raci_scope` varchar(3) DEFAULT NULL COMMENT 'SIT or UAT',
  `p_or_q` varchar(1) DEFAULT NULL,
  `RACI` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`record_id`),
  KEY `fk_rfs_estimates_raci_id_idx` (`raci_code`),
  KEY `fk_estimates_raci_rfsid_idx` (`rfs_request_id`),
  CONSTRAINT `fk_estimates_raci_rfsid` FOREIGN KEY (`rfs_request_id`) REFERENCES `qagile_rfs_request` (`rfs_request_id`),
  CONSTRAINT `fk_rfs_estimates_raci_code` FOREIGN KEY (`raci_code`) REFERENCES `qagile_rfs_estimates_raci_codes` (`raci_code`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1217 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qagile_rfs_estimates_raci`
--

LOCK TABLES `qagile_rfs_estimates_raci` WRITE;
/*!40000 ALTER TABLE `qagile_rfs_estimates_raci` DISABLE KEYS */;
INSERT INTO `qagile_rfs_estimates_raci` VALUES (1145,2,'CCQC','SIT','P','R'),(1146,2,'CCQC','SIT','P','A'),(1147,2,'CCQC','SIT','P','C'),(1148,2,'CCQC','SIT','P','I'),(1149,2,'TPLPR','SIT','P','R'),(1150,2,'TPLPR','SIT','P','A'),(1151,2,'TPLPR','SIT','P','C'),(1152,2,'TPLPR','SIT','P','I'),(1153,2,'TC2QC','SIT','P','R'),(1154,2,'TC2QC','SIT','P','A'),(1155,2,'TC2QC','SIT','P','C'),(1156,2,'TC2QC','SIT','P','I'),(1157,2,'EXCTC','SIT','P','R'),(1158,2,'EXCTC','SIT','P','A'),(1159,2,'EXCTC','SIT','P','C'),(1160,2,'EXCTC','SIT','P','I'),(1161,2,'MNGQC','SIT','P','R'),(1162,2,'MNGQC','SIT','P','A'),(1163,2,'MNGQC','SIT','P','C'),(1164,2,'MNGQC','SIT','P','I'),(1165,2,'CDTER','SIT','P','R'),(1166,2,'CDTER','SIT','P','A'),(1167,2,'CDTER','SIT','P','C'),(1168,2,'CDTER','SIT','P','I'),(1169,2,'RDTC','SIT','P','R'),(1170,2,'RDTC','SIT','P','A'),(1171,2,'RDTC','SIT','P','C'),(1172,2,'RDTC','SIT','P','I'),(1173,2,'WTR','SIT','P','R'),(1174,2,'WTR','SIT','P','A'),(1175,2,'WTR','SIT','P','C'),(1176,2,'WTR','SIT','P','I'),(1177,2,'MXE2E','SIT','P','R'),(1178,2,'MXE2E','SIT','P','A'),(1179,2,'MXE2E','SIT','P','C'),(1180,2,'MXE2E','SIT','P','I'),(1181,2,'CCQC','UAT','Q','R'),(1182,2,'CCQC','UAT','Q','A'),(1183,2,'CCQC','UAT','Q','C'),(1184,2,'CCQC','UAT','Q','I'),(1185,2,'TPLPR','UAT','Q','R'),(1186,2,'TPLPR','UAT','Q','A'),(1187,2,'TPLPR','UAT','Q','C'),(1188,2,'TPLPR','UAT','Q','I'),(1189,2,'TC2QC','UAT','Q','R'),(1190,2,'TC2QC','UAT','Q','A'),(1191,2,'TC2QC','UAT','Q','C'),(1192,2,'TC2QC','UAT','Q','I'),(1193,2,'EXCTC','UAT','Q','R'),(1194,2,'EXCTC','UAT','Q','A'),(1195,2,'EXCTC','UAT','Q','C'),(1196,2,'EXCTC','UAT','Q','I'),(1197,2,'MNGQC','UAT','Q','R'),(1198,2,'MNGQC','UAT','Q','A'),(1199,2,'MNGQC','UAT','Q','C'),(1200,2,'MNGQC','UAT','Q','I'),(1201,2,'CDTER','UAT','Q','R'),(1202,2,'CDTER','UAT','Q','A'),(1203,2,'CDTER','UAT','Q','C'),(1204,2,'CDTER','UAT','Q','I'),(1205,2,'RDTC','UAT','Q','R'),(1206,2,'RDTC','UAT','Q','A'),(1207,2,'RDTC','UAT','Q','C'),(1208,2,'RDTC','UAT','Q','I'),(1209,2,'WTR','UAT','Q','R'),(1210,2,'WTR','UAT','Q','A'),(1211,2,'WTR','UAT','Q','C'),(1212,2,'WTR','UAT','Q','I'),(1213,2,'MXE2E','UAT','Q','R'),(1214,2,'MXE2E','UAT','Q','A'),(1215,2,'MXE2E','UAT','Q','C'),(1216,2,'MXE2E','UAT','Q','I');
/*!40000 ALTER TABLE `qagile_rfs_estimates_raci` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-29 13:04:23
