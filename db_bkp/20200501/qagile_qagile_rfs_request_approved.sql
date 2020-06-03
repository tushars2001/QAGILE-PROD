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
-- Table structure for table `qagile_rfs_request_approved`
--

DROP TABLE IF EXISTS `qagile_rfs_request_approved`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qagile_rfs_request_approved` (
  `recordid` int NOT NULL AUTO_INCREMENT,
  `rfs_request_id` int NOT NULL DEFAULT '0',
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
  `approval_num` int NOT NULL DEFAULT '9999999',
  `approval_date` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`recordid`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qagile_rfs_request_approved`
--

LOCK TABLES `qagile_rfs_request_approved` WRITE;
/*!40000 ALTER TABLE `qagile_rfs_request_approved` DISABLE KEYS */;
INSERT INTO `qagile_rfs_request_approved` VALUES (2,38,'2020-04-11 22:02:20',NULL,'2020-04-19 16:13:21','','Preparation Phase',NULL,'2020-04-13 00:00:00','http://asasas.sasa.asasa','Y','https://confluence.retailbusinessservices.com/display/MDMCUS/MDM-Customer','IM1111111111111','Demo Project123','Expense','Tom Harris','beth@rbs.com','Project Manager','Tom Harris','UPDATE1','Dennise G','Tom Harris','Project','A','2020-04-13 00:00:00','2020-04-07 00:00:00','2020-04-13 00:00:00','2020-04-14 00:00:00','2020-04-20 00:00:00','2020-04-21 00:00:00','2020-04-27 00:00:00','2020-04-23 00:00:00','l detail which is import','VN07325','N','SPD','secure sharepoint','Y','Vendor PII','Y','123SNOW','APPROVED',1,1,'2020-04-19 16:47:08'),(3,10,'2020-03-21 17:45:49',NULL,'2020-04-19 20:39:00',NULL,NULL,NULL,NULL,'None',NULL,'None','test1','test2',NULL,'test3','test4','None','None',NULL,'None','None',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'None',NULL,NULL,'None','None',NULL,'None',NULL,'None','APPROVED',1,1,'2020-04-19 20:39:00'),(4,10,'2020-03-21 17:45:49',NULL,'2020-04-19 20:39:09',NULL,NULL,NULL,NULL,'None',NULL,'None','test1','test2',NULL,'test3','test4','None','None',NULL,'None','None',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'None',NULL,NULL,'None','None',NULL,'None',NULL,'None','APPROVED',1,2,'2020-04-19 20:39:09'),(5,10,'2020-03-21 17:45:49',NULL,'2020-04-19 20:40:28',NULL,NULL,NULL,NULL,'None',NULL,'None','test1','test2',NULL,'test3','test4','None','None',NULL,'None','None',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'None',NULL,NULL,'None','None',NULL,'None',NULL,'None','APPROVED',1,3,'2020-04-19 20:40:28'),(6,10,'2020-03-21 17:45:49',NULL,'2020-04-19 20:41:28',NULL,NULL,NULL,NULL,'None',NULL,'None','test1','test2',NULL,'test3','test4','None','None',NULL,'None','None',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'None',NULL,NULL,'None','None',NULL,'None',NULL,'None','APPROVED',1,4,'2020-04-19 20:41:28'),(7,23,'2020-03-30 13:27:02',NULL,'2020-04-19 20:47:44',NULL,'Preparation Phase',NULL,NULL,'None',NULL,'None','PPMID123','Falcon','Capital','John Barens','jb@delhaize.com','Project Manager','John Barens',NULL,'Mary James','John Barens','Project','B','2020-03-23 00:00:00','2020-04-03 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,'None',NULL,'Y','SPD','secure sharepoint','Y','Vendor PII','Y','None','APPROVED',1,1,'2020-04-19 20:47:44'),(8,52,'2020-04-21 08:10:30',NULL,'2020-04-21 08:15:23','',NULL,NULL,NULL,NULL,NULL,NULL,'test','Test 123','Capital','Mark Twin','anne.malloy@delhaize.com',NULL,'Mark Twin','1242198',NULL,'Mark Twin',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'vn05672',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'APPROVED',1,1,'2020-04-21 08:15:23'),(9,52,'2020-04-21 08:10:30',NULL,'2020-04-21 08:16:01','',NULL,NULL,NULL,NULL,NULL,NULL,'test','Test 123','Capital','Mark Twin','anne.malloy@delhaize.com',NULL,'Mark Twin','1242198',NULL,'Mark Twin',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'vn05672',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'APPROVED',1,2,'2020-04-21 08:17:35'),(10,46,'2020-04-17 18:41:00',NULL,'2020-04-21 11:11:52','','Planning Phase',NULL,'2020-04-14 00:00:00','https://jira.retailbusinessservices.com/secure/RapidBoard.jspa?rapidView=365&view=detail&selectedIssue=MDMCUS-2928','Y','https://confluence.retailbusinessservices.com/display/MDMCUS/MDM-Customer','Max','Test','Expense','Tom Harris','jb@delhaize.com','PMO','John Barens','1242198','Mary James','Tom Harris','Project','B','2020-04-21 00:00:00','2020-04-22 00:00:00','2020-04-23 00:00:00','2020-04-24 00:00:00','2020-04-27 00:00:00','2020-04-28 00:00:00','2020-04-29 00:00:00','2020-04-30 00:00:00','It\'s a great project to save money','VN06804','N','007','Don\'t dare','N','No SSN','Y','SNOW1234','APPROVED',1,1,'2020-04-21 11:11:52'),(11,46,'2020-04-17 18:41:00',NULL,'2020-04-21 11:11:59','','Planning Phase',NULL,'2020-04-14 00:00:00','https://jira.retailbusinessservices.com/secure/RapidBoard.jspa?rapidView=365&view=detail&selectedIssue=MDMCUS-2928','Y','https://confluence.retailbusinessservices.com/display/MDMCUS/MDM-Customer','Max','Test','Expense','Tom Harris','jb@delhaize.com','PMO','John Barens','1242198','Mary James','Tom Harris','Project','B','2020-04-21 00:00:00','2020-04-22 00:00:00','2020-04-23 00:00:00','2020-04-24 00:00:00','2020-04-27 00:00:00','2020-04-28 00:00:00','2020-04-29 00:00:00','2020-04-30 00:00:00','It\'s a great project to save money','VN06804','N','007','Don\'t dare','N','No SSN','Y','SNOW1234','APPROVED',1,2,'2020-04-21 11:13:37'),(12,46,'2020-04-17 18:41:00',NULL,'2020-04-21 12:47:09','','Planning Phase',NULL,'2020-04-14 00:00:00','https://jira.retailbusinessservices.com/secure/RapidBoard.jspa?rapidView=365&view=detail&selectedIssue=MDMCUS-2928','Y','https://confluence.retailbusinessservices.com/display/MDMCUS/MDM-Customer','Max','Test','Expense','Tom Harris','jb@delhaize.com','PMO','John Barens','1242198','Mary James','Tom Harris','Project','B','2020-04-21 00:00:00','2020-04-22 00:00:00','2020-04-23 00:00:00','2020-04-24 00:00:00','2020-04-27 00:00:00','2020-04-28 00:00:00','2020-04-29 00:00:00','2020-04-30 00:00:00','It\'s a great project to save money','VN06804','N','007','Don\'t dare','N','No SSN','Y','SNOW1234','APPROVED',1,3,'2020-04-21 12:47:57'),(13,53,'2020-04-21 15:41:19',NULL,'2020-04-21 15:41:19','',NULL,NULL,NULL,NULL,NULL,NULL,'version','test',NULL,'Tom Harris','jb@delhaize.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'APPROVED',1,1,'2020-04-21 15:42:13'),(14,53,'2020-04-21 15:41:19',NULL,'2020-04-21 15:48:01','',NULL,NULL,NULL,NULL,NULL,NULL,'version','test',NULL,'Tom Harris','jb@delhaize.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'APPROVED',1,2,'2020-04-21 15:48:01'),(15,53,'2020-04-21 15:41:19',NULL,'2020-04-21 15:51:07','',NULL,NULL,NULL,NULL,NULL,NULL,'version','test',NULL,'Tom Harris','jb@delhaize.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'APPROVED',1,3,'2020-04-21 15:51:08'),(16,53,'2020-04-21 15:41:19',NULL,'2020-04-21 15:54:35','',NULL,NULL,NULL,NULL,NULL,NULL,'version','test',NULL,'Tom Harris','jb@delhaize.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'APPROVED',1,4,'2020-04-21 15:54:35'),(17,53,'2020-04-21 15:41:19',NULL,'2020-04-21 15:55:44','',NULL,NULL,NULL,NULL,NULL,NULL,'version','test',NULL,'Tom Harris','jb@delhaize.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'APPROVED',1,5,'2020-04-21 15:55:44'),(18,53,'2020-04-21 15:41:19',NULL,'2020-04-22 12:04:31','',NULL,NULL,NULL,NULL,NULL,NULL,'version6','test V6','Capital','Tom Harris','jb@delhaize.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'APPROVED',1,6,'2020-04-22 12:05:20'),(19,54,'2020-04-22 15:33:01',NULL,'2020-04-22 15:39:02','','Execution Phase',NULL,'2020-05-23 00:00:00','http://asasas.sasa.asasa','Y','http://hp.alm.jira','Max','V1','Capital','John Barens','jb@delhaize.com','Project Manager','John Barens','1242198','Mary James','Ram Nath','Project','A','2020-02-20 00:00:00','2020-03-21 00:00:00','2020-05-23 00:00:00','2020-05-23 00:00:00','2020-03-21 00:00:00','2021-03-21 00:00:00','2021-05-23 00:00:00','2021-05-23 00:00:00','THis is a v good project','vn05672','Y','SPD','secure sharepoint','Y','Customer Info','Y','SNOW1234','APPROVED',1,1,'2020-04-22 15:51:25'),(20,54,'2020-04-22 15:33:01',NULL,'2020-04-22 15:39:02','','Execution Phase',NULL,'2020-05-23 00:00:00','http://asasas.sasa.asasa','Y','http://hp.alm.jira','Max','V1','Capital','John Barens','jb@delhaize.com','Project Manager','John Barens','1242198','Mary James','Ram Nath','Project','A','2020-02-20 00:00:00','2020-03-21 00:00:00','2020-05-23 00:00:00','2020-05-23 00:00:00','2020-03-21 00:00:00','2021-03-21 00:00:00','2021-05-23 00:00:00','2021-05-23 00:00:00','THis is a v good project','vn05672','Y','SPD','secure sharepoint','Y','Customer Info','Y','SNOW1234','APPROVED',1,2,'2020-04-22 15:53:07'),(21,54,'2020-04-22 15:33:01',NULL,'2020-04-22 15:39:02','','Execution Phase',NULL,'2020-05-23 00:00:00','http://asasas.sasa.asasa','Y','http://hp.alm.jira','Max','V1','Capital','John Barens','jb@delhaize.com','Project Manager','John Barens','1242198','Mary James','Ram Nath','Project','A','2020-02-20 00:00:00','2020-03-21 00:00:00','2020-05-23 00:00:00','2020-05-23 00:00:00','2020-03-21 00:00:00','2021-03-21 00:00:00','2021-05-23 00:00:00','2021-05-23 00:00:00','THis is a v good project','vn05672','Y','SPD','secure sharepoint','Y','Customer Info','Y','SNOW1234','APPROVED',1,3,'2020-04-22 16:00:29'),(22,54,'2020-04-22 15:33:01',NULL,'2020-04-22 16:07:32','','Execution Phase',NULL,'2020-05-23 00:00:00','http://asasas.sasa.asasa','Y','http://hp.alm.jira','Max','V4','Capital','John Barens','jb@delhaize.com','Project Manager','John Barens','1242198','Mary James','Ram Nath','Project','A','2020-02-20 00:00:00','2020-03-21 00:00:00','2020-05-23 00:00:00','2020-05-23 00:00:00','2020-03-21 00:00:00','2021-03-21 00:00:00','2021-05-23 00:00:00','2021-05-23 00:00:00','THis is a v good project','vn05672','Y','SPD','secure sharepoint','Y','Customer Info','Y','SNOW1234','APPROVED',1,4,'2020-04-22 16:13:45'),(23,54,'2020-04-22 15:33:01',NULL,'2020-04-22 17:02:53','','Execution Phase',NULL,'2020-05-23 00:00:00','http://asasas.sasa.asasa','Y','http://hp.alm.jira','Max','V4','Capital','John Barens','jb@delhaize.com','Project Manager','John Barens','1242198','Mary James','Ram Nath','Project','A','2020-02-20 00:00:00','2020-03-21 00:00:00','2020-05-23 00:00:00','2020-05-23 00:00:00','2020-03-21 00:00:00','2021-03-21 00:00:00','2021-05-23 00:00:00','2021-05-23 00:00:00','THis is a v good project','vn05672','Y','SPD','secure sharepoint','Y','Customer Info','Y','SNOW1234','APPROVED',1,5,'2020-04-22 17:04:21'),(24,55,'2020-04-27 11:09:28',1,'2020-04-27 11:10:12','',NULL,NULL,NULL,NULL,NULL,NULL,'PPM121','Test Demo',NULL,'Tom Harris','jb@delhaize.com',NULL,NULL,'1242198',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'vn05672',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'APPROVED',1,1,'2020-04-27 11:24:09'),(25,55,'2020-04-27 11:09:28',1,'2020-04-27 11:25:12','',NULL,NULL,NULL,NULL,NULL,NULL,'PPM121','Test Demo',NULL,'Tom Harris','jb@delhaize.com',NULL,NULL,'1242198',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'vn05672',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'APPROVED',1,2,'2020-04-27 11:25:27'),(26,57,'2020-04-29 20:24:24',1,'2020-04-29 20:24:52','',NULL,NULL,NULL,NULL,NULL,NULL,'PPM123121','TestDemo',NULL,'Tushar','a@b.com',NULL,NULL,'1242198',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'vn05672',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'APPROVED',1,1,'2020-04-29 20:28:23'),(27,57,'2020-04-29 20:24:24',1,'2020-04-29 20:24:52','',NULL,NULL,NULL,NULL,NULL,NULL,'PPM123121','TestDemo',NULL,'Tushar','a@b.com',NULL,NULL,'1242198',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'vn05672',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'APPROVED',1,2,'2020-04-29 20:29:43'),(28,58,'2020-04-30 08:25:42',1,'2020-04-30 08:26:08','',NULL,NULL,NULL,NULL,NULL,NULL,'testdemo','demo',NULL,'tuhsar','t@s.com',NULL,NULL,'1242198',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'vn05672',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'APPROVED',1,1,'2020-04-30 08:28:56'),(29,58,'2020-04-30 08:25:42',1,'2020-04-30 08:26:08','',NULL,NULL,NULL,NULL,NULL,NULL,'testdemo','demo',NULL,'tuhsar','t@s.com',NULL,NULL,'1242198',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'vn05672',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'APPROVED',1,2,'2020-04-30 08:29:52');
/*!40000 ALTER TABLE `qagile_rfs_request_approved` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-02 21:59:33
