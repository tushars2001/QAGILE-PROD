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
) ENGINE=InnoDB AUTO_INCREMENT=376 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `del_log_qagile_rfs_estimates`
--

LOCK TABLES `del_log_qagile_rfs_estimates` WRITE;
/*!40000 ALTER TABLE `del_log_qagile_rfs_estimates` DISABLE KEYS */;
INSERT INTO `del_log_qagile_rfs_estimates` VALUES (1,2,'KTAPP',100.00,NULL,'for KT','2020-03-28 20:21:56'),(2,2,'KTSSR',200.00,NULL,'for SSR','2020-03-28 20:21:56'),(3,2,'SIT',12.00,NULL,'int test','2020-03-28 20:21:56'),(4,2,'UAT',23.00,NULL,'uat support','2020-03-28 20:21:56'),(5,2,'PERF',34.00,NULL,'perf','2020-03-28 20:21:56'),(6,2,'SEC',32.00,NULL,'sec test','2020-03-28 20:21:56'),(7,2,'PRDAT',5.00,NULL,'prod act','2020-03-28 20:21:56'),(8,2,'POM',8.00,NULL,'pom ','2020-03-28 20:21:56'),(9,2,'TRVCO',200.00,NULL,'onsite visit','2020-03-28 20:21:56'),(16,2,'KTAPP',100.00,NULL,'for KT','2020-03-28 20:23:08'),(17,2,'KTSSR',200.00,NULL,'for SSR','2020-03-28 20:23:08'),(18,2,'SIT',12.00,NULL,'int test','2020-03-28 20:23:08'),(19,2,'UAT',23.00,NULL,'uat support','2020-03-28 20:23:08'),(20,2,'PERF',34.00,NULL,'perf','2020-03-28 20:23:08'),(21,2,'SEC',32.00,NULL,'sec test','2020-03-28 20:23:08'),(22,2,'PRDAT',5.00,NULL,'prod act','2020-03-28 20:23:08'),(23,2,'POM',8.00,NULL,'pom ','2020-03-28 20:23:08'),(24,2,'TRVCO',200.00,NULL,'onsite visit','2020-03-28 20:23:08'),(31,2,'KTAPP',100.00,NULL,'for KT','2020-03-28 20:25:42'),(32,2,'KTSSR',200.00,NULL,'for SSR','2020-03-28 20:25:42'),(33,2,'SIT',12.00,NULL,'int test','2020-03-28 20:25:42'),(34,2,'UAT',23.00,NULL,'uat support','2020-03-28 20:25:42'),(35,2,'PERF',34.00,NULL,'perf','2020-03-28 20:25:42'),(36,2,'SEC',32.00,NULL,'sec test','2020-03-28 20:25:42'),(37,2,'PRDAT',5.00,NULL,'prod act','2020-03-28 20:25:42'),(38,2,'POM',8.00,NULL,'pom ','2020-03-28 20:25:42'),(39,2,'TRVCO',200.00,NULL,'onsite visit','2020-03-28 20:25:42'),(46,2,'KTAPP',100.00,NULL,'for KT','2020-03-28 20:46:01'),(47,2,'KTSSR',200.00,NULL,'for SSR','2020-03-28 20:46:01'),(48,2,'SIT',12.00,NULL,'int test','2020-03-28 20:46:01'),(49,2,'UAT',23.00,NULL,'uat support','2020-03-28 20:46:01'),(50,2,'PERF',34.00,NULL,'perf','2020-03-28 20:46:01'),(51,2,'SEC',32.00,NULL,'sec test','2020-03-28 20:46:01'),(52,2,'PRDAT',5.00,NULL,'prod act','2020-03-28 20:46:01'),(53,2,'POM',8.00,NULL,'pom ','2020-03-28 20:46:01'),(54,2,'TRVCO',200.00,NULL,'onsite visit','2020-03-28 20:46:01'),(61,2,'KTAPP',100.00,NULL,'for KT','2020-03-28 20:52:10'),(62,2,'KTSSR',200.00,NULL,'for SSR','2020-03-28 20:52:10'),(63,2,'SIT',12.00,NULL,'int test','2020-03-28 20:52:10'),(64,2,'UAT',23.00,NULL,'uat support','2020-03-28 20:52:10'),(65,2,'PERF',34.00,NULL,'perf','2020-03-28 20:52:10'),(66,2,'SEC',32.00,NULL,'sec test','2020-03-28 20:52:10'),(67,2,'ACC',12.00,NULL,'acc test','2020-03-28 20:52:10'),(68,2,'PRDAT',5.00,NULL,'prod act','2020-03-28 20:52:10'),(69,2,'POM',8.00,NULL,'pom ','2020-03-28 20:52:10'),(70,2,'TRVCO',200.00,NULL,'onsite visit','2020-03-28 20:52:10'),(76,2,'KTAPP',100.00,NULL,'for KT','2020-03-28 20:53:26'),(77,2,'KTSSR',200.00,NULL,'for SSR','2020-03-28 20:53:26'),(78,2,'SIT',12.00,NULL,'int test','2020-03-28 20:53:26'),(79,2,'UAT',23.00,NULL,'uat support','2020-03-28 20:53:26'),(80,2,'PERF',34.00,NULL,'perf','2020-03-28 20:53:26'),(81,2,'SEC',32.00,NULL,'sec test','2020-03-28 20:53:26'),(82,2,'ACC',12.00,NULL,'acc test','2020-03-28 20:53:26'),(83,2,'PRDAT',5.00,NULL,'prod act','2020-03-28 20:53:26'),(84,2,'POM',8.00,NULL,'pom ','2020-03-28 20:53:26'),(85,2,'TRVCO',200.00,NULL,'onsite visit','2020-03-28 20:53:26'),(91,2,'KTAPP',100.00,NULL,'for KT','2020-03-29 12:05:06'),(92,2,'KTSSR',200.00,NULL,'for SSR','2020-03-29 12:05:06'),(93,2,'SIT',12.00,NULL,'int test','2020-03-29 12:05:06'),(94,2,'UAT',23.00,NULL,'uat support','2020-03-29 12:05:06'),(95,2,'PERF',34.00,NULL,'perf','2020-03-29 12:05:06'),(96,2,'SEC',32.00,NULL,'sec test','2020-03-29 12:05:06'),(97,2,'ACC',12.00,NULL,'acc test','2020-03-29 12:05:06'),(98,2,'PRDAT',5.00,NULL,'prod act','2020-03-29 12:05:06'),(99,2,'POM',8.00,NULL,'pom ','2020-03-29 12:05:06'),(100,2,'TRVCO',200.00,NULL,'onsite visit','2020-03-29 12:05:06'),(106,2,'KTAPP',100.00,NULL,'for KT','2020-03-29 12:05:20'),(107,2,'KTSSR',200.00,NULL,'for SSR','2020-03-29 12:05:20'),(108,2,'SIT',12.00,NULL,'int test','2020-03-29 12:05:20'),(109,2,'UAT',23.00,NULL,'uat support','2020-03-29 12:05:20'),(110,2,'PERF',34.00,NULL,'perf','2020-03-29 12:05:20'),(111,2,'SEC',32.00,NULL,'sec test','2020-03-29 12:05:20'),(112,2,'ACC',12.00,NULL,'acc test','2020-03-29 12:05:20'),(113,2,'PRDAT',5.00,NULL,'prod act','2020-03-29 12:05:20'),(114,2,'POM',8.00,NULL,'pom ','2020-03-29 12:05:20'),(115,2,'TRVCO',200.00,NULL,'onsite visit','2020-03-29 12:05:20'),(121,2,'KTAPP',100.00,NULL,'for KT','2020-03-29 12:08:08'),(122,2,'KTSSR',200.00,NULL,'for SSR','2020-03-29 12:08:08'),(123,2,'SIT',12.00,NULL,'int test','2020-03-29 12:08:08'),(124,2,'UAT',23.00,NULL,'uat support','2020-03-29 12:08:08'),(125,2,'PERF',34.00,NULL,'perf','2020-03-29 12:08:08'),(126,2,'SEC',32.00,NULL,'sec test','2020-03-29 12:08:08'),(127,2,'ACC',12.00,NULL,'acc test','2020-03-29 12:08:08'),(128,2,'PRDAT',5.00,NULL,'prod act','2020-03-29 12:08:08'),(129,2,'POM',8.00,NULL,'pom ','2020-03-29 12:08:08'),(130,2,'TRVCO',200.00,NULL,'onsite visit','2020-03-29 12:08:08'),(136,2,'KTAPP',100.00,NULL,'for KT','2020-03-29 12:08:52'),(137,2,'KTSSR',200.00,NULL,'for SSR','2020-03-29 12:08:52'),(138,2,'SIT',12.00,NULL,'int test','2020-03-29 12:08:52'),(139,2,'UAT',23.00,NULL,'uat support','2020-03-29 12:08:52'),(140,2,'PERF',34.00,NULL,'perf','2020-03-29 12:08:52'),(141,2,'SEC',32.00,NULL,'sec test','2020-03-29 12:08:52'),(142,2,'ACC',12.00,NULL,'acc test','2020-03-29 12:08:52'),(143,2,'PRDAT',5.00,NULL,'prod act','2020-03-29 12:08:52'),(144,2,'POM',8.00,NULL,'pom ','2020-03-29 12:08:52'),(145,2,'TRVCO',200.00,NULL,'onsite visit','2020-03-29 12:08:52'),(151,2,'KTAPP',100.00,NULL,'for KT','2020-03-29 12:10:21'),(152,2,'KTSSR',200.00,NULL,'for SSR','2020-03-29 12:10:21'),(153,2,'SIT',12.00,NULL,'int test','2020-03-29 12:10:21'),(154,2,'UAT',23.00,NULL,'uat support','2020-03-29 12:10:21'),(155,2,'PERF',34.00,NULL,'perf','2020-03-29 12:10:21'),(156,2,'SEC',32.00,NULL,'sec test','2020-03-29 12:10:21'),(157,2,'ACC',12.00,NULL,'acc test','2020-03-29 12:10:21'),(158,2,'PRDAT',5.00,NULL,'prod act','2020-03-29 12:10:21'),(159,2,'POM',8.00,NULL,'pom ','2020-03-29 12:10:21'),(160,2,'TRVCO',200.00,NULL,'onsite visit','2020-03-29 12:10:21'),(166,2,'KTAPP',100.00,NULL,'for KT','2020-03-29 12:10:33'),(167,2,'KTSSR',200.00,NULL,'for SSR','2020-03-29 12:10:33'),(168,2,'SIT',12.00,NULL,'int test','2020-03-29 12:10:33'),(169,2,'UAT',23.00,NULL,'uat support','2020-03-29 12:10:33'),(170,2,'PERF',34.00,NULL,'perf','2020-03-29 12:10:33'),(171,2,'SEC',32.00,NULL,'sec test','2020-03-29 12:10:33'),(172,2,'ACC',12.00,NULL,'acc test','2020-03-29 12:10:33'),(173,2,'PRDAT',5.00,NULL,'prod act','2020-03-29 12:10:33'),(174,2,'POM',8.00,NULL,'pom ','2020-03-29 12:10:33'),(175,2,'TRVCO',200.00,NULL,'onsite visit','2020-03-29 12:10:33'),(181,2,'KTAPP',100.00,NULL,'for KT','2020-03-29 12:11:43'),(182,2,'KTSSR',200.00,NULL,'for SSR','2020-03-29 12:11:43'),(183,2,'SIT',12.00,NULL,'int test','2020-03-29 12:11:43'),(184,2,'UAT',23.00,NULL,'uat support','2020-03-29 12:11:43'),(185,2,'PERF',34.00,NULL,'perf','2020-03-29 12:11:43'),(186,2,'SEC',32.00,NULL,'sec test','2020-03-29 12:11:43'),(187,2,'ACC',12.00,NULL,'acc test','2020-03-29 12:11:43'),(188,2,'PRDAT',5.00,NULL,'prod act','2020-03-29 12:11:43'),(189,2,'POM',8.00,NULL,'pom ','2020-03-29 12:11:43'),(190,2,'TRVCO',200.00,NULL,'onsite visit','2020-03-29 12:11:43'),(196,2,'KTAPP',100.00,NULL,'for KT','2020-03-29 12:15:49'),(197,2,'KTSSR',200.00,NULL,'for SSR','2020-03-29 12:15:49'),(198,2,'SIT',12.00,NULL,'int test','2020-03-29 12:15:49'),(199,2,'UAT',23.00,NULL,'uat support','2020-03-29 12:15:49'),(200,2,'PERF',34.00,NULL,'perf','2020-03-29 12:15:49'),(201,2,'SEC',32.00,NULL,'sec test','2020-03-29 12:15:49'),(202,2,'ACC',12.00,NULL,'acc test','2020-03-29 12:15:49'),(203,2,'PRDAT',5.00,NULL,'prod act','2020-03-29 12:15:49'),(204,2,'POM',8.00,NULL,'pom ','2020-03-29 12:15:49'),(205,2,'TRVCO',200.00,NULL,'onsite visit','2020-03-29 12:15:49'),(211,2,'KTAPP',100.00,NULL,'for KT','2020-03-29 12:17:06'),(212,2,'KTSSR',200.00,NULL,'for SSR','2020-03-29 12:17:06'),(213,2,'SIT',12.00,NULL,'int test','2020-03-29 12:17:06'),(214,2,'UAT',23.00,NULL,'uat support','2020-03-29 12:17:06'),(215,2,'PERF',34.00,NULL,'perf','2020-03-29 12:17:06'),(216,2,'SEC',32.00,NULL,'sec test','2020-03-29 12:17:06'),(217,2,'ACC',12.00,NULL,'acc test','2020-03-29 12:17:06'),(218,2,'PRDAT',5.00,NULL,'prod act','2020-03-29 12:17:06'),(219,2,'POM',8.00,NULL,'pom ','2020-03-29 12:17:06'),(220,2,'TRVCO',200.00,NULL,'onsite visit','2020-03-29 12:17:06'),(226,2,'KTAPP',100.00,NULL,'for KT','2020-03-29 12:17:26'),(227,2,'KTSSR',200.00,NULL,'for SSR','2020-03-29 12:17:26'),(228,2,'SIT',12.00,NULL,'int test','2020-03-29 12:17:26'),(229,2,'UAT',23.00,NULL,'uat support','2020-03-29 12:17:26'),(230,2,'PERF',34.00,NULL,'perf','2020-03-29 12:17:26'),(231,2,'SEC',32.00,NULL,'sec test','2020-03-29 12:17:26'),(232,2,'ACC',12.00,NULL,'acc test','2020-03-29 12:17:26'),(233,2,'PRDAT',5.00,NULL,'prod act','2020-03-29 12:17:26'),(234,2,'POM',8.00,NULL,'pom ','2020-03-29 12:17:26'),(235,2,'TRVCO',200.00,NULL,'onsite visit','2020-03-29 12:17:26'),(241,2,'KTAPP',100.00,NULL,'for KT','2020-03-29 12:20:04'),(242,2,'KTSSR',200.00,NULL,'for SSR','2020-03-29 12:20:04'),(243,2,'SIT',12.00,NULL,'int test','2020-03-29 12:20:04'),(244,2,'UAT',23.00,NULL,'uat support','2020-03-29 12:20:04'),(245,2,'PERF',34.00,NULL,'perf','2020-03-29 12:20:04'),(246,2,'SEC',32.00,NULL,'sec test','2020-03-29 12:20:04'),(247,2,'ACC',12.00,NULL,'acc test','2020-03-29 12:20:04'),(248,2,'PRDAT',5.00,NULL,'prod act','2020-03-29 12:20:04'),(249,2,'POM',8.00,NULL,'pom ','2020-03-29 12:20:04'),(250,2,'TRVCO',200.00,NULL,'onsite visit','2020-03-29 12:20:04'),(256,2,'KTAPP',100.00,NULL,'for KT','2020-03-29 12:35:17'),(257,2,'KTSSR',200.00,NULL,'for SSR','2020-03-29 12:35:17'),(258,2,'SIT',12.00,NULL,'int test','2020-03-29 12:35:17'),(259,2,'UAT',23.00,NULL,'uat support','2020-03-29 12:35:17'),(260,2,'PERF',34.00,NULL,'perf','2020-03-29 12:35:17'),(261,2,'SEC',32.00,NULL,'sec test','2020-03-29 12:35:17'),(262,2,'ACC',12.00,NULL,'acc test','2020-03-29 12:35:17'),(263,2,'PRDAT',5.00,NULL,'prod act','2020-03-29 12:35:17'),(264,2,'POM',8.00,NULL,'pom ','2020-03-29 12:35:17'),(265,2,'TRVCO',200.00,NULL,'onsite visit','2020-03-29 12:35:17'),(271,2,'KTAPP',100.00,NULL,'for KT','2020-03-29 12:35:28'),(272,2,'KTSSR',200.00,NULL,'for SSR','2020-03-29 12:35:28'),(273,2,'SIT',12.00,NULL,'int test','2020-03-29 12:35:28'),(274,2,'UAT',23.00,NULL,'uat support','2020-03-29 12:35:28'),(275,2,'PERF',34.00,NULL,'perf','2020-03-29 12:35:28'),(276,2,'SEC',32.00,NULL,'sec test','2020-03-29 12:35:28'),(277,2,'ACC',12.00,NULL,'acc test','2020-03-29 12:35:28'),(278,2,'PRDAT',5.00,NULL,'prod act','2020-03-29 12:35:28'),(279,2,'POM',8.00,NULL,'pom ','2020-03-29 12:35:28'),(280,2,'TRVCO',200.00,NULL,'onsite visit','2020-03-29 12:35:28'),(286,2,'KTAPP',100.00,NULL,'for KT','2020-03-29 12:36:49'),(287,2,'KTSSR',200.00,NULL,'for SSR','2020-03-29 12:36:49'),(288,2,'SIT',12.00,NULL,'int test','2020-03-29 12:36:49'),(289,2,'UAT',23.00,NULL,'uat support','2020-03-29 12:36:49'),(290,2,'PERF',34.00,NULL,'perf','2020-03-29 12:36:49'),(291,2,'SEC',32.00,NULL,'sec test','2020-03-29 12:36:49'),(292,2,'ACC',12.00,NULL,'acc test','2020-03-29 12:36:49'),(293,2,'PRDAT',5.00,NULL,'prod act','2020-03-29 12:36:49'),(294,2,'POM',8.00,NULL,'pom ','2020-03-29 12:36:49'),(295,2,'TRVCO',200.00,NULL,'onsite visit','2020-03-29 12:36:49'),(301,2,'KTAPP',100.00,NULL,'for KT','2020-03-29 12:37:49'),(302,2,'KTSSR',200.00,NULL,'for SSR','2020-03-29 12:37:49'),(303,2,'SIT',12.00,NULL,'int test','2020-03-29 12:37:49'),(304,2,'UAT',23.00,NULL,'uat support','2020-03-29 12:37:49'),(305,2,'PERF',34.00,NULL,'perf','2020-03-29 12:37:49'),(306,2,'SEC',32.00,NULL,'sec test','2020-03-29 12:37:49'),(307,2,'ACC',12.00,NULL,'acc test','2020-03-29 12:37:49'),(308,2,'PRDAT',5.00,NULL,'prod act','2020-03-29 12:37:49'),(309,2,'POM',8.00,NULL,'pom ','2020-03-29 12:37:49'),(310,2,'TRVCO',200.00,NULL,'onsite visit','2020-03-29 12:37:49'),(316,2,'KTAPP',100.00,NULL,'for KT','2020-03-29 12:39:31'),(317,2,'KTSSR',200.00,NULL,'for SSR','2020-03-29 12:39:31'),(318,2,'SIT',12.00,NULL,'int test','2020-03-29 12:39:31'),(319,2,'UAT',23.00,NULL,'uat support','2020-03-29 12:39:31'),(320,2,'PERF',34.00,NULL,'perf','2020-03-29 12:39:31'),(321,2,'SEC',32.00,NULL,'sec test','2020-03-29 12:39:31'),(322,2,'ACC',12.00,NULL,'acc test','2020-03-29 12:39:31'),(323,2,'PRDAT',5.00,NULL,'prod act','2020-03-29 12:39:31'),(324,2,'POM',8.00,NULL,'pom ','2020-03-29 12:39:31'),(325,2,'TRVCO',200.00,NULL,'onsite visit','2020-03-29 12:39:31'),(331,2,'KTAPP',100.00,NULL,'for KT','2020-03-29 12:39:39'),(332,2,'KTSSR',200.00,NULL,'for SSR','2020-03-29 12:39:39'),(333,2,'SIT',12.00,NULL,'int test','2020-03-29 12:39:39'),(334,2,'UAT',23.00,NULL,'uat support','2020-03-29 12:39:39'),(335,2,'PERF',34.00,NULL,'perf','2020-03-29 12:39:39'),(336,2,'SEC',32.00,NULL,'sec test','2020-03-29 12:39:39'),(337,2,'ACC',12.00,NULL,'acc test','2020-03-29 12:39:39'),(338,2,'PRDAT',5.00,NULL,'prod act','2020-03-29 12:39:39'),(339,2,'POM',8.00,NULL,'pom ','2020-03-29 12:39:39'),(340,2,'TRVCO',200.00,NULL,'onsite visit','2020-03-29 12:39:39'),(346,2,'KTAPP',100.00,NULL,'for KT','2020-03-29 12:41:09'),(347,2,'KTSSR',200.00,NULL,'for SSR','2020-03-29 12:41:09'),(348,2,'SIT',12.00,NULL,'int test','2020-03-29 12:41:09'),(349,2,'UAT',23.00,NULL,'uat support','2020-03-29 12:41:09'),(350,2,'PERF',34.00,NULL,'perf','2020-03-29 12:41:09'),(351,2,'SEC',32.00,NULL,'sec test','2020-03-29 12:41:09'),(352,2,'ACC',12.00,NULL,'acc test','2020-03-29 12:41:09'),(353,2,'PRDAT',5.00,NULL,'prod act','2020-03-29 12:41:09'),(354,2,'POM',8.00,NULL,'pom ','2020-03-29 12:41:09'),(355,2,'TRVCO',200.00,NULL,'onsite visit','2020-03-29 12:41:09'),(361,2,'KTAPP',100.00,NULL,'for KT','2020-03-29 12:49:38'),(362,2,'KTSSR',200.00,NULL,'for SSR','2020-03-29 12:49:38'),(363,2,'SIT',12.00,NULL,'int test','2020-03-29 12:49:38'),(364,2,'UAT',23.00,NULL,'uat support','2020-03-29 12:49:38'),(365,2,'PERF',34.00,NULL,'perf','2020-03-29 12:49:38'),(366,2,'SEC',32.00,NULL,'sec test','2020-03-29 12:49:38'),(367,2,'ACC',12.00,NULL,'acc test','2020-03-29 12:49:38'),(368,2,'PRDAT',5.00,NULL,'prod act','2020-03-29 12:49:38'),(369,2,'POM',8.00,NULL,'pom ','2020-03-29 12:49:38'),(370,2,'TRVCO',200.00,NULL,'onsite visit','2020-03-29 12:49:38');
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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qagile_domains_team`
--

LOCK TABLES `qagile_domains_team` WRITE;
/*!40000 ALTER TABLE `qagile_domains_team` DISABLE KEYS */;
INSERT INTO `qagile_domains_team` VALUES (8,6,'1242198'),(9,2,'UPDATE1'),(10,1,'vn03616'),(11,2,'vn03895'),(13,1,'vn05672'),(14,3,'vn05979'),(15,1,'VN06804'),(16,1,'vn07098'),(17,1,'VN07325'),(18,5,'vn12345'),(23,1,'1242198'),(24,1,'VN03844'),(25,2,'VN03844'),(26,5,'VN03844'),(27,3,'vn04597');
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
INSERT INTO `qagile_person` VALUES ('1242198','Coonie','Koonts','Connie.koonts@delhaize.com',6,'Core',16,'+1-909-212-8786','2020-03-14 21:57:16',2,3),('FAKE1','Biju','Mathew','biju.mathew@ibm.com',NULL,'Flex',NULL,'Ę +1 267 223 9783','2020-03-07 19:56:26',NULL,NULL),('FAKE2','Dasaradha','RamuĘ','Dasaradha.Medha@ibm.com',NULL,'Flex',NULL,'Ę+1 704-293-4814','2020-03-07 19:56:26',NULL,NULL),('FAKE3','Orkhan','Salmanov','Orkhan.Salmanov@ibm.com',NULL,'Flex',NULL,'Ę+1 774-359-5516','2020-03-07 19:56:27',NULL,NULL),('FAKE4','Rupa','Elizabeth','Rupa.Elizabeth.Thomas@ibm.com',NULL,'Flex',NULL,'Ę+1-224-423-3323','2020-03-07 19:56:27',NULL,NULL),('FAKE5','Ronald','Weiner','ronald.weiner@ibm.com',NULL,'Flex',NULL,'Ę +1 248 875 3180','2020-03-07 19:56:27',NULL,NULL),('FAKE6','Surabhi','Praveen','Praveen.Kumar.Surabhi@ibm.com',NULL,'Flex',NULL,'Ę+1 630-767-9080','2020-03-07 19:56:27',NULL,NULL),('FAKE7','Akshay','R','Ę',NULL,'Core',NULL,'TBD','2020-03-07 19:56:27',NULL,NULL),('FAKE8','Avula','Sucharitha','asuchar1@in.ibm.com',NULL,'Core',NULL,'91-9490978771Ę','2020-03-07 19:56:27',NULL,NULL),('FAKE9','Saratchandra','Kadiveti','skadivet@in.ibm.com',NULL,'Core',NULL,'Not Known','2020-03-07 19:56:27',NULL,NULL),('UPDATE1','Tim','O Brien','',2,'',17,'','2020-03-14 22:04:05',2,NULL),('VN00022691','Kumar','Gampa​','Kumar.Gampa@ibm.com​',NULL,'Flex',NULL,NULL,'2020-03-07 20:05:43',NULL,NULL),('vn01382','Yamini','Manikantudu','Yamini.Manikantudu.Pulamanthula@ibm.com',NULL,'Flex',NULL,'+1 551-587-2219','2020-03-07 19:56:27',NULL,NULL),('vn02185','Sumit','Ghosh','sughosh4@in.ibm.com',NULL,'Core',NULL,'91- 9836736652','2020-03-07 19:56:27',NULL,NULL),('vn03171','Tejas','Patki','tejpatki@in.ibm.com',NULL,'Flex',NULL,'1-704-499-7035','2020-03-07 19:56:27',NULL,NULL),('vn03615','Kallam','Nandini','kanandin@in.ibm.com',NULL,'Core',NULL,'91- 9704183346','2020-03-07 19:56:27',NULL,NULL),('vn03616','Jyotshna','D2','jyotshd6@in.ibm.com',1,'Core',14,'91- 8056977513','2020-03-07 19:56:27',7,6),('vn03617','Vinay','Prasad','vinapras@in.ibm.com',NULL,'Core',NULL,'91- 8939723438','2020-03-07 19:56:27',NULL,NULL),('vn03619','Pobbireddy','Sameera','psameera@in.ibm.com',NULL,'Core',NULL,'91- 9916596445','2020-03-07 19:56:27',NULL,NULL),('VN03620','AyusmanaĘ','Samal','ayusamal@in.ibm.com',NULL,'Core',NULL,'91- 7760633389','2020-03-07 19:56:27',NULL,NULL),('vn03621','JineshĘ','Madappattu','jineshmpaul@in.ibm.com',NULL,'Flex',NULL,'Ę+1 603-930-1389','2020-03-07 19:56:26',NULL,NULL),('vn03623','Deepthi','Srinivas','deepsrin@in.ibm.com',NULL,'Core',NULL,'91- 9686849494','2020-03-07 19:56:27',NULL,NULL),('vn03624','VijayĘ','Kumar','vijdkuma@in.ibm.com',NULL,'Core',NULL,'Ę+1 781-267-3567Ę','2020-03-07 19:56:27',NULL,NULL),('vn03625','Vineetha','SrikireddyĘĘĘĘĘĘ','vinees99@in.ibm.com',NULL,'Core',NULL,'91- 7829897807','2020-03-07 19:56:27',NULL,NULL),('vn03626','Koushar','ShaikĘĘĘĘĘĘĘĘĘĘĘĘ','koushaik@in.ibm.com',NULL,'Core',NULL,'+1 740-490-1883','2020-03-07 19:56:26',NULL,NULL),('vn03627Ę','Venkatesh','Mahenthiran','vmahenth@in.ibm.com',NULL,'Core',NULL,'91- 9738716718','2020-03-07 19:56:27',NULL,NULL),('vn03629','Shamshad','Alam','shamshad.alam@in.ibm.com',NULL,'Core',NULL,'91- 7022064141','2020-03-07 19:56:27',NULL,NULL),('VN03631','Theresa','Jackson','tajackson@us.ibm.com',NULL,'Core',NULL,'+1 901-485-8585','2020-03-07 19:56:27',NULL,NULL),('vn03638','Sudha','Suman','sudhasuman@in.ibm.com',NULL,'Core',NULL,'91- 9886680250','2020-03-07 19:56:27',NULL,NULL),('vn03640','Madhusudan','Rampa','madrampa@in.ibm.com',NULL,'Core',NULL,'91- 9632211447','2020-03-07 19:56:27',NULL,NULL),('vn03648','Gorripati','SrijaĘĘ','gsrija99@in.ibm.com',NULL,'Core',NULL,'91- 9606632052','2020-03-07 19:56:27',NULL,NULL),('VN03665','Gowrishankar','Kalepalli','gkalepal@in.ibm.com',NULL,'Core',NULL,'+1 330-242-8966Ę','2020-03-07 19:56:26',NULL,NULL),('VN03674','Vivek','Sharma','vivek.sharmaz@in.ibm.com',NULL,'Flex',15,'+1 646-575-7583','2020-03-07 19:56:27',1,3),('vn03676','Shaakir','Khan','shaakir.ashraf@in.ibm.com',NULL,'Flex',NULL,'+1 781-971-9477Ę','2020-03-07 19:56:27',NULL,NULL),('vn03677Ę','Ambedkar','Prattipati','ambedkar.p@in.ibm.com',NULL,'Core',NULL,'+1 646-322-1758Ę','2020-03-07 19:56:26',NULL,NULL),('vn03679','Nilu','Kakkad','nilu.kakkad@in.ibm.com',NULL,'Core',NULL,'+1 508-904-5155','2020-03-07 19:56:27',NULL,NULL),('vn03680','Anil','Madhava','animadha@in.ibm.com',NULL,'Core',NULL,'+1 774-297-8227Ę','2020-03-07 19:56:26',NULL,NULL),('vn03694','K','PurushothamĘ','pumurthy@in.ibm.com',NULL,'Core',NULL,'+1 302-803-9164','2020-03-07 19:56:26',NULL,NULL),('vn03709','Sankara','RanganadhĘĘĘĘĘĘĘĘ','sankaran@in.ibm.com',NULL,'Core',NULL,'91- 9886500726','2020-03-07 19:56:27',NULL,NULL),('VN03710','Raksha','ShrivastavaĘĘĘĘĘĘĘ','Raksha Shrivastava@in.ibm.com',NULL,'Core',NULL,'+1 469-586-9098Ę','2020-03-07 19:56:27',NULL,NULL),('VN03844','Ajith','Nair2','ajithnair@in.ibm.com',NULL,'Core',NULL,'91- 9846968244','2020-03-07 19:56:27',NULL,NULL),('vn03893','Harish','Kumar','hkokkira@in.ibm.com',NULL,'Core',NULL,'91- 9444309871','2020-03-07 19:56:27',NULL,NULL),('VN03894','Shweta','Prasad','shwetapr@in.ibm.com',NULL,'Core',NULL,'+1 216-712-5032','2020-03-07 19:56:27',NULL,NULL),('vn03895','Avineet','Gupta','avineet.gupta@in.ibm.com',2,'Flex',NULL,'+1 614-787-0966Ę','2020-03-07 19:56:26',1,NULL),('vn03918','Chandrashekar','Ranganathan','crangana@in.ibm.com',NULL,'Core',NULL,'+1 980-777-5278','2020-03-07 19:56:26',NULL,NULL),('vn03923','Kumudavalli','Nallaballe','knallaba@in.ibm.com',NULL,'Core',NULL,'91- 7760265905','2020-03-07 19:56:27',NULL,NULL),('vn04097','Sivaram','Dhulipala','Sivarama.Krishna.Dhulipala@ibm.com',NULL,'Flex',NULL,'+1 781-547-9030','2020-03-07 19:56:27',NULL,NULL),('vn04130','Praveen','Mani','pravmani@in.ibm.com',NULL,'Core',NULL,'+1 848-246-9708','2020-03-07 19:56:27',NULL,NULL),('vn04186','Yaswanth','J','yjeevana@in.ibm.com',NULL,'Core',NULL,'91- 9790830445','2020-03-07 19:56:27',NULL,NULL),('vn04215','Sharma,','Prashant','sharma.prashant@in.ibm.com',NULL,'Flex',NULL,'91- 7796893354','2020-03-07 19:56:27',NULL,NULL),('vn04282','Riddhiman','De','riddhide@in.ibm.com',NULL,'Core',NULL,'91- 8981655631','2020-03-07 19:56:27',NULL,NULL),('vn04304','Kumaresh','ViswanathanĘĘĘ','kuviswan@in.ibm.com',NULL,'Core',NULL,'91- 7339478787','2020-03-07 19:56:27',NULL,NULL),('vn04362','Anbalagan','Thavasi','athavasi@in.ibm.com',NULL,'Core',NULL,'91- 9916080564','2020-03-07 19:56:27',NULL,NULL),('vn04379','Dyllan','Rafail','dyllanrafail@ibm.com',NULL,'Core',NULL,'+1 734-276-8933Ę','2020-03-07 19:56:26',NULL,NULL),('vn04536Ę','Varun','Samidurai','vsamidu@us.ibm.com',NULL,'Core',NULL,'+1 517-489-5430Ę','2020-03-07 19:56:27',NULL,NULL),('vn04596','Rajasekaran','Periasamy','raperias@in.ibm.com',NULL,'Core',NULL,'+1 469-386-0871Ę','2020-03-07 19:56:27',NULL,NULL),('vn04597','Abdul','Pamidi','Abdul@ibm.com',3,'Flex',17,'91- 9347018033','2020-03-07 19:56:27',NULL,NULL),('vn04771','Ramesh','Rajanala','rarajana@in.ibm.com',NULL,'Core',NULL,'91- 9880525500','2020-03-07 19:56:27',NULL,NULL),('vn04789','Willetta','Ar-Rahmaan','willetta@us.ibm.com',NULL,'Flex',NULL,'+1 720-396-1407Ę','2020-03-07 19:56:27',NULL,NULL),('vn04845','Justin','Lal','juvijaya@in.ibm.com',NULL,'Flex',NULL,'+1 864-326-7782','2020-03-07 19:56:26',NULL,NULL),('vn04864','Pallavi','Pothuru','ppothu11@in.ibm.com',NULL,'Core',NULL,'91-9490296764','2020-03-07 19:56:27',NULL,NULL),('vn05313','Bharat','Kandale','Bharat.Kandale@ibm.com',NULL,'Flex',NULL,'+1 917-771-6718','2020-03-07 19:56:26',NULL,NULL),('vn05438','Sreeman','Kancherla','sreeman@us.ibm.com',NULL,'Core',NULL,'+1 704-293-4814Ę','2020-03-07 19:56:27',NULL,NULL),('vn05672','Tushar','Saxena','tushar.saxena@in.ibm.com',1,'Flex',NULL,'+1 318-680-1012','2020-03-07 19:56:27',1,NULL),('vn05856','Lakshmanan','Durairajan','lduraira@in.ibm.com',NULL,'Flex',NULL,'+1 469-648-8568','2020-03-07 19:56:27',NULL,NULL),('vn05858','Srinivas','Thatiparthi','srinivasthatiparthi@in.ibm.com',NULL,'Core',NULL,'+1 762-217-3208','2020-03-07 19:56:27',NULL,NULL),('VN05861','SudhakarĘ','Ambati','sudambat@in.ibm.com',NULL,'Core',NULL,'+1 479-657-0119Ę','2020-03-07 19:56:27',NULL,NULL),('vn05918','Majid','Shahani','Majid.Hussain.Shahani@ibm.com',NULL,'Core',NULL,'+1 304-731-5390','2020-03-07 19:56:27',NULL,NULL),('VN05972','Charles','Aron','chararon@in.ibm.com',NULL,'Core',NULL,'91- 9663376076','2020-03-07 19:56:27',NULL,NULL),('vn05979','Divya','Sharma','divya.sharma@in.ibm.com',3,'Flex',NULL,'+1 405-397-0181Ę','2020-03-07 19:56:26',1,NULL),('vn06003','Ramkumar','S','ramkus88@in.ibm.com',NULL,'Core',NULL,'91- 9095650906','2020-03-07 19:56:27',NULL,NULL),('vn06032','Radha','Ganti','radganti@in.ibm.com',NULL,'Flex',NULL,'+1 980-622-2822','2020-03-07 19:56:27',NULL,NULL),('vn06093','Namita','Singh','singhn29@in.ibm.com',NULL,'Core',NULL,'91- 7899092437','2020-03-07 19:56:27',NULL,NULL),('vn06098','Nihar','Samantray','nsamntra@in.ibm.com',NULL,'Core',NULL,'91- 9535077990','2020-03-07 19:56:27',NULL,NULL),('vn06179','Steven','Andrew','Steven.Andrew.Toth@ibm.com',NULL,'Flex',NULL,'+1 630-338-7352','2020-03-07 19:56:27',NULL,NULL),('vn06213','Banasree','Maji','banamaji@in.ibm.com',NULL,'Core',NULL,'+1 984-218-5997','2020-03-07 19:56:26',NULL,NULL),('vn06302','Kondamudi','Siva','knagapra@in.ibm.com',NULL,'Core',NULL,'91- 8712130492','2020-03-07 19:56:27',NULL,NULL),('VN06309','Divakar','D','divakads@in.ibm.com',NULL,'Core',NULL,'91- 9620058734','2020-03-07 19:56:27',NULL,NULL),('vn06312','Shyju','D','shyjud99@in.ibm.com',NULL,'Core',NULL,'91- 8971178757','2020-03-07 19:56:27',NULL,NULL),('VN06344','Mukesh','Mishra','Mukesh.Kumar.Mishra@ibm.com',NULL,'Core',NULL,'+1 980-365-1239','2020-03-07 19:56:27',NULL,NULL),('vn06345','Vidur','Kukreja','Vidur.Kukreja@ibm.com',NULL,'Core',NULL,'Ę+1-980-565-9243','2020-03-07 19:56:27',NULL,NULL),('vn06351','Kiran','Bhardawaj','kiranrb10@in.ibm.com',NULL,'Core',NULL,'91- 9886003007','2020-03-07 19:56:27',NULL,NULL),('VN06429','Shikha','','shikhr99@in.ibm.com',NULL,'Core',NULL,'+917087781438Ę','2020-03-07 19:56:27',NULL,NULL),('vn06448','Shiva','Muriki','Shiva.Kumar.Muriki1@ibm.com',NULL,'Core',NULL,'+1 408-387-9865Ę','2020-03-07 19:56:27',NULL,NULL),('vn06467','Satya','Swaroop','Satya.Suram@delhaize.com',NULL,'Flex',NULL,'Ę+1 336-566-8725Ę','2020-03-07 19:56:27',NULL,NULL),('VN06489','Rajanikanth','Raghuraman','raraghur@in.ibm.com',NULL,'Core',NULL,'91- 9972788114','2020-03-07 19:56:27',NULL,NULL),('VN06491','Thirumala,','Vamsi','vamsimohan.t@in.ibm.com',NULL,'Flex',NULL,'Ę+1 814-779-6927','2020-03-07 19:56:27',NULL,NULL),('VN06492','Busspalli,','Ashok','aashok.kumar@in.ibm.com',NULL,'Core',NULL,'Ę+1 732-715-7148','2020-03-07 19:56:26',NULL,NULL),('vn06493','Rakshith','ShravanahallyĘ','rakshith.v@in.ibm.com',NULL,'Core',NULL,'91- 7411193501','2020-03-07 19:56:27',NULL,NULL),('vn06507','Zakkiya','Sultana','zasulta1@in.ibm.com',NULL,'Core',NULL,'91- 7760265905','2020-03-07 19:56:27',NULL,NULL),('vn06509','Koushik','Barman','kbarman@us.ibm.com',NULL,'Flex',NULL,'+1 704-604- 0788','2020-03-07 19:56:26',NULL,NULL),('vn06533','Preetham','Malo','Preetham.Maloday.Prakash@ibm.com',NULL,'Core',NULL,'Ę+1 980-217-1709','2020-03-07 19:56:27',NULL,NULL),('VN06651','Suresh','Kuriti','suresh.kuriti@in.ibm.com',NULL,'Flex',NULL,'Ę +1 919-949-4681','2020-03-07 19:56:27',NULL,NULL),('vn06670','Venkat','Kota','venkata.kota@in.ibm.com',NULL,'Flex',16,'+1-470-261-1316','2020-03-07 19:56:27',1,3),('vn06671','Maass,','Werner','wkmaass@us.ibm.com',NULL,'Flex',NULL,'Ę+1 704-490-3354','2020-03-07 19:56:27',NULL,NULL),('vn06684','Udaya','Naru','udaynaru@in.ibm.com',NULL,'Flex',NULL,'Ę+1 984-238-6465','2020-03-07 19:56:27',NULL,NULL),('vn06751','Mavuri,','Hemanth','hemavuri@in.ibm.com',NULL,'Flex',NULL,'Ę+1 966-604-2425','2020-03-07 19:56:27',NULL,NULL),('vn06754','Hima','Bindu','hbindu88@in.ibm.com',NULL,'Core',NULL,'91- 7483611744','2020-03-07 19:56:27',NULL,NULL),('vn06755','Ramamurthy','RadhakrishnanĘ','ramaradh@in.ibm.com',NULL,'Core',NULL,'91- 9880016712','2020-03-07 19:56:27',NULL,NULL),('vn06756','Mahesh','K','mahesk99@in.ibm.com',NULL,'Core',NULL,'91- 8317379303','2020-03-07 19:56:27',NULL,NULL),('vn06757','Sowjanya','Sripurapu','sosiripu@in.ibm.com',NULL,'Core',NULL,'91- 9742357247','2020-03-07 19:56:27',NULL,NULL),('vn06782','Prahanth','Nagaraj','prashanth.nagaraj@in.ibm.com',NULL,'Core',NULL,'Ę+1 614-715-0025','2020-03-07 19:56:27',NULL,NULL),('Vn06783','Ashok','kumar','ashokk13@in.ibm.com',NULL,'Core',NULL,'91- 9885371407','2020-03-07 19:56:27',NULL,NULL),('VN06804','Naveen','Kapu','navekapu@in.ibm.com',1,'Core',14,'1 469-982-3428','2020-03-07 19:56:27',3,3),('vn06823','Maneesh','Sanjeevan','maneesh.s@in.ibm.com',NULL,'Core',NULL,'91- 9886202706','2020-03-07 19:56:27',NULL,NULL),('vn06880','Mukesh','Agaram','mukesa88@in.ibm.com',NULL,'Core',NULL,'91- 7676490638','2020-03-07 19:56:27',NULL,NULL),('vn07086','Kevin','Hayes','Kevin.Hayes@ibm.com',NULL,'Flex',NULL,'Ę+1 704-575-2457','2020-03-07 19:56:26',NULL,NULL),('VN07089','Dayakar','Dharmareddy','Dayakar.Dharmareddy@ibm.com',NULL,'Flex',NULL,'Ę+1 682-414-5018Ę','2020-03-07 19:56:26',NULL,NULL),('vn07097','Satish','Patil','satishssp@in.ibm.com',NULL,'Core',NULL,'91-9945072127','2020-03-07 19:56:27',NULL,NULL),('vn07098','Kavitha','Stephen','kstephen@in.ibm.com',1,'Core',14,'91-9845808382','2020-03-07 19:56:27',7,6),('vn07099','Gollapalli','Sukesh','sgollapa@in.ibm.com',NULL,'Core',NULL,'91--9731443579','2020-03-07 19:56:27',NULL,NULL),('vn07128','Sujatha','Malleshappa','sumalles@in.ibm.com',NULL,'Core',NULL,'91-9886565466','2020-03-07 19:56:27',NULL,NULL),('VN07129','Pavan','Gowda','pgowda89@in.ibm.com',NULL,'Core',NULL,'91-9538010070','2020-03-07 19:56:27',NULL,NULL),('vn07166','Frank','Diaz-Pezua','Frank.Diaz-Pezua@ibm.com',NULL,'Core',NULL,'Ę+1 734-800-5069','2020-03-07 19:56:26',NULL,NULL),('vn07198','Valleru','Pragna','vapragn1@in.ibm.com',NULL,'Core',NULL,'91-9030804985','2020-03-07 19:56:27',NULL,NULL),('vn07234','Vipin','Goel','vipigoel@in.ibm.com',NULL,'Flex',NULL,'Ę+1 850-631-0194','2020-03-07 19:56:27',NULL,NULL),('VN07295','Saatvik','Sharma','saasharm@in.ibm.com',NULL,'Core',NULL,'91-6396219545','2020-03-07 19:56:27',NULL,NULL),('VN07317','SreekanthĘ','kondapaneni','sreekkon@in.ibm.com',NULL,'Core',NULL,'91-8088681535','2020-03-07 19:56:27',NULL,NULL),('VN07325','Purnima','Chaudhari','purchaud@in.ibm.com',1,'Core',14,'91-8481958313','2020-03-07 19:56:27',3,6),('vn07402','Christopher','Bemke','cabemke@us.ibm.com',NULL,'Core',NULL,'Ę+1 517-897-5942Ę','2020-03-07 19:56:26',NULL,NULL),('vn07429','Preethi','S','preets23@in.ibm.com',NULL,'Core',NULL,'91-7022384705','2020-03-07 19:56:27',NULL,NULL),('vn07474','Vasu','Dhana','vasu.dhana@ibm.com',NULL,'Flex',NULL,'Ę+1 502 - 291-7581','2020-03-07 19:56:27',NULL,NULL),('vn07535','Kowser','ParvezĘ','Kowser.Parvez1@ibm.com',NULL,'Flex',NULL,'Ę+1 214-392-9034','2020-03-07 19:56:26',NULL,NULL),('VN07571','Nikhil','Sonkamble','nikhilr1@in.ibm.com',NULL,'Core',NULL,'91-8277056746','2020-03-07 19:56:27',NULL,NULL),('VN07633','Akhila','Vajinepalli','avajine1@in.ibm.com',NULL,'Core',NULL,'91-9032081906Ę','2020-03-07 19:56:27',NULL,NULL),('VN07634','Avtar','Singh','avtsing1@in.ibm.com',NULL,'Core',NULL,'91-9878204038','2020-03-07 19:56:27',NULL,NULL),('vn07694','Katrina','Artis','Katrina.Artis@ibm.com',NULL,'Core',NULL,'Ę','2020-03-07 19:56:26',NULL,NULL),('vn07723','Ali','Aljafar','ali.aljafar@ibm.com',NULL,'Flex',NULL,'Ę+1 615-973-5035','2020-03-07 19:56:26',2,NULL),('vn07736','Ponnusamy','Gopalakrishnan','gopalakrishnan@in.ibm.com',NULL,'Flex',NULL,'Ę+1 747 263 6177','2020-03-07 19:56:27',NULL,NULL),('vn07887','Vijaya','Lakkundi','lakkundi@us.ibm.com',NULL,'Flex',NULL,'Ę +1 248 875 3180','2020-03-07 19:56:27',NULL,NULL),('vn07969','Kunal','Rajwadi','kunal.rajwadi@ibm.com',NULL,'Flex',NULL,'Ę +1 973 517 1272','2020-03-07 19:56:27',NULL,NULL),('vn08068','Rajendra','Bafna','rrbafana@us.ibm.com',NULL,'Flex',NULL,'Ę','2020-03-07 19:56:27',NULL,NULL),('vn08160','Surjyendu','K','surbiswa@in.ibm.com',NULL,'Core',NULL,'Not Known','2020-03-07 19:56:27',NULL,NULL),('vn12345','Rahul','Dravid','rah@123.com',5,'Core',14,'1212121212','2020-03-14 21:51:46',3,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=258 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qagile_rfs_estimates`
--

