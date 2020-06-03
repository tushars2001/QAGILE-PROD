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
-- Table structure for table `qagile_rfs_estimates_approved`
--

DROP TABLE IF EXISTS `qagile_rfs_estimates_approved`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qagile_rfs_estimates_approved` (
  `record_id` int NOT NULL AUTO_INCREMENT,
  `rfs_request_id` int DEFAULT NULL,
  `activity_code` varchar(5) DEFAULT NULL,
  `effort` decimal(10,2) DEFAULT NULL,
  `unit` varchar(45) DEFAULT NULL COMMENT 'Hours/days\n',
  `comment` varchar(1000) DEFAULT NULL,
  `approval_num` int DEFAULT NULL,
  PRIMARY KEY (`record_id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qagile_rfs_estimates_approved`
--

LOCK TABLES `qagile_rfs_estimates_approved` WRITE;
/*!40000 ALTER TABLE `qagile_rfs_estimates_approved` DISABLE KEYS */;
INSERT INTO `qagile_rfs_estimates_approved` VALUES (1,54,'KTAPP',80.00,NULL,'gdfg',2),(2,54,'KTSSR',25.00,NULL,'dfg',2),(3,54,'SIT',300.00,NULL,'bjfj',2),(4,54,'UAT',100.00,NULL,'fbndb',2),(5,54,'PERF',100.00,NULL,'dfdm',2),(6,54,'SEC',50.00,NULL,'fn gfgn',2),(7,54,'ACC',10.00,NULL,'fgnf',2),(8,54,'PRDAT',10.00,NULL,'dfdf',2),(9,54,'POM',15.00,NULL,'nfgjn',2),(10,54,'TRVCO',200.00,NULL,'to quincy',2),(16,54,'KTAPP',80.00,NULL,'gdfg',3),(17,54,'KTSSR',25.00,NULL,'dfg',3),(18,54,'SIT',300.00,NULL,'bjfj',3),(19,54,'UAT',100.00,NULL,'fbndb',3),(20,54,'PERF',100.00,NULL,'dfdm',3),(21,54,'SEC',50.00,NULL,'fn gfgn',3),(22,54,'ACC',10.00,NULL,'fgnf',3),(23,54,'PRDAT',10.00,NULL,'dfdf',3),(24,54,'POM',15.00,NULL,'nfgjn',3),(25,54,'TRVCO',200.00,NULL,'to quincy',3),(31,54,'KTAPP',80.00,NULL,'gdfg',4),(32,54,'KTSSR',25.00,NULL,'dfg',4),(33,54,'SIT',300.00,NULL,'bjfj',4),(34,54,'UAT',100.00,NULL,'fbndb',4),(35,54,'PERF',100.00,NULL,'dfdm',4),(36,54,'SEC',50.00,NULL,'fn gfgn',4),(37,54,'ACC',10.00,NULL,'fgnf',4),(38,54,'PRDAT',10.00,NULL,'dfdf',4),(39,54,'POM',15.00,NULL,'nfgjn',4),(40,54,'TRVCO',200.00,NULL,'to quincy',4),(46,54,'KTAPP',80.00,NULL,'gdfg',5),(47,54,'KTSSR',25.00,NULL,'dfg',5),(48,54,'SIT',300.00,NULL,'bjfj',5),(49,54,'UAT',100.00,NULL,'fbndb',5),(50,54,'PERF',200.00,NULL,'dfdm',5),(51,54,'SEC',50.00,NULL,'fn gfgn',5),(52,54,'ACC',10.00,NULL,'fgnf',5),(53,54,'PRDAT',10.00,NULL,'dfdf',5),(54,54,'POM',25.00,NULL,'nfgjn',5),(55,54,'TRVCO',200.00,NULL,'to quincy',5);
/*!40000 ALTER TABLE `qagile_rfs_estimates_approved` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-23 12:14:49
