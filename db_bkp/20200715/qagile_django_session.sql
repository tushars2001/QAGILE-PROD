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
INSERT INTO `django_session` VALUES ('1wdaz7si6d8cr7m3xc74w3j092m5j5as','NTdlZmU4ZTgzZTI0NWQyNDVlYjFhN2Y1ZGY0NjhhMzRjMDQ4ZDg4Yjp7Il9hdXRoX3VzZXJfaWQiOiI1MCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZGU0ZDgzMjY0Mzg5YzQzZTM4MGQzNGY2M2Y1N2ZiNDkyYTViNjIwMyJ9','2020-06-18 17:53:56.433470'),('1ypp09ty1bo8iww6jj9c256vezhytgs4','MzA5OTFmMjk0ZDk0MjdhZmRlZDIxMDdjYTVlMTcxZWVjOWU1NzIyNTp7Il9hdXRoX3VzZXJfaWQiOiIxMjIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjUwOTI2ZGQzZDI3YTE1NDQzM2E5MDRhNzNkZWJjYTc5YmRhMDU4MTUifQ==','2020-07-03 15:51:00.126011'),('2sequ14tfkrdbfelqriwdxawl7r2u801','NGFhOWNhYzI4NjU1ZGVmYWVkOTdiZmRjNGI1Nzc5ZjVlMmEwNmZkNjp7Il9hdXRoX3VzZXJfaWQiOiIxMzUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImJmN2U3OGNlYzljYTQ0ZDZlODVjMzI1ZmYwMDI3M2RmMTc3MmUwMjgifQ==','2020-05-18 13:31:23.938054'),('5vkqszr8xq2sob4sjg9fzilrh52qm1ep','NTdlZmU4ZTgzZTI0NWQyNDVlYjFhN2Y1ZGY0NjhhMzRjMDQ4ZDg4Yjp7Il9hdXRoX3VzZXJfaWQiOiI1MCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZGU0ZDgzMjY0Mzg5YzQzZTM4MGQzNGY2M2Y1N2ZiNDkyYTViNjIwMyJ9','2020-06-29 15:29:06.962830'),('6ix88mgn07xrjgrktnaatwlgm6hs71b8','ZTUzZmFhYjY1YjEyODk2OGNiZmQzZTVlYzc2YzFiMGY5NzFhNGQ5Zjp7Il9hdXRoX3VzZXJfaWQiOiIxMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nb19hdXRoX2xkYXAuYmFja2VuZC5MREFQQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImRkMzdlZDI1YTZkZDk1MTcwMjhiNDBjMGVlN2VjMDc3MGM3MmQwNGEifQ==','2020-05-14 15:24:54.014246'),('6lc0a0gjqscwf0qpirtwurl32wvlpfmw','MzA5OTFmMjk0ZDk0MjdhZmRlZDIxMDdjYTVlMTcxZWVjOWU1NzIyNTp7Il9hdXRoX3VzZXJfaWQiOiIxMjIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjUwOTI2ZGQzZDI3YTE1NDQzM2E5MDRhNzNkZWJjYTc5YmRhMDU4MTUifQ==','2020-05-20 15:49:23.461940'),('7txnk61qd999aoww4amw5mpl9png25l6','NGFhOWNhYzI4NjU1ZGVmYWVkOTdiZmRjNGI1Nzc5ZjVlMmEwNmZkNjp7Il9hdXRoX3VzZXJfaWQiOiIxMzUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImJmN2U3OGNlYzljYTQ0ZDZlODVjMzI1ZmYwMDI3M2RmMTc3MmUwMjgifQ==','2020-07-10 17:34:53.786143'),('843cxgg4m05fmmzybglex7e7nd0v8yxe','ZjJmZGVlYjcwODM2OTA3N2NiNzlhN2I2MGU5NjFjNzMzMmY0NTkzYzp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvX2F1dGhfbGRhcC5iYWNrZW5kLkxEQVBCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZDNjYjdmODQ0ODY0OTgzOWFlMjZmMWZjMjdjOWJlYzFjZjU3NGUyYiJ9','2020-05-11 01:59:01.809439'),('8zkl2phdy63tlv27nauf059o60y8cnw4','NGFhOWNhYzI4NjU1ZGVmYWVkOTdiZmRjNGI1Nzc5ZjVlMmEwNmZkNjp7Il9hdXRoX3VzZXJfaWQiOiIxMzUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImJmN2U3OGNlYzljYTQ0ZDZlODVjMzI1ZmYwMDI3M2RmMTc3MmUwMjgifQ==','2020-06-29 17:15:54.778737'),('9qpj43rng7nzpw9n0gs4oq5ex646h8vc','ZDAzMWU0MWZlMTk5ZTRmMDhiOGIwNzk4NmYwZTJmMGU3ZDc4ODE3Nzp7fQ==','2020-05-02 20:31:22.612371'),('awdlzclnibtmdrdp8reamnne1yn1ekwq','ZDAzMWU0MWZlMTk5ZTRmMDhiOGIwNzk4NmYwZTJmMGU3ZDc4ODE3Nzp7fQ==','2020-05-02 20:33:26.728874'),('bbw1bpnpz5n03x78cquvq8b606va835s','NGFhOWNhYzI4NjU1ZGVmYWVkOTdiZmRjNGI1Nzc5ZjVlMmEwNmZkNjp7Il9hdXRoX3VzZXJfaWQiOiIxMzUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImJmN2U3OGNlYzljYTQ0ZDZlODVjMzI1ZmYwMDI3M2RmMTc3MmUwMjgifQ==','2020-06-08 20:21:59.263156'),('c5ziwsdev8ool3iymf5qal9oowedzkxc','NGFhOWNhYzI4NjU1ZGVmYWVkOTdiZmRjNGI1Nzc5ZjVlMmEwNmZkNjp7Il9hdXRoX3VzZXJfaWQiOiIxMzUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImJmN2U3OGNlYzljYTQ0ZDZlODVjMzI1ZmYwMDI3M2RmMTc3MmUwMjgifQ==','2020-05-21 21:17:09.661725'),('cxplrnfizfvixevikuowzqdn8s69efsi','NGFhOWNhYzI4NjU1ZGVmYWVkOTdiZmRjNGI1Nzc5ZjVlMmEwNmZkNjp7Il9hdXRoX3VzZXJfaWQiOiIxMzUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImJmN2U3OGNlYzljYTQ0ZDZlODVjMzI1ZmYwMDI3M2RmMTc3MmUwMjgifQ==','2020-05-16 21:28:44.804469'),('ds7y611gi70p9h3t68my4xtvxjbf0qpe','ZDAzMWU0MWZlMTk5ZTRmMDhiOGIwNzk4NmYwZTJmMGU3ZDc4ODE3Nzp7fQ==','2020-05-02 20:27:33.136717'),('dzib9d5qquboj3azykrkxx8xscyj26n1','MzAwYmNiM2U4YzIwZjc5ZDNmMTgzMTRmNmRjZDA3YWNkNTcwZjQ0YTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2ZTZkNjgzNGVmNjcxMDFjMWNjZjZiYmY3MWJhMWRiMDU1M2E2MzZkIn0=','2020-03-24 19:27:34.825959'),('h7qek6q1zbauigttj30hek8a1wushmvl','ZGZhZmU5MjNlNTVlNWRhYjI2ODBiNjFkMjIzNWJiZjYzZDM2NmY0YTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1MDE5YTcwMjc0ZTBjYzY1NmQ0N2ZlZTM4ZGRmYjc3YjhhOTRmYmYzIn0=','2020-03-22 01:58:14.368453'),('hr0xvp00u2h2qryrmrby1btc67m44lcc','NGFhOWNhYzI4NjU1ZGVmYWVkOTdiZmRjNGI1Nzc5ZjVlMmEwNmZkNjp7Il9hdXRoX3VzZXJfaWQiOiIxMzUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImJmN2U3OGNlYzljYTQ0ZDZlODVjMzI1ZmYwMDI3M2RmMTc3MmUwMjgifQ==','2020-07-07 18:51:51.781293'),('hy7wex1698b7puw06cx2vxbkf0fyiz69','NGFhOWNhYzI4NjU1ZGVmYWVkOTdiZmRjNGI1Nzc5ZjVlMmEwNmZkNjp7Il9hdXRoX3VzZXJfaWQiOiIxMzUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImJmN2U3OGNlYzljYTQ0ZDZlODVjMzI1ZmYwMDI3M2RmMTc3MmUwMjgifQ==','2020-07-28 14:43:09.621549'),('ithtk22pxnw28toxd085sky7josqpivg','NGFhOWNhYzI4NjU1ZGVmYWVkOTdiZmRjNGI1Nzc5ZjVlMmEwNmZkNjp7Il9hdXRoX3VzZXJfaWQiOiIxMzUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImJmN2U3OGNlYzljYTQ0ZDZlODVjMzI1ZmYwMDI3M2RmMTc3MmUwMjgifQ==','2020-07-29 18:33:42.491650'),('j4fyxijt3hdp4l0jpck6dh71yj75ujm8','NGFhOWNhYzI4NjU1ZGVmYWVkOTdiZmRjNGI1Nzc5ZjVlMmEwNmZkNjp7Il9hdXRoX3VzZXJfaWQiOiIxMzUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImJmN2U3OGNlYzljYTQ0ZDZlODVjMzI1ZmYwMDI3M2RmMTc3MmUwMjgifQ==','2020-05-20 15:16:05.285045'),('j5n6dcieh4a0n5229dejdkh3udltj7yt','ZDAzMWU0MWZlMTk5ZTRmMDhiOGIwNzk4NmYwZTJmMGU3ZDc4ODE3Nzp7fQ==','2020-05-02 20:28:34.982858'),('jibe3pz0fc3k64zsrry3y2j82iv22vz0','NGFhOWNhYzI4NjU1ZGVmYWVkOTdiZmRjNGI1Nzc5ZjVlMmEwNmZkNjp7Il9hdXRoX3VzZXJfaWQiOiIxMzUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImJmN2U3OGNlYzljYTQ0ZDZlODVjMzI1ZmYwMDI3M2RmMTc3MmUwMjgifQ==','2020-07-28 13:37:21.109413'),('myibmg2angde0gimbc78y76e5rnqwqjp','ZTc0ZDEzZmYwNGRiNTlkZjFlODY0YTMyZmNiZmNjNTdiM2YzZmM3MDp7Il9hdXRoX3VzZXJfaWQiOiIxMzciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjE4MDM4NjRjODNlMDY2YzdlNTkwNzRiMjgzNzRlZTE4NWVjNzliZWUifQ==','2020-06-25 20:32:16.801619'),('noftn6v2fxhzuod88vckxaw4ynsqltjd','NGFhOWNhYzI4NjU1ZGVmYWVkOTdiZmRjNGI1Nzc5ZjVlMmEwNmZkNjp7Il9hdXRoX3VzZXJfaWQiOiIxMzUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImJmN2U3OGNlYzljYTQ0ZDZlODVjMzI1ZmYwMDI3M2RmMTc3MmUwMjgifQ==','2020-07-28 14:46:07.920648'),('p8g0nn5hfgwwemgodzatm0qzlbuqcakw','NGFhOWNhYzI4NjU1ZGVmYWVkOTdiZmRjNGI1Nzc5ZjVlMmEwNmZkNjp7Il9hdXRoX3VzZXJfaWQiOiIxMzUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImJmN2U3OGNlYzljYTQ0ZDZlODVjMzI1ZmYwMDI3M2RmMTc3MmUwMjgifQ==','2020-05-22 18:17:25.023606'),('vkmqqi5u79xddvivz84j0hjkj8w64h0y','ZDAzMWU0MWZlMTk5ZTRmMDhiOGIwNzk4NmYwZTJmMGU3ZDc4ODE3Nzp7fQ==','2020-05-02 20:33:56.110400'),('wvh3mr3sgzjjlamzekwjwp3t8hzkemqn','ZDAzMWU0MWZlMTk5ZTRmMDhiOGIwNzk4NmYwZTJmMGU3ZDc4ODE3Nzp7fQ==','2020-05-02 20:37:27.044064'),('x716wlppb04ijzmoiixdcgpamza23x0g','ZmVhMjNkMDkyMDY3MWZhNzhiZTIzMmYzM2NjMjRjYjNmNjVmZDM5Njp7Il9hdXRoX3VzZXJfaWQiOiIxNDIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImFkMTYyMDQ1ZjU5MjMyYzk3NWRmYTMzNjI1ZWM0YmNiMTdiMWY1ZjUifQ==','2020-05-22 16:51:16.473009'),('xyl7m6jzszu5m5h1hx81mojg1vcuexev','NGFhOWNhYzI4NjU1ZGVmYWVkOTdiZmRjNGI1Nzc5ZjVlMmEwNmZkNjp7Il9hdXRoX3VzZXJfaWQiOiIxMzUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImJmN2U3OGNlYzljYTQ0ZDZlODVjMzI1ZmYwMDI3M2RmMTc3MmUwMjgifQ==','2020-06-04 19:02:45.028135'),('yrctx1kz9f52law3snqo3v10x5x12w3u','NGFhOWNhYzI4NjU1ZGVmYWVkOTdiZmRjNGI1Nzc5ZjVlMmEwNmZkNjp7Il9hdXRoX3VzZXJfaWQiOiIxMzUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImJmN2U3OGNlYzljYTQ0ZDZlODVjMzI1ZmYwMDI3M2RmMTc3MmUwMjgifQ==','2020-07-28 14:02:43.772449'),('zkbjjcchyzj0a1d7au3uhy5yunbwh5sj','NGFhOWNhYzI4NjU1ZGVmYWVkOTdiZmRjNGI1Nzc5ZjVlMmEwNmZkNjp7Il9hdXRoX3VzZXJfaWQiOiIxMzUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImJmN2U3OGNlYzljYTQ0ZDZlODVjMzI1ZmYwMDI3M2RmMTc3MmUwMjgifQ==','2020-06-01 21:38:00.646175'),('zqdz3yz85f0zit7k8f8cfuh77wtxnvza','NGFhOWNhYzI4NjU1ZGVmYWVkOTdiZmRjNGI1Nzc5ZjVlMmEwNmZkNjp7Il9hdXRoX3VzZXJfaWQiOiIxMzUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImJmN2U3OGNlYzljYTQ0ZDZlODVjMzI1ZmYwMDI3M2RmMTc3MmUwMjgifQ==','2020-05-21 17:36:12.095044');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-15 16:46:08
