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
-- Temporary view structure for view `qagile_v_actuals`
--

DROP TABLE IF EXISTS `qagile_v_actuals`;
/*!50001 DROP VIEW IF EXISTS `qagile_v_actuals`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `qagile_v_actuals` AS SELECT 
 1 AS `weekstart`,
 1 AS `hrs`,
 1 AS `first_name`,
 1 AS `last_name`,
 1 AS `vnid`,
 1 AS `project_id`,
 1 AS `project_name`,
 1 AS `domain_id`,
 1 AS `domain_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `qagile_v_person_master`
--

DROP TABLE IF EXISTS `qagile_v_person_master`;
/*!50001 DROP VIEW IF EXISTS `qagile_v_person_master`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `qagile_v_person_master` AS SELECT 
 1 AS `vnid`,
 1 AS `first_name`,
 1 AS `last_name`,
 1 AS `email`,
 1 AS `domain_id_rem`,
 1 AS `category`,
 1 AS `rate_id`,
 1 AS `phone`,
 1 AS `created`,
 1 AS `role_id`,
 1 AS `location_id`,
 1 AS `city`,
 1 AS `rate`,
 1 AS `role`,
 1 AS `domain_name`,
 1 AS `loc`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `qagile_v_domain_info`
--

DROP TABLE IF EXISTS `qagile_v_domain_info`;
/*!50001 DROP VIEW IF EXISTS `qagile_v_domain_info`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `qagile_v_domain_info` AS SELECT 
 1 AS `domain_name`,
 1 AS `domain_id`,
 1 AS `pom_first_name`,
 1 AS `pom_last_name`,
 1 AS `pom_vnid`,
 1 AS `dl_first_name`,
 1 AS `dl_last_name`,
 1 AS `dl_vnid`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `qagile_rfs_totals`
--

DROP TABLE IF EXISTS `qagile_rfs_totals`;
/*!50001 DROP VIEW IF EXISTS `qagile_rfs_totals`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `qagile_rfs_totals` AS SELECT 
 1 AS `rfs_request_id`,
 1 AS `approval_num`,
 1 AS `rfs_total_hrs`,
 1 AS `total_qa_cost`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `qagile_v_domain_project`
--

DROP TABLE IF EXISTS `qagile_v_domain_project`;
/*!50001 DROP VIEW IF EXISTS `qagile_v_domain_project`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `qagile_v_domain_project` AS SELECT 
 1 AS `domain_id`,
 1 AS `domain_name`,
 1 AS `project_id`,
 1 AS `project_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `qagile_v_planned`
--

DROP TABLE IF EXISTS `qagile_v_planned`;
/*!50001 DROP VIEW IF EXISTS `qagile_v_planned`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `qagile_v_planned` AS SELECT 
 1 AS `weekstart`,
 1 AS `hrs`,
 1 AS `first_name`,
 1 AS `last_name`,
 1 AS `vnid`,
 1 AS `project_id`,
 1 AS `project_name`,
 1 AS `domain_id`,
 1 AS `domain_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `qagile_v_project_resource`
--

DROP TABLE IF EXISTS `qagile_v_project_resource`;
/*!50001 DROP VIEW IF EXISTS `qagile_v_project_resource`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `qagile_v_project_resource` AS SELECT 
 1 AS `project_id`,
 1 AS `project_name`,
 1 AS `vnid`,
 1 AS `first_name`,
 1 AS `last_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `qagile_v_actuals`
--

/*!50001 DROP VIEW IF EXISTS `qagile_v_actuals`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `qagile_v_actuals` AS select `t`.`weekstart` AS `weekstart`,`t`.`hrs` AS `hrs`,`p`.`first_name` AS `first_name`,`p`.`last_name` AS `last_name`,`t`.`vnid` AS `vnid`,`rfs`.`project_id` AS `project_id`,`rfs`.`project_name` AS `project_name`,`d`.`domain_id` AS `domain_id`,`d`.`domain_name` AS `domain_name` from (((`qagile_tenrox_data` `t` left join `qagile_person` `p` on((`t`.`vnid` = `p`.`vnid`))) left join `qagile_rfs_request` `rfs` on((`rfs`.`project_id` = `t`.`ppmid`))) left join `qagile_domains` `d` on((`d`.`domain_id` = `rfs`.`domain_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `qagile_v_person_master`
--

/*!50001 DROP VIEW IF EXISTS `qagile_v_person_master`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `qagile_v_person_master` AS select `p`.`vnid` AS `vnid`,`p`.`first_name` AS `first_name`,`p`.`last_name` AS `last_name`,`p`.`email` AS `email`,`p`.`domain_id_rem` AS `domain_id_rem`,`p`.`category` AS `category`,`p`.`rate_id` AS `rate_id`,`p`.`phone` AS `phone`,`p`.`created` AS `created`,`p`.`role_id` AS `role_id`,`p`.`location_id` AS `location_id`,`l`.`city` AS `city`,cast(ifnull(`r`.`rate`,0) as char charset utf8mb4) AS `rate`,ifnull(`ro`.`role`,'') AS `role`,ifnull(`dom_name`.`domain_name`,'') AS `domain_name`,(case when (`l`.`country` = 'USA') then 'Onsite' else 'Offshore' end) AS `loc` from ((((`qagile_person` `p` left join `qagile_person_location` `l` on((`p`.`location_id` = `l`.`location_id`))) left join `qagile_person_rate` `r` on((`p`.`rate_id` = `r`.`rate_id`))) left join `qagile_person_role` `ro` on((`p`.`role_id` = `ro`.`role_id`))) left join (select `dt`.`vnid` AS `vnid`,group_concat(`d`.`domain_name` separator ',') AS `domain_name` from (`qagile_domains_team` `dt` left join `qagile_domains` `d` on((`d`.`domain_id` = `dt`.`domain_id`))) group by `dt`.`vnid`) `dom_name` on((`dom_name`.`vnid` = `p`.`vnid`))) order by `p`.`first_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `qagile_v_domain_info`
--

/*!50001 DROP VIEW IF EXISTS `qagile_v_domain_info`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `qagile_v_domain_info` AS select `d`.`domain_name` AS `domain_name`,`d`.`domain_id` AS `domain_id`,`pom`.`first_name` AS `pom_first_name`,`pom`.`last_name` AS `pom_last_name`,`pom`.`vnid` AS `pom_vnid`,`dl`.`first_name` AS `dl_first_name`,`dl`.`last_name` AS `dl_last_name`,`dl`.`vnid` AS `dl_vnid` from ((`qagile_domains` `d` left join (select `d`.`domain_id` AS `domain_id`,`d`.`domain_name` AS `domain_name`,`p`.`first_name` AS `first_name`,`p`.`last_name` AS `last_name`,`dt`.`vnid` AS `vnid`,`pr`.`role` AS `role` from (((`qagile_domains` `d` left join `qagile_domains_team` `dt` on((`d`.`domain_id` = `dt`.`domain_id`))) left join `qagile_person` `p` on((`p`.`vnid` = `dt`.`vnid`))) left join `qagile_person_role` `pr` on((`pr`.`role_id` = `p`.`role_id`))) where (`pr`.`role` = 'Portfolio Manager')) `pom` on((`pom`.`domain_id` = `d`.`domain_id`))) left join (select `d`.`domain_id` AS `domain_id`,`d`.`domain_name` AS `domain_name`,`p`.`first_name` AS `first_name`,`p`.`last_name` AS `last_name`,`dt`.`vnid` AS `vnid`,`pr`.`role` AS `role` from (((`qagile_domains` `d` left join `qagile_domains_team` `dt` on((`d`.`domain_id` = `dt`.`domain_id`))) left join `qagile_person` `p` on((`p`.`vnid` = `dt`.`vnid`))) left join `qagile_person_role` `pr` on((`pr`.`role_id` = `p`.`role_id`))) where (`pr`.`role` = 'Domain Lead')) `dl` on((`dl`.`domain_id` = `d`.`domain_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `qagile_rfs_totals`
--

/*!50001 DROP VIEW IF EXISTS `qagile_rfs_totals`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `qagile_rfs_totals` AS select `rl`.`rfs_request_id` AS `rfs_request_id`,`rl`.`approval_num` AS `approval_num`,sum(`rl`.`hrs`) AS `rfs_total_hrs`,sum((`rate`.`rate` * `rl`.`hrs`)) AS `total_qa_cost` from (`qagile_rfs_resourceloading_approved` `rl` left join (select `p`.`vnid` AS `vnid`,`pr`.`rate` AS `rate` from (`qagile_person` `p` left join `qagile_person_rate` `pr` on((`p`.`rate_id` = `pr`.`rate_id`)))) `rate` on((`rl`.`person_id` = `rate`.`vnid`))) group by `rl`.`rfs_request_id`,`rl`.`approval_num` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `qagile_v_domain_project`
--

/*!50001 DROP VIEW IF EXISTS `qagile_v_domain_project`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `qagile_v_domain_project` AS select `r`.`domain_id` AS `domain_id`,`d`.`domain_name` AS `domain_name`,`r`.`project_id` AS `project_id`,`r`.`project_name` AS `project_name` from (`qagile_rfs_request` `r` left join `qagile_domains` `d` on((`d`.`domain_id` = `r`.`domain_id`))) where ((`r`.`active` = 1) and (`r`.`domain_id` is not null) and (`r`.`project_id` is not null)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `qagile_v_planned`
--

/*!50001 DROP VIEW IF EXISTS `qagile_v_planned`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `qagile_v_planned` AS select `rl`.`week` AS `weekstart`,`rl`.`hrs` AS `hrs`,`p`.`first_name` AS `first_name`,`p`.`last_name` AS `last_name`,`p`.`vnid` AS `vnid`,`rfs`.`project_id` AS `project_id`,`rfs`.`project_name` AS `project_name`,`d`.`domain_id` AS `domain_id`,`d`.`domain_name` AS `domain_name` from (((`qagile_rfs_resourceloading` `rl` left join `qagile_person` `p` on((`p`.`vnid` = `rl`.`person_id`))) left join `qagile_rfs_request` `rfs` on((`rfs`.`rfs_request_id` = `rl`.`rfs_request_id`))) left join `qagile_domains` `d` on((`d`.`domain_id` = `rfs`.`domain_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `qagile_v_project_resource`
--

/*!50001 DROP VIEW IF EXISTS `qagile_v_project_resource`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `qagile_v_project_resource` AS select `r`.`project_id` AS `project_id`,`r`.`project_name` AS `project_name`,`d`.`vnid` AS `vnid`,`p`.`first_name` AS `first_name`,`p`.`last_name` AS `last_name` from ((`qagile_rfs_request` `r` left join `qagile_domains_team` `d` on((`r`.`domain_id` = `d`.`domain_id`))) left join `qagile_person` `p` on((`p`.`vnid` = `d`.`vnid`))) where ((`r`.`active` = 1) and (`r`.`domain_id` is not null) and (`r`.`project_id` is not null) and (`d`.`vnid` is not null)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Dumping routines for database 'qagile'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-03 13:00:24
