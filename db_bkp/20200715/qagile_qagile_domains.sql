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
-- Table structure for table `qagile_domains`
--

DROP TABLE IF EXISTS `qagile_domains`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qagile_domains` (
  `domain_id` int NOT NULL AUTO_INCREMENT,
  `domain_name` varchar(45) NOT NULL,
  `domain_lead` varchar(10) DEFAULT NULL,
  `domain_lead_two` varchar(10) DEFAULT NULL,
  `pom` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`domain_id`),
  KEY `fk_domain_person_dl1_idx` (`domain_lead`),
  KEY `fk_domain_person_dl1_idx1` (`domain_lead_two`),
  CONSTRAINT `fk_domain_person_dl1` FOREIGN KEY (`domain_lead`) REFERENCES `qagile_person` (`vnid`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qagile_domains`
--

LOCK TABLES `qagile_domains` WRITE;
/*!40000 ALTER TABLE `qagile_domains` DISABLE KEYS */;
INSERT INTO `qagile_domains` VALUES (1,'MDM','vn05672',NULL,NULL),(2,'BIDM-API','vn03895','vn05672','UPDATE1'),(3,'HR / Corp','vn05979',NULL,NULL),(4,'Marketing','vn07736',NULL,NULL),(5,'Shared Services','VN06651','vn04097',NULL),(6,'RX/Fuel/Pharmacy','vn06670',NULL,NULL),(7,'Finance','vn08502',NULL,NULL),(11,'Infrastructure','vn03674',NULL,NULL),(12,'Retail','vn03680','vn03676',NULL),(13,'Merchandising','vn07234',NULL,NULL),(14,'Supply Chain D&T','VN06491',NULL,NULL),(15,'Supply Chain F&R','vn06032',NULL,NULL);
/*!40000 ALTER TABLE `qagile_domains` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-15 16:46:09
