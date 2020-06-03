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
) ENGINE=InnoDB AUTO_INCREMENT=3160 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qagile_rfs_estimates_raci`
--

LOCK TABLES `qagile_rfs_estimates_raci` WRITE;
/*!40000 ALTER TABLE `qagile_rfs_estimates_raci` DISABLE KEYS */;
INSERT INTO `qagile_rfs_estimates_raci` VALUES (1145,2,'CCQC','SIT','P','R'),(1146,2,'CCQC','SIT','P','A'),(1147,2,'CCQC','SIT','P','C'),(1148,2,'CCQC','SIT','P','I'),(1149,2,'TPLPR','SIT','P','R'),(1150,2,'TPLPR','SIT','P','A'),(1151,2,'TPLPR','SIT','P','C'),(1152,2,'TPLPR','SIT','P','I'),(1153,2,'TC2QC','SIT','P','R'),(1154,2,'TC2QC','SIT','P','A'),(1155,2,'TC2QC','SIT','P','C'),(1156,2,'TC2QC','SIT','P','I'),(1157,2,'EXCTC','SIT','P','R'),(1158,2,'EXCTC','SIT','P','A'),(1159,2,'EXCTC','SIT','P','C'),(1160,2,'EXCTC','SIT','P','I'),(1161,2,'MNGQC','SIT','P','R'),(1162,2,'MNGQC','SIT','P','A'),(1163,2,'MNGQC','SIT','P','C'),(1164,2,'MNGQC','SIT','P','I'),(1165,2,'CDTER','SIT','P','R'),(1166,2,'CDTER','SIT','P','A'),(1167,2,'CDTER','SIT','P','C'),(1168,2,'CDTER','SIT','P','I'),(1169,2,'RDTC','SIT','P','R'),(1170,2,'RDTC','SIT','P','A'),(1171,2,'RDTC','SIT','P','C'),(1172,2,'RDTC','SIT','P','I'),(1173,2,'WTR','SIT','P','R'),(1174,2,'WTR','SIT','P','A'),(1175,2,'WTR','SIT','P','C'),(1176,2,'WTR','SIT','P','I'),(1177,2,'MXE2E','SIT','P','R'),(1178,2,'MXE2E','SIT','P','A'),(1179,2,'MXE2E','SIT','P','C'),(1180,2,'MXE2E','SIT','P','I'),(1181,2,'CCQC','UAT','Q','R'),(1182,2,'CCQC','UAT','Q','A'),(1183,2,'CCQC','UAT','Q','C'),(1184,2,'CCQC','UAT','Q','I'),(1185,2,'TPLPR','UAT','Q','R'),(1186,2,'TPLPR','UAT','Q','A'),(1187,2,'TPLPR','UAT','Q','C'),(1188,2,'TPLPR','UAT','Q','I'),(1189,2,'TC2QC','UAT','Q','R'),(1190,2,'TC2QC','UAT','Q','A'),(1191,2,'TC2QC','UAT','Q','C'),(1192,2,'TC2QC','UAT','Q','I'),(1193,2,'EXCTC','UAT','Q','R'),(1194,2,'EXCTC','UAT','Q','A'),(1195,2,'EXCTC','UAT','Q','C'),(1196,2,'EXCTC','UAT','Q','I'),(1197,2,'MNGQC','UAT','Q','R'),(1198,2,'MNGQC','UAT','Q','A'),(1199,2,'MNGQC','UAT','Q','C'),(1200,2,'MNGQC','UAT','Q','I'),(1201,2,'CDTER','UAT','Q','R'),(1202,2,'CDTER','UAT','Q','A'),(1203,2,'CDTER','UAT','Q','C'),(1204,2,'CDTER','UAT','Q','I'),(1205,2,'RDTC','UAT','Q','R'),(1206,2,'RDTC','UAT','Q','A'),(1207,2,'RDTC','UAT','Q','C'),(1208,2,'RDTC','UAT','Q','I'),(1209,2,'WTR','UAT','Q','R'),(1210,2,'WTR','UAT','Q','A'),(1211,2,'WTR','UAT','Q','C'),(1212,2,'WTR','UAT','Q','I'),(1213,2,'MXE2E','UAT','Q','R'),(1214,2,'MXE2E','UAT','Q','A'),(1215,2,'MXE2E','UAT','Q','C'),(1216,2,'MXE2E','UAT','Q','I'),(1561,9,'CCQC','SIT','P','A'),(1562,9,'CCQC','SIT','P','C'),(1563,9,'CCQC','SIT','Q','R'),(1564,9,'TPLPR','SIT','P','I'),(1565,9,'TPLPR','SIT','Q','R'),(1566,9,'TC2QC','SIT','P','I'),(1567,9,'TC2QC','SIT','Q','R'),(1568,9,'EXCTC','SIT','Q','R'),(1569,9,'EXCTC','SIT','Q','A'),(1570,9,'MNGQC','SIT','P','C'),(1571,9,'MNGQC','SIT','P','I'),(1572,9,'CDTER','SIT','P','C'),(1573,9,'CDTER','SIT','Q','R'),(1574,9,'RDTC','SIT','P','R'),(1575,9,'RDTC','SIT','P','A'),(1576,9,'RDTC','SIT','P','C'),(1577,9,'RDTC','SIT','P','I'),(1578,9,'WTR','SIT','Q','R'),(1579,9,'WTR','SIT','Q','A'),(1580,9,'WTR','SIT','Q','C'),(1581,9,'WTR','SIT','Q','I'),(1582,9,'MXE2E','SIT','P','A'),(1583,9,'MXE2E','SIT','P','C'),(1584,9,'MXE2E','SIT','Q','R'),(1585,9,'MXE2E','SIT','Q','I'),(1586,9,'CCQC','UAT','P','R'),(1587,9,'CCQC','UAT','P','A'),(1588,9,'CCQC','UAT','Q','C'),(1589,9,'CCQC','UAT','Q','I'),(1590,9,'TPLPR','UAT','P','R'),(1591,9,'TPLPR','UAT','P','I'),(1592,9,'TPLPR','UAT','Q','A'),(1593,9,'TPLPR','UAT','Q','C'),(1594,9,'TC2QC','UAT','P','C'),(1595,9,'EXCTC','UAT','Q','R'),(1596,9,'MNGQC','UAT','P','I'),(1597,9,'CDTER','UAT','Q','R'),(1598,9,'RDTC','UAT','P','I'),(1599,9,'WTR','UAT','Q','R'),(1600,9,'MXE2E','UAT','P','R'),(1601,9,'MXE2E','UAT','P','C'),(1602,9,'MXE2E','UAT','Q','A'),(1603,9,'MXE2E','UAT','Q','I'),(1700,39,'CCQC','SIT','P','R'),(1701,39,'CCQC','SIT','P','A'),(1702,39,'EXCTC','SIT','Q','C'),(1703,39,'EXCTC','SIT','Q','I'),(1704,39,'CCQC','UAT','P','C'),(1705,39,'CCQC','UAT','Q','R'),(1706,39,'CCQC','UAT','Q','I'),(2112,38,'CCQC','SIT','P','R'),(2113,38,'CCQC','SIT','P','A'),(2114,38,'CCQC','SIT','Q','C'),(2115,38,'CCQC','SIT','Q','I'),(2116,38,'TPLPR','SIT','P','C'),(2117,38,'TPLPR','SIT','P','I'),(2118,38,'TPLPR','SIT','Q','R'),(2119,38,'TPLPR','SIT','Q','A'),(2120,38,'TC2QC','SIT','P','R'),(2121,38,'TC2QC','SIT','P','I'),(2122,38,'TC2QC','SIT','Q','A'),(2123,38,'TC2QC','SIT','Q','C'),(2124,38,'EXCTC','SIT','P','A'),(2125,38,'EXCTC','SIT','P','I'),(2126,38,'EXCTC','SIT','Q','R'),(2127,38,'EXCTC','SIT','Q','C'),(2128,38,'MNGQC','SIT','P','R'),(2129,38,'MNGQC','SIT','P','A'),(2130,38,'MNGQC','SIT','P','C'),(2131,38,'MNGQC','SIT','P','I'),(2132,38,'CDTER','SIT','Q','R'),(2133,38,'CDTER','SIT','Q','A'),(2134,38,'CDTER','SIT','Q','C'),(2135,38,'CDTER','SIT','Q','I'),(2136,38,'RDTC','SIT','P','R'),(2137,38,'RDTC','SIT','P','A'),(2138,38,'RDTC','SIT','P','C'),(2139,38,'RDTC','SIT','Q','I'),(2140,38,'WTR','SIT','P','A'),(2141,38,'WTR','SIT','P','C'),(2142,38,'WTR','SIT','P','I'),(2143,38,'WTR','SIT','Q','R'),(2144,38,'MXE2E','SIT','P','R'),(2145,38,'MXE2E','SIT','P','C'),(2146,38,'MXE2E','SIT','P','I'),(2147,38,'MXE2E','SIT','Q','A'),(2148,38,'CCQC','UAT','P','R'),(2149,38,'TPLPR','UAT','P','A'),(2150,38,'TC2QC','UAT','P','C'),(2151,38,'EXCTC','UAT','P','I'),(2152,38,'MNGQC','UAT','Q','R'),(2153,38,'CDTER','UAT','Q','A'),(2154,38,'RDTC','UAT','Q','C'),(2155,38,'WTR','UAT','Q','I'),(2156,38,'MXE2E','UAT','P','R'),(2157,38,'MXE2E','UAT','P','A'),(2158,38,'MXE2E','UAT','Q','C'),(2159,38,'MXE2E','UAT','Q','I'),(2184,52,'CCQC','SIT','P','R'),(2185,52,'CCQC','SIT','P','A'),(2186,52,'CCQC','SIT','Q','C'),(2187,52,'CCQC','SIT','Q','I'),(2188,52,'TPLPR','SIT','P','C'),(2189,52,'TPLPR','SIT','P','I'),(2190,52,'TPLPR','SIT','Q','R'),(2191,52,'TPLPR','SIT','Q','A'),(2330,46,'CCQC','SIT','P','R'),(2331,46,'CCQC','SIT','P','A'),(2332,46,'CCQC','SIT','P','C'),(2333,46,'CCQC','SIT','P','I'),(2334,46,'TPLPR','SIT','P','A'),(2335,46,'TPLPR','SIT','P','C'),(2336,46,'TPLPR','SIT','P','I'),(2337,46,'TPLPR','SIT','Q','R'),(2338,46,'TC2QC','SIT','P','A'),(2339,46,'TC2QC','SIT','P','C'),(2340,46,'TC2QC','SIT','Q','R'),(2341,46,'TC2QC','SIT','Q','I'),(2342,46,'EXCTC','SIT','P','R'),(2343,46,'EXCTC','SIT','P','A'),(2344,46,'EXCTC','SIT','Q','C'),(2345,46,'EXCTC','SIT','Q','I'),(2346,46,'MNGQC','SIT','P','R'),(2347,46,'MNGQC','SIT','P','A'),(2348,46,'MNGQC','SIT','P','C'),(2349,46,'MNGQC','SIT','P','I'),(2350,46,'CDTER','SIT','P','R'),(2351,46,'CDTER','SIT','P','A'),(2352,46,'CDTER','SIT','P','I'),(2353,46,'CDTER','SIT','Q','C'),(2354,46,'RDTC','SIT','P','R'),(2355,46,'RDTC','SIT','P','A'),(2356,46,'RDTC','SIT','Q','C'),(2357,46,'RDTC','SIT','Q','I'),(2358,46,'WTR','SIT','P','C'),(2359,46,'WTR','SIT','P','I'),(2360,46,'WTR','SIT','Q','R'),(2361,46,'WTR','SIT','Q','A'),(2362,46,'MXE2E','SIT','P','R'),(2363,46,'MXE2E','SIT','P','C'),(2364,46,'MXE2E','SIT','Q','A'),(2365,46,'CCQC','UAT','P','R'),(2366,46,'CCQC','UAT','P','A'),(2367,46,'CCQC','UAT','Q','C'),(2368,46,'CCQC','UAT','Q','I'),(2369,46,'TPLPR','UAT','P','R'),(2370,46,'TPLPR','UAT','P','C'),(2371,46,'TPLPR','UAT','Q','A'),(2372,46,'TPLPR','UAT','Q','I'),(2373,46,'TC2QC','UAT','P','A'),(2374,46,'TC2QC','UAT','P','C'),(2375,46,'TC2QC','UAT','P','I'),(2376,46,'TC2QC','UAT','Q','R'),(2377,46,'EXCTC','UAT','P','R'),(2378,46,'EXCTC','UAT','P','A'),(2379,46,'EXCTC','UAT','P','C'),(2380,46,'EXCTC','UAT','Q','I'),(2381,46,'MNGQC','UAT','P','A'),(2382,46,'MNGQC','UAT','P','I'),(2383,46,'MNGQC','UAT','Q','C'),(2384,46,'CDTER','UAT','P','R'),(2385,46,'CDTER','UAT','P','C'),(2386,46,'CDTER','UAT','Q','A'),(2387,46,'CDTER','UAT','Q','I'),(2388,46,'RDTC','UAT','P','R'),(2389,46,'RDTC','UAT','P','C'),(2390,46,'RDTC','UAT','Q','I'),(2391,46,'WTR','UAT','P','A'),(2392,46,'WTR','UAT','P','C'),(2393,46,'WTR','UAT','P','I'),(2394,46,'WTR','UAT','Q','R'),(2395,46,'MXE2E','UAT','P','R'),(2396,46,'MXE2E','UAT','P','A'),(2397,46,'MXE2E','UAT','P','C'),(2398,46,'MXE2E','UAT','P','I'),(3033,54,'CCQC','SIT','P','R'),(3034,54,'CCQC','SIT','P','A'),(3035,54,'CCQC','SIT','P','C'),(3036,54,'CCQC','SIT','P','I'),(3037,54,'TPLPR','SIT','P','R'),(3038,54,'TPLPR','SIT','P','A'),(3039,54,'TPLPR','SIT','P','C'),(3040,54,'TPLPR','SIT','P','I'),(3041,54,'TC2QC','SIT','P','R'),(3042,54,'TC2QC','SIT','P','A'),(3043,54,'TC2QC','SIT','P','C'),(3044,54,'TC2QC','SIT','P','I'),(3045,54,'EXCTC','SIT','P','R'),(3046,54,'EXCTC','SIT','P','A'),(3047,54,'EXCTC','SIT','P','C'),(3048,54,'EXCTC','SIT','P','I'),(3049,54,'MNGQC','SIT','P','R'),(3050,54,'MNGQC','SIT','P','A'),(3051,54,'MNGQC','SIT','P','C'),(3052,54,'MNGQC','SIT','P','I'),(3053,54,'CDTER','SIT','P','R'),(3054,54,'CDTER','SIT','P','A'),(3055,54,'CDTER','SIT','P','C'),(3056,54,'CDTER','SIT','P','I'),(3057,54,'RDTC','SIT','P','R'),(3058,54,'RDTC','SIT','P','A'),(3059,54,'RDTC','SIT','P','C'),(3060,54,'RDTC','SIT','P','I'),(3061,54,'WTR','SIT','P','R'),(3062,54,'WTR','SIT','P','A'),(3063,54,'WTR','SIT','P','C'),(3064,54,'WTR','SIT','P','I'),(3065,54,'MXE2E','SIT','P','R'),(3066,54,'MXE2E','SIT','P','A'),(3067,54,'MXE2E','SIT','P','C'),(3068,54,'MXE2E','SIT','P','I'),(3069,54,'CCQC','UAT','Q','R'),(3070,54,'CCQC','UAT','Q','A'),(3071,54,'CCQC','UAT','Q','C'),(3072,54,'CCQC','UAT','Q','I'),(3073,54,'TPLPR','UAT','Q','R'),(3074,54,'TPLPR','UAT','Q','A'),(3075,54,'TPLPR','UAT','Q','C'),(3076,54,'TPLPR','UAT','Q','I'),(3077,54,'TC2QC','UAT','Q','R'),(3078,54,'TC2QC','UAT','Q','A'),(3079,54,'TC2QC','UAT','Q','C'),(3080,54,'TC2QC','UAT','Q','I'),(3081,54,'EXCTC','UAT','Q','R'),(3082,54,'EXCTC','UAT','Q','A'),(3083,54,'EXCTC','UAT','Q','C'),(3084,54,'EXCTC','UAT','Q','I'),(3085,54,'MNGQC','UAT','Q','R'),(3086,54,'MNGQC','UAT','Q','A'),(3087,54,'MNGQC','UAT','Q','C'),(3088,54,'MNGQC','UAT','Q','I'),(3089,54,'CDTER','UAT','Q','R'),(3090,54,'CDTER','UAT','Q','A'),(3091,54,'CDTER','UAT','Q','C'),(3092,54,'CDTER','UAT','Q','I'),(3093,54,'RDTC','UAT','Q','R'),(3094,54,'RDTC','UAT','Q','A'),(3095,54,'RDTC','UAT','Q','C'),(3096,54,'RDTC','UAT','Q','I'),(3097,54,'WTR','UAT','Q','R'),(3098,54,'WTR','UAT','Q','A'),(3099,54,'WTR','UAT','Q','C'),(3100,54,'WTR','UAT','Q','I'),(3101,54,'MXE2E','UAT','Q','R'),(3102,54,'MXE2E','UAT','Q','A'),(3103,54,'MXE2E','UAT','Q','C'),(3104,54,'MXE2E','UAT','Q','I'),(3105,68,'CCQC','SIT','P','C'),(3106,68,'CCQC','SIT','Q','R'),(3107,68,'CCQC','SIT','Q','A'),(3108,68,'TPLPR','SIT','P','C'),(3109,68,'TPLPR','SIT','Q','R'),(3110,68,'TPLPR','SIT','Q','A'),(3111,68,'TC2QC','SIT','P','I'),(3112,68,'TC2QC','SIT','Q','R'),(3113,68,'TC2QC','SIT','Q','A'),(3114,68,'EXCTC','SIT','P','I'),(3115,68,'EXCTC','SIT','Q','R'),(3116,68,'EXCTC','SIT','Q','A'),(3117,68,'MNGQC','SIT','P','I'),(3118,68,'MNGQC','SIT','Q','R'),(3119,68,'MNGQC','SIT','Q','A'),(3120,68,'CDTER','SIT','P','I'),(3121,68,'RDTC','SIT','P','I'),(3122,68,'RDTC','SIT','Q','R'),(3123,68,'RDTC','SIT','Q','A'),(3124,68,'WTR','SIT','P','C'),(3125,68,'WTR','SIT','P','I'),(3126,68,'WTR','SIT','Q','R'),(3127,68,'WTR','SIT','Q','A'),(3128,68,'MXE2E','SIT','P','C'),(3129,68,'MXE2E','SIT','P','I'),(3130,68,'MXE2E','SIT','Q','R'),(3131,68,'MXE2E','SIT','Q','A'),(3132,68,'CCQC','UAT','P','C'),(3133,68,'CCQC','UAT','Q','R'),(3134,68,'CCQC','UAT','Q','A'),(3135,68,'TPLPR','UAT','P','R'),(3136,68,'TPLPR','UAT','P','A'),(3137,68,'TPLPR','UAT','Q','C'),(3138,68,'TC2QC','UAT','P','I'),(3139,68,'TC2QC','UAT','Q','R'),(3140,68,'TC2QC','UAT','Q','A'),(3141,68,'EXCTC','UAT','P','R'),(3142,68,'EXCTC','UAT','P','A'),(3143,68,'EXCTC','UAT','Q','C'),(3144,68,'MNGQC','UAT','P','R'),(3145,68,'MNGQC','UAT','P','A'),(3146,68,'MNGQC','UAT','Q','C'),(3147,68,'CDTER','UAT','P','C'),(3148,68,'CDTER','UAT','Q','R'),(3149,68,'CDTER','UAT','Q','A'),(3150,68,'RDTC','UAT','P','R'),(3151,68,'RDTC','UAT','P','A'),(3152,68,'RDTC','UAT','Q','C'),(3153,68,'WTR','UAT','P','R'),(3154,68,'WTR','UAT','P','A'),(3155,68,'WTR','UAT','Q','I'),(3156,68,'MXE2E','UAT','P','R'),(3157,68,'MXE2E','UAT','P','A'),(3158,68,'MXE2E','UAT','Q','C'),(3159,68,'MXE2E','UAT','Q','I');
/*!40000 ALTER TABLE `qagile_rfs_estimates_raci` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-03 13:00:23
