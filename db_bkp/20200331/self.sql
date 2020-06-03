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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$180000$m3gV65BvQoLe$ekK3qeGaDkO1FlUnAFFL/0D49Vps4irDPdi6QdXuTeg=','2020-03-08 01:58:14.365787',1,'tushar','','','tushar.saxena@in.ibm.com',1,1,'2020-03-08 01:58:06.603923'),(2,'pbkdf2_sha256$180000$43PSNFtVWMYx$NtHoQxjvfU57m+XDLhK+nSKttk8ROVe6Hlv51QiR0uw=','2020-03-10 19:27:34.805948',1,'admin','','','admin@example.com',1,1,'2020-03-10 19:27:26.843145');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `del_log_qagile_rfs_estimates`
--

DROP TABLE IF EXISTS `del_log_qagile_rfs_estimates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `del_log_qagile_rfs_estimates` (
  `record_id` int NOT NULL AUTO_INCREMENT,
  `rfs_request_id` int DEFAULT NULL,
  `activity_code` varchar(5) DEFAULT NULL,
  `effort` decimal(5,2) DEFAULT NULL,
  `unit` varchar(45) DEFAULT NULL COMMENT 'Hours/days\n',
  `comment` varchar(1000) DEFAULT NULL,
  `created_dt` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`record_id`)
) ENGINE=InnoDB AUTO_INCREMENT=476 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `del_log_qagile_rfs_estimates`
--

LOCK TABLES `del_log_qagile_rfs_estimates` WRITE;
/*!40000 ALTER TABLE `del_log_qagile_rfs_estimates` DISABLE KEYS */;
INSERT INTO `del_log_qagile_rfs_estimates` VALUES (1,2,'KTAPP',100.00,NULL,'for KT','2020-03-28 20:21:56'),(2,2,'KTSSR',200.00,NULL,'for SSR','2020-03-28 20:21:56'),(3,2,'SIT',12.00,NULL,'int test','2020-03-28 20:21:56'),(4,2,'UAT',23.00,NULL,'uat support','2020-03-28 20:21:56'),(5,2,'PERF',34.00,NULL,'perf','2020-03-28 20:21:56'),(6,2,'SEC',32.00,NULL,'sec test','2020-03-28 20:21:56'),(7,2,'PRDAT',5.00,NULL,'prod act','2020-03-28 20:21:56'),(8,2,'POM',8.00,NULL,'pom ','2020-03-28 20:21:56'),(9,2,'TRVCO',200.00,NULL,'onsite visit','2020-03-28 20:21:56'),(16,2,'KTAPP',100.00,NULL,'for KT','2020-03-28 20:23:08'),(17,2,'KTSSR',200.00,NULL,'for SSR','2020-03-28 20:23:08'),(18,2,'SIT',12.00,NULL,'int test','2020-03-28 20:23:08'),(19,2,'UAT',23.00,NULL,'uat support','2020-03-28 20:23:08'),(20,2,'PERF',34.00,NULL,'perf','2020-03-28 20:23:08'),(21,2,'SEC',32.00,NULL,'sec test','2020-03-28 20:23:08'),(22,2,'PRDAT',5.00,NULL,'prod act','2020-03-28 20:23:08'),(23,2,'POM',8.00,NULL,'pom ','2020-03-28 20:23:08'),(24,2,'TRVCO',200.00,NULL,'onsite visit','2020-03-28 20:23:08'),(31,2,'KTAPP',100.00,NULL,'for KT','2020-03-28 20:25:42'),(32,2,'KTSSR',200.00,NULL,'for SSR','2020-03-28 20:25:42'),(33,2,'SIT',12.00,NULL,'int test','2020-03-28 20:25:42'),(34,2,'UAT',23.00,NULL,'uat support','2020-03-28 20:25:42'),(35,2,'PERF',34.00,NULL,'perf','2020-03-28 20:25:42'),(36,2,'SEC',32.00,NULL,'sec test','2020-03-28 20:25:42'),(37,2,'PRDAT',5.00,NULL,'prod act','2020-03-28 20:25:42'),(38,2,'POM',8.00,NULL,'pom ','2020-03-28 20:25:42'),(39,2,'TRVCO',200.00,NULL,'onsite visit','2020-03-28 20:25:42'),(46,2,'KTAPP',100.00,NULL,'for KT','2020-03-28 20:46:01'),(47,2,'KTSSR',200.00,NULL,'for SSR','2020-03-28 20:46:01'),(48,2,'SIT',12.00,NULL,'int test','2020-03-28 20:46:01'),(49,2,'UAT',23.00,NULL,'uat support','2020-03-28 20:46:01'),(50,2,'PERF',34.00,NULL,'perf','2020-03-28 20:46:01'),(51,2,'SEC',32.00,NULL,'sec test','2020-03-28 20:46:01'),(52,2,'PRDAT',5.00,NULL,'prod act','2020-03-28 20:46:01'),(53,2,'POM',8.00,NULL,'pom ','2020-03-28 20:46:01'),(54,2,'TRVCO',200.00,NULL,'onsite visit','2020-03-28 20:46:01'),(61,2,'KTAPP',100.00,NULL,'for KT','2020-03-28 20:52:10'),(62,2,'KTSSR',200.00,NULL,'for SSR','2020-03-28 20:52:10'),(63,2,'SIT',12.00,NULL,'int test','2020-03-28 20:52:10'),(64,2,'UAT',23.00,NULL,'uat support','2020-03-28 20:52:10'),(65,2,'PERF',34.00,NULL,'perf','2020-03-28 20:52:10'),(66,2,'SEC',32.00,NULL,'sec test','2020-03-28 20:52:10'),(67,2,'ACC',12.00,NULL,'acc test','2020-03-28 20:52:10'),(68,2,'PRDAT',5.00,NULL,'prod act','2020-03-28 20:52:10'),(69,2,'POM',8.00,NULL,'pom ','2020-03-28 20:52:10'),(70,2,'TRVCO',200.00,NULL,'onsite visit','2020-03-28 20:52:10'),(76,2,'KTAPP',100.00,NULL,'for KT','2020-03-28 20:53:26'),(77,2,'KTSSR',200.00,NULL,'for SSR','2020-03-28 20:53:26'),(78,2,'SIT',12.00,NULL,'int test','2020-03-28 20:53:26'),(79,2,'UAT',23.00,NULL,'uat support','2020-03-28 20:53:26'),(80,2,'PERF',34.00,NULL,'perf','2020-03-28 20:53:26'),(81,2,'SEC',32.00,NULL,'sec test','2020-03-28 20:53:26'),(82,2,'ACC',12.00,NULL,'acc test','2020-03-28 20:53:26'),(83,2,'PRDAT',5.00,NULL,'prod act','2020-03-28 20:53:26'),(84,2,'POM',8.00,NULL,'pom ','2020-03-28 20:53:26'),(85,2,'TRVCO',200.00,NULL,'onsite visit','2020-03-28 20:53:26'),(91,2,'KTAPP',100.00,NULL,'for KT','2020-03-29 12:05:06'),(92,2,'KTSSR',200.00,NULL,'for SSR','2020-03-29 12:05:06'),(93,2,'SIT',12.00,NULL,'int test','2020-03-29 12:05:06'),(94,2,'UAT',23.00,NULL,'uat support','2020-03-29 12:05:06'),(95,2,'PERF',34.00,NULL,'perf','2020-03-29 12:05:06'),(96,2,'SEC',32.00,NULL,'sec test','2020-03-29 12:05:06'),(97,2,'ACC',12.00,NULL,'acc test','2020-03-29 12:05:06'),(98,2,'PRDAT',5.00,NULL,'prod act','2020-03-29 12:05:06'),(99,2,'POM',8.00,NULL,'pom ','2020-03-29 12:05:06'),(100,2,'TRVCO',200.00,NULL,'onsite visit','2020-03-29 12:05:06'),(106,2,'KTAPP',100.00,NULL,'for KT','2020-03-29 12:05:20'),(107,2,'KTSSR',200.00,NULL,'for SSR','2020-03-29 12:05:20'),(108,2,'SIT',12.00,NULL,'int test','2020-03-29 12:05:20'),(109,2,'UAT',23.00,NULL,'uat support','2020-03-29 12:05:20'),(110,2,'PERF',34.00,NULL,'perf','2020-03-29 12:05:20'),(111,2,'SEC',32.00,NULL,'sec test','2020-03-29 12:05:20'),(112,2,'ACC',12.00,NULL,'acc test','2020-03-29 12:05:20'),(113,2,'PRDAT',5.00,NULL,'prod act','2020-03-29 12:05:20'),(114,2,'POM',8.00,NULL,'pom ','2020-03-29 12:05:20'),(115,2,'TRVCO',200.00,NULL,'onsite visit','2020-03-29 12:05:20'),(121,2,'KTAPP',100.00,NULL,'for KT','2020-03-29 12:08:08'),(122,2,'KTSSR',200.00,NULL,'for SSR','2020-03-29 12:08:08'),(123,2,'SIT',12.00,NULL,'int test','2020-03-29 12:08:08'),(124,2,'UAT',23.00,NULL,'uat support','2020-03-29 12:08:08'),(125,2,'PERF',34.00,NULL,'perf','2020-03-29 12:08:08'),(126,2,'SEC',32.00,NULL,'sec test','2020-03-29 12:08:08'),(127,2,'ACC',12.00,NULL,'acc test','2020-03-29 12:08:08'),(128,2,'PRDAT',5.00,NULL,'prod act','2020-03-29 12:08:08'),(129,2,'POM',8.00,NULL,'pom ','2020-03-29 12:08:08'),(130,2,'TRVCO',200.00,NULL,'onsite visit','2020-03-29 12:08:08'),(136,2,'KTAPP',100.00,NULL,'for KT','2020-03-29 12:08:52'),(137,2,'KTSSR',200.00,NULL,'for SSR','2020-03-29 12:08:52'),(138,2,'SIT',12.00,NULL,'int test','2020-03-29 12:08:52'),(139,2,'UAT',23.00,NULL,'uat support','2020-03-29 12:08:52'),(140,2,'PERF',34.00,NULL,'perf','2020-03-29 12:08:52'),(141,2,'SEC',32.00,NULL,'sec test','2020-03-29 12:08:52'),(142,2,'ACC',12.00,NULL,'acc test','2020-03-29 12:08:52'),(143,2,'PRDAT',5.00,NULL,'prod act','2020-03-29 12:08:52'),(144,2,'POM',8.00,NULL,'pom ','2020-03-29 12:08:52'),(145,2,'TRVCO',200.00,NULL,'onsite visit','2020-03-29 12:08:52'),(151,2,'KTAPP',100.00,NULL,'for KT','2020-03-29 12:10:21'),(152,2,'KTSSR',200.00,NULL,'for SSR','2020-03-29 12:10:21'),(153,2,'SIT',12.00,NULL,'int test','2020-03-29 12:10:21'),(154,2,'UAT',23.00,NULL,'uat support','2020-03-29 12:10:21'),(155,2,'PERF',34.00,NULL,'perf','2020-03-29 12:10:21'),(156,2,'SEC',32.00,NULL,'sec test','2020-03-29 12:10:21'),(157,2,'ACC',12.00,NULL,'acc test','2020-03-29 12:10:21'),(158,2,'PRDAT',5.00,NULL,'prod act','2020-03-29 12:10:21'),(159,2,'POM',8.00,NULL,'pom ','2020-03-29 12:10:21'),(160,2,'TRVCO',200.00,NULL,'onsite visit','2020-03-29 12:10:21'),(166,2,'KTAPP',100.00,NULL,'for KT','2020-03-29 12:10:33'),(167,2,'KTSSR',200.00,NULL,'for SSR','2020-03-29 12:10:33'),(168,2,'SIT',12.00,NULL,'int test','2020-03-29 12:10:33'),(169,2,'UAT',23.00,NULL,'uat support','2020-03-29 12:10:33'),(170,2,'PERF',34.00,NULL,'perf','2020-03-29 12:10:33'),(171,2,'SEC',32.00,NULL,'sec test','2020-03-29 12:10:33'),(172,2,'ACC',12.00,NULL,'acc test','2020-03-29 12:10:33'),(173,2,'PRDAT',5.00,NULL,'prod act','2020-03-29 12:10:33'),(174,2,'POM',8.00,NULL,'pom ','2020-03-29 12:10:33'),(175,2,'TRVCO',200.00,NULL,'onsite visit','2020-03-29 12:10:33'),(181,2,'KTAPP',100.00,NULL,'for KT','2020-03-29 12:11:43'),(182,2,'KTSSR',200.00,NULL,'for SSR','2020-03-29 12:11:43'),(183,2,'SIT',12.00,NULL,'int test','2020-03-29 12:11:43'),(184,2,'UAT',23.00,NULL,'uat support','2020-03-29 12:11:43'),(185,2,'PERF',34.00,NULL,'perf','2020-03-29 12:11:43'),(186,2,'SEC',32.00,NULL,'sec test','2020-03-29 12:11:43'),(187,2,'ACC',12.00,NULL,'acc test','2020-03-29 12:11:43'),(188,2,'PRDAT',5.00,NULL,'prod act','2020-03-29 12:11:43'),(189,2,'POM',8.00,NULL,'pom ','2020-03-29 12:11:43'),(190,2,'TRVCO',200.00,NULL,'onsite visit','2020-03-29 12:11:43'),(196,2,'KTAPP',100.00,NULL,'for KT','2020-03-29 12:15:49'),(197,2,'KTSSR',200.00,NULL,'for SSR','2020-03-29 12:15:49'),(198,2,'SIT',12.00,NULL,'int test','2020-03-29 12:15:49'),(199,2,'UAT',23.00,NULL,'uat support','2020-03-29 12:15:49'),(200,2,'PERF',34.00,NULL,'perf','2020-03-29 12:15:49'),(201,2,'SEC',32.00,NULL,'sec test','2020-03-29 12:15:49'),(202,2,'ACC',12.00,NULL,'acc test','2020-03-29 12:15:49'),(203,2,'PRDAT',5.00,NULL,'prod act','2020-03-29 12:15:49'),(204,2,'POM',8.00,NULL,'pom ','2020-03-29 12:15:49'),(205,2,'TRVCO',200.00,NULL,'onsite visit','2020-03-29 12:15:49'),(211,2,'KTAPP',100.00,NULL,'for KT','2020-03-29 12:17:06'),(212,2,'KTSSR',200.00,NULL,'for SSR','2020-03-29 12:17:06'),(213,2,'SIT',12.00,NULL,'int test','2020-03-29 12:17:06'),(214,2,'UAT',23.00,NULL,'uat support','2020-03-29 12:17:06'),(215,2,'PERF',34.00,NULL,'perf','2020-03-29 12:17:06'),(216,2,'SEC',32.00,NULL,'sec test','2020-03-29 12:17:06'),(217,2,'ACC',12.00,NULL,'acc test','2020-03-29 12:17:06'),(218,2,'PRDAT',5.00,NULL,'prod act','2020-03-29 12:17:06'),(219,2,'POM',8.00,NULL,'pom ','2020-03-29 12:17:06'),(220,2,'TRVCO',200.00,NULL,'onsite visit','2020-03-29 12:17:06'),(226,2,'KTAPP',100.00,NULL,'for KT','2020-03-29 12:17:26'),(227,2,'KTSSR',200.00,NULL,'for SSR','2020-03-29 12:17:26'),(228,2,'SIT',12.00,NULL,'int test','2020-03-29 12:17:26'),(229,2,'UAT',23.00,NULL,'uat support','2020-03-29 12:17:26'),(230,2,'PERF',34.00,NULL,'perf','2020-03-29 12:17:26'),(231,2,'SEC',32.00,NULL,'sec test','2020-03-29 12:17:26'),(232,2,'ACC',12.00,NULL,'acc test','2020-03-29 12:17:26'),(233,2,'PRDAT',5.00,NULL,'prod act','2020-03-29 12:17:26'),(234,2,'POM',8.00,NULL,'pom ','2020-03-29 12:17:26'),(235,2,'TRVCO',200.00,NULL,'onsite visit','2020-03-29 12:17:26'),(241,2,'KTAPP',100.00,NULL,'for KT','2020-03-29 12:20:04'),(242,2,'KTSSR',200.00,NULL,'for SSR','2020-03-29 12:20:04'),(243,2,'SIT',12.00,NULL,'int test','2020-03-29 12:20:04'),(244,2,'UAT',23.00,NULL,'uat support','2020-03-29 12:20:04'),(245,2,'PERF',34.00,NULL,'perf','2020-03-29 12:20:04'),(246,2,'SEC',32.00,NULL,'sec test','2020-03-29 12:20:04'),(247,2,'ACC',12.00,NULL,'acc test','2020-03-29 12:20:04'),(248,2,'PRDAT',5.00,NULL,'prod act','2020-03-29 12:20:04'),(249,2,'POM',8.00,NULL,'pom ','2020-03-29 12:20:04'),(250,2,'TRVCO',200.00,NULL,'onsite visit','2020-03-29 12:20:04'),(256,2,'KTAPP',100.00,NULL,'for KT','2020-03-29 12:35:17'),(257,2,'KTSSR',200.00,NULL,'for SSR','2020-03-29 12:35:17'),(258,2,'SIT',12.00,NULL,'int test','2020-03-29 12:35:17'),(259,2,'UAT',23.00,NULL,'uat support','2020-03-29 12:35:17'),(260,2,'PERF',34.00,NULL,'perf','2020-03-29 12:35:17'),(261,2,'SEC',32.00,NULL,'sec test','2020-03-29 12:35:17'),(262,2,'ACC',12.00,NULL,'acc test','2020-03-29 12:35:17'),(263,2,'PRDAT',5.00,NULL,'prod act','2020-03-29 12:35:17'),(264,2,'POM',8.00,NULL,'pom ','2020-03-29 12:35:17'),(265,2,'TRVCO',200.00,NULL,'onsite visit','2020-03-29 12:35:17'),(271,2,'KTAPP',100.00,NULL,'for KT','2020-03-29 12:35:28'),(272,2,'KTSSR',200.00,NULL,'for SSR','2020-03-29 12:35:28'),(273,2,'SIT',12.00,NULL,'int test','2020-03-29 12:35:28'),(274,2,'UAT',23.00,NULL,'uat support','2020-03-29 12:35:28'),(275,2,'PERF',34.00,NULL,'perf','2020-03-29 12:35:28'),(276,2,'SEC',32.00,NULL,'sec test','2020-03-29 12:35:28'),(277,2,'ACC',12.00,NULL,'acc test','2020-03-29 12:35:28'),(278,2,'PRDAT',5.00,NULL,'prod act','2020-03-29 12:35:28'),(279,2,'POM',8.00,NULL,'pom ','2020-03-29 12:35:28'),(280,2,'TRVCO',200.00,NULL,'onsite visit','2020-03-29 12:35:28'),(286,2,'KTAPP',100.00,NULL,'for KT','2020-03-29 12:36:49'),(287,2,'KTSSR',200.00,NULL,'for SSR','2020-03-29 12:36:49'),(288,2,'SIT',12.00,NULL,'int test','2020-03-29 12:36:49'),(289,2,'UAT',23.00,NULL,'uat support','2020-03-29 12:36:49'),(290,2,'PERF',34.00,NULL,'perf','2020-03-29 12:36:49'),(291,2,'SEC',32.00,NULL,'sec test','2020-03-29 12:36:49'),(292,2,'ACC',12.00,NULL,'acc test','2020-03-29 12:36:49'),(293,2,'PRDAT',5.00,NULL,'prod act','2020-03-29 12:36:49'),(294,2,'POM',8.00,NULL,'pom ','2020-03-29 12:36:49'),(295,2,'TRVCO',200.00,NULL,'onsite visit','2020-03-29 12:36:49'),(301,2,'KTAPP',100.00,NULL,'for KT','2020-03-29 12:37:49'),(302,2,'KTSSR',200.00,NULL,'for SSR','2020-03-29 12:37:49'),(303,2,'SIT',12.00,NULL,'int test','2020-03-29 12:37:49'),(304,2,'UAT',23.00,NULL,'uat support','2020-03-29 12:37:49'),(305,2,'PERF',34.00,NULL,'perf','2020-03-29 12:37:49'),(306,2,'SEC',32.00,NULL,'sec test','2020-03-29 12:37:49'),(307,2,'ACC',12.00,NULL,'acc test','2020-03-29 12:37:49'),(308,2,'PRDAT',5.00,NULL,'prod act','2020-03-29 12:37:49'),(309,2,'POM',8.00,NULL,'pom ','2020-03-29 12:37:49'),(310,2,'TRVCO',200.00,NULL,'onsite visit','2020-03-29 12:37:49'),(316,2,'KTAPP',100.00,NULL,'for KT','2020-03-29 12:39:31'),(317,2,'KTSSR',200.00,NULL,'for SSR','2020-03-29 12:39:31'),(318,2,'SIT',12.00,NULL,'int test','2020-03-29 12:39:31'),(319,2,'UAT',23.00,NULL,'uat support','2020-03-29 12:39:31'),(320,2,'PERF',34.00,NULL,'perf','2020-03-29 12:39:31'),(321,2,'SEC',32.00,NULL,'sec test','2020-03-29 12:39:31'),(322,2,'ACC',12.00,NULL,'acc test','2020-03-29 12:39:31'),(323,2,'PRDAT',5.00,NULL,'prod act','2020-03-29 12:39:31'),(324,2,'POM',8.00,NULL,'pom ','2020-03-29 12:39:31'),(325,2,'TRVCO',200.00,NULL,'onsite visit','2020-03-29 12:39:31'),(331,2,'KTAPP',100.00,NULL,'for KT','2020-03-29 12:39:39'),(332,2,'KTSSR',200.00,NULL,'for SSR','2020-03-29 12:39:39'),(333,2,'SIT',12.00,NULL,'int test','2020-03-29 12:39:39'),(334,2,'UAT',23.00,NULL,'uat support','2020-03-29 12:39:39'),(335,2,'PERF',34.00,NULL,'perf','2020-03-29 12:39:39'),(336,2,'SEC',32.00,NULL,'sec test','2020-03-29 12:39:39'),(337,2,'ACC',12.00,NULL,'acc test','2020-03-29 12:39:39'),(338,2,'PRDAT',5.00,NULL,'prod act','2020-03-29 12:39:39'),(339,2,'POM',8.00,NULL,'pom ','2020-03-29 12:39:39'),(340,2,'TRVCO',200.00,NULL,'onsite visit','2020-03-29 12:39:39'),(346,2,'KTAPP',100.00,NULL,'for KT','2020-03-29 12:41:09'),(347,2,'KTSSR',200.00,NULL,'for SSR','2020-03-29 12:41:09'),(348,2,'SIT',12.00,NULL,'int test','2020-03-29 12:41:09'),(349,2,'UAT',23.00,NULL,'uat support','2020-03-29 12:41:09'),(350,2,'PERF',34.00,NULL,'perf','2020-03-29 12:41:09'),(351,2,'SEC',32.00,NULL,'sec test','2020-03-29 12:41:09'),(352,2,'ACC',12.00,NULL,'acc test','2020-03-29 12:41:09'),(353,2,'PRDAT',5.00,NULL,'prod act','2020-03-29 12:41:09'),(354,2,'POM',8.00,NULL,'pom ','2020-03-29 12:41:09'),(355,2,'TRVCO',200.00,NULL,'onsite visit','2020-03-29 12:41:09'),(361,2,'KTAPP',100.00,NULL,'for KT','2020-03-29 12:49:38'),(362,2,'KTSSR',200.00,NULL,'for SSR','2020-03-29 12:49:38'),(363,2,'SIT',12.00,NULL,'int test','2020-03-29 12:49:38'),(364,2,'UAT',23.00,NULL,'uat support','2020-03-29 12:49:38'),(365,2,'PERF',34.00,NULL,'perf','2020-03-29 12:49:38'),(366,2,'SEC',32.00,NULL,'sec test','2020-03-29 12:49:38'),(367,2,'ACC',12.00,NULL,'acc test','2020-03-29 12:49:38'),(368,2,'PRDAT',5.00,NULL,'prod act','2020-03-29 12:49:38'),(369,2,'POM',8.00,NULL,'pom ','2020-03-29 12:49:38'),(370,2,'TRVCO',200.00,NULL,'onsite visit','2020-03-29 12:49:38'),(376,10,'KTAPP',NULL,NULL,NULL,'2020-03-30 17:17:13'),(377,10,'KTSSR',NULL,NULL,NULL,'2020-03-30 17:17:13'),(378,10,'SIT',NULL,NULL,NULL,'2020-03-30 17:17:13'),(379,10,'UAT',NULL,NULL,NULL,'2020-03-30 17:17:13'),(380,10,'PERF',NULL,NULL,NULL,'2020-03-30 17:17:13'),(381,10,'SEC',NULL,NULL,NULL,'2020-03-30 17:17:13'),(382,10,'ACC',NULL,NULL,NULL,'2020-03-30 17:17:13'),(383,10,'PRDAT',NULL,NULL,NULL,'2020-03-30 17:17:13'),(384,10,'POM',NULL,NULL,NULL,'2020-03-30 17:17:13'),(385,10,'TRVCO',NULL,NULL,NULL,'2020-03-30 17:17:13'),(391,11,'KTAPP',NULL,NULL,NULL,'2020-03-30 17:17:48'),(392,11,'KTSSR',NULL,NULL,NULL,'2020-03-30 17:17:48'),(393,11,'SIT',NULL,NULL,NULL,'2020-03-30 17:17:48'),(394,11,'UAT',NULL,NULL,NULL,'2020-03-30 17:17:48'),(395,11,'PERF',NULL,NULL,NULL,'2020-03-30 17:17:48'),(396,11,'SEC',NULL,NULL,NULL,'2020-03-30 17:17:48'),(397,11,'ACC',NULL,NULL,NULL,'2020-03-30 17:17:48'),(398,11,'PRDAT',NULL,NULL,NULL,'2020-03-30 17:17:48'),(399,11,'POM',NULL,NULL,NULL,'2020-03-30 17:17:48'),(400,11,'TRVCO',NULL,NULL,NULL,'2020-03-30 17:17:48'),(406,11,'KTAPP',NULL,NULL,'None','2020-03-30 17:18:00'),(407,11,'KTSSR',NULL,NULL,'None','2020-03-30 17:18:00'),(408,11,'SIT',NULL,NULL,'None','2020-03-30 17:18:00'),(409,11,'UAT',NULL,NULL,'None','2020-03-30 17:18:00'),(410,11,'PERF',NULL,NULL,'None','2020-03-30 17:18:00'),(411,11,'SEC',NULL,NULL,'None','2020-03-30 17:18:00'),(412,11,'ACC',NULL,NULL,'None','2020-03-30 17:18:00'),(413,11,'PRDAT',NULL,NULL,'None','2020-03-30 17:18:00'),(414,11,'POM',NULL,NULL,'None','2020-03-30 17:18:00'),(415,11,'TRVCO',NULL,NULL,'None','2020-03-30 17:18:00'),(421,11,'KTAPP',NULL,NULL,'None','2020-03-30 17:18:59'),(422,11,'KTSSR',NULL,NULL,'None','2020-03-30 17:18:59'),(423,11,'SIT',NULL,NULL,'None','2020-03-30 17:18:59'),(424,11,'UAT',NULL,NULL,'None','2020-03-30 17:18:59'),(425,11,'PERF',NULL,NULL,'None','2020-03-30 17:18:59'),(426,11,'SEC',NULL,NULL,'None','2020-03-30 17:18:59'),(427,11,'ACC',NULL,NULL,'None','2020-03-30 17:18:59'),(428,11,'PRDAT',NULL,NULL,'None','2020-03-30 17:18:59'),(429,11,'POM',NULL,NULL,'None','2020-03-30 17:18:59'),(430,11,'TRVCO',NULL,NULL,'None','2020-03-30 17:18:59'),(436,11,'KTAPP',NULL,NULL,'None','2020-03-30 17:19:38'),(437,11,'KTSSR',NULL,NULL,'None','2020-03-30 17:19:38'),(438,11,'SIT',NULL,NULL,'None','2020-03-30 17:19:38'),(439,11,'UAT',NULL,NULL,'None','2020-03-30 17:19:38'),(440,11,'PERF',NULL,NULL,'None','2020-03-30 17:19:38'),(441,11,'SEC',NULL,NULL,'None','2020-03-30 17:19:38'),(442,11,'ACC',NULL,NULL,'None','2020-03-30 17:19:38'),(443,11,'PRDAT',NULL,NULL,'None','2020-03-30 17:19:38'),(444,11,'POM',NULL,NULL,'None','2020-03-30 17:19:38'),(445,11,'TRVCO',NULL,NULL,'None','2020-03-30 17:19:38'),(451,11,'KTAPP',NULL,NULL,'None','2020-03-30 19:14:14'),(452,11,'KTSSR',NULL,NULL,'None','2020-03-30 19:14:14'),(453,11,'SIT',NULL,NULL,'None','2020-03-30 19:14:14'),(454,11,'UAT',NULL,NULL,'None','2020-03-30 19:14:14'),(455,11,'PERF',NULL,NULL,'None','2020-03-30 19:14:14'),(456,11,'SEC',NULL,NULL,'None','2020-03-30 19:14:14'),(457,11,'ACC',NULL,NULL,'None','2020-03-30 19:14:14'),(458,11,'PRDAT',NULL,NULL,'None','2020-03-30 19:14:14'),(459,11,'POM',NULL,NULL,'None','2020-03-30 19:14:14'),(460,11,'TRVCO',NULL,NULL,'None','2020-03-30 19:14:14'),(466,12,'KTAPP',NULL,NULL,NULL,'2020-03-30 19:16:59'),(467,12,'KTSSR',NULL,NULL,NULL,'2020-03-30 19:16:59'),(468,12,'SIT',NULL,NULL,NULL,'2020-03-30 19:16:59'),(469,12,'UAT',NULL,NULL,NULL,'2020-03-30 19:16:59'),(470,12,'PERF',NULL,NULL,NULL,'2020-03-30 19:16:59'),(471,12,'SEC',NULL,NULL,NULL,'2020-03-30 19:16:59'),(472,12,'ACC',NULL,NULL,NULL,'2020-03-30 19:16:59'),(473,12,'PRDAT',NULL,NULL,NULL,'2020-03-30 19:16:59'),(474,12,'POM',NULL,NULL,NULL,'2020-03-30 19:16:59'),(475,12,'TRVCO',NULL,NULL,NULL,'2020-03-30 19:16:59');
/*!40000 ALTER TABLE `del_log_qagile_rfs_estimates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2020-03-07 04:20:56.368821'),(2,'auth','0001_initial','2020-03-07 04:20:56.503808'),(3,'admin','0001_initial','2020-03-07 04:20:56.837802'),(4,'admin','0002_logentry_remove_auto_add','2020-03-07 04:20:56.935179'),(5,'admin','0003_logentry_add_action_flag_choices','2020-03-07 04:20:56.950384'),(6,'contenttypes','0002_remove_content_type_name','2020-03-07 04:20:57.041999'),(7,'auth','0002_alter_permission_name_max_length','2020-03-07 04:20:57.094749'),(8,'auth','0003_alter_user_email_max_length','2020-03-07 04:20:57.143031'),(9,'auth','0004_alter_user_username_opts','2020-03-07 04:20:57.154104'),(10,'auth','0005_alter_user_last_login_null','2020-03-07 04:20:57.199974'),(11,'auth','0006_require_contenttypes_0002','2020-03-07 04:20:57.203642'),(12,'auth','0007_alter_validators_add_error_messages','2020-03-07 04:20:57.213419'),(13,'auth','0008_alter_user_username_max_length','2020-03-07 04:20:57.276343'),(14,'auth','0009_alter_user_last_name_max_length','2020-03-07 04:20:57.353040'),(15,'auth','0010_alter_group_name_max_length','2020-03-07 04:20:57.381979'),(16,'auth','0011_update_proxy_permissions','2020-03-07 04:20:57.401354'),(17,'sessions','0001_initial','2020-03-07 04:20:57.424470');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('dzib9d5qquboj3azykrkxx8xscyj26n1','MzAwYmNiM2U4YzIwZjc5ZDNmMTgzMTRmNmRjZDA3YWNkNTcwZjQ0YTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2ZTZkNjgzNGVmNjcxMDFjMWNjZjZiYmY3MWJhMWRiMDU1M2E2MzZkIn0=','2020-03-24 19:27:34.825959'),('h7qek6q1zbauigttj30hek8a1wushmvl','ZGZhZmU5MjNlNTVlNWRhYjI2ODBiNjFkMjIzNWJiZjYzZDM2NmY0YTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1MDE5YTcwMjc0ZTBjYzY1NmQ0N2ZlZTM4ZGRmYjc3YjhhOTRmYmYzIn0=','2020-03-22 01:58:14.368453');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

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
  KEY `fk_domain_person_pom_idx` (`pom`),
  CONSTRAINT `fk_domain_person_dl1` FOREIGN KEY (`domain_lead`) REFERENCES `qagile_person` (`vnid`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_domain_person_pom` FOREIGN KEY (`pom`) REFERENCES `qagile_person` (`vnid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qagile_domains`
--

LOCK TABLES `qagile_domains` WRITE;
/*!40000 ALTER TABLE `qagile_domains` DISABLE KEYS */;
INSERT INTO `qagile_domains` VALUES (1,'MDM','vn05672','vn03895','1242198'),(2,'BIDM-API','vn03895','vn05672','UPDATE1'),(3,'HR / Corp',NULL,NULL,NULL),(4,'Marketing',NULL,NULL,NULL),(5,'Shared Services',NULL,NULL,NULL),(6,'RX/Fule/Pharmacy',NULL,NULL,'1242198'),(7,'Finance',NULL,NULL,NULL);
/*!40000 ALTER TABLE `qagile_domains` ENABLE KEYS */;
UNLOCK TABLES;

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
  CONSTRAINT `fk_team_domain` FOREIGN KEY (`domain_id`) REFERENCES `qagile_domains` (`domain_id`),
  CONSTRAINT `fk_team_person` FOREIGN KEY (`vnid`) REFERENCES `qagile_person` (`vnid`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qagile_domains_team`
--

LOCK TABLES `qagile_domains_team` WRITE;
/*!40000 ALTER TABLE `qagile_domains_team` DISABLE KEYS */;
INSERT INTO `qagile_domains_team` VALUES (8,6,'1242198'),(9,2,'UPDATE1'),(10,1,'vn03616'),(14,3,'vn05979'),(15,1,'VN06804'),(16,1,'vn07098'),(17,1,'VN07325'),(18,5,'vn12345'),(23,1,'1242198'),(24,1,'VN03844'),(25,2,'VN03844'),(26,5,'VN03844'),(27,3,'vn04597'),(28,1,'vn05672'),(29,2,'VN05861'),(30,2,'VN06344'),(31,2,'vn03893'),(32,2,'vn03895');
/*!40000 ALTER TABLE `qagile_domains_team` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qagile_person`
--

DROP TABLE IF EXISTS `qagile_person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qagile_person` (
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
  `location_id` int DEFAULT NULL,
  PRIMARY KEY (`vnid`),
  KEY `fk_person_role_id_idx` (`role_id`),
  CONSTRAINT `fk_person_role_id` FOREIGN KEY (`role_id`) REFERENCES `qagile_person_role` (`role_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qagile_person`
--

LOCK TABLES `qagile_person` WRITE;
/*!40000 ALTER TABLE `qagile_person` DISABLE KEYS */;
INSERT INTO `qagile_person` VALUES ('1242198','Coonie','Koonts','Connie.koonts@delhaize.com',6,'Core',16,'+1-909-212-8786','2020-03-14 21:57:16',2,3),('FAKE1','Biju','Mathew','biju.mathew@ibm.com',NULL,'Flex',NULL,'Ę +1 267 223 9783','2020-03-07 19:56:26',NULL,NULL),('FAKE2','Dasaradha','RamuĘ','Dasaradha.Medha@ibm.com',NULL,'Flex',NULL,'Ę+1 704-293-4814','2020-03-07 19:56:26',NULL,NULL),('FAKE3','Orkhan','Salmanov','Orkhan.Salmanov@ibm.com',NULL,'Flex',NULL,'Ę+1 774-359-5516','2020-03-07 19:56:27',NULL,NULL),('FAKE4','Rupa','Elizabeth','Rupa.Elizabeth.Thomas@ibm.com',NULL,'Flex',NULL,'Ę+1-224-423-3323','2020-03-07 19:56:27',NULL,NULL),('FAKE5','Ronald','Weiner','ronald.weiner@ibm.com',NULL,'Flex',NULL,'Ę +1 248 875 3180','2020-03-07 19:56:27',NULL,NULL),('FAKE6','Surabhi','Praveen','Praveen.Kumar.Surabhi@ibm.com',NULL,'Flex',NULL,'Ę+1 630-767-9080','2020-03-07 19:56:27',NULL,NULL),('FAKE7','Akshay','R','Ę',NULL,'Core',NULL,'TBD','2020-03-07 19:56:27',NULL,NULL),('FAKE8','Avula','Sucharitha','asuchar1@in.ibm.com',NULL,'Core',NULL,'91-9490978771Ę','2020-03-07 19:56:27',NULL,NULL),('FAKE9','Saratchandra','Kadiveti','skadivet@in.ibm.com',NULL,'Core',NULL,'Not Known','2020-03-07 19:56:27',NULL,NULL),('UPDATE1','Tim','O Brien','',2,'',17,'','2020-03-14 22:04:05',2,NULL),('VN00022691','Kumar','Gampa​','Kumar.Gampa@ibm.com​',NULL,'Flex',NULL,NULL,'2020-03-07 20:05:43',NULL,NULL),('vn01382','Yamini','Manikantudu','Yamini.Manikantudu.Pulamanthula@ibm.com',NULL,'Flex',NULL,'+1 551-587-2219','2020-03-07 19:56:27',NULL,NULL),('vn02185','Sumit','Ghosh','sughosh4@in.ibm.com',NULL,'Core',NULL,'91- 9836736652','2020-03-07 19:56:27',NULL,NULL),('vn03171','Tejas','Patki','tejpatki@in.ibm.com',NULL,'Flex',NULL,'1-704-499-7035','2020-03-07 19:56:27',NULL,NULL),('vn03615','Kallam','Nandini','kanandin@in.ibm.com',NULL,'Core',NULL,'91- 9704183346','2020-03-07 19:56:27',NULL,NULL),('vn03616','Jyotshna','D2','jyotshd6@in.ibm.com',1,'Core',14,'91- 8056977513','2020-03-07 19:56:27',7,6),('vn03617','Vinay','Prasad','vinapras@in.ibm.com',NULL,'Core',NULL,'91- 8939723438','2020-03-07 19:56:27',NULL,NULL),('vn03619','Pobbireddy','Sameera','psameera@in.ibm.com',NULL,'Core',NULL,'91- 9916596445','2020-03-07 19:56:27',NULL,NULL),('VN03620','AyusmanaĘ','Samal','ayusamal@in.ibm.com',NULL,'Core',NULL,'91- 7760633389','2020-03-07 19:56:27',NULL,NULL),('vn03621','JineshĘ','Madappattu','jineshmpaul@in.ibm.com',NULL,'Flex',NULL,'Ę+1 603-930-1389','2020-03-07 19:56:26',NULL,NULL),('vn03623','Deepthi','Srinivas','deepsrin@in.ibm.com',NULL,'Core',NULL,'91- 9686849494','2020-03-07 19:56:27',NULL,NULL),('vn03624','VijayĘ','Kumar','vijdkuma@in.ibm.com',NULL,'Core',NULL,'Ę+1 781-267-3567Ę','2020-03-07 19:56:27',NULL,NULL),('vn03625','Vineetha','SrikireddyĘĘĘĘĘĘ','vinees99@in.ibm.com',NULL,'Core',NULL,'91- 7829897807','2020-03-07 19:56:27',NULL,NULL),('vn03626','Koushar','ShaikĘĘĘĘĘĘĘĘĘĘĘĘ','koushaik@in.ibm.com',NULL,'Core',NULL,'+1 740-490-1883','2020-03-07 19:56:26',NULL,NULL),('vn03627Ę','Venkatesh','Mahenthiran','vmahenth@in.ibm.com',NULL,'Core',NULL,'91- 9738716718','2020-03-07 19:56:27',NULL,NULL),('vn03629','Shamshad','Alam','shamshad.alam@in.ibm.com',NULL,'Core',NULL,'91- 7022064141','2020-03-07 19:56:27',NULL,NULL),('VN03631','Theresa','Jackson','tajackson@us.ibm.com',NULL,'Core',NULL,'+1 901-485-8585','2020-03-07 19:56:27',NULL,NULL),('vn03638','Sudha','Suman','sudhasuman@in.ibm.com',NULL,'Core',NULL,'91- 9886680250','2020-03-07 19:56:27',NULL,NULL),('vn03640','Madhusudan','Rampa','madrampa@in.ibm.com',NULL,'Core',NULL,'91- 9632211447','2020-03-07 19:56:27',NULL,NULL),('vn03648','Gorripati','SrijaĘĘ','gsrija99@in.ibm.com',NULL,'Core',NULL,'91- 9606632052','2020-03-07 19:56:27',NULL,NULL),('VN03665','Gowrishankar','Kalepalli','gkalepal@in.ibm.com',NULL,'Core',NULL,'+1 330-242-8966Ę','2020-03-07 19:56:26',NULL,NULL),('VN03674','Vivek','Sharma','vivek.sharmaz@in.ibm.com',NULL,'Flex',15,'+1 646-575-7583','2020-03-07 19:56:27',1,3),('vn03676','Shaakir','Khan','shaakir.ashraf@in.ibm.com',NULL,'Flex',NULL,'+1 781-971-9477Ę','2020-03-07 19:56:27',NULL,NULL),('vn03677Ę','Ambedkar','Prattipati','ambedkar.p@in.ibm.com',NULL,'Core',NULL,'+1 646-322-1758Ę','2020-03-07 19:56:26',NULL,NULL),('vn03679','Nilu','Kakkad','nilu.kakkad@in.ibm.com',NULL,'Core',NULL,'+1 508-904-5155','2020-03-07 19:56:27',NULL,NULL),('vn03680','Anil','Madhava','animadha@in.ibm.com',NULL,'Core',NULL,'+1 774-297-8227Ę','2020-03-07 19:56:26',NULL,NULL),('vn03694','K','PurushothamĘ','pumurthy@in.ibm.com',NULL,'Core',NULL,'+1 302-803-9164','2020-03-07 19:56:26',NULL,NULL),('vn03709','Sankara','RanganadhĘĘĘĘĘĘĘĘ','sankaran@in.ibm.com',NULL,'Core',NULL,'91- 9886500726','2020-03-07 19:56:27',NULL,NULL),('VN03710','Raksha','ShrivastavaĘĘĘĘĘĘĘ','Raksha Shrivastava@in.ibm.com',NULL,'Core',NULL,'+1 469-586-9098Ę','2020-03-07 19:56:27',NULL,NULL),('VN03844','Ajith','Nair2','ajithnair@in.ibm.com',NULL,'Core',NULL,'91- 9846968244','2020-03-07 19:56:27',NULL,NULL),('vn03893','Harish','Kumar','hkokkira@in.ibm.com',NULL,'Core',14,'91- 9444309871','2020-03-07 19:56:27',3,6),('VN03894','Shweta','Prasad','shwetapr@in.ibm.com',NULL,'Core',NULL,'+1 216-712-5032','2020-03-07 19:56:27',NULL,NULL),('vn03895','Avineet','Gupta','avineet.gupta@in.ibm.com',2,'Flex',16,'+1 614-787-0966Ę','2020-03-07 19:56:26',1,NULL),('vn03918','Chandrashekar','Ranganathan','crangana@in.ibm.com',NULL,'Core',NULL,'+1 980-777-5278','2020-03-07 19:56:26',NULL,NULL),('vn03923','Kumudavalli','Nallaballe','knallaba@in.ibm.com',NULL,'Core',NULL,'91- 7760265905','2020-03-07 19:56:27',NULL,NULL),('vn04097','Sivaram','Dhulipala','Sivarama.Krishna.Dhulipala@ibm.com',NULL,'Flex',NULL,'+1 781-547-9030','2020-03-07 19:56:27',NULL,NULL),('vn04130','Praveen','Mani','pravmani@in.ibm.com',NULL,'Core',NULL,'+1 848-246-9708','2020-03-07 19:56:27',NULL,NULL),('vn04186','Yaswanth','J','yjeevana@in.ibm.com',NULL,'Core',NULL,'91- 9790830445','2020-03-07 19:56:27',NULL,NULL),('vn04215','Sharma,','Prashant','sharma.prashant@in.ibm.com',NULL,'Flex',NULL,'91- 7796893354','2020-03-07 19:56:27',NULL,NULL),('vn04282','Riddhiman','De','riddhide@in.ibm.com',NULL,'Core',NULL,'91- 8981655631','2020-03-07 19:56:27',NULL,NULL),('vn04304','Kumaresh','ViswanathanĘĘĘ','kuviswan@in.ibm.com',NULL,'Core',NULL,'91- 7339478787','2020-03-07 19:56:27',NULL,NULL),('vn04362','Anbalagan','Thavasi','athavasi@in.ibm.com',NULL,'Core',NULL,'91- 9916080564','2020-03-07 19:56:27',NULL,NULL),('vn04379','Dyllan','Rafail','dyllanrafail@ibm.com',NULL,'Core',NULL,'+1 734-276-8933Ę','2020-03-07 19:56:26',NULL,NULL),('vn04536Ę','Varun','Samidurai','vsamidu@us.ibm.com',NULL,'Core',NULL,'+1 517-489-5430Ę','2020-03-07 19:56:27',NULL,NULL),('vn04596','Rajasekaran','Periasamy','raperias@in.ibm.com',NULL,'Core',NULL,'+1 469-386-0871Ę','2020-03-07 19:56:27',NULL,NULL),('vn04597','Abdul','Pamidi','Abdul@ibm.com',3,'Flex',17,'91- 9347018033','2020-03-07 19:56:27',NULL,NULL),('vn04771','Ramesh','Rajanala','rarajana@in.ibm.com',NULL,'Core',NULL,'91- 9880525500','2020-03-07 19:56:27',NULL,NULL),('vn04789','Willetta','Ar-Rahmaan','willetta@us.ibm.com',NULL,'Flex',NULL,'+1 720-396-1407Ę','2020-03-07 19:56:27',NULL,NULL),('vn04845','Justin','Lal','juvijaya@in.ibm.com',NULL,'Flex',NULL,'+1 864-326-7782','2020-03-07 19:56:26',NULL,NULL),('vn04864','Pallavi','Pothuru','ppothu11@in.ibm.com',NULL,'Core',NULL,'91-9490296764','2020-03-07 19:56:27',NULL,NULL),('vn05313','Bharat','Kandale','Bharat.Kandale@ibm.com',NULL,'Flex',NULL,'+1 917-771-6718','2020-03-07 19:56:26',NULL,NULL),('vn05438','Sreeman','Kancherla','sreeman@us.ibm.com',NULL,'Core',NULL,'+1 704-293-4814Ę','2020-03-07 19:56:27',NULL,NULL),('vn05672','Tushar','Saxena','tushar.saxena@in.ibm.com',1,'Flex',16,'+1 318-680-1012','2020-03-07 19:56:27',1,3),('vn05856','Lakshmanan','Durairajan','lduraira@in.ibm.com',NULL,'Flex',NULL,'+1 469-648-8568','2020-03-07 19:56:27',NULL,NULL),('vn05858','Srinivas','Thatiparthi','srinivasthatiparthi@in.ibm.com',NULL,'Core',NULL,'+1 762-217-3208','2020-03-07 19:56:27',NULL,NULL),('VN05861','Sudhakar','Ambati','sudambat@in.ibm.com',NULL,'Core',14,'+1 479-657-0119','2020-03-07 19:56:27',7,3),('vn05918','Majid','Shahani','Majid.Hussain.Shahani@ibm.com',NULL,'Core',NULL,'+1 304-731-5390','2020-03-07 19:56:27',NULL,NULL),('VN05972','Charles','Aron','chararon@in.ibm.com',NULL,'Core',NULL,'91- 9663376076','2020-03-07 19:56:27',NULL,NULL),('vn05979','Divya','Sharma','divya.sharma@in.ibm.com',3,'Flex',NULL,'+1 405-397-0181Ę','2020-03-07 19:56:26',1,NULL),('vn06003','Ramkumar','S','ramkus88@in.ibm.com',NULL,'Core',NULL,'91- 9095650906','2020-03-07 19:56:27',NULL,NULL),('vn06032','Radha','Ganti','radganti@in.ibm.com',NULL,'Flex',NULL,'+1 980-622-2822','2020-03-07 19:56:27',NULL,NULL),('vn06093','Namita','Singh','singhn29@in.ibm.com',NULL,'Core',NULL,'91- 7899092437','2020-03-07 19:56:27',NULL,NULL),('vn06098','Nihar','Samantray','nsamntra@in.ibm.com',NULL,'Core',NULL,'91- 9535077990','2020-03-07 19:56:27',NULL,NULL),('vn06179','Steven','Andrew','Steven.Andrew.Toth@ibm.com',NULL,'Flex',NULL,'+1 630-338-7352','2020-03-07 19:56:27',NULL,NULL),('vn06213','Banasree','Maji','banamaji@in.ibm.com',NULL,'Core',NULL,'+1 984-218-5997','2020-03-07 19:56:26',NULL,NULL),('vn06302','Kondamudi','Siva','knagapra@in.ibm.com',NULL,'Core',NULL,'91- 8712130492','2020-03-07 19:56:27',NULL,NULL),('VN06309','Divakar','D','divakads@in.ibm.com',NULL,'Core',NULL,'91- 9620058734','2020-03-07 19:56:27',NULL,NULL),('vn06312','Shyju','D','shyjud99@in.ibm.com',NULL,'Core',NULL,'91- 8971178757','2020-03-07 19:56:27',NULL,NULL),('VN06344','Mukesh','Mishra','Mukesh.Kumar.Mishra@ibm.com',NULL,'Core',14,'+1 980-365-1239','2020-03-07 19:56:27',3,3),('vn06345','Vidur','Kukreja','Vidur.Kukreja@ibm.com',NULL,'Core',NULL,'Ę+1-980-565-9243','2020-03-07 19:56:27',NULL,NULL),('vn06351','Kiran','Bhardawaj','kiranrb10@in.ibm.com',NULL,'Core',NULL,'91- 9886003007','2020-03-07 19:56:27',NULL,NULL),('VN06429','Shikha','','shikhr99@in.ibm.com',NULL,'Core',NULL,'+917087781438Ę','2020-03-07 19:56:27',NULL,NULL),('vn06448','Shiva','Muriki','Shiva.Kumar.Muriki1@ibm.com',NULL,'Core',NULL,'+1 408-387-9865Ę','2020-03-07 19:56:27',NULL,NULL),('vn06467','Satya','Swaroop','Satya.Suram@delhaize.com',NULL,'Flex',NULL,'Ę+1 336-566-8725Ę','2020-03-07 19:56:27',NULL,NULL),('VN06489','Rajanikanth','Raghuraman','raraghur@in.ibm.com',NULL,'Core',NULL,'91- 9972788114','2020-03-07 19:56:27',NULL,NULL),('VN06491','Thirumala,','Vamsi','vamsimohan.t@in.ibm.com',NULL,'Flex',NULL,'Ę+1 814-779-6927','2020-03-07 19:56:27',NULL,NULL),('VN06492','Busspalli,','Ashok','aashok.kumar@in.ibm.com',NULL,'Core',NULL,'Ę+1 732-715-7148','2020-03-07 19:56:26',NULL,NULL),('vn06493','Rakshith','ShravanahallyĘ','rakshith.v@in.ibm.com',NULL,'Core',NULL,'91- 7411193501','2020-03-07 19:56:27',NULL,NULL),('vn06507','Zakkiya','Sultana','zasulta1@in.ibm.com',NULL,'Core',NULL,'91- 7760265905','2020-03-07 19:56:27',NULL,NULL),('vn06509','Koushik','Barman','kbarman@us.ibm.com',NULL,'Flex',NULL,'+1 704-604- 0788','2020-03-07 19:56:26',NULL,NULL),('vn06533','Preetham','Malo','Preetham.Maloday.Prakash@ibm.com',NULL,'Core',NULL,'Ę+1 980-217-1709','2020-03-07 19:56:27',NULL,NULL),('VN06651','Suresh','Kuriti','suresh.kuriti@in.ibm.com',NULL,'Flex',NULL,'Ę +1 919-949-4681','2020-03-07 19:56:27',NULL,NULL),('vn06670','Venkat','Kota','venkata.kota@in.ibm.com',NULL,'Flex',16,'+1-470-261-1316','2020-03-07 19:56:27',1,3),('vn06671','Maass,','Werner','wkmaass@us.ibm.com',NULL,'Flex',NULL,'Ę+1 704-490-3354','2020-03-07 19:56:27',NULL,NULL),('vn06684','Udaya','Naru','udaynaru@in.ibm.com',NULL,'Flex',NULL,'Ę+1 984-238-6465','2020-03-07 19:56:27',NULL,NULL),('vn06751','Mavuri,','Hemanth','hemavuri@in.ibm.com',NULL,'Flex',NULL,'Ę+1 966-604-2425','2020-03-07 19:56:27',NULL,NULL),('vn06754','Hima','Bindu','hbindu88@in.ibm.com',NULL,'Core',NULL,'91- 7483611744','2020-03-07 19:56:27',NULL,NULL),('vn06755','Ramamurthy','RadhakrishnanĘ','ramaradh@in.ibm.com',NULL,'Core',NULL,'91- 9880016712','2020-03-07 19:56:27',NULL,NULL),('vn06756','Mahesh','K','mahesk99@in.ibm.com',NULL,'Core',NULL,'91- 8317379303','2020-03-07 19:56:27',NULL,NULL),('vn06757','Sowjanya','Sripurapu','sosiripu@in.ibm.com',NULL,'Core',NULL,'91- 9742357247','2020-03-07 19:56:27',NULL,NULL),('vn06782','Prahanth','Nagaraj','prashanth.nagaraj@in.ibm.com',NULL,'Core',NULL,'Ę+1 614-715-0025','2020-03-07 19:56:27',NULL,NULL),('Vn06783','Ashok','kumar','ashokk13@in.ibm.com',NULL,'Core',NULL,'91- 9885371407','2020-03-07 19:56:27',NULL,NULL),('VN06804','Naveen','Kapu','navekapu@in.ibm.com',1,'Core',14,'1 469-982-3428','2020-03-07 19:56:27',3,3),('vn06823','Maneesh','Sanjeevan','maneesh.s@in.ibm.com',NULL,'Core',NULL,'91- 9886202706','2020-03-07 19:56:27',NULL,NULL),('vn06880','Mukesh','Agaram','mukesa88@in.ibm.com',NULL,'Core',NULL,'91- 7676490638','2020-03-07 19:56:27',NULL,NULL),('vn07086','Kevin','Hayes','Kevin.Hayes@ibm.com',NULL,'Flex',NULL,'Ę+1 704-575-2457','2020-03-07 19:56:26',NULL,NULL),('VN07089','Dayakar','Dharmareddy','Dayakar.Dharmareddy@ibm.com',NULL,'Flex',NULL,'Ę+1 682-414-5018Ę','2020-03-07 19:56:26',NULL,NULL),('vn07097','Satish','Patil','satishssp@in.ibm.com',NULL,'Core',NULL,'91-9945072127','2020-03-07 19:56:27',NULL,NULL),('vn07098','Kavitha','Stephen','kstephen@in.ibm.com',1,'Core',14,'91-9845808382','2020-03-07 19:56:27',7,6),('vn07099','Gollapalli','Sukesh','sgollapa@in.ibm.com',NULL,'Core',NULL,'91--9731443579','2020-03-07 19:56:27',NULL,NULL),('vn07128','Sujatha','Malleshappa','sumalles@in.ibm.com',NULL,'Core',NULL,'91-9886565466','2020-03-07 19:56:27',NULL,NULL),('VN07129','Pavan','Gowda','pgowda89@in.ibm.com',NULL,'Core',NULL,'91-9538010070','2020-03-07 19:56:27',NULL,NULL),('vn07166','Frank','Diaz-Pezua','Frank.Diaz-Pezua@ibm.com',NULL,'Core',NULL,'Ę+1 734-800-5069','2020-03-07 19:56:26',NULL,NULL),('vn07198','Valleru','Pragna','vapragn1@in.ibm.com',NULL,'Core',NULL,'91-9030804985','2020-03-07 19:56:27',NULL,NULL),('vn07234','Vipin','Goel','vipigoel@in.ibm.com',NULL,'Flex',NULL,'Ę+1 850-631-0194','2020-03-07 19:56:27',NULL,NULL),('VN07295','Saatvik','Sharma','saasharm@in.ibm.com',NULL,'Core',NULL,'91-6396219545','2020-03-07 19:56:27',NULL,NULL),('VN07317','SreekanthĘ','kondapaneni','sreekkon@in.ibm.com',NULL,'Core',NULL,'91-8088681535','2020-03-07 19:56:27',NULL,NULL),('VN07325','Purnima','Chaudhari','purchaud@in.ibm.com',1,'Core',14,'91-8481958313','2020-03-07 19:56:27',3,6),('vn07402','Christopher','Bemke','cabemke@us.ibm.com',NULL,'Core',NULL,'Ę+1 517-897-5942Ę','2020-03-07 19:56:26',NULL,NULL),('vn07429','Preethi','S','preets23@in.ibm.com',NULL,'Core',NULL,'91-7022384705','2020-03-07 19:56:27',NULL,NULL),('vn07474','Vasu','Dhana','vasu.dhana@ibm.com',NULL,'Flex',NULL,'Ę+1 502 - 291-7581','2020-03-07 19:56:27',NULL,NULL),('vn07535','Kowser','ParvezĘ','Kowser.Parvez1@ibm.com',NULL,'Flex',NULL,'Ę+1 214-392-9034','2020-03-07 19:56:26',NULL,NULL),('VN07571','Nikhil','Sonkamble','nikhilr1@in.ibm.com',NULL,'Core',NULL,'91-8277056746','2020-03-07 19:56:27',NULL,NULL),('VN07633','Akhila','Vajinepalli','avajine1@in.ibm.com',NULL,'Core',NULL,'91-9032081906Ę','2020-03-07 19:56:27',NULL,NULL),('VN07634','Avtar','Singh','avtsing1@in.ibm.com',NULL,'Core',NULL,'91-9878204038','2020-03-07 19:56:27',NULL,NULL),('vn07694','Katrina','Artis','Katrina.Artis@ibm.com',NULL,'Core',NULL,'Ę','2020-03-07 19:56:26',NULL,NULL),('vn07723','Ali','Aljafar','ali.aljafar@ibm.com',NULL,'Flex',NULL,'Ę+1 615-973-5035','2020-03-07 19:56:26',2,NULL),('vn07736','Ponnusamy','Gopalakrishnan','gopalakrishnan@in.ibm.com',NULL,'Flex',NULL,'Ę+1 747 263 6177','2020-03-07 19:56:27',NULL,NULL),('vn07887','Vijaya','Lakkundi','lakkundi@us.ibm.com',NULL,'Flex',NULL,'Ę +1 248 875 3180','2020-03-07 19:56:27',NULL,NULL),('vn07969','Kunal','Rajwadi','kunal.rajwadi@ibm.com',NULL,'Flex',NULL,'Ę +1 973 517 1272','2020-03-07 19:56:27',NULL,NULL),('vn08068','Rajendra','Bafna','rrbafana@us.ibm.com',NULL,'Flex',NULL,'Ę','2020-03-07 19:56:27',NULL,NULL),('vn08160','Surjyendu','K','surbiswa@in.ibm.com',NULL,'Core',NULL,'Not Known','2020-03-07 19:56:27',NULL,NULL),('vn12345','Rahul','Dravid','rah@123.com',5,'Core',14,'1212121212','2020-03-14 21:51:46',3,2);
/*!40000 ALTER TABLE `qagile_person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qagile_person_location`
--

DROP TABLE IF EXISTS `qagile_person_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qagile_person_location` (
  `location_id` int NOT NULL AUTO_INCREMENT,
  `city` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `zip` varchar(45) DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL,
  `loc_code` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`location_id`),
  UNIQUE KEY `loc_code_UNIQUE` (`loc_code`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qagile_person_location`
--

LOCK TABLES `qagile_person_location` WRITE;
/*!40000 ALTER TABLE `qagile_person_location` DISABLE KEYS */;
INSERT INTO `qagile_person_location` VALUES (1,'Scarborough​',NULL,NULL,'USA','SCB'),(2,'Quincy​',NULL,NULL,'USA','QNCY'),(3,'Salisbury​',NULL,NULL,'USA','SALIS'),(4,'Greenville','NC','None','USA','CHI'),(5,'Onsite​',NULL,NULL,'USA','ONSHR'),(6,'Offshore',NULL,NULL,'IND','OFSHR');
/*!40000 ALTER TABLE `qagile_person_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qagile_person_rate`
--

DROP TABLE IF EXISTS `qagile_person_rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qagile_person_rate` (
  `rate_id` int NOT NULL AUTO_INCREMENT,
  `rate` decimal(5,2) NOT NULL,
  `category` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`rate_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qagile_person_rate`
--

LOCK TABLES `qagile_person_rate` WRITE;
/*!40000 ALTER TABLE `qagile_person_rate` DISABLE KEYS */;
INSERT INTO `qagile_person_rate` VALUES (14,50.00,'Core'),(15,41.00,'Flex1'),(16,85.00,'Flex2'),(17,75.00,'Flex3'),(18,110.00,'Flex4'),(19,0.00,'Custom1'),(20,65.00,'Custom2'),(21,0.00,'Custom3'),(22,0.00,'Custom4'),(23,124.76,'High');
/*!40000 ALTER TABLE `qagile_person_rate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qagile_person_role`
--

DROP TABLE IF EXISTS `qagile_person_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qagile_person_role` (
  `role_id` int NOT NULL AUTO_INCREMENT,
  `role` varchar(45) DEFAULT NULL,
  `role_code` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`role_id`),
  UNIQUE KEY `role_code_UNIQUE` (`role_code`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qagile_person_role`
--

LOCK TABLES `qagile_person_role` WRITE;
/*!40000 ALTER TABLE `qagile_person_role` DISABLE KEYS */;
INSERT INTO `qagile_person_role` VALUES (1,'Domain Lead','DL'),(2,'Portfolio Manager','POM'),(3,'Functional Tester','FUNT'),(4,'Performance Tester','PERFT'),(5,'Security Tester','SECT'),(6,'Account Manager','ACCTM'),(7,'Test Lead','TL'),(8,'Project Manager','PM'),(9,'Leadership','LS'),(10,'Domain Lead - Secondary','DLSEC'),(11,'TDM',NULL);
/*!40000 ALTER TABLE `qagile_person_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qagile_rfs_estimates`
--

DROP TABLE IF EXISTS `qagile_rfs_estimates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qagile_rfs_estimates` (
  `record_id` int NOT NULL AUTO_INCREMENT,
  `rfs_request_id` int DEFAULT NULL,
  `activity_code` varchar(5) DEFAULT NULL,
  `effort` decimal(5,2) DEFAULT NULL,
  `unit` varchar(45) DEFAULT NULL COMMENT 'Hours/days\n',
  `comment` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`record_id`),
  KEY `fk_rfs_estimate_rfs_activity_code_idx` (`activity_code`),
  CONSTRAINT `fk_rfs_estimate_rfs_activity_code` FOREIGN KEY (`activity_code`) REFERENCES `qagile_rfs_estimates_activity` (`activity_code`)
) ENGINE=InnoDB AUTO_INCREMENT=408 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qagile_rfs_estimates`
--

LOCK TABLES `qagile_rfs_estimates` WRITE;
/*!40000 ALTER TABLE `qagile_rfs_estimates` DISABLE KEYS */;
INSERT INTO `qagile_rfs_estimates` VALUES (248,2,'KTAPP',100.00,NULL,'for KT'),(249,2,'KTSSR',200.00,NULL,'for SSR'),(250,2,'SIT',12.00,NULL,'int test'),(251,2,'UAT',23.00,NULL,'uat support'),(252,2,'PERF',34.00,NULL,'perf'),(253,2,'SEC',32.00,NULL,'sec test'),(254,2,'ACC',12.00,NULL,'acc test'),(255,2,'PRDAT',5.00,NULL,'prod act'),(256,2,'POM',8.00,NULL,'pom '),(257,2,'TRVCO',200.00,NULL,'onsite visit'),(268,10,'KTAPP',NULL,NULL,'None'),(269,10,'KTSSR',NULL,NULL,'None'),(270,10,'SIT',NULL,NULL,'None'),(271,10,'UAT',NULL,NULL,'None'),(272,10,'PERF',NULL,NULL,'None'),(273,10,'SEC',NULL,NULL,'None'),(274,10,'ACC',NULL,NULL,'None'),(275,10,'PRDAT',NULL,NULL,'None'),(276,10,'POM',NULL,NULL,'None'),(277,10,'TRVCO',NULL,NULL,'None'),(328,11,'KTAPP',NULL,NULL,'None'),(329,11,'KTSSR',NULL,NULL,'None'),(330,11,'SIT',NULL,NULL,'None'),(331,11,'UAT',NULL,NULL,'None'),(332,11,'PERF',NULL,NULL,'None'),(333,11,'SEC',NULL,NULL,'None'),(334,11,'ACC',NULL,NULL,'None'),(335,11,'PRDAT',NULL,NULL,'None'),(336,11,'POM',NULL,NULL,'None'),(337,11,'TRVCO',NULL,NULL,'None'),(348,12,'KTAPP',NULL,NULL,'None'),(349,12,'KTSSR',NULL,NULL,'None'),(350,12,'SIT',NULL,NULL,'None'),(351,12,'UAT',NULL,NULL,'None'),(352,12,'PERF',NULL,NULL,'None'),(353,12,'SEC',NULL,NULL,'None'),(354,12,'ACC',NULL,NULL,'None'),(355,12,'PRDAT',NULL,NULL,'None'),(356,12,'POM',NULL,NULL,'None'),(357,12,'TRVCO',NULL,NULL,'None'),(358,13,'KTAPP',NULL,NULL,NULL),(359,13,'KTSSR',NULL,NULL,NULL),(360,13,'SIT',NULL,NULL,NULL),(361,13,'UAT',NULL,NULL,NULL),(362,13,'PERF',NULL,NULL,NULL),(363,13,'SEC',NULL,NULL,NULL),(364,13,'ACC',NULL,NULL,NULL),(365,13,'PRDAT',NULL,NULL,NULL),(366,13,'POM',NULL,NULL,NULL),(367,13,'TRVCO',NULL,NULL,NULL),(368,8,'KTAPP',NULL,NULL,NULL),(369,8,'KTSSR',NULL,NULL,NULL),(370,8,'SIT',NULL,NULL,NULL),(371,8,'UAT',NULL,NULL,NULL),(372,8,'PERF',NULL,NULL,NULL),(373,8,'SEC',NULL,NULL,NULL),(374,8,'ACC',NULL,NULL,NULL),(375,8,'PRDAT',NULL,NULL,NULL),(376,8,'POM',NULL,NULL,NULL),(377,8,'TRVCO',NULL,NULL,NULL),(378,1,'KTAPP',NULL,NULL,NULL),(379,1,'KTSSR',NULL,NULL,NULL),(380,1,'SIT',NULL,NULL,NULL),(381,1,'UAT',NULL,NULL,NULL),(382,1,'PERF',NULL,NULL,NULL),(383,1,'SEC',NULL,NULL,NULL),(384,1,'ACC',NULL,NULL,NULL),(385,1,'PRDAT',NULL,NULL,NULL),(386,1,'POM',NULL,NULL,NULL),(387,1,'TRVCO',NULL,NULL,NULL),(388,23,'KTAPP',NULL,NULL,NULL),(389,23,'KTSSR',NULL,NULL,NULL),(390,23,'SIT',NULL,NULL,NULL),(391,23,'UAT',NULL,NULL,NULL),(392,23,'PERF',NULL,NULL,NULL),(393,23,'SEC',NULL,NULL,NULL),(394,23,'ACC',NULL,NULL,NULL),(395,23,'PRDAT',NULL,NULL,NULL),(396,23,'POM',NULL,NULL,NULL),(397,23,'TRVCO',NULL,NULL,NULL),(398,28,'KTAPP',NULL,NULL,NULL),(399,28,'KTSSR',NULL,NULL,NULL),(400,28,'SIT',NULL,NULL,NULL),(401,28,'UAT',NULL,NULL,NULL),(402,28,'PERF',NULL,NULL,NULL),(403,28,'SEC',NULL,NULL,NULL),(404,28,'ACC',NULL,NULL,NULL),(405,28,'PRDAT',NULL,NULL,NULL),(406,28,'POM',NULL,NULL,NULL),(407,28,'TRVCO',NULL,NULL,NULL);
/*!40000 ALTER TABLE `qagile_rfs_estimates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qagile_rfs_estimates_activity`
--

DROP TABLE IF EXISTS `qagile_rfs_estimates_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qagile_rfs_estimates_activity` (
  `activity_id` int NOT NULL AUTO_INCREMENT,
  `activity_code` varchar(5) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`activity_id`),
  UNIQUE KEY `activity_code_UNIQUE` (`activity_code`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qagile_rfs_estimates_activity`
--

LOCK TABLES `qagile_rfs_estimates_activity` WRITE;
/*!40000 ALTER TABLE `qagile_rfs_estimates_activity` DISABLE KEYS */;
INSERT INTO `qagile_rfs_estimates_activity` VALUES (1,'KTAPP','Application Knowledge Transfer'),(2,'KTSSR','Perform Steady State Readiness Review'),(3,'SIT','Systems Integration Testing'),(4,'UAT','User Acceptance Testing'),(5,'PERF','Performance Testing'),(6,'SEC','Security Testing'),(7,'ACC','Accessibility Testing'),(8,'PRDAT','Production Acceptance Testing'),(9,'POM','QA Portfolio Manager Support'),(10,'TRVCO','Travel  to site Cost ( Approximately)');
/*!40000 ALTER TABLE `qagile_rfs_estimates_activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qagile_rfs_estimates_raci`
--

DROP TABLE IF EXISTS `qagile_rfs_estimates_raci`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qagile_rfs_estimates_raci` (
  `record_id` int NOT NULL AUTO_INCREMENT,
  `rfs_request_id` int DEFAULT NULL,
  `raci_code` varchar(5) DEFAULT NULL,
  `raci_scope` varchar(3) DEFAULT NULL COMMENT 'SIT or UAT',
  `p_or_q` varchar(1) DEFAULT NULL,
  `RACI` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`record_id`),
  KEY `fk_rfs_estimates_raci_id_idx` (`raci_code`),
  KEY `fk_estimates_raci_rfsid_idx` (`rfs_request_id`),
  CONSTRAINT `fk_estimates_raci_rfsid` FOREIGN KEY (`rfs_request_id`) REFERENCES `qagile_rfs_request` (`rfs_request_id`),
  CONSTRAINT `fk_rfs_estimates_raci_code` FOREIGN KEY (`raci_code`) REFERENCES `qagile_rfs_estimates_raci_codes` (`raci_code`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1217 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qagile_rfs_estimates_raci`
--

LOCK TABLES `qagile_rfs_estimates_raci` WRITE;
/*!40000 ALTER TABLE `qagile_rfs_estimates_raci` DISABLE KEYS */;
INSERT INTO `qagile_rfs_estimates_raci` VALUES (1145,2,'CCQC','SIT','P','R'),(1146,2,'CCQC','SIT','P','A'),(1147,2,'CCQC','SIT','P','C'),(1148,2,'CCQC','SIT','P','I'),(1149,2,'TPLPR','SIT','P','R'),(1150,2,'TPLPR','SIT','P','A'),(1151,2,'TPLPR','SIT','P','C'),(1152,2,'TPLPR','SIT','P','I'),(1153,2,'TC2QC','SIT','P','R'),(1154,2,'TC2QC','SIT','P','A'),(1155,2,'TC2QC','SIT','P','C'),(1156,2,'TC2QC','SIT','P','I'),(1157,2,'EXCTC','SIT','P','R'),(1158,2,'EXCTC','SIT','P','A'),(1159,2,'EXCTC','SIT','P','C'),(1160,2,'EXCTC','SIT','P','I'),(1161,2,'MNGQC','SIT','P','R'),(1162,2,'MNGQC','SIT','P','A'),(1163,2,'MNGQC','SIT','P','C'),(1164,2,'MNGQC','SIT','P','I'),(1165,2,'CDTER','SIT','P','R'),(1166,2,'CDTER','SIT','P','A'),(1167,2,'CDTER','SIT','P','C'),(1168,2,'CDTER','SIT','P','I'),(1169,2,'RDTC','SIT','P','R'),(1170,2,'RDTC','SIT','P','A'),(1171,2,'RDTC','SIT','P','C'),(1172,2,'RDTC','SIT','P','I'),(1173,2,'WTR','SIT','P','R'),(1174,2,'WTR','SIT','P','A'),(1175,2,'WTR','SIT','P','C'),(1176,2,'WTR','SIT','P','I'),(1177,2,'MXE2E','SIT','P','R'),(1178,2,'MXE2E','SIT','P','A'),(1179,2,'MXE2E','SIT','P','C'),(1180,2,'MXE2E','SIT','P','I'),(1181,2,'CCQC','UAT','Q','R'),(1182,2,'CCQC','UAT','Q','A'),(1183,2,'CCQC','UAT','Q','C'),(1184,2,'CCQC','UAT','Q','I'),(1185,2,'TPLPR','UAT','Q','R'),(1186,2,'TPLPR','UAT','Q','A'),(1187,2,'TPLPR','UAT','Q','C'),(1188,2,'TPLPR','UAT','Q','I'),(1189,2,'TC2QC','UAT','Q','R'),(1190,2,'TC2QC','UAT','Q','A'),(1191,2,'TC2QC','UAT','Q','C'),(1192,2,'TC2QC','UAT','Q','I'),(1193,2,'EXCTC','UAT','Q','R'),(1194,2,'EXCTC','UAT','Q','A'),(1195,2,'EXCTC','UAT','Q','C'),(1196,2,'EXCTC','UAT','Q','I'),(1197,2,'MNGQC','UAT','Q','R'),(1198,2,'MNGQC','UAT','Q','A'),(1199,2,'MNGQC','UAT','Q','C'),(1200,2,'MNGQC','UAT','Q','I'),(1201,2,'CDTER','UAT','Q','R'),(1202,2,'CDTER','UAT','Q','A'),(1203,2,'CDTER','UAT','Q','C'),(1204,2,'CDTER','UAT','Q','I'),(1205,2,'RDTC','UAT','Q','R'),(1206,2,'RDTC','UAT','Q','A'),(1207,2,'RDTC','UAT','Q','C'),(1208,2,'RDTC','UAT','Q','I'),(1209,2,'WTR','UAT','Q','R'),(1210,2,'WTR','UAT','Q','A'),(1211,2,'WTR','UAT','Q','C'),(1212,2,'WTR','UAT','Q','I'),(1213,2,'MXE2E','UAT','Q','R'),(1214,2,'MXE2E','UAT','Q','A'),(1215,2,'MXE2E','UAT','Q','C'),(1216,2,'MXE2E','UAT','Q','I');
/*!40000 ALTER TABLE `qagile_rfs_estimates_raci` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qagile_rfs_estimates_raci_codes`
--

DROP TABLE IF EXISTS `qagile_rfs_estimates_raci_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qagile_rfs_estimates_raci_codes` (
  `raci_id` int NOT NULL AUTO_INCREMENT,
  `raci_code` varchar(5) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  `sequence` int DEFAULT NULL,
  PRIMARY KEY (`raci_id`),
  UNIQUE KEY `raci_code_UNIQUE` (`raci_code`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qagile_rfs_estimates_raci_codes`
--

LOCK TABLES `qagile_rfs_estimates_raci_codes` WRITE;
/*!40000 ALTER TABLE `qagile_rfs_estimates_raci_codes` DISABLE KEYS */;
INSERT INTO `qagile_rfs_estimates_raci_codes` VALUES (1,'CCQC','Create and Configure QC Projects',1),(2,'TPLPR','Test Plan and Test Preparation',2),(3,'TC2QC','Upload TC\'s to QC, Setup Lab',3),(4,'EXCTC','Execute TCs and Record Results in QC',4),(5,'MNGQC','Create / Manage Defects in QC',5),(6,'CDTER','Create Daily Test Execution Report',6),(7,'RDTC','Run Daily Test Call',7),(8,'WTR','Weekly Test Reporting',8),(9,'MXE2E','Manage and Coordinate x-team / E2E testing',9);
/*!40000 ALTER TABLE `qagile_rfs_estimates_raci_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qagile_rfs_estimates_raci_head`
--

DROP TABLE IF EXISTS `qagile_rfs_estimates_raci_head`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qagile_rfs_estimates_raci_head` (
  `recordid` int NOT NULL AUTO_INCREMENT,
  `rfs_request_Id` int DEFAULT NULL,
  `SITRole` varchar(45) DEFAULT NULL,
  `SITScope` mediumtext,
  `UATRole` varchar(45) DEFAULT NULL,
  `UATScope` mediumtext,
  `total_qa_comments` mediumtext,
  PRIMARY KEY (`recordid`),
  KEY `fk_estimate_head_rfs_id_idx` (`rfs_request_Id`),
  CONSTRAINT `fk_estimate_head_rfs_id` FOREIGN KEY (`rfs_request_Id`) REFERENCES `qagile_rfs_request` (`rfs_request_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qagile_rfs_estimates_raci_head`
--

LOCK TABLES `qagile_rfs_estimates_raci_head` WRITE;
/*!40000 ALTER TABLE `qagile_rfs_estimates_raci_head` DISABLE KEYS */;
INSERT INTO `qagile_rfs_estimates_raci_head` VALUES (25,2,'QA CoE lead - Full Scope','full sit scope','QA CoE Support','just supporting uat','this is total qa cost'),(27,10,NULL,NULL,NULL,NULL,NULL),(33,11,NULL,NULL,NULL,NULL,NULL),(35,12,NULL,NULL,NULL,NULL,NULL),(36,13,NULL,NULL,NULL,NULL,NULL),(37,8,NULL,NULL,NULL,NULL,NULL),(38,1,NULL,NULL,NULL,NULL,NULL),(39,23,NULL,NULL,NULL,NULL,NULL),(40,28,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `qagile_rfs_estimates_raci_head` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qagile_rfs_milestones`
--

DROP TABLE IF EXISTS `qagile_rfs_milestones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qagile_rfs_milestones` (
  `rfs_id` int NOT NULL,
  `sit_plan_start` datetime DEFAULT NULL,
  `sit_plan_end` datetime DEFAULT NULL,
  `sit_exec_start` datetime DEFAULT NULL,
  `sit_exec_end` datetime DEFAULT NULL,
  `uat_plam_start` datetime DEFAULT NULL,
  `uat_plan_end` datetime DEFAULT NULL,
  `deploy_start` datetime DEFAULT NULL,
  `deploy_end` datetime DEFAULT NULL,
  PRIMARY KEY (`rfs_id`),
  CONSTRAINT `fk_rfs_milestone_rfs_id` FOREIGN KEY (`rfs_id`) REFERENCES `qagile_rfs_rfs` (`rfs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qagile_rfs_milestones`
--

LOCK TABLES `qagile_rfs_milestones` WRITE;
/*!40000 ALTER TABLE `qagile_rfs_milestones` DISABLE KEYS */;
/*!40000 ALTER TABLE `qagile_rfs_milestones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qagile_rfs_request`
--

DROP TABLE IF EXISTS `qagile_rfs_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qagile_rfs_request` (
  `rfs_request_id` int NOT NULL AUTO_INCREMENT,
  `created` datetime DEFAULT CURRENT_TIMESTAMP,
  `domain_id` int DEFAULT NULL,
  `last_updated` datetime DEFAULT NULL,
  `last_updated_by` varchar(45) DEFAULT NULL,
  `current_project_status` varchar(45) DEFAULT NULL,
  `qa_spoc` varchar(10) DEFAULT NULL COMMENT 'Fk from team',
  `kickoff_date` datetime DEFAULT NULL,
  `repository` mediumtext,
  `repository_access` varchar(1) DEFAULT NULL,
  `alm_jira_link` mediumtext,
  `project_id` varchar(15) DEFAULT NULL COMMENT 'PPM ID',
  `project_name` varchar(45) DEFAULT NULL,
  `category` varchar(10) DEFAULT NULL COMMENT 'Capital/expence',
  `requester_name` varchar(45) DEFAULT NULL,
  `requester_email` varchar(200) DEFAULT NULL,
  `requester_role` varchar(45) DEFAULT NULL,
  `pm` varchar(45) DEFAULT NULL COMMENT 'Project manager',
  `PoM` varchar(10) DEFAULT NULL COMMENT 'QA port manager',
  `dir_it` varchar(45) DEFAULT NULL,
  `project_poc` varchar(45) DEFAULT NULL,
  `project_type` varchar(15) DEFAULT NULL COMMENT 'Project, am&s, prod issue',
  `project_size` varchar(1) DEFAULT NULL,
  `tentative_prep_start` datetime DEFAULT NULL,
  `tentative_prep_end` datetime DEFAULT NULL,
  `tentative_plan_start` datetime DEFAULT NULL,
  `tentative_plan_end` datetime DEFAULT NULL,
  `tentative_exec_start` datetime DEFAULT NULL,
  `tentative_exec_end` datetime DEFAULT NULL,
  `tentative_close_start` datetime DEFAULT NULL,
  `tentative_close_emd` datetime DEFAULT NULL,
  `project_description` mediumtext,
  `qa_coe_lead` varchar(10) DEFAULT NULL,
  `confidential` varchar(1) DEFAULT NULL,
  `confidential_alt_name` varchar(45) DEFAULT NULL,
  `confidential_doc_share_method` varchar(45) DEFAULT NULL,
  `pii_bsi` varchar(1) DEFAULT NULL,
  `pii_bsi_description` mediumtext,
  `scope_remote` varchar(1) DEFAULT NULL,
  `scope_ticket_num` varchar(45) DEFAULT NULL COMMENT 'Production Ticket / Service Now/Change Ticket Number ( If in scope)',
  `rfs_status` varchar(45) DEFAULT 'NEW',
  PRIMARY KEY (`rfs_request_id`),
  KEY `fk_rfs_request_domain_idx` (`domain_id`),
  KEY `fk_rfs_request_person_spoc_idx` (`qa_spoc`),
  KEY `fk_rfs_request_person_pom_idx` (`PoM`),
  KEY `fk_rfs_request_person_qa_lead_idx` (`qa_coe_lead`),
  CONSTRAINT `fk_rfs_request_domain` FOREIGN KEY (`domain_id`) REFERENCES `qagile_domains` (`domain_id`),
  CONSTRAINT `fk_rfs_request_person_pom` FOREIGN KEY (`PoM`) REFERENCES `qagile_person` (`vnid`),
  CONSTRAINT `fk_rfs_request_person_qa_lead` FOREIGN KEY (`qa_coe_lead`) REFERENCES `qagile_person` (`vnid`),
  CONSTRAINT `fk_rfs_request_person_spoc` FOREIGN KEY (`qa_spoc`) REFERENCES `qagile_person` (`vnid`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qagile_rfs_request`
--

LOCK TABLES `qagile_rfs_request` WRITE;
/*!40000 ALTER TABLE `qagile_rfs_request` DISABLE KEYS */;
INSERT INTO `qagile_rfs_request` VALUES (1,'2020-03-17 18:48:35',NULL,'2020-03-21 11:59:06',NULL,NULL,NULL,NULL,'None',NULL,'None','None','None',NULL,'None','None','None','None',NULL,'None','None',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'None',NULL,NULL,'None','None',NULL,'None',NULL,'None','NULL'),(2,'2020-03-18 18:58:20',NULL,'2020-03-21 18:10:06',NULL,NULL,NULL,NULL,'None',NULL,'None','test4','test2',NULL,'test3','test4','None','None',NULL,'None','None',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'None',NULL,NULL,'None','None',NULL,'None',NULL,'None','NULL'),(4,'2020-03-20 14:04:12',NULL,'2020-03-21 11:57:22',NULL,NULL,NULL,'2020-03-02 00:00:00','http://asasas.sasa.asasa','N','http://hp.alm.jira','PPM123','SPD','Capital','Beth ABC','beth@rbs.com','PMO','Beth ABC',NULL,'Dennise G','Ron Paro','Project','C','2020-03-02 00:00:00','2020-03-06 00:00:00','2020-03-09 00:00:00','2020-03-13 00:00:00','2020-03-16 00:00:00','2020-03-20 00:00:00','2020-03-22 00:00:00',NULL,'awesome project','vn05672','Y','Falcon','Sharepoint','Y','Customer Info','N','None','NEW'),(5,'2020-03-20 14:12:45',NULL,'2020-03-21 11:57:35',NULL,NULL,NULL,'2020-03-02 00:00:00','http://asasas.sasa.asasa','N','http://hp.alm.jira','PPM123','SPD','Capital','Beth ABC','beth@rbs.com','PMO','Beth ABC',NULL,'Dennise G','Ron Paro','Project','C','2020-03-02 00:00:00','2020-03-06 00:00:00','2020-03-09 00:00:00','2020-03-13 00:00:00','2020-03-16 00:00:00','2020-03-20 00:00:00','2020-03-22 00:00:00',NULL,'awesome project','vn05672','Y','Falcon','Sharepoint','Y','Customer Info','N','None','NEW'),(6,'2020-03-20 14:17:27',NULL,'2020-03-21 11:58:55',NULL,NULL,NULL,'2020-03-02 00:00:00','http://asasas.sasa.asasa','N','http://hp.alm.jira','PPM123','SPD','Capital','Beth ABC','beth@rbs.com','PMO','Beth ABC',NULL,'Dennise G','Ron Paro','Project','C','2020-03-02 00:00:00','2020-03-06 00:00:00','2020-03-09 00:00:00','2020-03-13 00:00:00','2020-03-16 00:00:00','2020-03-20 00:00:00','2020-03-22 00:00:00',NULL,'awesome project','vn05672','Y','Falcon','Sharepoint','Y','Customer Info','N','None','NEW'),(7,'2020-03-20 14:18:31',NULL,'2020-03-21 11:54:38',NULL,NULL,NULL,'2020-03-02 00:00:00','http://asasas.sasa.asasa','N','http://hp.alm.jira','PPM123','SPD23','Capital','Beth ABC','beth@rbs.com','PMO','Beth ABC',NULL,'Dennise G','Ron Paro','Project','C','2020-03-02 00:00:00','2020-03-06 00:00:00','2020-03-09 00:00:00','2020-03-13 00:00:00','2020-03-16 00:00:00','2020-03-20 00:00:00','2020-03-22 00:00:00',NULL,'awesome project','vn05672','Y','Falcon','Sharepoint','Y','Customer Info','N','None','NEW'),(8,'2020-03-20 16:36:50',NULL,'2020-03-30 19:23:20',NULL,NULL,NULL,NULL,'None',NULL,'None','None','None',NULL,'None','None','None','None',NULL,'None','None',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'None',NULL,NULL,'None','None',NULL,'None',NULL,'None','NULL'),(9,'2020-03-20 21:02:07',NULL,'2020-03-29 15:55:51',NULL,'Planning Phase',NULL,'2020-02-01 00:00:00','https://jira.retailbusinessservices.com/secure/RapidBoard.jspa?rapidView=365&view=detail&selectedIssue=MDMCUS-2928','Y','https://confluence.retailbusinessservices.com/display/MDMCUS/MDM-Customer','IM131234','CMDM RBS','Capital','Anne Molly','anne.malloy@delhaize.com','Project Manager','Anne Molly','1242198','Dennise G','Trinity P','Project','B','2020-01-01 00:00:00','2020-02-01 00:00:00','2020-02-02 00:00:00','2020-03-01 00:00:00','2020-03-02 00:00:00','2020-08-01 00:00:00','2020-08-02 00:00:00',NULL,'Implement RBS wide CMDM ','vn05672','Y','CERES','Sharepoint confluence','Y','Core Customer Information','Y','None','NEW'),(10,'2020-03-21 17:45:49',NULL,'2020-03-30 19:13:54',NULL,NULL,NULL,NULL,'None',NULL,'None','test1','test2',NULL,'test3','test4','None','None',NULL,'None','None',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'None',NULL,NULL,'None','None',NULL,'None',NULL,'None','APPROVED'),(11,'2020-03-21 17:46:12',NULL,'2020-03-30 17:17:54',NULL,NULL,NULL,NULL,'None',NULL,'None','test2','test2',NULL,'test3','test4','None','None',NULL,'None','None',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'None',NULL,NULL,'None','None',NULL,'None',NULL,'None','NULL'),(12,'2020-03-21 17:46:22',NULL,'2020-03-30 19:18:34',NULL,NULL,NULL,NULL,'None',NULL,'None','test3','test2',NULL,'test3','test4','None','None',NULL,'None','None',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'None',NULL,NULL,'None','None',NULL,'None',NULL,'None','NULL'),(13,'2020-03-21 17:47:28',NULL,NULL,NULL,NULL,NULL,NULL,'None',NULL,'None','test1','test2',NULL,'test3','test4','None','None',NULL,'None','None',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'None',NULL,NULL,'None','None',NULL,'None',NULL,'None','NULL'),(14,'2020-03-23 19:48:00',NULL,'2020-03-30 19:22:13',NULL,NULL,NULL,NULL,'None',NULL,'None','None','None',NULL,'None','None','None','None',NULL,'None','None',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'None',NULL,NULL,'None','None',NULL,'None',NULL,'None','None'),(15,'2020-03-23 19:48:16',NULL,'2020-03-23 19:48:16',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(16,'2020-03-23 20:11:05',NULL,'2020-03-23 20:11:05',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(17,'2020-03-23 20:35:16',NULL,'2020-03-23 20:35:16',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(18,'2020-03-23 20:35:56',NULL,'2020-03-23 20:35:56',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(19,'2020-03-23 21:03:07',NULL,'2020-03-23 21:03:07',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(20,'2020-03-23 21:08:08',NULL,'2020-03-23 21:08:08',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(21,'2020-03-24 22:01:42',NULL,'2020-03-24 22:01:42',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(22,'2020-03-24 22:05:44',NULL,'2020-03-24 22:05:44',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(23,'2020-03-30 13:27:02',NULL,'2020-03-30 19:45:22',NULL,'Preparation Phase',NULL,NULL,'None',NULL,'None','PPMID123','Falcon','Capital','John Barens','jb@delhaize.com','Project Manager','John Barens',NULL,'Mary James','John Barens','Project','B','2020-03-23 00:00:00','2020-04-03 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,'None',NULL,'Y','SPD','secure sharepoint','Y','Vendor PII','Y','None','NEW'),(24,'2020-03-30 13:29:25',NULL,'2020-03-30 13:29:25',NULL,'Preparation Phase',NULL,NULL,NULL,NULL,NULL,'PPMID123','Falcon','Capital','John Barens','jb@delhaize.com','Project Manager','John Barens',NULL,'Mary James','John Barens','Project','B','2020-03-23 00:00:00','2020-04-03 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y','SPD','secure sharepoint','Y','Vendor PII','Y',NULL,'NEW'),(25,'2020-03-30 13:58:44',NULL,'2020-03-30 13:58:44',NULL,'Preparation Phase',NULL,NULL,NULL,NULL,NULL,'PPMID123','Falcon','Capital','John Barens','jb@delhaize.com','Project Manager','John Barens',NULL,'Mary James','John Barens','Project','B','2020-03-23 00:00:00','2020-04-03 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y','SPD','secure sharepoint','Y','Vendor PII','Y',NULL,'NEW'),(26,'2020-03-30 13:59:07',NULL,'2020-03-30 13:59:07',NULL,'Preparation Phase',NULL,NULL,NULL,NULL,NULL,'PPMID123','Falcon','Capital','John Barens','jb@delhaize.com','Project Manager','John Barens',NULL,'Mary James','John Barens','Project','B','2020-03-23 00:00:00','2020-04-03 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y','SPD','secure sharepoint','Y','Vendor PII','Y',NULL,'NEW'),(27,'2020-03-30 13:59:15',NULL,'2020-03-30 14:03:20',NULL,'Preparation Phase',NULL,NULL,'None',NULL,'None','PPMID123','Falcon','Capital','John Barens','jb@delhaize.com','Project Manager','John Barens',NULL,'Mary James','John Barens','Project','B','2020-03-23 00:00:00','2020-04-03 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,'None',NULL,'Y','SPD','secure sharepoint','Y','Vendor PII','Y','None','NEW'),(28,'2020-03-30 19:48:25',NULL,'2020-03-30 19:48:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'SUBMITTED');
/*!40000 ALTER TABLE `qagile_rfs_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qagile_rfs_request_cr`
--

DROP TABLE IF EXISTS `qagile_rfs_request_cr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qagile_rfs_request_cr` (
  `rfs_request_id` int DEFAULT NULL,
  `requester` varchar(45) DEFAULT NULL,
  `change_in` varchar(45) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `prev_value` mediumtext,
  `new_value` mediumtext,
  `cr_id` int NOT NULL,
  PRIMARY KEY (`cr_id`),
  KEY `fk_rfs_request_cr_idx` (`rfs_request_id`),
  CONSTRAINT `fk_rfs_request_cr` FOREIGN KEY (`rfs_request_id`) REFERENCES `qagile_rfs_request` (`rfs_request_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qagile_rfs_request_cr`
--

LOCK TABLES `qagile_rfs_request_cr` WRITE;
/*!40000 ALTER TABLE `qagile_rfs_request_cr` DISABLE KEYS */;
/*!40000 ALTER TABLE `qagile_rfs_request_cr` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `qagile_rfs_resourceLoading`
--

DROP TABLE IF EXISTS `qagile_rfs_resourceLoading`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qagile_rfs_resourceLoading` (
  `record_id` int NOT NULL AUTO_INCREMENT,
  `rfs_request_id` int DEFAULT NULL,
  `person_id` varchar(10) DEFAULT NULL,
  `week` datetime DEFAULT NULL,
  `hrs` int DEFAULT NULL,
  `created_dt` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`record_id`),
  KEY `fk_resourceloading_person_idx` (`person_id`),
  KEY `fk_resourceloading_rfs_idx` (`rfs_request_id`),
  CONSTRAINT `fk_resourceloading_person` FOREIGN KEY (`person_id`) REFERENCES `qagile_person` (`vnid`),
  CONSTRAINT `fk_resourceloading_rfs` FOREIGN KEY (`rfs_request_id`) REFERENCES `qagile_rfs_request` (`rfs_request_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5695 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qagile_rfs_resourceLoading`
--

LOCK TABLES `qagile_rfs_resourceLoading` WRITE;
/*!40000 ALTER TABLE `qagile_rfs_resourceLoading` DISABLE KEYS */;
INSERT INTO `qagile_rfs_resourceLoading` VALUES (487,1,'1242198','2020-04-06 00:00:00',4,'2020-03-26 20:44:28'),(488,1,'1242198','2020-04-13 00:00:00',4,'2020-03-26 20:44:28'),(489,1,'1242198','2020-04-20 00:00:00',4,'2020-03-26 20:44:28'),(490,1,'1242198','2020-04-27 00:00:00',4,'2020-03-26 20:44:28'),(491,1,'1242198','2020-05-04 00:00:00',4,'2020-03-26 20:44:28'),(492,1,'1242198','2020-05-11 00:00:00',4,'2020-03-26 20:44:28'),(493,1,'1242198','2020-05-18 00:00:00',4,'2020-03-26 20:44:28'),(494,1,'1242198','2020-05-25 00:00:00',4,'2020-03-26 20:44:28'),(495,1,'1242198','2020-06-01 00:00:00',4,'2020-03-26 20:44:28'),(496,1,'1242198','2020-06-08 00:00:00',4,'2020-03-26 20:44:28'),(497,1,'vn07098','2020-04-06 00:00:00',20,'2020-03-26 20:44:28'),(498,1,'vn07098','2020-04-13 00:00:00',20,'2020-03-26 20:44:28'),(499,1,'vn07098','2020-04-20 00:00:00',20,'2020-03-26 20:44:28'),(500,1,'vn07098','2020-04-27 00:00:00',20,'2020-03-26 20:44:28'),(501,1,'vn07098','2020-05-04 00:00:00',20,'2020-03-26 20:44:28'),(502,1,'vn07098','2020-05-11 00:00:00',20,'2020-03-26 20:44:28'),(503,1,'vn07098','2020-05-18 00:00:00',20,'2020-03-26 20:44:28'),(504,1,'vn07098','2020-05-25 00:00:00',20,'2020-03-26 20:44:28'),(505,1,'vn07098','2020-06-01 00:00:00',20,'2020-03-26 20:44:28'),(506,1,'vn07098','2020-06-08 00:00:00',20,'2020-03-26 20:44:28'),(507,1,'VN07325','2020-04-06 00:00:00',0,'2020-03-26 20:44:28'),(508,1,'VN07325','2020-04-13 00:00:00',0,'2020-03-26 20:44:28'),(509,1,'VN07325','2020-04-20 00:00:00',0,'2020-03-26 20:44:28'),(510,1,'VN07325','2020-04-27 00:00:00',0,'2020-03-26 20:44:28'),(511,1,'VN07325','2020-05-04 00:00:00',45,'2020-03-26 20:44:28'),(512,1,'VN07325','2020-05-11 00:00:00',45,'2020-03-26 20:44:28'),(513,1,'VN07325','2020-05-18 00:00:00',45,'2020-03-26 20:44:28'),(514,1,'VN07325','2020-05-25 00:00:00',45,'2020-03-26 20:44:28'),(515,1,'VN07325','2020-06-01 00:00:00',45,'2020-03-26 20:44:28'),(516,1,'VN07325','2020-06-08 00:00:00',45,'2020-03-26 20:44:28'),(517,1,'vn05672','2020-04-06 00:00:00',10,'2020-03-26 20:44:28'),(518,1,'vn05672','2020-04-13 00:00:00',10,'2020-03-26 20:44:28'),(519,1,'vn05672','2020-04-20 00:00:00',10,'2020-03-26 20:44:28'),(520,1,'vn05672','2020-04-27 00:00:00',10,'2020-03-26 20:44:28'),(521,1,'vn05672','2020-05-04 00:00:00',10,'2020-03-26 20:44:28'),(522,1,'vn05672','2020-05-11 00:00:00',10,'2020-03-26 20:44:28'),(523,1,'vn05672','2020-05-18 00:00:00',5,'2020-03-26 20:44:28'),(524,1,'vn05672','2020-05-25 00:00:00',5,'2020-03-26 20:44:28'),(525,1,'vn05672','2020-06-01 00:00:00',5,'2020-03-26 20:44:28'),(526,1,'vn05672','2020-06-08 00:00:00',5,'2020-03-26 20:44:28'),(5327,9,'1242198','2020-03-02 00:00:00',6,'2020-03-29 20:00:09'),(5328,9,'1242198','2020-03-09 00:00:00',5,'2020-03-29 20:00:09'),(5329,9,'1242198','2020-03-16 00:00:00',5,'2020-03-29 20:00:09'),(5330,9,'1242198','2020-03-23 00:00:00',5,'2020-03-29 20:00:09'),(5331,9,'1242198','2020-03-30 00:00:00',5,'2020-03-29 20:00:09'),(5332,9,'1242198','2020-04-06 00:00:00',5,'2020-03-29 20:00:09'),(5333,9,'1242198','2020-04-13 00:00:00',5,'2020-03-29 20:00:09'),(5334,9,'1242198','2020-04-20 00:00:00',5,'2020-03-29 20:00:09'),(5335,9,'1242198','2020-04-27 00:00:00',5,'2020-03-29 20:00:09'),(5336,9,'1242198','2020-05-04 00:00:00',5,'2020-03-29 20:00:09'),(5337,9,'1242198','2020-05-11 00:00:00',5,'2020-03-29 20:00:09'),(5338,9,'1242198','2020-05-18 00:00:00',5,'2020-03-29 20:00:09'),(5339,9,'1242198','2020-05-25 00:00:00',5,'2020-03-29 20:00:09'),(5340,9,'1242198','2020-06-01 00:00:00',5,'2020-03-29 20:00:09'),(5341,9,'1242198','2020-06-08 00:00:00',5,'2020-03-29 20:00:09'),(5342,9,'1242198','2020-06-15 00:00:00',5,'2020-03-29 20:00:09'),(5343,9,'1242198','2020-06-22 00:00:00',5,'2020-03-29 20:00:09'),(5344,9,'1242198','2020-06-29 00:00:00',5,'2020-03-29 20:00:09'),(5345,9,'1242198','2020-07-06 00:00:00',5,'2020-03-29 20:00:09'),(5346,9,'1242198','2020-07-13 00:00:00',5,'2020-03-29 20:00:09'),(5347,9,'1242198','2020-07-20 00:00:00',5,'2020-03-29 20:00:09'),(5348,9,'1242198','2020-07-27 00:00:00',5,'2020-03-29 20:00:09'),(5349,9,'1242198','2020-08-03 00:00:00',5,'2020-03-29 20:00:09'),(5350,9,'1242198','2020-08-10 00:00:00',5,'2020-03-29 20:00:09'),(5351,9,'1242198','2020-08-17 00:00:00',5,'2020-03-29 20:00:09'),(5352,9,'1242198','2020-08-24 00:00:00',5,'2020-03-29 20:00:09'),(5353,9,'1242198','2020-08-31 00:00:00',5,'2020-03-29 20:00:09'),(5354,9,'1242198','2020-09-07 00:00:00',5,'2020-03-29 20:00:09'),(5355,9,'1242198','2020-09-14 00:00:00',5,'2020-03-29 20:00:09'),(5356,9,'1242198','2020-09-21 00:00:00',5,'2020-03-29 20:00:09'),(5357,9,'1242198','2020-09-28 00:00:00',5,'2020-03-29 20:00:09'),(5358,9,'1242198','2020-10-05 00:00:00',5,'2020-03-29 20:00:09'),(5359,9,'vn02185','2020-03-02 00:00:00',5,'2020-03-29 20:00:09'),(5360,9,'vn02185','2020-03-09 00:00:00',NULL,'2020-03-29 20:00:09'),(5361,9,'vn02185','2020-03-16 00:00:00',NULL,'2020-03-29 20:00:09'),(5362,9,'vn02185','2020-03-23 00:00:00',NULL,'2020-03-29 20:00:09'),(5363,9,'vn02185','2020-03-30 00:00:00',NULL,'2020-03-29 20:00:09'),(5364,9,'vn02185','2020-04-06 00:00:00',NULL,'2020-03-29 20:00:09'),(5365,9,'vn02185','2020-04-13 00:00:00',NULL,'2020-03-29 20:00:09'),(5366,9,'vn02185','2020-04-20 00:00:00',NULL,'2020-03-29 20:00:09'),(5367,9,'vn02185','2020-04-27 00:00:00',NULL,'2020-03-29 20:00:09'),(5368,9,'vn02185','2020-05-04 00:00:00',NULL,'2020-03-29 20:00:09'),(5369,9,'vn02185','2020-05-11 00:00:00',NULL,'2020-03-29 20:00:09'),(5370,9,'vn02185','2020-05-18 00:00:00',NULL,'2020-03-29 20:00:09'),(5371,9,'vn02185','2020-05-25 00:00:00',NULL,'2020-03-29 20:00:09'),(5372,9,'vn02185','2020-06-01 00:00:00',NULL,'2020-03-29 20:00:09'),(5373,9,'vn02185','2020-06-08 00:00:00',NULL,'2020-03-29 20:00:09'),(5374,9,'vn02185','2020-06-15 00:00:00',NULL,'2020-03-29 20:00:09'),(5375,9,'vn02185','2020-06-22 00:00:00',NULL,'2020-03-29 20:00:09'),(5376,9,'vn02185','2020-06-29 00:00:00',NULL,'2020-03-29 20:00:09'),(5377,9,'vn02185','2020-07-06 00:00:00',NULL,'2020-03-29 20:00:09'),(5378,9,'vn02185','2020-07-13 00:00:00',NULL,'2020-03-29 20:00:09'),(5379,9,'vn02185','2020-07-20 00:00:00',NULL,'2020-03-29 20:00:09'),(5380,9,'vn02185','2020-07-27 00:00:00',NULL,'2020-03-29 20:00:09'),(5381,9,'vn02185','2020-08-03 00:00:00',NULL,'2020-03-29 20:00:09'),(5382,9,'vn02185','2020-08-10 00:00:00',NULL,'2020-03-29 20:00:09'),(5383,9,'vn02185','2020-08-17 00:00:00',NULL,'2020-03-29 20:00:09'),(5384,9,'vn02185','2020-08-24 00:00:00',NULL,'2020-03-29 20:00:09'),(5385,9,'vn02185','2020-08-31 00:00:00',NULL,'2020-03-29 20:00:09'),(5386,9,'vn02185','2020-09-07 00:00:00',NULL,'2020-03-29 20:00:09'),(5387,9,'vn02185','2020-09-14 00:00:00',NULL,'2020-03-29 20:00:09'),(5388,9,'vn02185','2020-09-21 00:00:00',NULL,'2020-03-29 20:00:09'),(5389,9,'vn02185','2020-09-28 00:00:00',NULL,'2020-03-29 20:00:09'),(5390,9,'vn02185','2020-10-05 00:00:00',NULL,'2020-03-29 20:00:09'),(5391,9,'vn03617','2020-03-02 00:00:00',5,'2020-03-29 20:00:09'),(5392,9,'vn03617','2020-03-09 00:00:00',NULL,'2020-03-29 20:00:09'),(5393,9,'vn03617','2020-03-16 00:00:00',NULL,'2020-03-29 20:00:09'),(5394,9,'vn03617','2020-03-23 00:00:00',NULL,'2020-03-29 20:00:09'),(5395,9,'vn03617','2020-03-30 00:00:00',NULL,'2020-03-29 20:00:09'),(5396,9,'vn03617','2020-04-06 00:00:00',NULL,'2020-03-29 20:00:09'),(5397,9,'vn03617','2020-04-13 00:00:00',NULL,'2020-03-29 20:00:09'),(5398,9,'vn03617','2020-04-20 00:00:00',NULL,'2020-03-29 20:00:09'),(5399,9,'vn03617','2020-04-27 00:00:00',NULL,'2020-03-29 20:00:09'),(5400,9,'vn03617','2020-05-04 00:00:00',NULL,'2020-03-29 20:00:09'),(5401,9,'vn03617','2020-05-11 00:00:00',NULL,'2020-03-29 20:00:09'),(5402,9,'vn03617','2020-05-18 00:00:00',NULL,'2020-03-29 20:00:09'),(5403,9,'vn03617','2020-05-25 00:00:00',NULL,'2020-03-29 20:00:09'),(5404,9,'vn03617','2020-06-01 00:00:00',NULL,'2020-03-29 20:00:09'),(5405,9,'vn03617','2020-06-08 00:00:00',NULL,'2020-03-29 20:00:09'),(5406,9,'vn03617','2020-06-15 00:00:00',NULL,'2020-03-29 20:00:09'),(5407,9,'vn03617','2020-06-22 00:00:00',NULL,'2020-03-29 20:00:09'),(5408,9,'vn03617','2020-06-29 00:00:00',NULL,'2020-03-29 20:00:09'),(5409,9,'vn03617','2020-07-06 00:00:00',NULL,'2020-03-29 20:00:09'),(5410,9,'vn03617','2020-07-13 00:00:00',NULL,'2020-03-29 20:00:09'),(5411,9,'vn03617','2020-07-20 00:00:00',NULL,'2020-03-29 20:00:09'),(5412,9,'vn03617','2020-07-27 00:00:00',NULL,'2020-03-29 20:00:09'),(5413,9,'vn03617','2020-08-03 00:00:00',NULL,'2020-03-29 20:00:09'),(5414,9,'vn03617','2020-08-10 00:00:00',NULL,'2020-03-29 20:00:09'),(5415,9,'vn03617','2020-08-17 00:00:00',NULL,'2020-03-29 20:00:09'),(5416,9,'vn03617','2020-08-24 00:00:00',NULL,'2020-03-29 20:00:09'),(5417,9,'vn03617','2020-08-31 00:00:00',NULL,'2020-03-29 20:00:09'),(5418,9,'vn03617','2020-09-07 00:00:00',NULL,'2020-03-29 20:00:09'),(5419,9,'vn03617','2020-09-14 00:00:00',NULL,'2020-03-29 20:00:09'),(5420,9,'vn03617','2020-09-21 00:00:00',NULL,'2020-03-29 20:00:09'),(5421,9,'vn03617','2020-09-28 00:00:00',NULL,'2020-03-29 20:00:09'),(5422,9,'vn03617','2020-10-05 00:00:00',NULL,'2020-03-29 20:00:09'),(5423,9,'vn03626','2020-03-02 00:00:00',5,'2020-03-29 20:00:09'),(5424,9,'vn03626','2020-03-09 00:00:00',NULL,'2020-03-29 20:00:09'),(5425,9,'vn03626','2020-03-16 00:00:00',NULL,'2020-03-29 20:00:09'),(5426,9,'vn03626','2020-03-23 00:00:00',NULL,'2020-03-29 20:00:09'),(5427,9,'vn03626','2020-03-30 00:00:00',NULL,'2020-03-29 20:00:09'),(5428,9,'vn03626','2020-04-06 00:00:00',NULL,'2020-03-29 20:00:09'),(5429,9,'vn03626','2020-04-13 00:00:00',NULL,'2020-03-29 20:00:09'),(5430,9,'vn03626','2020-04-20 00:00:00',NULL,'2020-03-29 20:00:09'),(5431,9,'vn03626','2020-04-27 00:00:00',NULL,'2020-03-29 20:00:09'),(5432,9,'vn03626','2020-05-04 00:00:00',NULL,'2020-03-29 20:00:09'),(5433,9,'vn03626','2020-05-11 00:00:00',NULL,'2020-03-29 20:00:09'),(5434,9,'vn03626','2020-05-18 00:00:00',NULL,'2020-03-29 20:00:09'),(5435,9,'vn03626','2020-05-25 00:00:00',NULL,'2020-03-29 20:00:09'),(5436,9,'vn03626','2020-06-01 00:00:00',NULL,'2020-03-29 20:00:09'),(5437,9,'vn03626','2020-06-08 00:00:00',NULL,'2020-03-29 20:00:09'),(5438,9,'vn03626','2020-06-15 00:00:00',NULL,'2020-03-29 20:00:09'),(5439,9,'vn03626','2020-06-22 00:00:00',NULL,'2020-03-29 20:00:09'),(5440,9,'vn03626','2020-06-29 00:00:00',NULL,'2020-03-29 20:00:09'),(5441,9,'vn03626','2020-07-06 00:00:00',NULL,'2020-03-29 20:00:09'),(5442,9,'vn03626','2020-07-13 00:00:00',NULL,'2020-03-29 20:00:09'),(5443,9,'vn03626','2020-07-20 00:00:00',NULL,'2020-03-29 20:00:09'),(5444,9,'vn03626','2020-07-27 00:00:00',NULL,'2020-03-29 20:00:09'),(5445,9,'vn03626','2020-08-03 00:00:00',NULL,'2020-03-29 20:00:09'),(5446,9,'vn03626','2020-08-10 00:00:00',NULL,'2020-03-29 20:00:09'),(5447,9,'vn03626','2020-08-17 00:00:00',NULL,'2020-03-29 20:00:09'),(5448,9,'vn03626','2020-08-24 00:00:00',NULL,'2020-03-29 20:00:09'),(5449,9,'vn03626','2020-08-31 00:00:00',NULL,'2020-03-29 20:00:09'),(5450,9,'vn03626','2020-09-07 00:00:00',NULL,'2020-03-29 20:00:09'),(5451,9,'vn03626','2020-09-14 00:00:00',NULL,'2020-03-29 20:00:09'),(5452,9,'vn03626','2020-09-21 00:00:00',NULL,'2020-03-29 20:00:09'),(5453,9,'vn03626','2020-09-28 00:00:00',NULL,'2020-03-29 20:00:09'),(5454,9,'vn03626','2020-10-05 00:00:00',NULL,'2020-03-29 20:00:09'),(5455,9,'vn05672','2020-03-02 00:00:00',5,'2020-03-29 20:00:09'),(5456,9,'vn05672','2020-03-09 00:00:00',35,'2020-03-29 20:00:09'),(5457,9,'vn05672','2020-03-16 00:00:00',25,'2020-03-29 20:00:09'),(5458,9,'vn05672','2020-03-23 00:00:00',25,'2020-03-29 20:00:09'),(5459,9,'vn05672','2020-03-30 00:00:00',25,'2020-03-29 20:00:09'),(5460,9,'vn05672','2020-04-06 00:00:00',25,'2020-03-29 20:00:09'),(5461,9,'vn05672','2020-04-13 00:00:00',25,'2020-03-29 20:00:09'),(5462,9,'vn05672','2020-04-20 00:00:00',25,'2020-03-29 20:00:09'),(5463,9,'vn05672','2020-04-27 00:00:00',0,'2020-03-29 20:00:09'),(5464,9,'vn05672','2020-05-04 00:00:00',25,'2020-03-29 20:00:09'),(5465,9,'vn05672','2020-05-11 00:00:00',25,'2020-03-29 20:00:09'),(5466,9,'vn05672','2020-05-18 00:00:00',15,'2020-03-29 20:00:09'),(5467,9,'vn05672','2020-05-25 00:00:00',15,'2020-03-29 20:00:09'),(5468,9,'vn05672','2020-06-01 00:00:00',15,'2020-03-29 20:00:09'),(5469,9,'vn05672','2020-06-08 00:00:00',15,'2020-03-29 20:00:09'),(5470,9,'vn05672','2020-06-15 00:00:00',15,'2020-03-29 20:00:09'),(5471,9,'vn05672','2020-06-22 00:00:00',15,'2020-03-29 20:00:09'),(5472,9,'vn05672','2020-06-29 00:00:00',15,'2020-03-29 20:00:09'),(5473,9,'vn05672','2020-07-06 00:00:00',15,'2020-03-29 20:00:09'),(5474,9,'vn05672','2020-07-13 00:00:00',15,'2020-03-29 20:00:09'),(5475,9,'vn05672','2020-07-20 00:00:00',15,'2020-03-29 20:00:09'),(5476,9,'vn05672','2020-07-27 00:00:00',15,'2020-03-29 20:00:09'),(5477,9,'vn05672','2020-08-03 00:00:00',15,'2020-03-29 20:00:09'),(5478,9,'vn05672','2020-08-10 00:00:00',15,'2020-03-29 20:00:09'),(5479,9,'vn05672','2020-08-17 00:00:00',15,'2020-03-29 20:00:09'),(5480,9,'vn05672','2020-08-24 00:00:00',15,'2020-03-29 20:00:09'),(5481,9,'vn05672','2020-08-31 00:00:00',15,'2020-03-29 20:00:09'),(5482,9,'vn05672','2020-09-07 00:00:00',15,'2020-03-29 20:00:09'),(5483,9,'vn05672','2020-09-14 00:00:00',15,'2020-03-29 20:00:09'),(5484,9,'vn05672','2020-09-21 00:00:00',15,'2020-03-29 20:00:09'),(5485,9,'vn05672','2020-09-28 00:00:00',15,'2020-03-29 20:00:09'),(5486,9,'vn05672','2020-10-05 00:00:00',15,'2020-03-29 20:00:09'),(5487,9,'VN06492','2020-03-02 00:00:00',5,'2020-03-29 20:00:09'),(5488,9,'VN06492','2020-03-09 00:00:00',NULL,'2020-03-29 20:00:09'),(5489,9,'VN06492','2020-03-16 00:00:00',NULL,'2020-03-29 20:00:09'),(5490,9,'VN06492','2020-03-23 00:00:00',NULL,'2020-03-29 20:00:09'),(5491,9,'VN06492','2020-03-30 00:00:00',NULL,'2020-03-29 20:00:09'),(5492,9,'VN06492','2020-04-06 00:00:00',NULL,'2020-03-29 20:00:09'),(5493,9,'VN06492','2020-04-13 00:00:00',NULL,'2020-03-29 20:00:09'),(5494,9,'VN06492','2020-04-20 00:00:00',NULL,'2020-03-29 20:00:09'),(5495,9,'VN06492','2020-04-27 00:00:00',NULL,'2020-03-29 20:00:09'),(5496,9,'VN06492','2020-05-04 00:00:00',NULL,'2020-03-29 20:00:09'),(5497,9,'VN06492','2020-05-11 00:00:00',NULL,'2020-03-29 20:00:09'),(5498,9,'VN06492','2020-05-18 00:00:00',NULL,'2020-03-29 20:00:09'),(5499,9,'VN06492','2020-05-25 00:00:00',NULL,'2020-03-29 20:00:09'),(5500,9,'VN06492','2020-06-01 00:00:00',NULL,'2020-03-29 20:00:09'),(5501,9,'VN06492','2020-06-08 00:00:00',NULL,'2020-03-29 20:00:09'),(5502,9,'VN06492','2020-06-15 00:00:00',NULL,'2020-03-29 20:00:09'),(5503,9,'VN06492','2020-06-22 00:00:00',NULL,'2020-03-29 20:00:09'),(5504,9,'VN06492','2020-06-29 00:00:00',NULL,'2020-03-29 20:00:09'),(5505,9,'VN06492','2020-07-06 00:00:00',NULL,'2020-03-29 20:00:09'),(5506,9,'VN06492','2020-07-13 00:00:00',NULL,'2020-03-29 20:00:09'),(5507,9,'VN06492','2020-07-20 00:00:00',NULL,'2020-03-29 20:00:09'),(5508,9,'VN06492','2020-07-27 00:00:00',NULL,'2020-03-29 20:00:09'),(5509,9,'VN06492','2020-08-03 00:00:00',NULL,'2020-03-29 20:00:09'),(5510,9,'VN06492','2020-08-10 00:00:00',NULL,'2020-03-29 20:00:09'),(5511,9,'VN06492','2020-08-17 00:00:00',NULL,'2020-03-29 20:00:09'),(5512,9,'VN06492','2020-08-24 00:00:00',NULL,'2020-03-29 20:00:10'),(5513,9,'VN06492','2020-08-31 00:00:00',NULL,'2020-03-29 20:00:10'),(5514,9,'VN06492','2020-09-07 00:00:00',NULL,'2020-03-29 20:00:10'),(5515,9,'VN06492','2020-09-14 00:00:00',NULL,'2020-03-29 20:00:10'),(5516,9,'VN06492','2020-09-21 00:00:00',NULL,'2020-03-29 20:00:10'),(5517,9,'VN06492','2020-09-28 00:00:00',NULL,'2020-03-29 20:00:10'),(5518,9,'VN06492','2020-10-05 00:00:00',NULL,'2020-03-29 20:00:10'),(5519,9,'vn06493','2020-03-02 00:00:00',5,'2020-03-29 20:00:10'),(5520,9,'vn06493','2020-03-09 00:00:00',NULL,'2020-03-29 20:00:10'),(5521,9,'vn06493','2020-03-16 00:00:00',NULL,'2020-03-29 20:00:10'),(5522,9,'vn06493','2020-03-23 00:00:00',NULL,'2020-03-29 20:00:10'),(5523,9,'vn06493','2020-03-30 00:00:00',NULL,'2020-03-29 20:00:10'),(5524,9,'vn06493','2020-04-06 00:00:00',NULL,'2020-03-29 20:00:10'),(5525,9,'vn06493','2020-04-13 00:00:00',NULL,'2020-03-29 20:00:10'),(5526,9,'vn06493','2020-04-20 00:00:00',NULL,'2020-03-29 20:00:10'),(5527,9,'vn06493','2020-04-27 00:00:00',NULL,'2020-03-29 20:00:10'),(5528,9,'vn06493','2020-05-04 00:00:00',NULL,'2020-03-29 20:00:10'),(5529,9,'vn06493','2020-05-11 00:00:00',NULL,'2020-03-29 20:00:10'),(5530,9,'vn06493','2020-05-18 00:00:00',NULL,'2020-03-29 20:00:10'),(5531,9,'vn06493','2020-05-25 00:00:00',NULL,'2020-03-29 20:00:10'),(5532,9,'vn06493','2020-06-01 00:00:00',NULL,'2020-03-29 20:00:10'),(5533,9,'vn06493','2020-06-08 00:00:00',NULL,'2020-03-29 20:00:10'),(5534,9,'vn06493','2020-06-15 00:00:00',NULL,'2020-03-29 20:00:10'),(5535,9,'vn06493','2020-06-22 00:00:00',NULL,'2020-03-29 20:00:10'),(5536,9,'vn06493','2020-06-29 00:00:00',NULL,'2020-03-29 20:00:10'),(5537,9,'vn06493','2020-07-06 00:00:00',NULL,'2020-03-29 20:00:10'),(5538,9,'vn06493','2020-07-13 00:00:00',NULL,'2020-03-29 20:00:10'),(5539,9,'vn06493','2020-07-20 00:00:00',NULL,'2020-03-29 20:00:10'),(5540,9,'vn06493','2020-07-27 00:00:00',NULL,'2020-03-29 20:00:10'),(5541,9,'vn06493','2020-08-03 00:00:00',NULL,'2020-03-29 20:00:10'),(5542,9,'vn06493','2020-08-10 00:00:00',NULL,'2020-03-29 20:00:10'),(5543,9,'vn06493','2020-08-17 00:00:00',NULL,'2020-03-29 20:00:10'),(5544,9,'vn06493','2020-08-24 00:00:00',NULL,'2020-03-29 20:00:10'),(5545,9,'vn06493','2020-08-31 00:00:00',NULL,'2020-03-29 20:00:10'),(5546,9,'vn06493','2020-09-07 00:00:00',NULL,'2020-03-29 20:00:10'),(5547,9,'vn06493','2020-09-14 00:00:00',NULL,'2020-03-29 20:00:10'),(5548,9,'vn06493','2020-09-21 00:00:00',NULL,'2020-03-29 20:00:10'),(5549,9,'vn06493','2020-09-28 00:00:00',NULL,'2020-03-29 20:00:10'),(5550,9,'vn06493','2020-10-05 00:00:00',NULL,'2020-03-29 20:00:10'),(5551,9,'VN06804','2020-03-02 00:00:00',5,'2020-03-29 20:00:10'),(5552,9,'VN06804','2020-03-09 00:00:00',NULL,'2020-03-29 20:00:10'),(5553,9,'VN06804','2020-03-16 00:00:00',45,'2020-03-29 20:00:10'),(5554,9,'VN06804','2020-03-23 00:00:00',45,'2020-03-29 20:00:10'),(5555,9,'VN06804','2020-03-30 00:00:00',45,'2020-03-29 20:00:10'),(5556,9,'VN06804','2020-04-06 00:00:00',45,'2020-03-29 20:00:10'),(5557,9,'VN06804','2020-04-13 00:00:00',45,'2020-03-29 20:00:10'),(5558,9,'VN06804','2020-04-20 00:00:00',45,'2020-03-29 20:00:10'),(5559,9,'VN06804','2020-04-27 00:00:00',45,'2020-03-29 20:00:10'),(5560,9,'VN06804','2020-05-04 00:00:00',45,'2020-03-29 20:00:10'),(5561,9,'VN06804','2020-05-11 00:00:00',45,'2020-03-29 20:00:10'),(5562,9,'VN06804','2020-05-18 00:00:00',45,'2020-03-29 20:00:10'),(5563,9,'VN06804','2020-05-25 00:00:00',45,'2020-03-29 20:00:10'),(5564,9,'VN06804','2020-06-01 00:00:00',45,'2020-03-29 20:00:10'),(5565,9,'VN06804','2020-06-08 00:00:00',45,'2020-03-29 20:00:10'),(5566,9,'VN06804','2020-06-15 00:00:00',45,'2020-03-29 20:00:10'),(5567,9,'VN06804','2020-06-22 00:00:00',45,'2020-03-29 20:00:10'),(5568,9,'VN06804','2020-06-29 00:00:00',36,'2020-03-29 20:00:10'),(5569,9,'VN06804','2020-07-06 00:00:00',45,'2020-03-29 20:00:10'),(5570,9,'VN06804','2020-07-13 00:00:00',45,'2020-03-29 20:00:10'),(5571,9,'VN06804','2020-07-20 00:00:00',45,'2020-03-29 20:00:10'),(5572,9,'VN06804','2020-07-27 00:00:00',45,'2020-03-29 20:00:10'),(5573,9,'VN06804','2020-08-03 00:00:00',45,'2020-03-29 20:00:10'),(5574,9,'VN06804','2020-08-10 00:00:00',45,'2020-03-29 20:00:10'),(5575,9,'VN06804','2020-08-17 00:00:00',25,'2020-03-29 20:00:10'),(5576,9,'VN06804','2020-08-24 00:00:00',25,'2020-03-29 20:00:10'),(5577,9,'VN06804','2020-08-31 00:00:00',25,'2020-03-29 20:00:10'),(5578,9,'VN06804','2020-09-07 00:00:00',25,'2020-03-29 20:00:10'),(5579,9,'VN06804','2020-09-14 00:00:00',25,'2020-03-29 20:00:10'),(5580,9,'VN06804','2020-09-21 00:00:00',25,'2020-03-29 20:00:10'),(5581,9,'VN06804','2020-09-28 00:00:00',25,'2020-03-29 20:00:10'),(5582,9,'VN06804','2020-10-05 00:00:00',25,'2020-03-29 20:00:10'),(5583,9,'vn07098','2020-03-02 00:00:00',5,'2020-03-29 20:00:10'),(5584,9,'vn07098','2020-03-09 00:00:00',NULL,'2020-03-29 20:00:10'),(5585,9,'vn07098','2020-03-16 00:00:00',NULL,'2020-03-29 20:00:10'),(5586,9,'vn07098','2020-03-23 00:00:00',NULL,'2020-03-29 20:00:10'),(5587,9,'vn07098','2020-03-30 00:00:00',NULL,'2020-03-29 20:00:10'),(5588,9,'vn07098','2020-04-06 00:00:00',40,'2020-03-29 20:00:10'),(5589,9,'vn07098','2020-04-13 00:00:00',40,'2020-03-29 20:00:10'),(5590,9,'vn07098','2020-04-20 00:00:00',40,'2020-03-29 20:00:10'),(5591,9,'vn07098','2020-04-27 00:00:00',40,'2020-03-29 20:00:10'),(5592,9,'vn07098','2020-05-04 00:00:00',40,'2020-03-29 20:00:10'),(5593,9,'vn07098','2020-05-11 00:00:00',40,'2020-03-29 20:00:10'),(5594,9,'vn07098','2020-05-18 00:00:00',40,'2020-03-29 20:00:10'),(5595,9,'vn07098','2020-05-25 00:00:00',40,'2020-03-29 20:00:10'),(5596,9,'vn07098','2020-06-01 00:00:00',40,'2020-03-29 20:00:10'),(5597,9,'vn07098','2020-06-08 00:00:00',40,'2020-03-29 20:00:10'),(5598,9,'vn07098','2020-06-15 00:00:00',40,'2020-03-29 20:00:10'),(5599,9,'vn07098','2020-06-22 00:00:00',40,'2020-03-29 20:00:10'),(5600,9,'vn07098','2020-06-29 00:00:00',32,'2020-03-29 20:00:10'),(5601,9,'vn07098','2020-07-06 00:00:00',40,'2020-03-29 20:00:10'),(5602,9,'vn07098','2020-07-13 00:00:00',40,'2020-03-29 20:00:10'),(5603,9,'vn07098','2020-07-20 00:00:00',40,'2020-03-29 20:00:10'),(5604,9,'vn07098','2020-07-27 00:00:00',40,'2020-03-29 20:00:10'),(5605,9,'vn07098','2020-08-03 00:00:00',40,'2020-03-29 20:00:10'),(5606,9,'vn07098','2020-08-10 00:00:00',40,'2020-03-29 20:00:10'),(5607,9,'vn07098','2020-08-17 00:00:00',40,'2020-03-29 20:00:10'),(5608,9,'vn07098','2020-08-24 00:00:00',40,'2020-03-29 20:00:10'),(5609,9,'vn07098','2020-08-31 00:00:00',40,'2020-03-29 20:00:10'),(5610,9,'vn07098','2020-09-07 00:00:00',40,'2020-03-29 20:00:10'),(5611,9,'vn07098','2020-09-14 00:00:00',40,'2020-03-29 20:00:10'),(5612,9,'vn07098','2020-09-21 00:00:00',40,'2020-03-29 20:00:10'),(5613,9,'vn07098','2020-09-28 00:00:00',40,'2020-03-29 20:00:10'),(5614,9,'vn07098','2020-10-05 00:00:00',40,'2020-03-29 20:00:10'),(5615,9,'VN07325','2020-03-02 00:00:00',5,'2020-03-29 20:00:10'),(5616,9,'VN07325','2020-03-09 00:00:00',NULL,'2020-03-29 20:00:10'),(5617,9,'VN07325','2020-03-16 00:00:00',NULL,'2020-03-29 20:00:10'),(5618,9,'VN07325','2020-03-23 00:00:00',NULL,'2020-03-29 20:00:10'),(5619,9,'VN07325','2020-03-30 00:00:00',NULL,'2020-03-29 20:00:10'),(5620,9,'VN07325','2020-04-06 00:00:00',40,'2020-03-29 20:00:10'),(5621,9,'VN07325','2020-04-13 00:00:00',40,'2020-03-29 20:00:10'),(5622,9,'VN07325','2020-04-20 00:00:00',40,'2020-03-29 20:00:10'),(5623,9,'VN07325','2020-04-27 00:00:00',40,'2020-03-29 20:00:10'),(5624,9,'VN07325','2020-05-04 00:00:00',40,'2020-03-29 20:00:10'),(5625,9,'VN07325','2020-05-11 00:00:00',40,'2020-03-29 20:00:10'),(5626,9,'VN07325','2020-05-18 00:00:00',40,'2020-03-29 20:00:10'),(5627,9,'VN07325','2020-05-25 00:00:00',40,'2020-03-29 20:00:10'),(5628,9,'VN07325','2020-06-01 00:00:00',40,'2020-03-29 20:00:10'),(5629,9,'VN07325','2020-06-08 00:00:00',40,'2020-03-29 20:00:10'),(5630,9,'VN07325','2020-06-15 00:00:00',40,'2020-03-29 20:00:10'),(5631,9,'VN07325','2020-06-22 00:00:00',40,'2020-03-29 20:00:10'),(5632,9,'VN07325','2020-06-29 00:00:00',32,'2020-03-29 20:00:10'),(5633,9,'VN07325','2020-07-06 00:00:00',40,'2020-03-29 20:00:10'),(5634,9,'VN07325','2020-07-13 00:00:00',40,'2020-03-29 20:00:10'),(5635,9,'VN07325','2020-07-20 00:00:00',40,'2020-03-29 20:00:10'),(5636,9,'VN07325','2020-07-27 00:00:00',40,'2020-03-29 20:00:10'),(5637,9,'VN07325','2020-08-03 00:00:00',40,'2020-03-29 20:00:10'),(5638,9,'VN07325','2020-08-10 00:00:00',40,'2020-03-29 20:00:10'),(5639,9,'VN07325','2020-08-17 00:00:00',40,'2020-03-29 20:00:10'),(5640,9,'VN07325','2020-08-24 00:00:00',40,'2020-03-29 20:00:10'),(5641,9,'VN07325','2020-08-31 00:00:00',40,'2020-03-29 20:00:10'),(5642,9,'VN07325','2020-09-07 00:00:00',40,'2020-03-29 20:00:10'),(5643,9,'VN07325','2020-09-14 00:00:00',40,'2020-03-29 20:00:10'),(5644,9,'VN07325','2020-09-21 00:00:00',40,'2020-03-29 20:00:10'),(5645,9,'VN07325','2020-09-28 00:00:00',40,'2020-03-29 20:00:10'),(5646,9,'VN07325','2020-10-05 00:00:00',40,'2020-03-29 20:00:10'),(5647,27,'vn03895','2020-03-16 00:00:00',5,'2020-03-30 14:09:03'),(5648,27,'vn03895','2020-03-23 00:00:00',5,'2020-03-30 14:09:04'),(5649,27,'vn03895','2020-03-30 00:00:00',5,'2020-03-30 14:09:04'),(5650,27,'vn03895','2020-04-06 00:00:00',5,'2020-03-30 14:09:04'),(5651,27,'vn03895','2020-04-13 00:00:00',5,'2020-03-30 14:09:04'),(5652,27,'vn03895','2020-04-20 00:00:00',5,'2020-03-30 14:09:04'),(5653,27,'vn03893','2020-03-16 00:00:00',0,'2020-03-30 14:09:04'),(5654,27,'vn03893','2020-03-23 00:00:00',0,'2020-03-30 14:09:04'),(5655,27,'vn03893','2020-03-30 00:00:00',0,'2020-03-30 14:09:04'),(5656,27,'vn03893','2020-04-06 00:00:00',0,'2020-03-30 14:09:04'),(5657,27,'vn03893','2020-04-13 00:00:00',40,'2020-03-30 14:09:04'),(5658,27,'vn03893','2020-04-20 00:00:00',40,'2020-03-30 14:09:04'),(5659,27,'VN05861','2020-03-16 00:00:00',20,'2020-03-30 14:09:04'),(5660,27,'VN05861','2020-03-23 00:00:00',20,'2020-03-30 14:09:04'),(5661,27,'VN05861','2020-03-30 00:00:00',20,'2020-03-30 14:09:04'),(5662,27,'VN05861','2020-04-06 00:00:00',45,'2020-03-30 14:09:04'),(5663,27,'VN05861','2020-04-13 00:00:00',45,'2020-03-30 14:09:04'),(5664,27,'VN05861','2020-04-20 00:00:00',45,'2020-03-30 14:09:04'),(5665,27,'UPDATE1','2020-03-16 00:00:00',3,'2020-03-30 14:09:04'),(5666,27,'UPDATE1','2020-03-23 00:00:00',3,'2020-03-30 14:09:04'),(5667,27,'UPDATE1','2020-03-30 00:00:00',3,'2020-03-30 14:09:04'),(5668,27,'UPDATE1','2020-04-06 00:00:00',3,'2020-03-30 14:09:04'),(5669,27,'UPDATE1','2020-04-13 00:00:00',3,'2020-03-30 14:09:04'),(5670,27,'UPDATE1','2020-04-20 00:00:00',3,'2020-03-30 14:09:04'),(5671,2,'1242198','2020-03-23 00:00:00',12,'2020-03-30 19:27:26'),(5672,2,'1242198','2020-03-30 00:00:00',32,'2020-03-30 19:27:26'),(5673,2,'1242198','2020-04-06 00:00:00',21,'2020-03-30 19:27:26'),(5674,2,'1242198','2020-04-13 00:00:00',NULL,'2020-03-30 19:27:26'),(5675,2,'vn03616','2020-03-23 00:00:00',45,'2020-03-30 19:27:26'),(5676,2,'vn03616','2020-03-30 00:00:00',45,'2020-03-30 19:27:26'),(5677,2,'vn03616','2020-04-06 00:00:00',21,'2020-03-30 19:27:26'),(5678,2,'vn03616','2020-04-13 00:00:00',45,'2020-03-30 19:27:26'),(5679,2,'vn07098','2020-03-23 00:00:00',NULL,'2020-03-30 19:27:26'),(5680,2,'vn07098','2020-03-30 00:00:00',32,'2020-03-30 19:27:26'),(5681,2,'vn07098','2020-04-06 00:00:00',21,'2020-03-30 19:27:26'),(5682,2,'vn07098','2020-04-13 00:00:00',NULL,'2020-03-30 19:27:26'),(5683,2,'vn05672','2020-03-23 00:00:00',21,'2020-03-30 19:27:26'),(5684,2,'vn05672','2020-03-30 00:00:00',21,'2020-03-30 19:27:26'),(5685,2,'vn05672','2020-04-06 00:00:00',21,'2020-03-30 19:27:26'),(5686,2,'vn05672','2020-04-13 00:00:00',NULL,'2020-03-30 19:27:26'),(5687,2,'VN06804','2020-03-23 00:00:00',23,'2020-03-30 19:27:26'),(5688,2,'VN06804','2020-03-30 00:00:00',23,'2020-03-30 19:27:26'),(5689,2,'VN06804','2020-04-06 00:00:00',23,'2020-03-30 19:27:26'),(5690,2,'VN06804','2020-04-13 00:00:00',23,'2020-03-30 19:27:26'),(5691,2,'vn04597','2020-03-23 00:00:00',35,'2020-03-30 19:27:26'),(5692,2,'vn04597','2020-03-30 00:00:00',35,'2020-03-30 19:27:26'),(5693,2,'vn04597','2020-04-06 00:00:00',35,'2020-03-30 19:27:26'),(5694,2,'vn04597','2020-04-13 00:00:00',35,'2020-03-30 19:27:26');
/*!40000 ALTER TABLE `qagile_rfs_resourceLoading` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qagile_rfs_resourceLoading_weeks`
--

DROP TABLE IF EXISTS `qagile_rfs_resourceLoading_weeks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qagile_rfs_resourceLoading_weeks` (
  `recordid` int NOT NULL AUTO_INCREMENT,
  `rfs_request_id` int DEFAULT NULL,
  `weekstart` datetime DEFAULT NULL,
  `numofweeks` int DEFAULT NULL,
  PRIMARY KEY (`recordid`),
  UNIQUE KEY `uq` (`rfs_request_id`),
  KEY `fk_rl_weeks_rfs_id_idx` (`rfs_request_id`),
  CONSTRAINT `fk_rl_weeks_rfs_id` FOREIGN KEY (`rfs_request_id`) REFERENCES `qagile_rfs_request` (`rfs_request_id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qagile_rfs_resourceLoading_weeks`
--

LOCK TABLES `qagile_rfs_resourceLoading_weeks` WRITE;
/*!40000 ALTER TABLE `qagile_rfs_resourceLoading_weeks` DISABLE KEYS */;
INSERT INTO `qagile_rfs_resourceLoading_weeks` VALUES (25,1,'2020-04-06 00:00:00',10),(41,9,'2020-03-02 00:00:00',32),(42,27,'2020-03-16 00:00:00',6),(43,2,'2020-03-23 00:00:00',4),(53,23,'2020-03-30 00:00:00',NULL),(57,28,'2020-03-30 00:00:00',NULL);
/*!40000 ALTER TABLE `qagile_rfs_resourceLoading_weeks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qagile_rfs_rfs`
--

DROP TABLE IF EXISTS `qagile_rfs_rfs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qagile_rfs_rfs` (
  `rfs_id` int NOT NULL AUTO_INCREMENT,
  `rfs_request_id` int DEFAULT NULL,
  `rfs_estimate_id` int DEFAULT NULL,
  `rfs_resourceLoad_id` int DEFAULT NULL,
  `assumptions` mediumtext,
  `dependencies` mediumtext,
  `createDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `rfs_status` int DEFAULT NULL,
  `confidence` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`rfs_id`),
  KEY `fk_rfs_request_idx` (`rfs_request_id`),
  KEY `fk_rfs_status_idx` (`rfs_status`),
  CONSTRAINT `fk_rfs_request` FOREIGN KEY (`rfs_request_id`) REFERENCES `qagile_rfs_request` (`rfs_request_id`),
  CONSTRAINT `fk_rfs_status` FOREIGN KEY (`rfs_status`) REFERENCES `qagile_rfs_status` (`status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qagile_rfs_rfs`
--

LOCK TABLES `qagile_rfs_rfs` WRITE;
/*!40000 ALTER TABLE `qagile_rfs_rfs` DISABLE KEYS */;
/*!40000 ALTER TABLE `qagile_rfs_rfs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qagile_rfs_status`
--

DROP TABLE IF EXISTS `qagile_rfs_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qagile_rfs_status` (
  `status_id` int NOT NULL AUTO_INCREMENT,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qagile_rfs_status`
--

LOCK TABLES `qagile_rfs_status` WRITE;
/*!40000 ALTER TABLE `qagile_rfs_status` DISABLE KEYS */;
INSERT INTO `qagile_rfs_status` VALUES (1,'NEW'),(2,'DRAFT'),(3,'QA REVIEW'),(4,'PROJECT REVIEW'),(5,'APPROVED'),(6,'REJECTED');
/*!40000 ALTER TABLE `qagile_rfs_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qagile_rfs_wf_log`
--

DROP TABLE IF EXISTS `qagile_rfs_wf_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qagile_rfs_wf_log` (
  `record_id` int NOT NULL AUTO_INCREMENT,
  `rfs_request_id` int DEFAULT NULL,
  `rfs_status` varchar(45) DEFAULT NULL,
  `record_dt` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`record_id`),
  KEY `fk_wf_rfs_id_idx` (`rfs_request_id`),
  CONSTRAINT `fk_wf_rfs_id` FOREIGN KEY (`rfs_request_id`) REFERENCES `qagile_rfs_request` (`rfs_request_id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qagile_rfs_wf_log`
--

LOCK TABLES `qagile_rfs_wf_log` WRITE;
/*!40000 ALTER TABLE `qagile_rfs_wf_log` DISABLE KEYS */;
INSERT INTO `qagile_rfs_wf_log` VALUES (1,2,'NEW','2020-03-21 18:03:39'),(2,2,'SUBMITTED','2020-03-21 18:03:43'),(3,2,'NEW','2020-03-21 18:03:46'),(4,2,'NEW','2020-03-21 18:03:51'),(5,2,'SUBMITTED','2020-03-21 18:03:53'),(6,2,'APPROVED','2020-03-21 18:03:55'),(7,2,'APPROVED','2020-03-21 18:05:59'),(8,2,'APPROVED','2020-03-21 18:06:02'),(9,2,'APPROVED','2020-03-21 18:09:44'),(10,2,'NEW','2020-03-21 18:10:06'),(11,9,'NEW','2020-03-29 15:47:18'),(12,9,'NEW','2020-03-29 15:55:51'),(13,24,'NEW','2020-03-30 13:29:25'),(14,25,'NEW','2020-03-30 13:58:44'),(15,26,'NEW','2020-03-30 13:59:08'),(16,27,'NEW','2020-03-30 13:59:15'),(17,27,'NEW','2020-03-30 14:03:20'),(18,11,'SUBMITTED','2020-03-30 17:17:29'),(19,11,'NEW','2020-03-30 17:17:35'),(20,11,'SUBMITTED','2020-03-30 17:17:54'),(21,10,'NEW','2020-03-30 19:13:32'),(22,10,'SUBMITTED','2020-03-30 19:13:34'),(23,10,'APPROVED','2020-03-30 19:13:36'),(24,10,'NEW','2020-03-30 19:13:38'),(25,10,'SUBMITTED','2020-03-30 19:13:40'),(26,10,'NEW','2020-03-30 19:13:43'),(27,10,'SUBMITTED','2020-03-30 19:13:45'),(28,10,'NEW','2020-03-30 19:13:48'),(29,10,'SUBMITTED','2020-03-30 19:13:50'),(30,10,'SUBMITTED','2020-03-30 19:13:52'),(31,10,'APPROVED','2020-03-30 19:13:54'),(32,11,'NULL','2020-03-30 19:14:14'),(33,12,'NULL','2020-03-30 19:15:35'),(34,12,'NULL','2020-03-30 19:16:59'),(35,12,'NULL','2020-03-30 19:17:05'),(36,12,'NULL','2020-03-30 19:17:07'),(37,12,'NULL','2020-03-30 19:17:09'),(38,12,'NULL','2020-03-30 19:17:22'),(39,12,'NULL','2020-03-30 19:17:28'),(40,12,'NULL','2020-03-30 19:18:34'),(41,13,'NULL','2020-03-30 19:21:43'),(42,14,'None','2020-03-30 19:22:13'),(43,8,'SUBMITTED','2020-03-30 19:23:20'),(44,8,'NULL','2020-03-30 19:23:54'),(45,1,'NULL','2020-03-30 19:27:11'),(46,2,'NULL','2020-03-30 19:27:26'),(47,23,'NEW','2020-03-30 19:45:22'),(48,28,'NEW','2020-03-30 19:48:25');
/*!40000 ALTER TABLE `qagile_rfs_wf_log` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-31 14:27:16
