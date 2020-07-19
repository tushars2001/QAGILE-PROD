CREATE DATABASE  IF NOT EXISTS `tools` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `tools`;
-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: localhost    Database: tools
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
-- Temporary view structure for view `tools_v_suggestions`
--

DROP TABLE IF EXISTS `tools_v_suggestions`;
/*!50001 DROP VIEW IF EXISTS `tools_v_suggestions`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tools_v_suggestions` AS SELECT 
 1 AS `keyval`,
 1 AS `col_name`,
 1 AS `col_data_type`,
 1 AS `required`,
 1 AS `max_len`,
 1 AS `is_fixed_len`,
 1 AS `format`,
 1 AS `min_value`,
 1 AS `max_value`,
 1 AS `decimals`,
 1 AS `all_null`,
 1 AS `is_pk`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `tools_v_suggestions`
--

/*!50001 DROP VIEW IF EXISTS `tools_v_suggestions`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `tools_v_suggestions` AS select concat(`main`.`col_name`,`main`.`col_data_type`,`main`.`required`,`main`.`max_len`,`main`.`is_fixed_len`,`main`.`format`,`main`.`min_value`,`main`.`max_value`,`main`.`decimals`,`main`.`all_null`,`main`.`is_pk`) AS `keyval`,`main`.`col_name` AS `col_name`,`main`.`col_data_type` AS `col_data_type`,`main`.`required` AS `required`,`main`.`max_len` AS `max_len`,`main`.`is_fixed_len` AS `is_fixed_len`,`main`.`format` AS `format`,`main`.`min_value` AS `min_value`,`main`.`max_value` AS `max_value`,`main`.`decimals` AS `decimals`,`main`.`all_null` AS `all_null`,`main`.`is_pk` AS `is_pk` from (select ifnull(`structure`.`col_name`,'') AS `col_name`,ifnull(`structure`.`col_data_type`,'') AS `col_data_type`,ifnull(`structure`.`required`,0) AS `required`,ifnull(`structure`.`max_len`,'') AS `max_len`,ifnull(`structure`.`is_fixed_len`,0) AS `is_fixed_len`,ifnull(`structure`.`format`,'') AS `format`,ifnull(`structure`.`min_value`,'') AS `min_value`,ifnull(`structure`.`max_value`,'') AS `max_value`,ifnull(`structure`.`decimals`,0) AS `decimals`,ifnull(`structure`.`all_null`,0) AS `all_null`,ifnull(`structure`.`is_pk`,0) AS `is_pk` from `structure` group by `structure`.`col_name`,`structure`.`col_data_type`,`structure`.`required`,`structure`.`max_len`,`structure`.`is_fixed_len`,`structure`.`format`,`structure`.`min_value`,`structure`.`max_value`,`structure`.`decimals`,`structure`.`all_null`,`structure`.`is_pk`) `main` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Dumping routines for database 'tools'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-19 19:43:14
