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
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$180000$m3gV65BvQoLe$ekK3qeGaDkO1FlUnAFFL/0D49Vps4irDPdi6QdXuTeg=','2020-03-08 01:58:14.365787',1,'tushar','','','tushar.saxena@in.ibm.com',1,1,'2020-03-08 01:58:06.603923'),(2,'pbkdf2_sha256$180000$43PSNFtVWMYx$NtHoQxjvfU57m+XDLhK+nSKttk8ROVe6Hlv51QiR0uw=','2020-03-10 19:27:34.805948',1,'admin','','','admin@example.com',1,1,'2020-03-10 19:27:26.843145'),(3,'!oCTxoaKS35M2QmoSuEageCofsHoPTGQF9X5QhKId','2020-04-19 00:15:18.590371',0,'jbloggs','Joe','Bloggs','joe@example.com',0,1,'2020-04-18 20:00:50.375832'),(4,'!bH2DVfF2MDpAL69moKGP1k9WgG0d5U1L7nHAgbt5','2020-04-28 13:31:00.343007',1,'vn05672','Tushar','Saxena','vn05672@delhaize.com',1,1,'2020-04-18 23:11:21.526682'),(5,'!FzT62AJpneoCW6z9QmvQ1iCJiIEPyobfkmqLMYlg','2020-04-18 23:14:13.832529',0,'vn06684','Udaya','Naru','vn06684@delhaize.com',0,1,'2020-04-18 23:14:13.802691'),(6,'!aaRAk8alNvfD0p29UDx8GmUKVBLWtwizDFQcvQ8x','2020-04-19 00:12:49.302358',0,'update1','Tim','O\' Brien','UPDATE1@delhaize.com',0,1,'2020-04-19 00:12:49.074594'),(7,'!raolTKnC0Kzuy9qfOfSEvURQs5q9yyzqoEN1w3uK','2020-04-19 00:17:50.786131',0,'vn06312','Shyju','D','vn06312@delhaize.com',0,1,'2020-04-19 00:17:50.744273'),(8,'!D7mopesdgwxo0wZHpszs0XJeIi203HK48WQZmrpr','2020-04-21 02:13:55.190718',0,'1332911','Bruce','Lovvorn','Bruce.Lovvorn@RetailBusinessServices.com',0,1,'2020-04-21 02:13:55.040108'),(9,'!e6PxqflIIgYeBBuZDt02XkIigPDFqoDzx01LDE9L','2020-04-21 02:20:01.976165',0,'vn05438','Sreeman','Kancherla','vn05438@delhaize.com',0,1,'2020-04-21 02:20:01.919008');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-28 12:19:24
