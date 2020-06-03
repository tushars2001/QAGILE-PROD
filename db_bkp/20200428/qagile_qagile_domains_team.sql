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
-- Table structure for table `qagile_domains_team`
--

DROP TABLE IF EXISTS `qagile_domains_team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qagile_domains_team` (
  `record_id` int NOT NULL AUTO_INCREMENT,
  `domain_id` int DEFAULT NULL,
  `vnid` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`record_id`),
  KEY `fk_team_person_idx` (`vnid`),
  KEY `fk_team_domain_idx` (`domain_id`),
  CONSTRAINT `fk_team_domain` FOREIGN KEY (`domain_id`) REFERENCES `qagile_domains` (`domain_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_team_person` FOREIGN KEY (`vnid`) REFERENCES `qagile_person` (`vnid`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qagile_domains_team`
--

LOCK TABLES `qagile_domains_team` WRITE;
/*!40000 ALTER TABLE `qagile_domains_team` DISABLE KEYS */;
INSERT INTO `qagile_domains_team` VALUES (10,1,'vn03616'),(14,3,'vn05979'),(15,1,'VN06804'),(16,1,'vn07098'),(17,1,'VN07325'),(18,5,'vn12345'),(27,3,'vn04597'),(28,1,'vn05672'),(29,2,'VN05861'),(30,2,'VN06344'),(31,2,'vn03893'),(32,2,'vn03895'),(41,3,'vn01010'),(45,2,'UPDATE1'),(46,4,'UPDATE1'),(51,1,'vnidtes'),(52,3,'vnidtes'),(53,7,'vnidtes'),(54,4,'vn03626'),(55,5,'vn02185'),(56,5,'vn06493'),(58,5,'vn03617'),(59,1,'1242198'),(60,5,'VN06492'),(61,6,'vn00000'),(62,2,'vn00001'),(63,6,'vn00001'),(64,1,'vn03844'),(65,2,'vn03844'),(66,5,'vn03844'),(67,5,'vn03674'),(69,5,'vn04097');
/*!40000 ALTER TABLE `qagile_domains_team` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-28 12:19:19