LOCK TABLES `qagile_rfs_estimates` WRITE;
/*!40000 ALTER TABLE `qagile_rfs_estimates` DISABLE KEYS */;
INSERT INTO `qagile_rfs_estimates` VALUES (248,2,'KTAPP',100.00,NULL,'for KT'),(249,2,'KTSSR',200.00,NULL,'for SSR'),(250,2,'SIT',12.00,NULL,'int test'),(251,2,'UAT',23.00,NULL,'uat support'),(252,2,'PERF',34.00,NULL,'perf'),(253,2,'SEC',32.00,NULL,'sec test'),(254,2,'ACC',12.00,NULL,'acc test'),(255,2,'PRDAT',5.00,NULL,'prod act'),(256,2,'POM',8.00,NULL,'pom '),(257,2,'TRVCO',200.00,NULL,'onsite visit');
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qagile_rfs_estimates_raci_head`
--

LOCK TABLES `qagile_rfs_estimates_raci_head` WRITE;
/*!40000 ALTER TABLE `qagile_rfs_estimates_raci_head` DISABLE KEYS */;
INSERT INTO `qagile_rfs_estimates_raci_head` VALUES (25,2,'QA CoE lead - Full Scope','full sit scope','QA CoE Support','just supporting uat','this is total qa cost');
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qagile_rfs_request`
--

