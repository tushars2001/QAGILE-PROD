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
-- Table structure for table `qagile_deleted_objects`
--

DROP TABLE IF EXISTS `qagile_deleted_objects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qagile_deleted_objects` (
  `recordid` int NOT NULL AUTO_INCREMENT,
  `tbl` varchar(100) DEFAULT NULL,
  `obj` mediumtext NOT NULL,
  `dt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `userid` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`recordid`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qagile_deleted_objects`
--

LOCK TABLES `qagile_deleted_objects` WRITE;
/*!40000 ALTER TABLE `qagile_deleted_objects` DISABLE KEYS */;
INSERT INTO `qagile_deleted_objects` VALUES (1,'qagile_person','[{\"vnid\": \"vn04186\", \"first_name\": \"Yaswanth\", \"last_name\": \"J\", \"email\": \"yjeevana@in.ibm.com\", \"domain_id_rem\": null, \"category\": \"Core\", \"rate_id\": null, \"phone\": \"91- 9790830445\", \"created\": \"2020-03-07T19:56:27\", \"role_id\": null, \"location_id\": null}]','2020-05-03 22:24:32','vn05672'),(2,'qagile_person','[{\"vnid\": \"test123\", \"first_name\": \"test\", \"last_name\": \"testn\", \"email\": \"sfsdfds@sdfdsf.com\", \"domain_id_rem\": null, \"category\": \"Flex\", \"rate_id\": 23, \"phone\": \"23232323-2323\", \"created\": \"2020-05-03T18:25:50\", \"role_id\": 11, \"location_id\": 7}]','2020-05-03 22:26:02','vn05672'),(3,'qagile_person','[{\"vnid\": \"test123\", \"first_name\": \"test\", \"last_name\": \"testn\", \"email\": \"12343\", \"domain_id_rem\": null, \"category\": \"Core\", \"rate_id\": 22, \"phone\": \"dfdfd\", \"created\": \"2020-05-03T18:34:08\", \"role_id\": 10, \"location_id\": 4}]','2020-05-03 22:34:14','vn05672'),(4,'qagile_domains','[{\"domain_id\": 8, \"domain_name\": \"Test Domain\", \"domain_lead\": \"vn05979\", \"domain_lead_two\": null, \"pom\": null}]','2020-05-03 22:38:08','vn05672'),(5,'qagile_person_role','[{\"role_id\": 13, \"role\": \"Test\", \"role_code\": null}]','2020-05-03 22:40:32','vn05672'),(6,'qagile_person_location','[{\"location_id\": 8, \"city\": \"test\", \"state\": \"tobdel\", \"zip\": \"12121\", \"country\": \"EU\", \"loc_code\": null}]','2020-05-03 22:43:52','vn05672'),(7,'qagile_person_rate','[{\"rate_id\": 27, \"rate\": \"234.00\", \"category\": \"TBD\"}]','2020-05-03 22:44:31','vn05672'),(8,'qagile_person','[{\"vnid\": \"FAKE7\", \"first_name\": \"Akshay\", \"last_name\": \"R\", \"email\": \"\", \"domain_id_rem\": null, \"category\": \"Core\", \"rate_id\": null, \"phone\": \"TBD\", \"created\": \"2020-03-07T19:56:27\", \"role_id\": null, \"location_id\": null}]','2020-05-06 15:36:30','vn06345'),(9,'qagile_person','[{\"vnid\": \"vn03677\\u0118\", \"first_name\": \"Ambedkar\", \"last_name\": \"Prattipati\", \"email\": \"ambedkar.p@in.ibm.com\", \"domain_id_rem\": null, \"category\": \"Core\", \"rate_id\": null, \"phone\": \"+1 646-322-1758\\u0118\", \"created\": \"2020-03-07T19:56:26\", \"role_id\": null, \"location_id\": null}]','2020-05-06 15:39:24','vn06345'),(10,'qagile_person_rate','[{\"rate_id\": 30, \"rate\": \"99.00\", \"category\": \"Web\"}]','2020-05-06 15:52:11','vn06345'),(11,'qagile_person','[{\"vnid\": \"vn03627\\u0118\", \"first_name\": \"Venkatesh\", \"last_name\": \"Mahenthiran\", \"email\": \"vmahenth@in.ibm.com\", \"domain_id_rem\": null, \"category\": \"Core\", \"rate_id\": 14, \"phone\": \"91- 9738716718\", \"created\": \"2020-03-07T19:56:27\", \"role_id\": null, \"location_id\": 6}]','2020-05-07 19:50:21','vn06345'),(12,'qagile_domains','[]','2020-05-07 20:04:55','vn06345'),(13,'qagile_person','[{\"vnid\": \"vn00000\", \"first_name\": \"Test\", \"last_name\": \"Name\", \"email\": \"w@e.c\", \"domain_id_rem\": null, \"category\": \"Core\", \"rate_id\": 15, \"phone\": \"123123123\", \"created\": \"2020-04-16T19:46:41\", \"role_id\": 3, \"location_id\": 4}]','2020-05-07 21:19:54','vn05672'),(14,'qagile_person','[{\"vnid\": \"Update9\", \"first_name\": \"Connie\", \"last_name\": \"Koonts\", \"email\": \"\", \"domain_id_rem\": null, \"category\": \"\", \"rate_id\": 32, \"phone\": \"\", \"created\": \"2020-05-08T12:01:30\", \"role_id\": 2, \"location_id\": 3}]','2020-05-08 16:01:41','vn06345'),(15,'qagile_person','[{\"vnid\": \"vn06179\", \"first_name\": \"Steven\", \"last_name\": \"Andrew\", \"email\": \"Steven.Andrew.Toth@ibm.com\", \"domain_id_rem\": null, \"category\": \"Flex\", \"rate_id\": null, \"phone\": \"+1 630-338-7352\", \"created\": \"2020-03-07T19:56:27\", \"role_id\": null, \"location_id\": null}]','2020-05-08 16:25:58','vn06345'),(16,'qagile_person','[{\"vnid\": \"VN06429\", \"first_name\": \"Shikha\", \"last_name\": \"LNU\", \"email\": \"shikhr99@in.ibm.com\", \"domain_id_rem\": null, \"category\": \"Core\", \"rate_id\": null, \"phone\": \"+917087781438\\u0118\", \"created\": \"2020-03-07T19:56:27\", \"role_id\": null, \"location_id\": null}]','2020-05-08 18:19:29','vn06345'),(17,'qagile_person','[{\"vnid\": \"VN03894\", \"first_name\": \"Shweta\", \"last_name\": \"Prasad\", \"email\": \"shwetapr@in.ibm.com\", \"domain_id_rem\": null, \"category\": \"Core\", \"rate_id\": null, \"phone\": \"+1 216-712-5032\", \"created\": \"2020-03-07T19:56:27\", \"role_id\": null, \"location_id\": null}]','2020-05-08 18:19:58','vn06345'),(18,'qagile_person','[{\"vnid\": \"vn04536\\u0118\", \"first_name\": \"Varun\", \"last_name\": \"Samidurai\", \"email\": \"vsamidu@us.ibm.com\", \"domain_id_rem\": null, \"category\": \"Core\", \"rate_id\": null, \"phone\": \"+1 517-489-5430\\u0118\", \"created\": \"2020-03-07T19:56:27\", \"role_id\": null, \"location_id\": null}]','2020-05-08 18:26:20','vn06345'),(19,'qagile_domains','[{\"domain_id\": 10, \"domain_name\": \"test\", \"domain_lead\": null, \"domain_lead_two\": null, \"pom\": null}]','2020-05-08 19:35:03','vn06345'),(20,'qagile_domains','[{\"domain_id\": 9, \"domain_name\": \"Test Domain2\", \"domain_lead\": \"vn03674\", \"domain_lead_two\": \"vn06670\", \"pom\": null}]','2020-05-08 19:35:20','vn06345'),(21,'qagile_person_rate','[{\"rate_id\": 22, \"rate\": \"0.00\", \"category\": \"Custom4\"}]','2020-05-08 19:35:55','vn06345'),(22,'qagile_person','[{\"vnid\": \"VN99999\", \"first_name\": \"Suruchi\", \"last_name\": \"P\", \"email\": \"\", \"domain_id_rem\": null, \"category\": \"Core\", \"rate_id\": 14, \"phone\": \"\", \"created\": \"2020-06-04T14:25:21\", \"role_id\": 3, \"location_id\": 6}]','2020-06-18 22:54:01','vn05672');
/*!40000 ALTER TABLE `qagile_deleted_objects` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-15 16:46:06
