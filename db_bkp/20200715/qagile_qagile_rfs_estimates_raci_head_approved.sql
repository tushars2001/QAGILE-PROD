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
-- Table structure for table `qagile_rfs_estimates_raci_head_approved`
--

DROP TABLE IF EXISTS `qagile_rfs_estimates_raci_head_approved`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qagile_rfs_estimates_raci_head_approved` (
  `recordid` int NOT NULL DEFAULT '0',
  `rfs_request_Id` int DEFAULT NULL,
  `SITRole` varchar(45) DEFAULT NULL,
  `SITScope` mediumtext,
  `UATRole` varchar(45) DEFAULT NULL,
  `UATScope` mediumtext,
  `total_qa_comments` mediumtext,
  `approval_num` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qagile_rfs_estimates_raci_head_approved`
--

LOCK TABLES `qagile_rfs_estimates_raci_head_approved` WRITE;
/*!40000 ALTER TABLE `qagile_rfs_estimates_raci_head_approved` DISABLE KEYS */;
INSERT INTO `qagile_rfs_estimates_raci_head_approved` VALUES (0,54,'QA CoE lead - Full Scope','dkgjdfkgjdkfg','QA CoE Lead - Partial Scope','sdfksdkfnsdkfskdnf','gjkdgjdkf',2),(0,54,'QA CoE lead - Full Scope','dkgjdfkgjdkfg','QA CoE Lead - Partial Scope','sdfksdkfnsdkfskdnf','gjkdgjdkf',3),(0,54,'QA CoE lead - Full Scope','dkgjdfkgjdkfg','QA CoE Lead - Partial Scope','sdfksdkfnsdkfskdnf','gjkdgjdkf',4),(0,54,'QA CoE lead - Full Scope','dkgjdfkgjdkfg','QA CoE Lead - Partial Scope','sdfksdkfnsdkfskdnf','gjkdgjdkf',5),(0,55,NULL,'None',NULL,'None','None',1),(0,55,NULL,'None',NULL,'None','None',2),(0,57,NULL,NULL,NULL,NULL,NULL,1),(0,57,NULL,'None',NULL,'None','None',2),(0,58,NULL,NULL,NULL,NULL,NULL,1),(0,58,NULL,'None',NULL,'None','None',2),(0,60,NULL,'None',NULL,'None','None',1),(0,46,'QA CoE lead - Full Scope','every thing','QA CoE Lead - Partial Scope','test mgmt','lot of money',4),(0,10,NULL,'None',NULL,'None','None',5),(0,68,'QA CoE lead - Full Scope','QA CoE SIT team is responsible and accountable for SIT, E2E, Test Coordination, Security and Performance test execution, regression','QA CoE Support','None','None',1),(0,70,'QA CoE lead - Full Scope','None','QA CoE Support','None','None',1),(0,71,NULL,'None',NULL,'None','None',1),(0,71,NULL,'None',NULL,'None','None',2),(0,73,'QA CoE Support','None',NULL,'None','None',1);
/*!40000 ALTER TABLE `qagile_rfs_estimates_raci_head_approved` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-15 16:46:10
