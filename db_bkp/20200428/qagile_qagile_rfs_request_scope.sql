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
) ENGINE=InnoDB AUTO_INCREMENT=1289 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qagile_rfs_request_scope`
--

LOCK TABLES `qagile_rfs_request_scope` WRITE;
/*!40000 ALTER TABLE `qagile_rfs_request_scope` DISABLE KEYS */;
INSERT INTO `qagile_rfs_request_scope` VALUES (7,'SIT (includes E2E)',1,'2020-03-02 00:00:00',NULL,'None',50,1),(7,'UAT Support',1,'2020-03-09 00:00:00','2020-03-10 00:00:00','2020-03-10',51,2),(7,'Regression Tests Execution',1,'2020-03-16 00:00:00','2020-03-18 00:00:00','None',52,3),(7,'Automation',1,'2020-03-18 00:00:00','2020-03-20 00:00:00','None',53,4),(7,'Performance Test',1,'2020-03-23 00:00:00','2020-03-25 00:00:00','None',54,5),(7,'Security',NULL,NULL,NULL,'None',55,6),(7,'IGNITE Quality Platform',NULL,NULL,NULL,'None',56,7),(4,'SIT (includes E2E)',NULL,NULL,NULL,NULL,64,1),(4,'UAT Support',NULL,NULL,NULL,NULL,65,2),(4,'Regression Tests Execution',NULL,NULL,NULL,NULL,66,3),(4,'Automation',NULL,NULL,NULL,NULL,67,4),(4,'Performance Test',NULL,NULL,NULL,NULL,68,5),(4,'Security',NULL,NULL,NULL,NULL,69,6),(4,'IGNITE Quality Platform',NULL,NULL,NULL,NULL,70,7),(5,'SIT (includes E2E)',NULL,NULL,NULL,NULL,71,1),(5,'UAT Support',NULL,NULL,NULL,NULL,72,2),(5,'Regression Tests Execution',NULL,NULL,NULL,NULL,73,3),(5,'Automation',NULL,NULL,NULL,NULL,74,4),(5,'Performance Test',NULL,NULL,NULL,NULL,75,5),(5,'Security',NULL,NULL,NULL,NULL,76,6),(5,'IGNITE Quality Platform',NULL,NULL,NULL,NULL,77,7),(6,'SIT (includes E2E)',NULL,NULL,NULL,NULL,85,1),(6,'UAT Support',NULL,NULL,NULL,NULL,86,2),(6,'Regression Tests Execution',NULL,NULL,NULL,NULL,87,3),(6,'Automation',NULL,NULL,NULL,NULL,88,4),(6,'Performance Test',NULL,NULL,NULL,NULL,89,5),(6,'Security',NULL,NULL,NULL,NULL,90,6),(6,'IGNITE Quality Platform',NULL,NULL,NULL,NULL,91,7),(1,'SIT (includes E2E)',NULL,NULL,NULL,'None',92,1),(1,'UAT Support',NULL,NULL,NULL,'None',93,2),(1,'Regression Tests Execution',NULL,NULL,NULL,'None',94,3),(1,'Automation',NULL,NULL,NULL,'None',95,4),(1,'Performance Test',NULL,NULL,NULL,'None',96,5),(1,'Security',NULL,NULL,NULL,'None',97,6),(1,'IGNITE Quality Platform',NULL,NULL,NULL,'None',98,7),(13,'SIT (includes E2E)',NULL,NULL,NULL,'None',127,1),(13,'UAT Support',NULL,NULL,NULL,'None',128,2),(13,'Regression Tests Execution',NULL,NULL,NULL,'None',129,3),(13,'Automation',NULL,NULL,NULL,'None',130,4),(13,'Performance Test',NULL,NULL,NULL,'None',131,5),(13,'Security',NULL,NULL,NULL,'None',132,6),(13,'IGNITE Quality Platform',NULL,NULL,NULL,'None',133,7),(2,'SIT (includes E2E)',NULL,NULL,NULL,'None',239,1),(2,'UAT Support',NULL,NULL,NULL,'None',240,2),(2,'Regression Tests Execution',NULL,NULL,NULL,'None',241,3),(2,'Automation',NULL,NULL,NULL,'None',242,4),(2,'Performance Test',NULL,NULL,NULL,'None',243,5),(2,'Security',NULL,NULL,NULL,'None',244,6),(2,'IGNITE Quality Platform',NULL,NULL,NULL,'None',245,7),(24,'SIT (includes E2E)',NULL,NULL,NULL,NULL,260,1),(24,'UAT Support',NULL,NULL,NULL,NULL,261,2),(24,'Regression Tests Execution',NULL,NULL,NULL,NULL,262,3),(24,'Automation',NULL,NULL,NULL,NULL,263,4),(24,'Performance Test',NULL,NULL,NULL,NULL,264,5),(24,'Security',NULL,NULL,NULL,NULL,265,6),(24,'IGNITE Quality Platform',NULL,NULL,NULL,NULL,266,7),(25,'SIT (includes E2E)',NULL,NULL,NULL,NULL,267,1),(25,'UAT Support',NULL,NULL,NULL,NULL,268,2),(25,'Regression Tests Execution',NULL,NULL,NULL,NULL,269,3),(25,'Automation',NULL,NULL,NULL,NULL,270,4),(25,'Performance Test',NULL,NULL,NULL,NULL,271,5),(25,'Security',NULL,NULL,NULL,NULL,272,6),(25,'IGNITE Quality Platform',NULL,NULL,NULL,NULL,273,7),(26,'SIT (includes E2E)',NULL,NULL,NULL,NULL,274,1),(26,'UAT Support',NULL,NULL,NULL,NULL,275,2),(26,'Regression Tests Execution',NULL,NULL,NULL,NULL,276,3),(26,'Automation',NULL,NULL,NULL,NULL,277,4),(26,'Performance Test',NULL,NULL,NULL,NULL,278,5),(26,'Security',NULL,NULL,NULL,NULL,279,6),(26,'IGNITE Quality Platform',NULL,NULL,NULL,NULL,280,7),(27,'SIT (includes E2E)',NULL,NULL,NULL,'None',288,1),(27,'UAT Support',NULL,NULL,NULL,'None',289,2),(27,'Regression Tests Execution',NULL,NULL,NULL,'None',290,3),(27,'Automation',NULL,NULL,NULL,'None',291,4),(27,'Performance Test',NULL,NULL,NULL,'None',292,5),(27,'Security',NULL,NULL,NULL,'None',293,6),(27,'IGNITE Quality Platform',NULL,NULL,NULL,'None',294,7),(11,'SIT (includes E2E)',NULL,NULL,NULL,'None',309,1),(11,'UAT Support',NULL,NULL,NULL,'None',310,2),(11,'Regression Tests Execution',NULL,NULL,NULL,'None',311,3),(11,'Automation',NULL,NULL,NULL,'None',312,4),(11,'Performance Test',NULL,NULL,NULL,'None',313,5),(11,'Security',NULL,NULL,NULL,'None',314,6),(11,'IGNITE Quality Platform',NULL,NULL,NULL,'None',315,7),(12,'SIT (includes E2E)',NULL,NULL,NULL,'None',428,1),(12,'UAT Support',NULL,NULL,NULL,'None',429,2),(12,'Regression Tests Execution',NULL,NULL,NULL,'None',430,3),(12,'Automation',NULL,NULL,NULL,'None',431,4),(12,'Performance Test',NULL,NULL,NULL,'None',432,5),(12,'Security',NULL,NULL,NULL,'None',433,6),(12,'IGNITE Quality Platform',NULL,NULL,NULL,'None',434,7),(14,'SIT (includes E2E)',NULL,NULL,NULL,NULL,435,1),(14,'UAT Support',NULL,NULL,NULL,NULL,436,2),(14,'Regression Tests Execution',NULL,NULL,NULL,NULL,437,3),(14,'Automation',NULL,NULL,NULL,NULL,438,4),(14,'Performance Test',NULL,NULL,NULL,NULL,439,5),(14,'Security',NULL,NULL,NULL,NULL,440,6),(14,'IGNITE Quality Platform',NULL,NULL,NULL,NULL,441,7),(8,'SIT (includes E2E)',NULL,NULL,NULL,'None',442,1),(8,'UAT Support',NULL,NULL,NULL,'None',443,2),(8,'Regression Tests Execution',NULL,NULL,NULL,'None',444,3),(8,'Automation',NULL,NULL,NULL,'None',445,4),(8,'Performance Test',NULL,NULL,NULL,'None',446,5),(8,'Security',NULL,NULL,NULL,'None',447,6),(8,'IGNITE Quality Platform',NULL,NULL,NULL,'None',448,7),(28,'SIT (includes E2E)',NULL,NULL,NULL,NULL,456,1),(28,'UAT Support',NULL,NULL,NULL,NULL,457,2),(28,'Regression Tests Execution',NULL,NULL,NULL,NULL,458,3),(28,'Automation',NULL,NULL,NULL,NULL,459,4),(28,'Performance Test',NULL,NULL,NULL,NULL,460,5),(28,'Security',NULL,NULL,NULL,NULL,461,6),(28,'IGNITE Quality Platform',NULL,NULL,NULL,NULL,462,7),(29,'SIT (includes E2E)',NULL,NULL,NULL,'None',470,1),(29,'UAT Support',NULL,NULL,NULL,'None',471,2),(29,'Regression Tests Execution',NULL,NULL,NULL,'None',472,3),(29,'Automation',NULL,NULL,NULL,'None',473,4),(29,'Performance Test',NULL,NULL,NULL,'None',474,5),(29,'Security',NULL,NULL,NULL,'None',475,6),(29,'IGNITE Quality Platform',NULL,NULL,NULL,'None',476,7),(30,'SIT (includes E2E)',NULL,NULL,NULL,NULL,477,1),(30,'UAT Support',NULL,NULL,NULL,NULL,478,2),(30,'Regression Tests Execution',NULL,NULL,NULL,NULL,479,3),(30,'Automation',NULL,NULL,NULL,NULL,480,4),(30,'Performance Test',NULL,NULL,NULL,NULL,481,5),(30,'Security',NULL,NULL,NULL,NULL,482,6),(30,'IGNITE Quality Platform',NULL,NULL,NULL,NULL,483,7),(31,'SIT (includes E2E)',NULL,NULL,NULL,NULL,484,1),(31,'UAT Support',NULL,NULL,NULL,NULL,485,2),(31,'Regression Tests Execution',NULL,NULL,NULL,NULL,486,3),(31,'Automation',NULL,NULL,NULL,NULL,487,4),(31,'Performance Test',NULL,NULL,NULL,NULL,488,5),(31,'Security',NULL,NULL,NULL,NULL,489,6),(31,'IGNITE Quality Platform',NULL,NULL,NULL,NULL,490,7),(32,'SIT (includes E2E)',1,NULL,NULL,'None',498,1),(32,'UAT Support',1,NULL,NULL,'None',499,2),(32,'Regression Tests Execution',1,NULL,NULL,'None',500,3),(32,'Automation',1,NULL,NULL,'None',501,4),(32,'Performance Test',NULL,NULL,NULL,'None',502,5),(32,'Security',NULL,NULL,NULL,'None',503,6),(32,'IGNITE Quality Platform',NULL,NULL,NULL,'None',504,7),(33,'SIT (includes E2E)',NULL,NULL,NULL,NULL,505,1),(33,'UAT Support',NULL,NULL,NULL,NULL,506,2),(33,'Regression Tests Execution',NULL,NULL,NULL,NULL,507,3),(33,'Automation',NULL,NULL,NULL,NULL,508,4),(33,'Performance Test',NULL,NULL,NULL,NULL,509,5),(33,'Security',NULL,NULL,NULL,NULL,510,6),(33,'IGNITE Quality Platform',NULL,NULL,NULL,NULL,511,7),(34,'SIT (includes E2E)',NULL,NULL,NULL,NULL,519,1),(34,'UAT Support',NULL,NULL,NULL,NULL,520,2),(34,'Regression Tests Execution',NULL,NULL,NULL,NULL,521,3),(34,'Automation',NULL,NULL,NULL,NULL,522,4),(34,'Performance Test',NULL,NULL,NULL,NULL,523,5),(34,'Security',NULL,NULL,NULL,NULL,524,6),(34,'IGNITE Quality Platform',NULL,NULL,NULL,NULL,525,7),(35,'SIT (includes E2E)',NULL,NULL,NULL,NULL,540,1),(35,'UAT Support',NULL,NULL,NULL,NULL,541,2),(35,'Regression Tests Execution',NULL,NULL,NULL,NULL,542,3),(35,'Automation',NULL,NULL,NULL,NULL,543,4),(35,'Performance Test',NULL,NULL,NULL,NULL,544,5),(35,'Security',NULL,NULL,NULL,NULL,545,6),(35,'IGNITE Quality Platform',NULL,NULL,NULL,NULL,546,7),(36,'SIT (includes E2E)',NULL,NULL,NULL,NULL,547,1),(36,'UAT Support',NULL,NULL,NULL,NULL,548,2),(36,'Regression Tests Execution',NULL,NULL,NULL,NULL,549,3),(36,'Automation',NULL,NULL,NULL,NULL,550,4),(36,'Performance Test',NULL,NULL,NULL,NULL,551,5),(36,'Security',NULL,NULL,NULL,NULL,552,6),(36,'IGNITE Quality Platform',NULL,NULL,NULL,NULL,553,7),(37,'SIT (includes E2E)',NULL,NULL,NULL,NULL,554,1),(37,'UAT Support',NULL,NULL,NULL,NULL,555,2),(37,'Regression Tests Execution',NULL,NULL,NULL,NULL,556,3),(37,'Automation',NULL,NULL,NULL,NULL,557,4),(37,'Performance Test',NULL,NULL,NULL,NULL,558,5),(37,'Security',NULL,NULL,NULL,NULL,559,6),(37,'IGNITE Quality Platform',NULL,NULL,NULL,NULL,560,7),(39,'SIT (includes E2E)',NULL,NULL,NULL,NULL,631,1),(39,'UAT Support',NULL,NULL,NULL,NULL,632,2),(39,'Regression Tests Execution',NULL,NULL,NULL,NULL,633,3),(39,'Automation',NULL,NULL,NULL,NULL,634,4),(39,'Performance Test',NULL,NULL,NULL,NULL,635,5),(39,'Security',NULL,NULL,NULL,NULL,636,6),(39,'IGNITE Quality Platform',NULL,NULL,NULL,NULL,637,7),(40,'SIT (includes E2E)',NULL,NULL,NULL,NULL,638,1),(40,'UAT Support',NULL,NULL,NULL,NULL,639,2),(40,'Regression Tests Execution',NULL,NULL,NULL,NULL,640,3),(40,'Automation',NULL,NULL,NULL,NULL,641,4),(40,'Performance Test',NULL,NULL,NULL,NULL,642,5),(40,'Security',NULL,NULL,NULL,NULL,643,6),(40,'IGNITE Quality Platform',NULL,NULL,NULL,NULL,644,7),(41,'SIT (includes E2E)',NULL,NULL,NULL,NULL,666,1),(41,'UAT Support',NULL,NULL,NULL,NULL,667,2),(41,'Regression Tests Execution',NULL,NULL,NULL,NULL,668,3),(41,'Automation',NULL,NULL,NULL,NULL,669,4),(41,'Performance Test',NULL,NULL,NULL,NULL,670,5),(41,'Security',NULL,NULL,NULL,NULL,671,6),(41,'IGNITE Quality Platform',NULL,NULL,NULL,NULL,672,7),(42,'SIT (includes E2E)',NULL,NULL,NULL,NULL,680,1),(42,'UAT Support',NULL,NULL,NULL,NULL,681,2),(42,'Regression Tests Execution',NULL,NULL,NULL,NULL,682,3),(42,'Automation',NULL,NULL,NULL,NULL,683,4),(42,'Performance Test',NULL,NULL,NULL,NULL,684,5),(42,'Security',NULL,NULL,NULL,NULL,685,6),(42,'IGNITE Quality Platform',NULL,NULL,NULL,NULL,686,7),(43,'SIT (includes E2E)',NULL,NULL,NULL,NULL,687,1),(43,'UAT Support',NULL,NULL,NULL,NULL,688,2),(43,'Regression Tests Execution',NULL,NULL,NULL,NULL,689,3),(43,'Automation',NULL,NULL,NULL,NULL,690,4),(43,'Performance Test',NULL,NULL,NULL,NULL,691,5),(43,'Security',NULL,NULL,NULL,NULL,692,6),(43,'IGNITE Quality Platform',NULL,NULL,NULL,NULL,693,7),(44,'SIT (includes E2E)',NULL,NULL,NULL,NULL,736,1),(44,'UAT Support',NULL,NULL,NULL,NULL,737,2),(44,'Regression Tests Execution',NULL,NULL,NULL,NULL,738,3),(44,'Automation',NULL,NULL,NULL,NULL,739,4),(44,'Performance Test',NULL,NULL,NULL,NULL,740,5),(44,'Security',NULL,NULL,NULL,NULL,741,6),(44,'IGNITE Quality Platform',NULL,NULL,NULL,NULL,742,7),(45,'SIT (includes E2E)',NULL,NULL,NULL,NULL,743,1),(45,'UAT Support',NULL,NULL,NULL,NULL,744,2),(45,'Regression Tests Execution',NULL,NULL,NULL,NULL,745,3),(45,'Automation',NULL,NULL,NULL,NULL,746,4),(45,'Performance Test',NULL,NULL,NULL,NULL,747,5),(45,'Security',NULL,NULL,NULL,NULL,748,6),(45,'IGNITE Quality Platform',NULL,NULL,NULL,NULL,749,7),(47,'SIT (includes E2E)',1,'2020-04-06 00:00:00','2020-04-07 00:00:00','SIT E2E Support',757,1),(47,'UAT Support',1,'2020-04-13 00:00:00','2020-04-14 00:00:00','help in test management',758,2),(47,'Regression Tests Execution',1,'2020-04-20 00:00:00','2020-04-21 00:00:00','yep',759,3),(47,'Automation',1,'2020-04-22 00:00:00','2020-04-23 00:00:00','CTD',760,4),(47,'Performance Test',1,'2020-04-24 00:00:00','2020-04-27 00:00:00','Loadrunner',761,5),(47,'Security',1,'2020-04-28 00:00:00','2020-04-29 00:00:00','API scans',762,6),(47,'IGNITE Quality Platform',1,'2020-04-29 00:00:00','2020-04-30 00:00:00','OTFA',763,7),(48,'SIT (includes E2E)',1,'2020-04-06 00:00:00','2020-04-07 00:00:00','SIT E2E Support',764,1),(48,'UAT Support',1,'2020-04-13 00:00:00','2020-04-14 00:00:00','help in test management',765,2),(48,'Regression Tests Execution',1,'2020-04-20 00:00:00','2020-04-21 00:00:00','yep',766,3),(48,'Automation',1,'2020-04-22 00:00:00','2020-04-23 00:00:00','CTD',767,4),(48,'Performance Test',1,'2020-04-24 00:00:00','2020-04-27 00:00:00','Loadrunner',768,5),(48,'Security',1,'2020-04-28 00:00:00','2020-04-29 00:00:00','API scans',769,6),(48,'IGNITE Quality Platform',1,'2020-04-29 00:00:00','2020-04-30 00:00:00','OTFA',770,7),(49,'SIT (includes E2E)',NULL,NULL,NULL,NULL,771,1),(49,'UAT Support',NULL,NULL,NULL,NULL,772,2),(49,'Regression Tests Execution',NULL,NULL,NULL,NULL,773,3),(49,'Automation',NULL,NULL,NULL,NULL,774,4),(49,'Performance Test',NULL,NULL,NULL,NULL,775,5),(49,'Security',NULL,NULL,NULL,NULL,776,6),(49,'IGNITE Quality Platform',NULL,NULL,NULL,NULL,777,7),(50,'SIT (includes E2E)',NULL,NULL,NULL,NULL,778,1),(50,'UAT Support',NULL,NULL,NULL,NULL,779,2),(50,'Regression Tests Execution',NULL,NULL,NULL,NULL,780,3),(50,'Automation',NULL,NULL,NULL,NULL,781,4),(50,'Performance Test',NULL,NULL,NULL,NULL,782,5),(50,'Security',NULL,NULL,NULL,NULL,783,6),(50,'IGNITE Quality Platform',NULL,NULL,NULL,NULL,784,7),(51,'SIT (includes E2E)',NULL,NULL,NULL,NULL,841,1),(51,'UAT Support',NULL,NULL,NULL,NULL,842,2),(51,'Regression Tests Execution',NULL,NULL,NULL,NULL,843,3),(51,'Automation',NULL,NULL,NULL,NULL,844,4),(51,'Performance Test',NULL,NULL,NULL,NULL,845,5),(51,'Security',NULL,NULL,NULL,NULL,846,6),(51,'IGNITE Quality Platform',NULL,NULL,NULL,NULL,847,7),(38,NULL,NULL,NULL,NULL,NULL,939,1),(38,NULL,NULL,NULL,NULL,NULL,940,2),(38,NULL,NULL,NULL,NULL,NULL,941,3),(38,NULL,NULL,NULL,NULL,NULL,942,4),(38,NULL,NULL,NULL,NULL,NULL,943,5),(38,NULL,NULL,NULL,NULL,NULL,944,6),(38,NULL,NULL,NULL,NULL,NULL,945,7),(23,'SIT (includes E2E)',1,'2020-04-14 00:00:00','2020-04-21 00:00:00','SIT requested',995,1),(23,'UAT Support',1,'2020-04-22 00:00:00','2020-04-29 00:00:00','provide support',996,2),(23,'Regression Tests Execution',NULL,NULL,NULL,'None',997,3),(23,'Automation',NULL,NULL,NULL,'None',998,4),(23,'Performance Test',1,'2020-04-27 00:00:00','2020-04-30 00:00:00','include perf',999,5),(23,'Security',NULL,NULL,NULL,'None',1000,6),(23,'IGNITE Quality Platform',NULL,NULL,NULL,'None',1001,7),(52,'SIT (includes E2E)',1,NULL,NULL,NULL,1044,1),(52,'UAT Support',1,NULL,NULL,NULL,1045,2),(52,'Regression Tests Execution',NULL,NULL,NULL,NULL,1046,3),(52,'Automation',NULL,NULL,NULL,NULL,1047,4),(52,'Performance Test',NULL,NULL,NULL,NULL,1048,5),(52,'Security',NULL,NULL,NULL,NULL,1049,6),(52,'IGNITE Quality Platform',NULL,NULL,NULL,NULL,1050,7),(46,'SIT (includes E2E)',1,'2020-04-06 00:00:00','2020-04-07 00:00:00','SIT E2E Support',1072,1),(46,'UAT Support',1,'2020-04-13 00:00:00','2020-04-14 00:00:00','help in test management',1073,2),(46,'Regression Tests Execution',1,'2020-04-20 00:00:00','2020-04-21 00:00:00','yep',1074,3),(46,'Automation',1,'2020-04-22 00:00:00','2020-04-23 00:00:00','CTD',1075,4),(46,'Performance Test',1,'2020-04-24 00:00:00','2020-04-27 00:00:00','Loadrunner',1076,5),(46,'Security',1,'2020-04-28 00:00:00','2020-04-29 00:00:00','API scans',1077,6),(46,'IGNITE Quality Platform',1,'2020-04-29 00:00:00','2020-04-30 00:00:00','OTFA',1078,7),(53,'SIT (includes E2E)',NULL,NULL,NULL,NULL,1177,1),(53,'UAT Support',NULL,NULL,NULL,NULL,1178,2),(53,'Regression Tests Execution',NULL,NULL,NULL,NULL,1179,3),(53,'Automation',NULL,NULL,NULL,NULL,1180,4),(53,'Performance Test',NULL,NULL,NULL,NULL,1181,5),(53,'Security',NULL,NULL,NULL,NULL,1182,6),(53,'IGNITE Quality Platform',NULL,NULL,NULL,NULL,1183,7),(54,'SIT (includes E2E)',1,'2021-05-23 00:00:00','2021-05-23 00:00:00','test',1205,1),(54,'UAT Support',1,'2021-05-23 00:00:00','2021-05-23 00:00:00','dgefeg',1206,2),(54,'Regression Tests Execution',1,'2021-06-23 00:00:00','2021-05-23 00:00:00','ddgd',1207,3),(54,'Automation',1,'2021-05-23 00:00:00','2021-05-23 00:00:00','fdvbcv',1208,4),(54,'Performance Test',1,'2021-05-23 00:00:00','2021-05-23 00:00:00','ddfdfdfd',1209,5),(54,'Security',1,'2021-05-23 00:00:00','2021-05-23 00:00:00','dfdfdgfnbv',1210,6),(54,'IGNITE Quality Platform',1,'2021-05-23 00:00:00','2021-05-23 00:00:00','vbnvbnvb',1211,7),(10,'SIT (includes E2E)',NULL,NULL,NULL,'None',1233,1),(10,'UAT Support',NULL,NULL,NULL,'None',1234,2),(10,'Regression Tests Execution',NULL,NULL,NULL,'None',1235,3),(10,'Automation',NULL,NULL,NULL,'None',1236,4),(10,'Performance Test',NULL,NULL,NULL,'None',1237,5),(10,'Security',NULL,NULL,NULL,'None',1238,6),(10,'IGNITE Quality Platform',NULL,NULL,NULL,'None',1239,7),(9,'SIT (includes E2E)',1,'2020-03-16 00:00:00',NULL,'None',1247,1),(9,'UAT Support',1,'2020-08-10 00:00:00','2020-10-09 00:00:00','None',1248,2),(9,'Regression Tests Execution',1,'2020-04-06 00:00:00','2020-04-16 00:00:00','None',1249,3),(9,'Automation',1,'2020-07-20 00:00:00','2020-08-20 00:00:00','None',1250,4),(9,'Performance Test',1,'2020-04-27 00:00:00','2020-08-14 00:00:00','None',1251,5),(9,'Security',1,'2020-07-06 00:00:00','2020-08-21 00:00:00','None',1252,6),(9,'IGNITE Quality Platform',NULL,NULL,NULL,'None',1253,7),(55,'SIT (includes E2E)',NULL,NULL,NULL,NULL,1275,1),(55,'UAT Support',NULL,NULL,NULL,NULL,1276,2),(55,'Regression Tests Execution',NULL,NULL,NULL,NULL,1277,3),(55,'Automation',NULL,NULL,NULL,NULL,1278,4),(55,'Performance Test',NULL,NULL,NULL,NULL,1279,5),(55,'Security',NULL,NULL,NULL,NULL,1280,6),(55,'IGNITE Quality Platform',NULL,NULL,NULL,NULL,1281,7),(56,'SIT (includes E2E)',NULL,NULL,NULL,NULL,1282,1),(56,'UAT Support',NULL,NULL,NULL,NULL,1283,2),(56,'Regression Tests Execution',NULL,NULL,NULL,NULL,1284,3),(56,'Automation',NULL,NULL,NULL,NULL,1285,4),(56,'Performance Test',NULL,NULL,NULL,NULL,1286,5),(56,'Security',NULL,NULL,NULL,NULL,1287,6),(56,'IGNITE Quality Platform',NULL,NULL,NULL,NULL,1288,7);
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

-- Dump completed on 2020-04-28 12:19:18
