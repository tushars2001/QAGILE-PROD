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
  CONSTRAINT `fk_team_person` FOREIGN KEY (`vnid`) REFERENCES `qagile_person` (`vnid`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=247 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qagile_domains_team`
--

LOCK TABLES `qagile_domains_team` WRITE;
/*!40000 ALTER TABLE `qagile_domains_team` DISABLE KEYS */;
INSERT INTO `qagile_domains_team` VALUES (10,1,'vn03616'),(17,1,'VN07325'),(18,5,'vn12345'),(28,1,'vn05672'),(29,2,'VN05861'),(30,2,'VN06344'),(32,2,'vn03895'),(41,3,NULL),(51,1,NULL),(52,3,NULL),(53,7,NULL),(59,1,'1242198'),(61,6,NULL),(62,2,'vn00001'),(63,6,'vn00001'),(73,1,NULL),(74,2,NULL),(75,1,NULL),(76,3,NULL),(86,3,'vn05979'),(88,4,'vn03626'),(89,1,'VN06804'),(90,5,'vn06493'),(91,5,'vn04097'),(92,5,'vn02185'),(95,2,'UPDATE1'),(96,4,'UPDATE1'),(103,1,'vn07098'),(104,2,'vn03893'),(105,3,'vn04597'),(106,2,'VN07633'),(107,5,'Updat3'),(108,12,'vn07723'),(109,4,'vn03677'),(110,13,'vn04362'),(111,12,'vn03680'),(112,2,'Vn06783'),(113,5,'VN07634'),(114,6,'FAKE8'),(117,14,'VN03620'),(118,4,'vn08613'),(119,4,'vn06213'),(120,11,'vn05313'),(121,4,'FAKE1'),(122,5,'VN06492'),(123,4,'VN05972'),(124,11,'Update9'),(125,15,'vn07402'),(126,3,'FAKE2'),(127,2,'VN07089'),(128,4,'vn03623'),(129,15,'VN06309'),(130,12,'vn04379'),(131,4,'FAKE4'),(132,5,'Updat2'),(133,11,'vn07166'),(134,13,'vn07099'),(135,15,'VN03665'),(136,3,'vn06751'),(137,2,'vn06754'),(138,4,'Update4'),(139,2,'vn03621'),(140,4,'vn04845'),(141,3,'vn07694'),(142,14,'vn07086'),(143,5,'vn06351'),(144,15,'vn06509'),(145,15,'vn07535'),(146,12,'VN22691'),(147,4,'vn04304'),(148,4,'vn03923'),(149,12,'vn07969'),(150,15,'vn05856'),(151,3,'vn06671'),(152,5,'vn03640'),(153,2,'vn06756'),(154,3,'vn08668'),(155,12,'vn05918'),(156,14,'Update3'),(157,7,'Update5'),(158,3,'vn06880'),(159,12,'Update7'),(160,2,'vn03615'),(161,15,'vn06098'),(162,14,'VN07571'),(163,4,'vn03918'),(164,12,'FAKE3'),(165,5,'vn04864'),(166,2,'VN07129'),(167,4,'vn03619'),(169,2,'vn06782'),(170,3,'vn08669'),(171,13,'vn08322'),(172,2,'vn08529'),(173,6,'vn04130'),(174,4,'FAKE6'),(175,4,'vn06533'),(176,15,'vn07429'),(177,12,'vn03694'),(178,15,'vn06032'),(179,12,'vn04596'),(180,13,'vn08068'),(181,14,'VN03710'),(182,5,'vn06755'),(183,2,'vn04771'),(184,4,'vn06003'),(185,13,'Update6'),(186,5,'vn04282'),(187,3,'vn07774'),(188,4,'FAKE5'),(189,15,'vn08309'),(190,11,'vn01382'),(191,5,'vn06507'),(192,4,'vn04215'),(193,4,'VN07295'),(194,14,'vn03709'),(196,5,'FAKE9'),(198,12,'Update8'),(199,12,'vn03676'),(200,4,'vn03629'),(201,2,'vn06448'),(202,13,'vn06312'),(203,5,'vn06302'),(204,2,'vn06757'),(205,2,'VN07317'),(206,14,'vn05858'),(207,2,'vn03638'),(208,6,'vn07128'),(210,5,'VN06651'),(211,2,'vn08160'),(212,15,'vn08516'),(213,15,'Update0'),(214,14,'vn03171'),(215,14,'VN03631'),(216,14,'VN06491'),(217,6,'vn06684'),(218,4,'vn07198'),(219,11,'vn04536'),(220,12,'vn07474'),(221,7,'vn08502'),(222,6,'vn06670'),(223,13,'vn03627'),(224,5,'vn06345'),(225,4,'vn03624'),(226,4,'vn07887'),(227,5,'vn03617'),(228,14,'vn03625'),(229,13,'vn07234'),(230,11,'vn03674'),(231,5,'vn04789'),(232,3,'Update2'),(233,4,'vn07736'),(234,1,NULL),(235,1,'vn08351'),(236,2,'vn08351'),(237,1,'vn07097'),(238,2,'vn07097'),(239,1,'vn08457'),(240,6,'VN07569'),(241,13,'rpaolin'),(242,2,'vn03844'),(243,5,'vn03844'),(244,1,'VN99999'),(245,2,'NUTTO4'),(246,4,'NUTTO4');
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

-- Dump completed on 2020-07-15 16:46:10
