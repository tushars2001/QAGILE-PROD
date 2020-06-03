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
-- Table structure for table `qagile_rfs_request_scope`
--

DROP TABLE IF EXISTS `qagile_rfs_request_scope`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qagile_rfs_request_scope` (
  `rfs_request_id` int NOT NULL,
  `service` varchar(45) DEFAULT NULL,
  `include` tinyint DEFAULT NULL,
  `startdate` datetime DEFAULT NULL,
  `enddate` datetime DEFAULT NULL,
  `comment` varchar(1000) DEFAULT NULL,
  `scope_id` int NOT NULL AUTO_INCREMENT,
  `seq` int DEFAULT NULL,
  PRIMARY KEY (`scope_id`),
  UNIQUE KEY `uk` (`rfs_request_id`,`service`),
  KEY `fk_rfs_request_id_idx` (`rfs_request_id`),
  CONSTRAINT `fk_rfs_request_id` FOREIGN KEY (`rfs_request_id`) REFERENCES `qagile_rfs_request` (`rfs_request_id`)
) ENGINE=InnoDB AUTO_INCREMENT=463 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qagile_rfs_request_scope`
--

LOCK TABLES `qagile_rfs_request_scope` WRITE;
/*!40000 ALTER TABLE `qagile_rfs_request_scope` DISABLE KEYS */;
INSERT INTO `qagile_rfs_request_scope` VALUES (7,'SIT (includes E2E)',1,'2020-03-02 00:00:00',NULL,'None',50,1),(7,'UAT Support',1,'2020-03-09 00:00:00','2020-03-10 00:00:00','2020-03-10',51,2),(7,'Regression Tests Execution',1,'2020-03-16 00:00:00','2020-03-18 00:00:00','None',52,3),(7,'Automation',1,'2020-03-18 00:00:00','2020-03-20 00:00:00','None',53,4),(7,'Performance Test',1,'2020-03-23 00:00:00','2020-03-25 00:00:00','None',54,5),(7,'Security',NULL,NULL,NULL,'None',55,6),(7,'IGNITE Quality Platform',NULL,NULL,NULL,'None',56,7),(4,'SIT (includes E2E)',NULL,NULL,NULL,NULL,64,1),(4,'UAT Support',NULL,NULL,NULL,NULL,65,2),(4,'Regression Tests Execution',NULL,NULL,NULL,NULL,66,3),(4,'Automation',NULL,NULL,NULL,NULL,67,4),(4,'Performance Test',NULL,NULL,NULL,NULL,68,5),(4,'Security',NULL,NULL,NULL,NULL,69,6),(4,'IGNITE Quality Platform',NULL,NULL,NULL,NULL,70,7),(5,'SIT (includes E2E)',NULL,NULL,NULL,NULL,71,1),(5,'UAT Support',NULL,NULL,NULL,NULL,72,2),(5,'Regression Tests Execution',NULL,NULL,NULL,NULL,73,3),(5,'Automation',NULL,NULL,NULL,NULL,74,4),(5,'Performance Test',NULL,NULL,NULL,NULL,75,5),(5,'Security',NULL,NULL,NULL,NULL,76,6),(5,'IGNITE Quality Platform',NULL,NULL,NULL,NULL,77,7),(6,'SIT (includes E2E)',NULL,NULL,NULL,NULL,85,1),(6,'UAT Support',NULL,NULL,NULL,NULL,86,2),(6,'Regression Tests Execution',NULL,NULL,NULL,NULL,87,3),(6,'Automation',NULL,NULL,NULL,NULL,88,4),(6,'Performance Test',NULL,NULL,NULL,NULL,89,5),(6,'Security',NULL,NULL,NULL,NULL,90,6),(6,'IGNITE Quality Platform',NULL,NULL,NULL,NULL,91,7),(1,'SIT (includes E2E)',NULL,NULL,NULL,'None',92,1),(1,'UAT Support',NULL,NULL,NULL,'None',93,2),(1,'Regression Tests Execution',NULL,NULL,NULL,'None',94,3),(1,'Automation',NULL,NULL,NULL,'None',95,4),(1,'Performance Test',NULL,NULL,NULL,'None',96,5),(1,'Security',NULL,NULL,NULL,'None',97,6),(1,'IGNITE Quality Platform',NULL,NULL,NULL,'None',98,7),(13,'SIT (includes E2E)',NULL,NULL,NULL,'None',127,1),(13,'UAT Support',NULL,NULL,NULL,'None',128,2),(13,'Regression Tests Execution',NULL,NULL,NULL,'None',129,3),(13,'Automation',NULL,NULL,NULL,'None',130,4),(13,'Performance Test',NULL,NULL,NULL,'None',131,5),(13,'Security',NULL,NULL,NULL,'None',132,6),(13,'IGNITE Quality Platform',NULL,NULL,NULL,'None',133,7),(2,'SIT (includes E2E)',NULL,NULL,NULL,'None',239,1),(2,'UAT Support',NULL,NULL,NULL,'None',240,2),(2,'Regression Tests Execution',NULL,NULL,NULL,'None',241,3),(2,'Automation',NULL,NULL,NULL,'None',242,4),(2,'Performance Test',NULL,NULL,NULL,'None',243,5),(2,'Security',NULL,NULL,NULL,'None',244,6),(2,'IGNITE Quality Platform',NULL,NULL,NULL,'None',245,7),(9,'SIT (includes E2E)',1,'2020-03-16 00:00:00','2020-07-17 00:00:00','None',253,1),(9,'UAT Support',1,'2020-08-10 00:00:00','2020-10-09 00:00:00','None',254,2),(9,'Regression Tests Execution',1,'2020-04-06 00:00:00','2020-04-16 00:00:00','None',255,3),(9,'Automation',1,'2020-07-20 00:00:00','2020-08-20 00:00:00','None',256,4),(9,'Performance Test',1,'2020-04-27 00:00:00','2020-08-14 00:00:00','None',257,5),(9,'Security',1,'2020-07-06 00:00:00','2020-08-21 00:00:00','None',258,6),(9,'IGNITE Quality Platform',NULL,NULL,NULL,'None',259,7),(24,'SIT (includes E2E)',NULL,NULL,NULL,NULL,260,1),(24,'UAT Support',NULL,NULL,NULL,NULL,261,2),(24,'Regression Tests Execution',NULL,NULL,NULL,NULL,262,3),(24,'Automation',NULL,NULL,NULL,NULL,263,4),(24,'Performance Test',NULL,NULL,NULL,NULL,264,5),(24,'Security',NULL,NULL,NULL,NULL,265,6),(24,'IGNITE Quality Platform',NULL,NULL,NULL,NULL,266,7),(25,'SIT (includes E2E)',NULL,NULL,NULL,NULL,267,1),(25,'UAT Support',NULL,NULL,NULL,NULL,268,2),(25,'Regression Tests Execution',NULL,NULL,NULL,NULL,269,3),(25,'Automation',NULL,NULL,NULL,NULL,270,4),(25,'Performance Test',NULL,NULL,NULL,NULL,271,5),(25,'Security',NULL,NULL,NULL,NULL,272,6),(25,'IGNITE Quality Platform',NULL,NULL,NULL,NULL,273,7),(26,'SIT (includes E2E)',NULL,NULL,NULL,NULL,274,1),(26,'UAT Support',NULL,NULL,NULL,NULL,275,2),(26,'Regression Tests Execution',NULL,NULL,NULL,NULL,276,3),(26,'Automation',NULL,NULL,NULL,NULL,277,4),(26,'Performance Test',NULL,NULL,NULL,NULL,278,5),(26,'Security',NULL,NULL,NULL,NULL,279,6),(26,'IGNITE Quality Platform',NULL,NULL,NULL,NULL,280,7),(27,'SIT (includes E2E)',NULL,NULL,NULL,'None',288,1),(27,'UAT Support',NULL,NULL,NULL,'None',289,2),(27,'Regression Tests Execution',NULL,NULL,NULL,'None',290,3),(27,'Automation',NULL,NULL,NULL,'None',291,4),(27,'Performance Test',NULL,NULL,NULL,'None',292,5),(27,'Security',NULL,NULL,NULL,'None',293,6),(27,'IGNITE Quality Platform',NULL,NULL,NULL,'None',294,7),(11,'SIT (includes E2E)',NULL,NULL,NULL,'None',309,1),(11,'UAT Support',NULL,NULL,NULL,'None',310,2),(11,'Regression Tests Execution',NULL,NULL,NULL,'None',311,3),(11,'Automation',NULL,NULL,NULL,'None',312,4),(11,'Performance Test',NULL,NULL,NULL,'None',313,5),(11,'Security',NULL,NULL,NULL,'None',314,6),(11,'IGNITE Quality Platform',NULL,NULL,NULL,'None',315,7),(10,'SIT (includes E2E)',NULL,NULL,NULL,'None',386,1),(10,'UAT Support',NULL,NULL,NULL,'None',387,2),(10,'Regression Tests Execution',NULL,NULL,NULL,'None',388,3),(10,'Automation',NULL,NULL,NULL,'None',389,4),(10,'Performance Test',NULL,NULL,NULL,'None',390,5),(10,'Security',NULL,NULL,NULL,'None',391,6),(10,'IGNITE Quality Platform',NULL,NULL,NULL,'None',392,7),(12,'SIT (includes E2E)',NULL,NULL,NULL,'None',428,1),(12,'UAT Support',NULL,NULL,NULL,'None',429,2),(12,'Regression Tests Execution',NULL,NULL,NULL,'None',430,3),(12,'Automation',NULL,NULL,NULL,'None',431,4),(12,'Performance Test',NULL,NULL,NULL,'None',432,5),(12,'Security',NULL,NULL,NULL,'None',433,6),(12,'IGNITE Quality Platform',NULL,NULL,NULL,'None',434,7),(14,'SIT (includes E2E)',NULL,NULL,NULL,NULL,435,1),(14,'UAT Support',NULL,NULL,NULL,NULL,436,2),(14,'Regression Tests Execution',NULL,NULL,NULL,NULL,437,3),(14,'Automation',NULL,NULL,NULL,NULL,438,4),(14,'Performance Test',NULL,NULL,NULL,NULL,439,5),(14,'Security',NULL,NULL,NULL,NULL,440,6),(14,'IGNITE Quality Platform',NULL,NULL,NULL,NULL,441,7),(8,'SIT (includes E2E)',NULL,NULL,NULL,'None',442,1),(8,'UAT Support',NULL,NULL,NULL,'None',443,2),(8,'Regression Tests Execution',NULL,NULL,NULL,'None',444,3),(8,'Automation',NULL,NULL,NULL,'None',445,4),(8,'Performance Test',NULL,NULL,NULL,'None',446,5),(8,'Security',NULL,NULL,NULL,'None',447,6),(8,'IGNITE Quality Platform',NULL,NULL,NULL,'None',448,7),(23,'SIT (includes E2E)',NULL,NULL,NULL,NULL,449,1),(23,'UAT Support',NULL,NULL,NULL,NULL,450,2),(23,'Regression Tests Execution',NULL,NULL,NULL,NULL,451,3),(23,'Automation',NULL,NULL,NULL,NULL,452,4),(23,'Performance Test',NULL,NULL,NULL,NULL,453,5),(23,'Security',NULL,NULL,NULL,NULL,454,6),(23,'IGNITE Quality Platform',NULL,NULL,NULL,NULL,455,7),(28,'SIT (includes E2E)',NULL,NULL,NULL,NULL,456,1),(28,'UAT Support',NULL,NULL,NULL,NULL,457,2),(28,'Regression Tests Execution',NULL,NULL,NULL,NULL,458,3),(28,'Automation',NULL,NULL,NULL,NULL,459,4),(28,'Performance Test',NULL,NULL,NULL,NULL,460,5),(28,'Security',NULL,NULL,NULL,NULL,461,6),(28,'IGNITE Quality Platform',NULL,NULL,NULL,NULL,462,7);
/*!40000 ALTER TABLE `qagile_rfs_request_scope` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-31 14:26:23
