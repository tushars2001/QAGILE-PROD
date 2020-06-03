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
-- Table structure for table `qagile_person_deleted`
--

DROP TABLE IF EXISTS `qagile_person_deleted`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qagile_person_deleted` (
  `vnid` varchar(10) NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `email` varchar(45) DEFAULT NULL,
  `domain_id_rem` int DEFAULT NULL,
  `category` varchar(45) DEFAULT NULL COMMENT 'Flex etc',
  `rate_id` int DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `created` datetime DEFAULT CURRENT_TIMESTAMP,
  `role_id` int DEFAULT NULL,
  `location_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qagile_person_deleted`
--

LOCK TABLES `qagile_person_deleted` WRITE;
/*!40000 ALTER TABLE `qagile_person_deleted` DISABLE KEYS */;
INSERT INTO `qagile_person_deleted` VALUES ('vnidtes','Narendra','Modi','n@m.com',NULL,'Flex',23,'1001001001','2020-04-10 12:15:13',9,6),('vnidtes','Narendra','Modi','n@m.com',NULL,'Flex',23,'1001001001','2020-04-10 12:15:13',9,6),('vnidtes','Narendra','Modi','n@m.com',NULL,'Flex',23,'1001001001','2020-04-10 12:15:13',9,6),('vnidtes','Narendra','Modi','n@m.com',NULL,'Flex',23,'1001001001','2020-04-10 12:15:13',9,6),('vnidtes','Narendra','Modi','n@m.com',NULL,'Flex',23,'1001001001','2020-04-10 12:15:13',9,6),('vnidtes','Narendra','Modi','n@m.com',NULL,'Flex',23,'1001001001','2020-04-10 12:15:13',9,6),('vnidtes','Narendra','Modi','n@m.com',NULL,'Flex',23,'1001001001','2020-04-10 12:15:13',9,6),('vn01010','~`!@#$^&*()_-+\'={[}]|:;\"<,>.?/','all specials','w@b.c',NULL,'Core',15,'1212121212','2020-04-09 14:50:44',11,3);
/*!40000 ALTER TABLE `qagile_person_deleted` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-02 21:59:35
