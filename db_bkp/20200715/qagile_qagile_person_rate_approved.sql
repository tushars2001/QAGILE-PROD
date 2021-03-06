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
-- Table structure for table `qagile_person_rate_approved`
--

DROP TABLE IF EXISTS `qagile_person_rate_approved`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qagile_person_rate_approved` (
  `record_id` int NOT NULL AUTO_INCREMENT,
  `rate` decimal(5,2) NOT NULL,
  `approval_num` int NOT NULL,
  `rfs_request_id` int NOT NULL,
  `personid` varchar(10) NOT NULL,
  PRIMARY KEY (`record_id`)
) ENGINE=InnoDB AUTO_INCREMENT=160 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qagile_person_rate_approved`
--

LOCK TABLES `qagile_person_rate_approved` WRITE;
/*!40000 ALTER TABLE `qagile_person_rate_approved` DISABLE KEYS */;
INSERT INTO `qagile_person_rate_approved` VALUES (1,85.00,4,53,'1242198'),(2,50.00,4,53,'vn07098'),(3,50.00,4,53,'VN06804'),(4,85.00,4,53,'vn05672'),(8,85.00,5,53,'1242198'),(9,50.00,5,53,'vn07098'),(10,50.00,5,53,'VN06804'),(11,85.00,5,53,'vn05672'),(12,41.00,5,53,'VN06492'),(15,85.00,6,53,'1242198'),(16,50.00,6,53,'vn07098'),(17,50.00,6,53,'VN06804'),(18,85.00,6,53,'vn05672'),(19,41.00,6,53,'VN06492'),(20,50.00,6,53,'VN07325'),(22,85.00,1,54,'1242198'),(23,50.00,1,54,'vn07098'),(24,85.00,1,54,'vn05672'),(25,50.00,1,54,'VN06804'),(29,85.00,2,54,'1242198'),(30,50.00,2,54,'vn07098'),(31,85.00,2,54,'vn05672'),(32,50.00,2,54,'VN06804'),(36,85.00,3,54,'1242198'),(37,50.00,3,54,'vn07098'),(38,85.00,3,54,'vn05672'),(39,50.00,3,54,'VN06804'),(43,85.00,4,54,'1242198'),(44,50.00,4,54,'vn07098'),(45,85.00,4,54,'vn05672'),(46,50.00,4,54,'VN06804'),(47,41.00,4,54,'VN06492'),(50,85.00,5,54,'1242198'),(51,50.00,5,54,'vn07098'),(52,85.00,5,54,'vn05672'),(53,50.00,5,54,'VN06804'),(54,41.00,5,54,'VN06492'),(55,41.00,5,54,'vn02185'),(57,85.00,1,55,'1242198'),(58,50.00,1,55,'vn07098'),(59,50.00,1,55,'VN06804'),(60,85.00,1,55,'vn05672'),(64,85.00,2,55,'1242198'),(65,50.00,2,55,'vn07098'),(66,50.00,2,55,'VN06804'),(67,85.00,2,55,'vn05672'),(68,41.00,2,55,'VN06492'),(71,85.00,1,57,'1242198'),(72,50.00,1,57,'vn07098'),(73,50.00,1,57,'VN07325'),(74,85.00,1,57,'vn05672'),(78,85.00,2,57,'1242198'),(79,50.00,2,57,'vn07098'),(80,50.00,2,57,'VN07325'),(81,85.00,2,57,'vn05672'),(82,41.00,2,57,'VN06492'),(83,85.00,1,58,'1242198'),(84,50.00,1,58,'vn07098'),(85,50.00,1,58,'VN06804'),(86,85.00,1,58,'vn05672'),(90,85.00,2,58,'1242198'),(91,50.00,2,58,'vn07098'),(92,50.00,2,58,'VN06804'),(93,85.00,2,58,'vn05672'),(94,41.00,2,58,'VN06492'),(95,85.00,1,60,'1242198'),(96,50.00,1,60,'VN06804'),(97,85.00,1,60,'vn05672'),(98,50.00,1,60,'VN07325'),(102,85.00,4,46,'1242198'),(103,50.00,4,46,'vn03616'),(104,50.00,4,46,'vn07098'),(105,50.00,4,46,'VN06804'),(106,50.00,4,46,'VN07325'),(107,85.00,4,46,'vn05672'),(108,41.00,4,46,'vn02185'),(109,41.00,4,46,'VN06492'),(110,75.00,4,46,'vn04597'),(117,85.00,5,10,'1242198'),(118,50.00,5,10,'vn07098'),(119,50.00,5,10,'vn03616'),(120,85.00,1,68,'1242198'),(121,50.00,1,68,'VN06804'),(122,85.00,1,68,'vn05672'),(123,50.00,1,68,'vn08351'),(124,50.00,1,68,'vn07097'),(125,50.00,1,68,'VN06492'),(126,78.00,1,68,'Updat1'),(127,50.00,1,68,'vn02185'),(128,50.00,1,68,'vn03617'),(129,50.00,1,68,'vn06351'),(130,78.00,1,68,'Update4'),(131,85.00,1,68,'vn03895'),(135,85.00,1,70,'1242198'),(136,50.00,1,70,'vn03616'),(137,50.00,1,70,'vn07098'),(138,50.00,1,70,'VN07325'),(139,85.00,1,70,'vn05672'),(142,50.00,1,71,'vn07098'),(143,50.00,1,71,'VN99999'),(144,50.00,1,71,'VN07325'),(145,85.00,1,71,'1242198'),(146,85.00,1,71,'vn05672'),(149,50.00,2,71,'vn07098'),(150,50.00,2,71,'VN07325'),(151,85.00,2,71,'1242198'),(152,85.00,2,71,'vn05672'),(153,50.00,2,71,'VN99999'),(156,85.00,1,73,'1242198'),(157,50.00,1,73,'vn07098'),(158,85.00,1,73,'vn05672'),(159,50.00,1,73,'VN99999');
/*!40000 ALTER TABLE `qagile_person_rate_approved` ENABLE KEYS */;
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
