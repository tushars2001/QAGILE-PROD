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
-- Table structure for table `qagile_rfs_request_scope_approved`
--

DROP TABLE IF EXISTS `qagile_rfs_request_scope_approved`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qagile_rfs_request_scope_approved` (
  `recordid` int NOT NULL AUTO_INCREMENT,
  `rfs_request_id` int NOT NULL,
  `service` varchar(45) DEFAULT NULL,
  `include` tinyint DEFAULT NULL,
  `startdate` datetime DEFAULT NULL,
  `enddate` datetime DEFAULT NULL,
  `comment` varchar(1000) DEFAULT NULL,
  `scope_id` int NOT NULL DEFAULT '0',
  `seq` int DEFAULT NULL,
  `approval_num` int NOT NULL DEFAULT '9999999',
  PRIMARY KEY (`recordid`)
) ENGINE=InnoDB AUTO_INCREMENT=155 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qagile_rfs_request_scope_approved`
--

LOCK TABLES `qagile_rfs_request_scope_approved` WRITE;
/*!40000 ALTER TABLE `qagile_rfs_request_scope_approved` DISABLE KEYS */;
INSERT INTO `qagile_rfs_request_scope_approved` VALUES (1,38,'Automation',NULL,'2020-04-21 00:00:00',NULL,'automate',921,4,1),(2,38,'IGNITE Quality Platform',1,'2020-04-27 00:00:00','2020-04-30 00:00:00','cicd',924,7,1),(3,38,'Performance Test',1,'2020-04-27 00:00:00','2020-04-28 00:00:00','include perf',922,5,1),(4,38,'Regression Tests Execution',1,'2020-04-13 00:00:00','2020-04-15 00:00:00','reg ecec',920,3,1),(5,38,'Security',1,'2020-04-28 00:00:00','2020-05-05 00:00:00','scans',923,6,1),(6,38,'SIT (includes E2E)',1,'2020-04-06 00:00:00','2020-04-14 00:00:00','SIT requested',918,1,1),(7,38,'UAT Support',1,'2020-04-05 00:00:00','2020-04-08 00:00:00','provide support',919,2,1),(8,10,'Automation',NULL,NULL,NULL,'None',956,4,1),(9,10,'IGNITE Quality Platform',NULL,NULL,NULL,'None',959,7,1),(10,10,'Performance Test',NULL,NULL,NULL,'None',957,5,1),(11,10,'Regression Tests Execution',NULL,NULL,NULL,'None',955,3,1),(12,10,'Security',NULL,NULL,NULL,'None',958,6,1),(13,10,'SIT (includes E2E)',NULL,NULL,NULL,'None',953,1,1),(14,10,'UAT Support',NULL,NULL,NULL,'None',954,2,1),(15,10,'Automation',NULL,NULL,NULL,'None',963,4,2),(16,10,'IGNITE Quality Platform',NULL,NULL,NULL,'None',966,7,2),(17,10,'Performance Test',NULL,NULL,NULL,'None',964,5,2),(18,10,'Regression Tests Execution',NULL,NULL,NULL,'None',962,3,2),(19,10,'Security',NULL,NULL,NULL,'None',965,6,2),(20,10,'SIT (includes E2E)',NULL,NULL,NULL,'None',960,1,2),(21,10,'UAT Support',NULL,NULL,NULL,'None',961,2,2),(22,10,'Automation',NULL,NULL,NULL,'None',970,4,3),(23,10,'IGNITE Quality Platform',NULL,NULL,NULL,'None',973,7,3),(24,10,'Performance Test',NULL,NULL,NULL,'None',971,5,3),(25,10,'Regression Tests Execution',NULL,NULL,NULL,'None',969,3,3),(26,10,'Security',NULL,NULL,NULL,'None',972,6,3),(27,10,'SIT (includes E2E)',NULL,NULL,NULL,'None',967,1,3),(28,10,'UAT Support',NULL,NULL,NULL,'None',968,2,3),(29,10,'Automation',NULL,NULL,NULL,'None',977,4,4),(30,10,'IGNITE Quality Platform',NULL,NULL,NULL,'None',980,7,4),(31,10,'Performance Test',NULL,NULL,NULL,'None',978,5,4),(32,10,'Regression Tests Execution',NULL,NULL,NULL,'None',976,3,4),(33,10,'Security',NULL,NULL,NULL,'None',979,6,4),(34,10,'SIT (includes E2E)',NULL,NULL,NULL,'None',974,1,4),(35,10,'UAT Support',NULL,NULL,NULL,'None',975,2,4),(36,23,'Automation',NULL,NULL,NULL,'None',676,4,1),(37,23,'IGNITE Quality Platform',NULL,NULL,NULL,'None',679,7,1),(38,23,'Performance Test',1,'2020-04-27 00:00:00','2020-04-30 00:00:00','include perf',677,5,1),(39,23,'Regression Tests Execution',NULL,NULL,NULL,'None',675,3,1),(40,23,'Security',NULL,NULL,NULL,'None',678,6,1),(41,23,'SIT (includes E2E)',1,'2020-04-14 00:00:00','2020-04-21 00:00:00','SIT requested',673,1,1),(42,23,'UAT Support',1,'2020-04-22 00:00:00','2020-04-29 00:00:00','provide support',674,2,1),(43,52,'Automation',NULL,NULL,NULL,NULL,1019,4,1),(44,52,'IGNITE Quality Platform',NULL,NULL,NULL,NULL,1022,7,1),(45,52,'Performance Test',NULL,NULL,NULL,NULL,1020,5,1),(46,52,'Regression Tests Execution',NULL,NULL,NULL,NULL,1018,3,1),(47,52,'Security',NULL,NULL,NULL,NULL,1021,6,1),(48,52,'SIT (includes E2E)',1,NULL,NULL,NULL,1016,1,1),(49,52,'UAT Support',1,NULL,NULL,NULL,1017,2,1),(50,52,'Automation',NULL,NULL,NULL,NULL,1033,4,2),(51,52,'IGNITE Quality Platform',NULL,NULL,NULL,NULL,1036,7,2),(52,52,'Performance Test',NULL,NULL,NULL,NULL,1034,5,2),(53,52,'Regression Tests Execution',NULL,NULL,NULL,NULL,1032,3,2),(54,52,'Security',NULL,NULL,NULL,NULL,1035,6,2),(55,52,'SIT (includes E2E)',1,NULL,NULL,NULL,1030,1,2),(56,52,'UAT Support',1,NULL,NULL,NULL,1031,2,2),(57,46,'Automation',1,'2020-04-22 00:00:00','2020-04-23 00:00:00','CTD',1054,4,1),(58,46,'IGNITE Quality Platform',1,'2020-04-29 00:00:00','2020-04-30 00:00:00','OTFA',1057,7,1),(59,46,'Performance Test',1,'2020-04-24 00:00:00','2020-04-27 00:00:00','Loadrunner',1055,5,1),(60,46,'Regression Tests Execution',1,'2020-04-20 00:00:00','2020-04-21 00:00:00','yep',1053,3,1),(61,46,'Security',1,'2020-04-28 00:00:00','2020-04-29 00:00:00','API scans',1056,6,1),(62,46,'SIT (includes E2E)',1,'2020-04-06 00:00:00','2020-04-07 00:00:00','SIT E2E Support',1051,1,1),(63,46,'UAT Support',1,'2020-04-13 00:00:00','2020-04-14 00:00:00','help in test management',1052,2,1),(64,46,'Automation',1,'2020-04-22 00:00:00','2020-04-23 00:00:00','CTD',1068,4,2),(65,46,'IGNITE Quality Platform',1,'2020-04-29 00:00:00','2020-04-30 00:00:00','OTFA',1071,7,2),(66,46,'Performance Test',1,'2020-04-24 00:00:00','2020-04-27 00:00:00','Loadrunner',1069,5,2),(67,46,'Regression Tests Execution',1,'2020-04-20 00:00:00','2020-04-21 00:00:00','yep',1067,3,2),(68,46,'Security',1,'2020-04-28 00:00:00','2020-04-29 00:00:00','API scans',1070,6,2),(69,46,'SIT (includes E2E)',1,'2020-04-06 00:00:00','2020-04-07 00:00:00','SIT E2E Support',1065,1,2),(70,46,'UAT Support',1,'2020-04-13 00:00:00','2020-04-14 00:00:00','help in test management',1066,2,2),(71,46,'Automation',1,'2020-04-22 00:00:00','2020-04-23 00:00:00','CTD',1075,4,3),(72,46,'IGNITE Quality Platform',1,'2020-04-29 00:00:00','2020-04-30 00:00:00','OTFA',1078,7,3),(73,46,'Performance Test',1,'2020-04-24 00:00:00','2020-04-27 00:00:00','Loadrunner',1076,5,3),(74,46,'Regression Tests Execution',1,'2020-04-20 00:00:00','2020-04-21 00:00:00','yep',1074,3,3),(75,46,'Security',1,'2020-04-28 00:00:00','2020-04-29 00:00:00','API scans',1077,6,3),(76,46,'SIT (includes E2E)',1,'2020-04-06 00:00:00','2020-04-07 00:00:00','SIT E2E Support',1072,1,3),(77,46,'UAT Support',1,'2020-04-13 00:00:00','2020-04-14 00:00:00','help in test management',1073,2,3),(78,53,'Automation',NULL,NULL,NULL,NULL,1082,4,1),(79,53,'IGNITE Quality Platform',NULL,NULL,NULL,NULL,1085,7,1),(80,53,'Performance Test',NULL,NULL,NULL,NULL,1083,5,1),(81,53,'Regression Tests Execution',NULL,NULL,NULL,NULL,1081,3,1),(82,53,'Security',NULL,NULL,NULL,NULL,1084,6,1),(83,53,'SIT (includes E2E)',NULL,NULL,NULL,NULL,1079,1,1),(84,53,'UAT Support',NULL,NULL,NULL,NULL,1080,2,1),(85,53,'Automation',NULL,NULL,NULL,NULL,1110,4,2),(86,53,'IGNITE Quality Platform',NULL,NULL,NULL,NULL,1113,7,2),(87,53,'Performance Test',NULL,NULL,NULL,NULL,1111,5,2),(88,53,'Regression Tests Execution',NULL,NULL,NULL,NULL,1109,3,2),(89,53,'Security',NULL,NULL,NULL,NULL,1112,6,2),(90,53,'SIT (includes E2E)',NULL,NULL,NULL,NULL,1107,1,2),(91,53,'UAT Support',NULL,NULL,NULL,NULL,1108,2,2),(92,53,'Automation',NULL,NULL,NULL,NULL,1124,4,3),(93,53,'IGNITE Quality Platform',NULL,NULL,NULL,NULL,1127,7,3),(94,53,'Performance Test',NULL,NULL,NULL,NULL,1125,5,3),(95,53,'Regression Tests Execution',NULL,NULL,NULL,NULL,1123,3,3),(96,53,'Security',NULL,NULL,NULL,NULL,1126,6,3),(97,53,'SIT (includes E2E)',NULL,NULL,NULL,NULL,1121,1,3),(98,53,'UAT Support',NULL,NULL,NULL,NULL,1122,2,3),(99,53,'Automation',NULL,NULL,NULL,NULL,1138,4,4),(100,53,'IGNITE Quality Platform',NULL,NULL,NULL,NULL,1141,7,4),(101,53,'Performance Test',NULL,NULL,NULL,NULL,1139,5,4),(102,53,'Regression Tests Execution',NULL,NULL,NULL,NULL,1137,3,4),(103,53,'Security',NULL,NULL,NULL,NULL,1140,6,4),(104,53,'SIT (includes E2E)',NULL,NULL,NULL,NULL,1135,1,4),(105,53,'UAT Support',NULL,NULL,NULL,NULL,1136,2,4),(106,53,'Automation',NULL,NULL,NULL,NULL,1159,4,5),(107,53,'IGNITE Quality Platform',NULL,NULL,NULL,NULL,1162,7,5),(108,53,'Performance Test',NULL,NULL,NULL,NULL,1160,5,5),(109,53,'Regression Tests Execution',NULL,NULL,NULL,NULL,1158,3,5),(110,53,'Security',NULL,NULL,NULL,NULL,1161,6,5),(111,53,'SIT (includes E2E)',NULL,NULL,NULL,NULL,1156,1,5),(112,53,'UAT Support',NULL,NULL,NULL,NULL,1157,2,5),(113,53,'Automation',NULL,NULL,NULL,NULL,1180,4,6),(114,53,'IGNITE Quality Platform',NULL,NULL,NULL,NULL,1183,7,6),(115,53,'Performance Test',NULL,NULL,NULL,NULL,1181,5,6),(116,53,'Regression Tests Execution',NULL,NULL,NULL,NULL,1179,3,6),(117,53,'Security',NULL,NULL,NULL,NULL,1182,6,6),(118,53,'SIT (includes E2E)',NULL,NULL,NULL,NULL,1177,1,6),(119,53,'UAT Support',NULL,NULL,NULL,NULL,1178,2,6),(120,54,'Automation',1,'2021-05-23 00:00:00','2021-05-23 00:00:00','fdvbcv',1194,4,1),(121,54,'IGNITE Quality Platform',1,'2021-05-23 00:00:00','2021-05-23 00:00:00','vbnvbnvb',1197,7,1),(122,54,'Performance Test',1,'2021-05-23 00:00:00','2021-05-23 00:00:00','ddfdfdfd',1195,5,1),(123,54,'Regression Tests Execution',1,'2021-06-23 00:00:00','2021-05-23 00:00:00','ddgd',1193,3,1),(124,54,'Security',1,'2021-05-23 00:00:00','2021-05-23 00:00:00','dfdfdgfnbv',1196,6,1),(125,54,'SIT (includes E2E)',1,'2021-05-23 00:00:00','2021-05-23 00:00:00','test',1191,1,1),(126,54,'UAT Support',1,'2021-05-23 00:00:00','2021-05-23 00:00:00','dgefeg',1192,2,1),(127,54,'Automation',1,'2021-05-23 00:00:00','2021-05-23 00:00:00','fdvbcv',1194,4,2),(128,54,'IGNITE Quality Platform',1,'2021-05-23 00:00:00','2021-05-23 00:00:00','vbnvbnvb',1197,7,2),(129,54,'Performance Test',1,'2021-05-23 00:00:00','2021-05-23 00:00:00','ddfdfdfd',1195,5,2),(130,54,'Regression Tests Execution',1,'2021-06-23 00:00:00','2021-05-23 00:00:00','ddgd',1193,3,2),(131,54,'Security',1,'2021-05-23 00:00:00','2021-05-23 00:00:00','dfdfdgfnbv',1196,6,2),(132,54,'SIT (includes E2E)',1,'2021-05-23 00:00:00','2021-05-23 00:00:00','test',1191,1,2),(133,54,'UAT Support',1,'2021-05-23 00:00:00','2021-05-23 00:00:00','dgefeg',1192,2,2),(134,54,'Automation',1,'2021-05-23 00:00:00','2021-05-23 00:00:00','fdvbcv',1194,4,3),(135,54,'IGNITE Quality Platform',1,'2021-05-23 00:00:00','2021-05-23 00:00:00','vbnvbnvb',1197,7,3),(136,54,'Performance Test',1,'2021-05-23 00:00:00','2021-05-23 00:00:00','ddfdfdfd',1195,5,3),(137,54,'Regression Tests Execution',1,'2021-06-23 00:00:00','2021-05-23 00:00:00','ddgd',1193,3,3),(138,54,'Security',1,'2021-05-23 00:00:00','2021-05-23 00:00:00','dfdfdgfnbv',1196,6,3),(139,54,'SIT (includes E2E)',1,'2021-05-23 00:00:00','2021-05-23 00:00:00','test',1191,1,3),(140,54,'UAT Support',1,'2021-05-23 00:00:00','2021-05-23 00:00:00','dgefeg',1192,2,3),(141,54,'Automation',1,'2021-05-23 00:00:00','2021-05-23 00:00:00','fdvbcv',1201,4,4),(142,54,'IGNITE Quality Platform',1,'2021-05-23 00:00:00','2021-05-23 00:00:00','vbnvbnvb',1204,7,4),(143,54,'Performance Test',1,'2021-05-23 00:00:00','2021-05-23 00:00:00','ddfdfdfd',1202,5,4),(144,54,'Regression Tests Execution',1,'2021-06-23 00:00:00','2021-05-23 00:00:00','ddgd',1200,3,4),(145,54,'Security',1,'2021-05-23 00:00:00','2021-05-23 00:00:00','dfdfdgfnbv',1203,6,4),(146,54,'SIT (includes E2E)',1,'2021-05-23 00:00:00','2021-05-23 00:00:00','test',1198,1,4),(147,54,'UAT Support',1,'2021-05-23 00:00:00','2021-05-23 00:00:00','dgefeg',1199,2,4),(148,54,'Automation',1,'2021-05-23 00:00:00','2021-05-23 00:00:00','fdvbcv',1208,4,5),(149,54,'IGNITE Quality Platform',1,'2021-05-23 00:00:00','2021-05-23 00:00:00','vbnvbnvb',1211,7,5),(150,54,'Performance Test',1,'2021-05-23 00:00:00','2021-05-23 00:00:00','ddfdfdfd',1209,5,5),(151,54,'Regression Tests Execution',1,'2021-06-23 00:00:00','2021-05-23 00:00:00','ddgd',1207,3,5),(152,54,'Security',1,'2021-05-23 00:00:00','2021-05-23 00:00:00','dfdfdgfnbv',1210,6,5),(153,54,'SIT (includes E2E)',1,'2021-05-23 00:00:00','2021-05-23 00:00:00','test',1205,1,5),(154,54,'UAT Support',1,'2021-05-23 00:00:00','2021-05-23 00:00:00','dgefeg',1206,2,5);
/*!40000 ALTER TABLE `qagile_rfs_request_scope_approved` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-23 12:14:44