LOCK TABLES `qagile_rfs_request` WRITE;
/*!40000 ALTER TABLE `qagile_rfs_request` DISABLE KEYS */;
INSERT INTO `qagile_rfs_request` VALUES (1,'2020-03-17 18:48:35',NULL,'2020-03-21 11:59:06',NULL,NULL,NULL,NULL,'None',NULL,'None','None','None',NULL,'None','None','None','None',NULL,'None','None',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'None',NULL,NULL,'None','None',NULL,'None',NULL,'None','NEW'),(2,'2020-03-18 18:58:20',NULL,'2020-03-21 18:10:06',NULL,NULL,NULL,NULL,'None',NULL,'None','test4','test2',NULL,'test3','test4','None','None',NULL,'None','None',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'None',NULL,NULL,'None','None',NULL,'None',NULL,'None','NEW'),(4,'2020-03-20 14:04:12',NULL,'2020-03-21 11:57:22',NULL,NULL,NULL,'2020-03-02 00:00:00','http://asasas.sasa.asasa','N','http://hp.alm.jira','PPM123','SPD','Capital','Beth ABC','beth@rbs.com','PMO','Beth ABC',NULL,'Dennise G','Ron Paro','Project','C','2020-03-02 00:00:00','2020-03-06 00:00:00','2020-03-09 00:00:00','2020-03-13 00:00:00','2020-03-16 00:00:00','2020-03-20 00:00:00','2020-03-22 00:00:00',NULL,'awesome project','vn05672','Y','Falcon','Sharepoint','Y','Customer Info','N','None','NEW'),(5,'2020-03-20 14:12:45',NULL,'2020-03-21 11:57:35',NULL,NULL,NULL,'2020-03-02 00:00:00','http://asasas.sasa.asasa','N','http://hp.alm.jira','PPM123','SPD','Capital','Beth ABC','beth@rbs.com','PMO','Beth ABC',NULL,'Dennise G','Ron Paro','Project','C','2020-03-02 00:00:00','2020-03-06 00:00:00','2020-03-09 00:00:00','2020-03-13 00:00:00','2020-03-16 00:00:00','2020-03-20 00:00:00','2020-03-22 00:00:00',NULL,'awesome project','vn05672','Y','Falcon','Sharepoint','Y','Customer Info','N','None','NEW'),(6,'2020-03-20 14:17:27',NULL,'2020-03-21 11:58:55',NULL,NULL,NULL,'2020-03-02 00:00:00','http://asasas.sasa.asasa','N','http://hp.alm.jira','PPM123','SPD','Capital','Beth ABC','beth@rbs.com','PMO','Beth ABC',NULL,'Dennise G','Ron Paro','Project','C','2020-03-02 00:00:00','2020-03-06 00:00:00','2020-03-09 00:00:00','2020-03-13 00:00:00','2020-03-16 00:00:00','2020-03-20 00:00:00','2020-03-22 00:00:00',NULL,'awesome project','vn05672','Y','Falcon','Sharepoint','Y','Customer Info','N','None','NEW'),(7,'2020-03-20 14:18:31',NULL,'2020-03-21 11:54:38',NULL,NULL,NULL,'2020-03-02 00:00:00','http://asasas.sasa.asasa','N','http://hp.alm.jira','PPM123','SPD23','Capital','Beth ABC','beth@rbs.com','PMO','Beth ABC',NULL,'Dennise G','Ron Paro','Project','C','2020-03-02 00:00:00','2020-03-06 00:00:00','2020-03-09 00:00:00','2020-03-13 00:00:00','2020-03-16 00:00:00','2020-03-20 00:00:00','2020-03-22 00:00:00',NULL,'awesome project','vn05672','Y','Falcon','Sharepoint','Y','Customer Info','N','None','NEW'),(8,'2020-03-20 16:36:50',NULL,'2020-03-21 11:47:13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'NEW'),(9,'2020-03-20 21:02:07',NULL,'2020-03-21 12:13:52',NULL,'Planning Phase',NULL,'2020-02-01 00:00:00','https://jira.retailbusinessservices.com/secure/RapidBoard.jspa?rapidView=365&view=detail&selectedIssue=MDMCUS-2928','Y','https://confluence.retailbusinessservices.com/display/MDMCUS/MDM-Customer','IM131234','CMDM RBS','Capital','Anne Molly','ann@rbs.com','Project Manager','Anne Molly','1242198','Dennise G','Trinity P','Project','B','2020-01-01 00:00:00','2020-02-01 00:00:00','2020-02-02 00:00:00','2020-03-01 00:00:00','2020-03-02 00:00:00','2020-08-01 00:00:00','2020-08-02 00:00:00',NULL,'Implement RBS wide CMDM ','vn05672','Y','CERES','Sharepoint confluence','Y','Core Customer Information','Y','None','NEW'),(10,'2020-03-21 17:45:49',NULL,NULL,NULL,NULL,NULL,NULL,'None',NULL,'None','test1','test2',NULL,'test3','test4','None','None',NULL,'None','None',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'None',NULL,NULL,'None','None',NULL,'None',NULL,'None','NEW'),(11,'2020-03-21 17:46:12',NULL,NULL,NULL,NULL,NULL,NULL,'None',NULL,'None','test2','test2',NULL,'test3','test4','None','None',NULL,'None','None',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'None',NULL,NULL,'None','None',NULL,'None',NULL,'None','NEW'),(12,'2020-03-21 17:46:22',NULL,NULL,NULL,NULL,NULL,NULL,'None',NULL,'None','test3','test2',NULL,'test3','test4','None','None',NULL,'None','None',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'None',NULL,NULL,'None','None',NULL,'None',NULL,'None','NEW'),(13,'2020-03-21 17:47:28',NULL,NULL,NULL,NULL,NULL,NULL,'None',NULL,'None','test1','test2',NULL,'test3','test4','None','None',NULL,'None','None',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'None',NULL,NULL,'None','None',NULL,'None',NULL,'None','NEW'),(14,'2020-03-23 19:48:00',NULL,'2020-03-23 19:48:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(15,'2020-03-23 19:48:16',NULL,'2020-03-23 19:48:16',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(16,'2020-03-23 20:11:05',NULL,'2020-03-23 20:11:05',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(17,'2020-03-23 20:35:16',NULL,'2020-03-23 20:35:16',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(18,'2020-03-23 20:35:56',NULL,'2020-03-23 20:35:56',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(19,'2020-03-23 21:03:07',NULL,'2020-03-23 21:03:07',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(20,'2020-03-23 21:08:08',NULL,'2020-03-23 21:08:08',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(21,'2020-03-24 22:01:42',NULL,'2020-03-24 22:01:42',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(22,'2020-03-24 22:05:44',NULL,'2020-03-24 22:05:44',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=246 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qagile_rfs_request_scope`
--

LOCK TABLES `qagile_rfs_request_scope` WRITE;
/*!40000 ALTER TABLE `qagile_rfs_request_scope` DISABLE KEYS */;
INSERT INTO `qagile_rfs_request_scope` VALUES (8,NULL,NULL,NULL,NULL,NULL,43,1),(8,NULL,NULL,NULL,NULL,NULL,44,2),(8,NULL,NULL,NULL,NULL,NULL,45,3),(8,NULL,NULL,NULL,NULL,NULL,46,4),(8,NULL,NULL,NULL,NULL,NULL,47,5),(8,NULL,NULL,NULL,NULL,NULL,48,6),(8,NULL,NULL,NULL,NULL,NULL,49,7),(7,'SIT (includes E2E)',1,'2020-03-02 00:00:00',NULL,'None',50,1),(7,'UAT Support',1,'2020-03-09 00:00:00','2020-03-10 00:00:00','2020-03-10',51,2),(7,'Regression Tests Execution',1,'2020-03-16 00:00:00','2020-03-18 00:00:00','None',52,3),(7,'Automation',1,'2020-03-18 00:00:00','2020-03-20 00:00:00','None',53,4),(7,'Performance Test',1,'2020-03-23 00:00:00','2020-03-25 00:00:00','None',54,5),(7,'Security',NULL,NULL,NULL,'None',55,6),(7,'IGNITE Quality Platform',NULL,NULL,NULL,'None',56,7),(4,'SIT (includes E2E)',NULL,NULL,NULL,NULL,64,1),(4,'UAT Support',NULL,NULL,NULL,NULL,65,2),(4,'Regression Tests Execution',NULL,NULL,NULL,NULL,66,3),(4,'Automation',NULL,NULL,NULL,NULL,67,4),(4,'Performance Test',NULL,NULL,NULL,NULL,68,5),(4,'Security',NULL,NULL,NULL,NULL,69,6),(4,'IGNITE Quality Platform',NULL,NULL,NULL,NULL,70,7),(5,'SIT (includes E2E)',NULL,NULL,NULL,NULL,71,1),(5,'UAT Support',NULL,NULL,NULL,NULL,72,2),(5,'Regression Tests Execution',NULL,NULL,NULL,NULL,73,3),(5,'Automation',NULL,NULL,NULL,NULL,74,4),(5,'Performance Test',NULL,NULL,NULL,NULL,75,5),(5,'Security',NULL,NULL,NULL,NULL,76,6),(5,'IGNITE Quality Platform',NULL,NULL,NULL,NULL,77,7),(6,'SIT (includes E2E)',NULL,NULL,NULL,NULL,85,1),(6,'UAT Support',NULL,NULL,NULL,NULL,86,2),(6,'Regression Tests Execution',NULL,NULL,NULL,NULL,87,3),(6,'Automation',NULL,NULL,NULL,NULL,88,4),(6,'Performance Test',NULL,NULL,NULL,NULL,89,5),(6,'Security',NULL,NULL,NULL,NULL,90,6),(6,'IGNITE Quality Platform',NULL,NULL,NULL,NULL,91,7),(1,'SIT (includes E2E)',NULL,NULL,NULL,'None',92,1),(1,'UAT Support',NULL,NULL,NULL,'None',93,2),(1,'Regression Tests Execution',NULL,NULL,NULL,'None',94,3),(1,'Automation',NULL,NULL,NULL,'None',95,4),(1,'Performance Test',NULL,NULL,NULL,'None',96,5),(1,'Security',NULL,NULL,NULL,'None',97,6),(1,'IGNITE Quality Platform',NULL,NULL,NULL,'None',98,7),(9,'SIT (includes E2E)',1,NULL,NULL,'None',99,1),(9,'UAT Support',1,NULL,NULL,'None',100,2),(9,'Regression Tests Execution',1,NULL,NULL,'None',101,3),(9,'Automation',1,NULL,NULL,'None',102,4),(9,'Performance Test',1,NULL,NULL,'None',103,5),(9,'Security',1,NULL,NULL,'None',104,6),(9,'IGNITE Quality Platform',1,NULL,NULL,'None',105,7),(10,'SIT (includes E2E)',NULL,NULL,NULL,'None',106,1),(10,'UAT Support',NULL,NULL,NULL,'None',107,2),(10,'Regression Tests Execution',NULL,NULL,NULL,'None',108,3),(10,'Automation',NULL,NULL,NULL,'None',109,4),(10,'Performance Test',NULL,NULL,NULL,'None',110,5),(10,'Security',NULL,NULL,NULL,'None',111,6),(10,'IGNITE Quality Platform',NULL,NULL,NULL,'None',112,7),(11,'SIT (includes E2E)',NULL,NULL,NULL,'None',113,1),(11,'UAT Support',NULL,NULL,NULL,'None',114,2),(11,'Regression Tests Execution',NULL,NULL,NULL,'None',115,3),(11,'Automation',NULL,NULL,NULL,'None',116,4),(11,'Performance Test',NULL,NULL,NULL,'None',117,5),(11,'Security',NULL,NULL,NULL,'None',118,6),(11,'IGNITE Quality Platform',NULL,NULL,NULL,'None',119,7),(12,'SIT (includes E2E)',NULL,NULL,NULL,'None',120,1),(12,'UAT Support',NULL,NULL,NULL,'None',121,2),(12,'Regression Tests Execution',NULL,NULL,NULL,'None',122,3),(12,'Automation',NULL,NULL,NULL,'None',123,4),(12,'Performance Test',NULL,NULL,NULL,'None',124,5),(12,'Security',NULL,NULL,NULL,'None',125,6),(12,'IGNITE Quality Platform',NULL,NULL,NULL,'None',126,7),(13,'SIT (includes E2E)',NULL,NULL,NULL,'None',127,1),(13,'UAT Support',NULL,NULL,NULL,'None',128,2),(13,'Regression Tests Execution',NULL,NULL,NULL,'None',129,3),(13,'Automation',NULL,NULL,NULL,'None',130,4),(13,'Performance Test',NULL,NULL,NULL,'None',131,5),(13,'Security',NULL,NULL,NULL,'None',132,6),(13,'IGNITE Quality Platform',NULL,NULL,NULL,'None',133,7),(2,'SIT (includes E2E)',NULL,NULL,NULL,'None',239,1),(2,'UAT Support',NULL,NULL,NULL,'None',240,2),(2,'Regression Tests Execution',NULL,NULL,NULL,'None',241,3),(2,'Automation',NULL,NULL,NULL,'None',242,4),(2,'Performance Test',NULL,NULL,NULL,'None',243,5),(2,'Security',NULL,NULL,NULL,'None',244,6),(2,'IGNITE Quality Platform',NULL,NULL,NULL,'None',245,7);
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
) ENGINE=InnoDB AUTO_INCREMENT=527 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qagile_rfs_resourceLoading`
--

LOCK TABLES `qagile_rfs_resourceLoading` WRITE;
/*!40000 ALTER TABLE `qagile_rfs_resourceLoading` DISABLE KEYS */;
INSERT INTO `qagile_rfs_resourceLoading` VALUES (143,2,'1242198','2020-03-23 00:00:00',12,'2020-03-26 12:59:31'),(144,2,'1242198','2020-03-30 00:00:00',32,'2020-03-26 12:59:31'),(145,2,'1242198','2020-04-06 00:00:00',21,'2020-03-26 12:59:31'),(146,2,'1242198','2020-04-13 00:00:00',NULL,'2020-03-26 12:59:31'),(147,2,'vn03616','2020-03-23 00:00:00',45,'2020-03-26 12:59:31'),(148,2,'vn03616','2020-03-30 00:00:00',45,'2020-03-26 12:59:31'),(149,2,'vn03616','2020-04-06 00:00:00',21,'2020-03-26 12:59:31'),(150,2,'vn03616','2020-04-13 00:00:00',45,'2020-03-26 12:59:31'),(151,2,'vn07098','2020-03-23 00:00:00',NULL,'2020-03-26 12:59:31'),(152,2,'vn07098','2020-03-30 00:00:00',32,'2020-03-26 12:59:31'),(153,2,'vn07098','2020-04-06 00:00:00',21,'2020-03-26 12:59:31'),(154,2,'vn07098','2020-04-13 00:00:00',NULL,'2020-03-26 12:59:31'),(155,2,'vn05672','2020-03-23 00:00:00',21,'2020-03-26 12:59:31'),(156,2,'vn05672','2020-03-30 00:00:00',21,'2020-03-26 12:59:31'),(157,2,'vn05672','2020-04-06 00:00:00',21,'2020-03-26 12:59:31'),(158,2,'vn05672','2020-04-13 00:00:00',NULL,'2020-03-26 12:59:31'),(159,2,'VN06804','2020-03-23 00:00:00',23,'2020-03-26 12:59:31'),(160,2,'VN06804','2020-03-30 00:00:00',23,'2020-03-26 12:59:31'),(161,2,'VN06804','2020-04-06 00:00:00',23,'2020-03-26 12:59:31'),(162,2,'VN06804','2020-04-13 00:00:00',23,'2020-03-26 12:59:31'),(163,2,'vn04597','2020-03-23 00:00:00',35,'2020-03-26 12:59:31'),(164,2,'vn04597','2020-03-30 00:00:00',35,'2020-03-26 12:59:31'),(165,2,'vn04597','2020-04-06 00:00:00',35,'2020-03-26 12:59:31'),(166,2,'vn04597','2020-04-13 00:00:00',35,'2020-03-26 12:59:31'),(487,1,'1242198','2020-04-06 00:00:00',4,'2020-03-26 20:44:28'),(488,1,'1242198','2020-04-13 00:00:00',4,'2020-03-26 20:44:28'),(489,1,'1242198','2020-04-20 00:00:00',4,'2020-03-26 20:44:28'),(490,1,'1242198','2020-04-27 00:00:00',4,'2020-03-26 20:44:28'),(491,1,'1242198','2020-05-04 00:00:00',4,'2020-03-26 20:44:28'),(492,1,'1242198','2020-05-11 00:00:00',4,'2020-03-26 20:44:28'),(493,1,'1242198','2020-05-18 00:00:00',4,'2020-03-26 20:44:28'),(494,1,'1242198','2020-05-25 00:00:00',4,'2020-03-26 20:44:28'),(495,1,'1242198','2020-06-01 00:00:00',4,'2020-03-26 20:44:28'),(496,1,'1242198','2020-06-08 00:00:00',4,'2020-03-26 20:44:28'),(497,1,'vn07098','2020-04-06 00:00:00',20,'2020-03-26 20:44:28'),(498,1,'vn07098','2020-04-13 00:00:00',20,'2020-03-26 20:44:28'),(499,1,'vn07098','2020-04-20 00:00:00',20,'2020-03-26 20:44:28'),(500,1,'vn07098','2020-04-27 00:00:00',20,'2020-03-26 20:44:28'),(501,1,'vn07098','2020-05-04 00:00:00',20,'2020-03-26 20:44:28'),(502,1,'vn07098','2020-05-11 00:00:00',20,'2020-03-26 20:44:28'),(503,1,'vn07098','2020-05-18 00:00:00',20,'2020-03-26 20:44:28'),(504,1,'vn07098','2020-05-25 00:00:00',20,'2020-03-26 20:44:28'),(505,1,'vn07098','2020-06-01 00:00:00',20,'2020-03-26 20:44:28'),(506,1,'vn07098','2020-06-08 00:00:00',20,'2020-03-26 20:44:28'),(507,1,'VN07325','2020-04-06 00:00:00',0,'2020-03-26 20:44:28'),(508,1,'VN07325','2020-04-13 00:00:00',0,'2020-03-26 20:44:28'),(509,1,'VN07325','2020-04-20 00:00:00',0,'2020-03-26 20:44:28'),(510,1,'VN07325','2020-04-27 00:00:00',0,'2020-03-26 20:44:28'),(511,1,'VN07325','2020-05-04 00:00:00',45,'2020-03-26 20:44:28'),(512,1,'VN07325','2020-05-11 00:00:00',45,'2020-03-26 20:44:28'),(513,1,'VN07325','2020-05-18 00:00:00',45,'2020-03-26 20:44:28'),(514,1,'VN07325','2020-05-25 00:00:00',45,'2020-03-26 20:44:28'),(515,1,'VN07325','2020-06-01 00:00:00',45,'2020-03-26 20:44:28'),(516,1,'VN07325','2020-06-08 00:00:00',45,'2020-03-26 20:44:28'),(517,1,'vn05672','2020-04-06 00:00:00',10,'2020-03-26 20:44:28'),(518,1,'vn05672','2020-04-13 00:00:00',10,'2020-03-26 20:44:28'),(519,1,'vn05672','2020-04-20 00:00:00',10,'2020-03-26 20:44:28'),(520,1,'vn05672','2020-04-27 00:00:00',10,'2020-03-26 20:44:28'),(521,1,'vn05672','2020-05-04 00:00:00',10,'2020-03-26 20:44:28'),(522,1,'vn05672','2020-05-11 00:00:00',10,'2020-03-26 20:44:28'),(523,1,'vn05672','2020-05-18 00:00:00',5,'2020-03-26 20:44:28'),(524,1,'vn05672','2020-05-25 00:00:00',5,'2020-03-26 20:44:28'),(525,1,'vn05672','2020-06-01 00:00:00',5,'2020-03-26 20:44:28'),(526,1,'vn05672','2020-06-08 00:00:00',5,'2020-03-26 20:44:28');
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qagile_rfs_resourceLoading_weeks`
--

