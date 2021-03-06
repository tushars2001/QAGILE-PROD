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
  `last_updated_by` varchar(45) DEFAULT '',
  `current_project_status` varchar(45) DEFAULT '',
  `qa_spoc` varchar(10) DEFAULT NULL COMMENT 'Fk from team',
  `kickoff_date` datetime DEFAULT NULL,
  `repository` mediumtext,
  `repository_access` varchar(1) DEFAULT '',
  `alm_jira_link` mediumtext,
  `project_id` varchar(15) DEFAULT '' COMMENT 'PPM ID',
  `project_name` varchar(45) DEFAULT '',
  `category` varchar(10) DEFAULT '' COMMENT 'Capital/expence',
  `requester_name` varchar(45) DEFAULT '',
  `requester_email` varchar(200) DEFAULT '',
  `requester_role` varchar(45) DEFAULT '',
  `pm` varchar(45) DEFAULT '' COMMENT 'Project manager',
  `PoM` varchar(10) DEFAULT NULL COMMENT 'QA port manager',
  `dir_it` varchar(45) DEFAULT '',
  `project_poc` varchar(45) DEFAULT '',
  `project_type` varchar(15) DEFAULT '' COMMENT 'Project, am&s, prod issue',
  `project_size` varchar(1) DEFAULT '',
  `tentative_prep_start` datetime DEFAULT NULL,
  `tentative_prep_end` datetime DEFAULT NULL,
  `tentative_plan_start` datetime DEFAULT NULL,
  `tentative_plan_end` datetime DEFAULT NULL,
  `tentative_exec_start` datetime DEFAULT NULL,
  `tentative_exec_end` datetime DEFAULT NULL,
  `tentative_close_start` datetime DEFAULT NULL,
  `tentative_close_end` datetime DEFAULT NULL,
  `project_description` mediumtext,
  `qa_coe_lead` varchar(10) DEFAULT NULL,
  `confidential` varchar(1) DEFAULT '',
  `confidential_alt_name` varchar(45) DEFAULT '',
  `confidential_doc_share_method` varchar(45) DEFAULT '',
  `pii_bsi` varchar(1) DEFAULT '',
  `pii_bsi_description` mediumtext,
  `scope_remote` varchar(1) DEFAULT '',
  `scope_ticket_num` varchar(45) DEFAULT '' COMMENT 'Production Ticket / Service Now/Change Ticket Number ( If in scope)',
  `rfs_status` varchar(45) DEFAULT 'NEW',
  `active` tinyint DEFAULT '1',
  PRIMARY KEY (`rfs_request_id`),
  KEY `fk_rfs_request_domain_idx` (`domain_id`),
  KEY `fk_rfs_request_person_spoc_idx` (`qa_spoc`),
  KEY `fk_rfs_request_person_pom_idx` (`PoM`),
  KEY `fk_rfs_request_person_qa_lead_idx` (`qa_coe_lead`),
  CONSTRAINT `fk_rfs_request_domain` FOREIGN KEY (`domain_id`) REFERENCES `qagile_domains` (`domain_id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qagile_rfs_request`
--

LOCK TABLES `qagile_rfs_request` WRITE;
/*!40000 ALTER TABLE `qagile_rfs_request` DISABLE KEYS */;
INSERT INTO `qagile_rfs_request` VALUES (1,'2020-03-17 18:48:35',NULL,'2020-03-21 11:59:06',NULL,NULL,NULL,NULL,'None',NULL,'None','None','None',NULL,'None','None','None','None',NULL,'None','None',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'None',NULL,NULL,'None','None',NULL,'None',NULL,'None','NULL',0),(2,'2020-03-18 18:58:20',NULL,'2020-03-21 18:10:06',NULL,NULL,NULL,NULL,'None',NULL,'None','test4','test2',NULL,'test3','test4','None','None',NULL,'None','None',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'None',NULL,NULL,'None','None',NULL,'None',NULL,'None','NULL',0),(4,'2020-03-20 14:04:12',NULL,'2020-03-21 11:57:22',NULL,NULL,NULL,'2020-03-02 00:00:00','http://asasas.sasa.asasa','N','http://hp.alm.jira','PPM123','SPD','Capital','Beth ABC','beth@rbs.com','PMO','Beth ABC',NULL,'Dennise G','Ron Paro','Project','C','2020-03-02 00:00:00','2020-03-06 00:00:00','2020-03-09 00:00:00','2020-03-13 00:00:00','2020-03-16 00:00:00','2020-03-20 00:00:00','2020-03-22 00:00:00',NULL,'awesome project','vn05672','Y','Falcon','Sharepoint','Y','Customer Info','N','None','NEW',1),(5,'2020-03-20 14:12:45',NULL,'2020-03-21 11:57:35',NULL,NULL,NULL,'2020-03-02 00:00:00','http://asasas.sasa.asasa','N','http://hp.alm.jira','PPM123','SPD','Capital','Beth ABC','beth@rbs.com','PMO','Beth ABC',NULL,'Dennise G','Ron Paro','Project','C','2020-03-02 00:00:00','2020-03-06 00:00:00','2020-03-09 00:00:00','2020-03-13 00:00:00','2020-03-16 00:00:00','2020-03-20 00:00:00','2020-03-22 00:00:00',NULL,'awesome project','vn05672','Y','Falcon','Sharepoint','Y','Customer Info','N','None','NEW',1),(6,'2020-03-20 14:17:27',NULL,'2020-03-21 11:58:55',NULL,NULL,NULL,'2020-03-02 00:00:00','http://asasas.sasa.asasa','N','http://hp.alm.jira','PPM123','SPD','Capital','Beth ABC','beth@rbs.com','PMO','Beth ABC',NULL,'Dennise G','Ron Paro','Project','C','2020-03-02 00:00:00','2020-03-06 00:00:00','2020-03-09 00:00:00','2020-03-13 00:00:00','2020-03-16 00:00:00','2020-03-20 00:00:00','2020-03-22 00:00:00',NULL,'awesome project','vn05672','Y','Falcon','Sharepoint','Y','Customer Info','N','None','NEW',1),(7,'2020-03-20 14:18:31',NULL,'2020-03-21 11:54:38',NULL,NULL,NULL,'2020-03-02 00:00:00','http://asasas.sasa.asasa','N','http://hp.alm.jira','PPM123','SPD23','Capital','Beth ABC','beth@rbs.com','PMO','Beth ABC',NULL,'Dennise G','Ron Paro','Project','C','2020-03-02 00:00:00','2020-03-06 00:00:00','2020-03-09 00:00:00','2020-03-13 00:00:00','2020-03-16 00:00:00','2020-03-20 00:00:00','2020-03-22 00:00:00',NULL,'awesome project','vn05672','Y','Falcon','Sharepoint','Y','Customer Info','N','None','NEW',1),(8,'2020-03-20 16:36:50',NULL,'2020-03-30 19:23:20',NULL,NULL,NULL,NULL,'None',NULL,'None','None','None',NULL,'None','None','None','None',NULL,'None','None',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'None',NULL,NULL,'None','None',NULL,'None',NULL,'None','NULL',0),(9,'2020-03-20 21:02:07',NULL,'2020-04-12 11:38:32',NULL,'Planning Phase',NULL,'2020-02-01 00:00:00','https://jira.retailbusinessservices.com/secure/RapidBoard.jspa?rapidView=365&view=detail&selectedIssue=MDMCUS-2928','Y','https://confluence.retailbusinessservices.com/display/MDMCUS/MDM-Customer','IM131234','Demo CMDM RBS','Capital','Anne Molly','anne.malloy@delhaize.com','Project Manager','Anne Molly','1242198','Dennise G','Trinity P','Project','B','2020-01-01 00:00:00','2020-02-01 00:00:00','2020-02-02 00:00:00','2020-03-01 00:00:00','2020-03-02 00:00:00','2020-08-01 00:00:00','2020-08-02 00:00:00',NULL,'Implement RBS wide CMDM ','vn05672','Y','CERES','Sharepoint confluence','Y','Core Customer Information','Y','None','NEW',1),(10,'2020-03-21 17:45:49',NULL,'2020-03-30 19:13:54',NULL,NULL,NULL,NULL,'None',NULL,'None','test1','test2',NULL,'test3','test4','None','None',NULL,'None','None',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'None',NULL,NULL,'None','None',NULL,'None',NULL,'None','APPROVED',1),(11,'2020-03-21 17:46:12',NULL,'2020-03-30 17:17:54',NULL,NULL,NULL,NULL,'None',NULL,'None','test2','test2',NULL,'test3','test4','None','None',NULL,'None','None',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'None',NULL,NULL,'None','None',NULL,'None',NULL,'None','NULL',0),(12,'2020-03-21 17:46:22',NULL,'2020-03-30 19:18:34',NULL,NULL,NULL,NULL,'None',NULL,'None','test3','test2',NULL,'test3','test4','None','None',NULL,'None','None',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'None',NULL,NULL,'None','None',NULL,'None',NULL,'None','NULL',0),(13,'2020-03-21 17:47:28',NULL,NULL,NULL,NULL,NULL,NULL,'None',NULL,'None','test1','test2',NULL,'test3','test4','None','None',NULL,'None','None',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'None',NULL,NULL,'None','None',NULL,'None',NULL,'None','NULL',0),(14,'2020-03-23 19:48:00',NULL,'2020-03-30 19:22:13',NULL,NULL,NULL,NULL,'None',NULL,'None','None','None',NULL,'None','None','None','None',NULL,'None','None',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'None',NULL,NULL,'None','None',NULL,'None',NULL,'None','None',1),(15,'2020-03-23 19:48:16',NULL,'2020-03-23 19:48:16',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(16,'2020-03-23 20:11:05',NULL,'2020-03-23 20:11:05',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(17,'2020-03-23 20:35:16',NULL,'2020-03-23 20:35:16',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(18,'2020-03-23 20:35:56',NULL,'2020-03-23 20:35:56',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(19,'2020-03-23 21:03:07',NULL,'2020-03-23 21:03:07',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(20,'2020-03-23 21:08:08',NULL,'2020-03-23 21:08:08',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(21,'2020-03-24 22:01:42',NULL,'2020-03-24 22:01:42',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(22,'2020-03-24 22:05:44',NULL,'2020-03-24 22:05:44',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(23,'2020-03-30 13:27:02',NULL,'2020-04-14 14:27:49',NULL,'Preparation Phase',NULL,NULL,'None',NULL,'None','PPMID123','Falcon','Capital','John Barens','jb@delhaize.com','Project Manager','John Barens',NULL,'Mary James','John Barens','Project','B','2020-03-23 00:00:00','2020-04-03 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,'None',NULL,'Y','SPD','secure sharepoint','Y','Vendor PII','Y','None','SUBMITTED',1),(24,'2020-03-30 13:29:25',NULL,'2020-03-30 13:29:25',NULL,'Preparation Phase',NULL,NULL,NULL,NULL,NULL,'PPMID123','Falcon','Capital','John Barens','jb@delhaize.com','Project Manager','John Barens',NULL,'Mary James','John Barens','Project','B','2020-03-23 00:00:00','2020-04-03 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y','SPD','secure sharepoint','Y','Vendor PII','Y',NULL,'NEW',1),(25,'2020-03-30 13:58:44',NULL,'2020-03-30 13:58:44',NULL,'Preparation Phase',NULL,NULL,NULL,NULL,NULL,'PPMID123','Falcon','Capital','John Barens','jb@delhaize.com','Project Manager','John Barens',NULL,'Mary James','John Barens','Project','B','2020-03-23 00:00:00','2020-04-03 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y','SPD','secure sharepoint','Y','Vendor PII','Y',NULL,'NEW',1),(26,'2020-03-30 13:59:07',NULL,'2020-03-30 13:59:07',NULL,'Preparation Phase',NULL,NULL,NULL,NULL,NULL,'PPMID123','Falcon','Capital','John Barens','jb@delhaize.com','Project Manager','John Barens',NULL,'Mary James','John Barens','Project','B','2020-03-23 00:00:00','2020-04-03 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y','SPD','secure sharepoint','Y','Vendor PII','Y',NULL,'NEW',1),(27,'2020-03-30 13:59:15',NULL,'2020-03-30 14:03:20',NULL,'Preparation Phase',NULL,NULL,'None',NULL,'None','PPMID123','Falcon','Capital','John Barens','jb@delhaize.com','Project Manager','John Barens',NULL,'Mary James','John Barens','Project','B','2020-03-23 00:00:00','2020-04-03 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,'None',NULL,'Y','SPD','secure sharepoint','Y','Vendor PII','Y','None','NEW',1),(28,'2020-03-30 19:48:25',NULL,'2020-03-30 19:48:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'SUBMITTED',1),(29,'2020-03-31 15:00:23',NULL,'2020-03-31 15:02:14',NULL,'Preparation Phase',NULL,'2020-04-02 00:00:00','TBU','N','http://hp.alm.jira','IM12321','Project Mars','Capital','Mark Twin','mark.twin@rbs.com','Project Manager','Mark Twin','1242198','Bill Gates','Mark Twin','Project','B','2020-03-23 00:00:00','2020-04-03 00:00:00','2020-04-06 00:00:00','2020-05-01 00:00:00',NULL,NULL,NULL,NULL,'A great project to reach mars','vn05672','Y','None','secure sharepoint','Y','All users data','Y','None','NEW',1),(30,'2020-04-01 10:46:15',NULL,'2020-04-01 10:46:15',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'PPM123121',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'NEW',1),(31,'2020-04-07 09:55:44',NULL,'2020-04-07 09:55:44',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'NEW',1),(32,'2020-04-07 13:47:48',NULL,'2020-04-07 13:49:12',NULL,'Preparation Phase',NULL,'2020-04-01 00:00:00','https://jira.retailbusinessservices.com/secure/RapidBoard.jspa?rapidView=365&view=detail&selectedIssue=MDMCUS-2928','Y','http://hp.alm.jira','PPM1231','Test 123','Capital','Anne Molly','anne.malloy@delhaize.com','PM','Anne Molly','1242198','Dennise Garner','Anne Molly','Project','C','2020-03-31 00:00:00','2020-04-21 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,'Great Project','vn05672','Y','Falcon','Sharepoint','N','None','Y','None','NEW',1),(33,'2020-04-07 14:08:52',NULL,'2020-04-07 14:08:52',NULL,'Preparation Phase',NULL,NULL,NULL,NULL,NULL,'IM123123','Test 123','Capital',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'B',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'NEW',1),(34,'2020-04-09 08:50:44',NULL,'2020-04-09 08:50:44',NULL,'Preparation Phase',NULL,NULL,NULL,NULL,NULL,'PPMID1233',NULL,'Capital',NULL,NULL,NULL,NULL,'1242198',NULL,NULL,'Project','B',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'vn05672',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'NEW',1),(35,'2020-04-11 21:40:02',NULL,'2020-04-11 21:40:02',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'NEW',1),(36,'2020-04-11 21:49:08',NULL,'2020-04-11 21:49:08',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'NEW',1),(37,'2020-04-11 21:53:13',NULL,'2020-04-11 21:53:13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'NEW',1),(38,'2020-04-11 22:02:20',NULL,'2020-04-16 21:26:25','','Preparation Phase',NULL,'2020-04-13 00:00:00','http://asasas.sasa.asasa','Y','https://confluence.retailbusinessservices.com/display/MDMCUS/MDM-Customer','IM1111111111111','Demo Project123','Expense','Tom Harris','beth@rbs.com','Project Manager','Tom Harris','UPDATE1','Dennise G','Tom Harris','Project','A','2020-04-13 00:00:00','2020-04-07 00:00:00','2020-04-13 00:00:00','2020-04-14 00:00:00','2020-04-20 00:00:00','2020-04-21 00:00:00','2020-04-27 00:00:00','2020-04-23 00:00:00','l detail which is import','VN07325','N','SPD','secure sharepoint','Y','Vendor PII','Y','123SNOW','NEW',1),(39,'2020-04-12 11:40:02',NULL,'2020-04-12 11:40:02','','Preparation Phase',NULL,NULL,'http://asasas.sasa.asasa',NULL,NULL,'IM99999','Test',NULL,'John Barens','tom@h.com','PMO','John Barens',NULL,NULL,'John Barens','Project',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'NEW',1),(40,'2020-04-13 09:09:43',NULL,'2020-04-13 09:09:43','',NULL,NULL,NULL,NULL,NULL,NULL,'test2','SPD2','Capital','John Barens','jb@delhaize.com',NULL,'John Barens',NULL,NULL,'John Barens',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'NEW',1),(41,'2020-04-14 14:21:27',NULL,'2020-04-14 14:21:27','',NULL,NULL,NULL,NULL,NULL,NULL,'PPMID123','SPD',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'NEW',1),(42,'2020-04-15 12:06:40',NULL,'2020-04-15 12:06:40','',NULL,NULL,NULL,NULL,NULL,NULL,'Im1231','Test',NULL,'Beth ABC','jb@delhaize.com',NULL,'Beth ABC',NULL,NULL,'Beth ABC','Project',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'NEW',1),(43,'2020-04-16 12:07:43',NULL,'2020-04-16 12:07:43','',NULL,NULL,NULL,NULL,NULL,NULL,'test3','Test 123',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'NEW',1),(44,'2020-04-16 21:42:29',NULL,'2020-04-16 21:42:29','',NULL,NULL,NULL,NULL,NULL,NULL,'PPM123','SPD2',NULL,'Mark Twin','tom@h.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'NEW',1);
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

-- Dump completed on 2020-04-16 22:03:02
