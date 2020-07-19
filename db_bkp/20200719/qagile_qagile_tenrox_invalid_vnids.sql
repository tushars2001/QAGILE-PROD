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
-- Table structure for table `qagile_tenrox_invalid_vnids`
--

DROP TABLE IF EXISTS `qagile_tenrox_invalid_vnids`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qagile_tenrox_invalid_vnids` (
  `record_id` int NOT NULL AUTO_INCREMENT,
  `tenrox_vnid` varchar(45) DEFAULT NULL,
  `tenrox_name` varchar(200) DEFAULT NULL,
  `vnid` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`record_id`),
  UNIQUE KEY `tenrox_vnid_UNIQUE` (`tenrox_vnid`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qagile_tenrox_invalid_vnids`
--

LOCK TABLES `qagile_tenrox_invalid_vnids` WRITE;
/*!40000 ALTER TABLE `qagile_tenrox_invalid_vnids` DISABLE KEYS */;
INSERT INTO `qagile_tenrox_invalid_vnids` VALUES (1,'VN00017157','SAMAL, AYUSMANA','VN03620'),(2,'vn00020804','NARU, UDAYA','vn06684'),(3,'VN00014251','Raghuraman, Rajaraman','VN06489'),(4,'VN00015875','KAKKAD, NILU','vn03679'),(5,'US00034784','SILVA, NANCY','Update7'),(6,'AA00698984','O\'BRIEN, TIM','UPDATE1'),(7,'VN00014926','PRASAD, VINAY SHANKAR','vn03617'),(8,'VN00020189','SANJEEVAN, MANEESH','vn06823'),(9,'VN00020272','de, Riddhiman','vn04282'),(10,'VN00019645','RAMPA, MADHUSUDANA','vn03640'),(11,'VN00023314','Kadiveti, Saratchandra','FAKE9'),(12,'VN00017566','KALLAM, NANDINI','vn03615'),(13,'VN00020264','Jeevanandham, Yaswanth',NULL),(14,'VN00018108','Devaki, Suman Kumar',NULL),(15,'VN00019500','Venkatesh, Sushmitha',NULL),(16,'VN00019648','Kokkirala, Harish K','vn03893'),(17,'VN00019498','Gorripati, Srija','vn03648'),(18,'VN00018188','MADAPPATTU, JINESH','vn03621'),(19,'VN00014415','MAHENTHIRAN, VENKATESH','vn03627'),(20,'VN00016577','SAMEERA, POBBIREDDY','vn03619'),(21,'VN00017425','ALAM, SHAMSHAD','vn03629'),(22,'VN00017524','KUMAR, VIJAY','vn03624'),(23,'VN00020269','Nallaballe, Kumudavalli','vn03923'),(24,'VN00019501','Shaik, Koushar','vn03626'),(25,'VN00020268','Ranganathan, Chandrasekar',NULL),(26,'VN00015731','SRINIVAS, DEEPTHI','vn03623'),(27,'VN00020267','Mohan, Nithish','vn03918'),(28,'VN00020270','Viswanathan, Kumaresh','vn04304'),(29,'VN00014253','PRATTIPATI, AMBEDKAR','vn03677'),(30,'VN00020556','Vijayanandan, Justin','vn04845'),(31,'VN00023363','Elizabeth Thomas, Rupa','FAKE4'),(32,'VN00023380','Surabhi Kumar, Praveen','FAKE6'),(33,'VN00023027','Weiner, Ronald','FAKE5'),(34,'VN00023083','Mathew, Biju','FAKE1'),(35,'VN00023028','Hussain, Akbar',NULL),(36,'VN00018802','Murthy, Purushotham K','vn03694'),(37,'VN00019537','Rafail, Dyllan','vn04379'),(38,'VN00022691','Kumar, Gampa','VN22691'),(39,'VN00014254','KHAN, SHAAKIR A','vn03676'),(40,'VN00022827','Salmanov, Orkhan','FAKE3'),(41,'VN00017277','KALEPALLI, GOWRISHANKAR','VN03665');
/*!40000 ALTER TABLE `qagile_tenrox_invalid_vnids` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-19 19:43:19
