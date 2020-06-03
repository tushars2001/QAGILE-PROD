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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-29 13:04:23
