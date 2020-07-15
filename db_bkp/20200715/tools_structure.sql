CREATE DATABASE  IF NOT EXISTS `tools` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `tools`;
-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: localhost    Database: tools
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
-- Table structure for table `structure`
--

DROP TABLE IF EXISTS `structure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `structure` (
  `record_id` int NOT NULL AUTO_INCREMENT,
  `definition_name` varchar(20) DEFAULT NULL,
  `order` int DEFAULT NULL,
  `col_name` varchar(45) DEFAULT NULL,
  `col_data_type` varchar(45) DEFAULT NULL,
  `required` tinyint DEFAULT NULL,
  `max_len` int DEFAULT NULL,
  `is_fixed_len` tinyint DEFAULT '0',
  `format` varchar(100) DEFAULT NULL,
  `min_value` varchar(100) DEFAULT NULL,
  `max_value` varchar(100) DEFAULT NULL,
  `decimals` smallint DEFAULT '2',
  `created_dt` datetime DEFAULT CURRENT_TIMESTAMP,
  `all_null` tinyint DEFAULT '1',
  `is_pk` tinyint DEFAULT '0',
  PRIMARY KEY (`record_id`),
  UNIQUE KEY `order_UNIQUE` (`order`),
  KEY `fk_definition_idx` (`definition_name`),
  CONSTRAINT `fk_definition` FOREIGN KEY (`definition_name`) REFERENCES `definition` (`name`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `structure`
--

LOCK TABLES `structure` WRITE;
/*!40000 ALTER TABLE `structure` DISABLE KEYS */;
INSERT INTO `structure` VALUES (11,'IS001T12',1,'CGID','INT',1,3,1,NULL,'779','779',NULL,'2020-07-10 18:31:31',1,0),(12,'IS001T12',2,'SSN','INT',1,9,1,NULL,'100000000','999999999',NULL,'2020-07-10 18:31:31',1,1),(13,'IS001T12',3,'dob','DATE',0,8,1,'%m%d%Y',NULL,NULL,NULL,'2020-07-10 18:31:31',1,0),(14,'IS001T12',4,'email','STRING',1,20,1,'email',NULL,NULL,NULL,'2020-07-10 18:31:31',1,0),(15,'IS001T12',5,'phone','STRING',0,15,1,NULL,NULL,NULL,NULL,'2020-07-10 18:31:31',0,0),(16,'IS001T12',6,'payment','DECIMAL',1,9,1,NULL,'0','99999.99',2,'2020-07-10 18:31:31',1,0);
/*!40000 ALTER TABLE `structure` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-15 16:46:12