LOCK TABLES `qagile_rfs_resourceLoading_weeks` WRITE;
/*!40000 ALTER TABLE `qagile_rfs_resourceLoading_weeks` DISABLE KEYS */;
INSERT INTO `qagile_rfs_resourceLoading_weeks` VALUES (16,2,'2020-03-23 00:00:00',4),(25,1,'2020-04-06 00:00:00',10);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qagile_rfs_wf_log`
--

LOCK TABLES `qagile_rfs_wf_log` WRITE;
/*!40000 ALTER TABLE `qagile_rfs_wf_log` DISABLE KEYS */;
INSERT INTO `qagile_rfs_wf_log` VALUES (1,2,'NEW','2020-03-21 18:03:39'),(2,2,'SUBMITTED','2020-03-21 18:03:43'),(3,2,'NEW','2020-03-21 18:03:46'),(4,2,'NEW','2020-03-21 18:03:51'),(5,2,'SUBMITTED','2020-03-21 18:03:53'),(6,2,'APPROVED','2020-03-21 18:03:55'),(7,2,'APPROVED','2020-03-21 18:05:59'),(8,2,'APPROVED','2020-03-21 18:06:02'),(9,2,'APPROVED','2020-03-21 18:09:44'),(10,2,'NEW','2020-03-21 18:10:06');
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

-- Dump completed on 2020-03-29 13:06:10
