-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: localhost    Database: cloud
-- ------------------------------------------------------
-- Server version	8.0.36-0ubuntu0.22.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `active_sessions`
--

DROP TABLE IF EXISTS `active_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `active_sessions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `session_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `active_sessions_session_id_index` (`session_id`),
  KEY `active_sessions_token_index` (`token`),
  KEY `active_sessions_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=226 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `active_sessions`
--

LOCK TABLES `active_sessions` WRITE;
/*!40000 ALTER TABLE `active_sessions` DISABLE KEYS */;
INSERT INTO `active_sessions` VALUES (1,'MQOqeATxluR0hAptA3up6zGt1p49jSfKcIt2Lfkv',NULL,1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36','2024-02-18 15:11:21','2024-02-18 15:12:44'),(2,'3JDMgoQ8lkIfYASb7i02ufLMITLqSaBr78QZIkps',NULL,1,'103.78.239.42','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36 Edg/122.0.0.0','2024-03-21 18:31:31','2024-03-21 19:36:16'),(3,'fkv5PXo5Z2UWgLZpTcDyG0FrszTRslkUa5yRzg2r',NULL,1,'103.78.239.42','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36 Edg/122.0.0.0','2024-03-21 21:42:38','2024-03-21 21:42:38'),(4,'k0nCKBuNrGlcJFDGN6JWceFLvETy077Bgs58AinN',NULL,1,'103.78.239.42','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36 Edg/122.0.0.0','2024-03-22 06:15:29','2024-03-22 08:40:47'),(5,'wdeH10SHl2qs0mVcPt4h2LsdSBXUczObpwjRw3p1',NULL,1,'103.78.239.42','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36 Edg/122.0.0.0','2024-03-22 07:10:28','2024-03-22 07:10:28'),(6,'4yB1bAOkyMT1nrV9LU1i4G8emyZufsrgTaI8y8lN',NULL,2,'103.78.239.42','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36 Edg/122.0.0.0','2024-03-22 07:11:39','2024-03-22 07:18:41'),(7,'O9plJiLO27ggbe6VLNa3BSvnz8IRt13N8azf0d2r',NULL,1,'152.58.213.238','Mozilla/5.0 (iPhone; CPU iPhone OS 17_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/123.0.6312.52 Mobile/15E148 Safari/604.1','2024-03-22 07:17:11','2024-03-22 07:24:05'),(8,'1Qi5oZKmjgfchizmCPbdrza2jli9SW6Ob85zWt5z',NULL,1,'117.255.95.47','Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Mobile Safari/537.36','2024-03-22 07:31:21','2024-03-22 07:31:21'),(9,'cDk9EZzp9cSmUzZb4dbzTgGpgKNN9kfP5GSTUk8d',NULL,1,'103.163.248.250','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:123.0) Gecko/20100101 Firefox/123.0','2024-03-22 07:41:55','2024-03-22 07:44:43'),(10,'FighRaV3JwesCNyngwOcKA4byhXWutccBKABLcrh',NULL,1,'59.182.244.58','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36','2024-03-22 07:53:28','2024-03-22 07:53:28'),(11,'bCWBy1bbf7z7JQtqrBQw3CIfi5otyjEUcY0rxOKD',NULL,1,'103.98.209.30','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36','2024-03-22 08:28:35','2024-03-22 08:40:49'),(12,'NsX20eOkzUffJAj5N61eX5kw0xNMkYZdJDh62Lum',NULL,1,'103.98.209.30','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36','2024-03-22 08:42:40','2024-03-22 15:26:34'),(13,'oC0G5TyJjVJZGbXOnzSlbOLOZ179QpIe9kuOqtE7',NULL,1,'103.78.239.42','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36 Edg/122.0.0.0','2024-03-22 08:43:20','2024-03-22 12:57:22'),(14,'E20mmPNb2n4r8v6kaylhK8Z5t6pJlkJ0mWZOJiUO',NULL,1,'117.255.95.47','Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Mobile Safari/537.36','2024-03-22 09:05:26','2024-03-22 09:05:26'),(15,'6Zobe0gLTggmDStxosGasNP6Bo7BMwpl785IgPfD',NULL,3,'117.255.95.47','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36','2024-03-22 09:07:08','2024-03-22 09:07:49'),(18,'PjmAAeCpXi02rrxqiNr7CGyncejGJPspeOpCf5fw',NULL,1,'117.255.95.47','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36','2024-03-22 09:18:28','2024-03-22 09:51:06'),(19,'9TG1DPbSDT3TjeKA8EKMJV7XozR4YzW6ARAciaRy',NULL,1,'117.201.5.159','Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Mobile Safari/537.36','2024-03-22 09:18:30','2024-03-22 09:18:30'),(20,'5eXUhMjct4sLsDtPLh16FK70Qn2IiWn4paXWgHDG',NULL,5,'110.172.164.163','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36','2024-03-22 13:35:17','2024-03-22 13:39:59'),(21,'P5w0ROpiBn5cdQ3kklNgUcDlKmmu6mt8rgWYg6Dg',NULL,1,'103.78.239.42','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36 Edg/122.0.0.0','2024-03-22 15:31:45','2024-03-22 15:31:45'),(23,'pePoJIbpu6eeMppWYOIzc8rZxF200ZQs7GXRxG3r',NULL,1,'103.78.239.42','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36 Edg/122.0.0.0','2024-03-22 15:33:29','2024-03-22 15:33:29'),(24,'lZQIyqJkCeUepeTesnAM4RBs6sxOfq9rXZAMkS2W',NULL,3,'103.78.239.42','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36 Edg/122.0.0.0','2024-03-22 15:33:36','2024-03-22 15:34:31'),(25,'fB4IUQvhmfFcoZBFtJodSnPzka0YQ75TQXCsdPUt',NULL,1,'103.78.239.42','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36 Edg/122.0.0.0','2024-03-22 15:34:38','2024-03-22 20:57:28'),(26,'iLzTmdJMzQmNPtR6PEwwry4MN9Quq5ylElkqjuhc',NULL,3,'103.98.209.30','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36','2024-03-22 16:46:18','2024-03-22 16:47:12'),(27,'zDnUox85KMDz4dGoDtbsInnVJdfRA57YLXidSAps',NULL,1,'103.98.209.30','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36','2024-03-22 16:48:02','2024-03-22 17:48:30'),(28,'YmzJUlMmt2IQRxCiZ9fHS0IOCgybKLNEjTRbzMhL',NULL,1,'120.56.2.212','Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Mobile Safari/537.36','2024-03-22 16:50:05','2024-03-22 17:02:48'),(29,'qd2sqr5mXUPZVz2pOgxCrA8ZCmImR8Psmpw1zzHC',NULL,6,'120.56.2.212','Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Mobile Safari/537.36','2024-03-22 17:05:45','2024-03-22 17:10:31'),(30,'omTlERukUJJ7AFoi1fFj3MEXTcoGMjHw6GQnXbpg',NULL,1,'120.56.2.212','Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Mobile Safari/537.36','2024-03-22 17:11:50','2024-03-22 17:17:10'),(31,'pdLj5eohEP8c7xQvbTRuw4s9bUnF0pPjjRHskjdV',NULL,6,'120.56.2.212','Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Mobile Safari/537.36','2024-03-22 17:17:15','2024-03-22 17:17:15'),(32,'1lUA8UXNk1wk242XHw8HkaofTBHuvA1o8O2AAEYs',NULL,6,'120.56.2.212','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36','2024-03-22 17:18:59','2024-03-22 17:19:34'),(33,'gDkZE2ufOPVpcKYRe3heNaXt0K0iytgVVFejz0zy',NULL,1,'120.56.2.212','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36','2024-03-22 17:20:07','2024-03-22 17:27:00'),(34,'fpccrB8w0eA9Z5YVYvNrIZgKB6dBbaY2S2Y7xm6q',NULL,6,'120.56.2.212','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36','2024-03-22 17:39:47','2024-03-22 17:45:42'),(35,'ZrMml8gnejjiuNH0tf5VCwzZO562MeR567Hpg1YF',NULL,1,'120.56.2.212','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36','2024-03-22 17:49:40','2024-03-22 17:49:41'),(36,'Y4jva6AQj36LQofrLIkz9lq8CyXU55bzKL3PCnw1',NULL,6,'120.56.2.212','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36','2024-03-22 17:51:23','2024-03-22 17:51:24'),(37,'IXeuEeBwu89J0AXz1splrDfl5P1Mdz8b70Qoo4rF',NULL,1,'68.197.203.142','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36','2024-03-22 19:13:19','2024-03-22 19:14:19'),(38,'Q1sADE99yh1u1HYp5uWHF1AmJyWm2hSBA55F6Y2N',NULL,1,'103.98.209.30','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36','2024-03-22 19:53:59','2024-03-22 19:54:31'),(39,'qhlVKyxglz6ZVqDVeuNiLufpP3pJEL8zGjwRZEpZ',NULL,1,'103.78.239.42','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36 Edg/122.0.0.0','2024-03-23 10:58:17','2024-03-23 12:29:28'),(40,'DE2DAogVS6UddYv6q5c1H0A4diEr9m3NDN9MEtj6',NULL,1,'103.78.239.42','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36 Edg/122.0.0.0','2024-03-23 16:22:16','2024-03-23 16:22:16'),(41,'5HvESZITzZRzRFoJj5eKDAm3ma4wBiYPj5GBWhhM',NULL,1,'103.78.239.42','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36 Edg/122.0.0.0','2024-03-23 19:20:24','2024-03-23 19:20:24'),(42,'YPdTm25Mk6eBa6RS8hZLLIgum69sd4lDvJp0f0Pq',NULL,1,'103.78.239.42','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36 Edg/122.0.0.0','2024-03-24 07:35:45','2024-03-24 07:35:45'),(43,'jL2yoZSYwFJMZ4nhTEYFKmPLloKhWA6E0Ko5XKKP',NULL,1,'103.78.239.42','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36 Edg/122.0.0.0','2024-03-24 13:16:28','2024-03-24 14:08:39'),(44,'vtRa6uhxoNPg8JEq1W0re4EhWyuVklcT1wmNYzdU',NULL,1,'103.78.239.42','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36 Edg/122.0.0.0','2024-03-24 18:59:20','2024-03-24 18:59:20'),(45,'sk4xkUeXTazPZ1q4qn70rp7PQ6wwgT0OFwfHW4qi',NULL,1,'103.78.239.42','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36 Edg/122.0.0.0','2024-03-25 08:36:03','2024-03-25 09:01:58'),(46,'eDju5pq0gmKwXayJ1DLKPWoJvAJZDHYYmgFyhqSC',NULL,6,'103.78.239.42','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36 Edg/122.0.0.0','2024-03-25 09:26:39','2024-03-25 09:26:39'),(47,'CIMsufuwWL42sxKKBckWqmp5UPO8xWQNvTozlAK5',NULL,1,'103.78.239.42','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36 Edg/122.0.0.0','2024-03-25 09:27:06','2024-03-25 10:51:36'),(48,'FyNte29ZeYsgpN6dZhRH5MEy9wo3mH9F2bt7YFM9',NULL,1,'103.98.209.141','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36','2024-03-25 14:24:15','2024-03-25 15:27:40'),(49,'WAjpyiOhWN3eUpCnR23AfCqKR0z1Ol7UpQ7FM4fl',NULL,7,'117.200.151.174','Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Mobile Safari/537.36','2024-03-25 15:15:46','2024-03-25 15:15:46'),(50,'PQeB8VlRTSkVBLPo3gexAVepyeVLCrDwopexjWrR',NULL,1,'103.78.239.42','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36 Edg/122.0.0.0','2024-03-25 15:32:51','2024-03-25 15:32:51'),(51,'NvmXTQQG1gSvQkE1cceWdQmdTxYnNlQBTGADe2QI',NULL,7,'103.98.209.141','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36','2024-03-25 15:38:22','2024-03-25 15:38:23'),(52,'THVQDX8bZjjXenp3WnkcY6VrnJn27x0tv2d2Utew',NULL,1,'103.98.209.141','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36','2024-03-25 15:38:49','2024-03-25 17:26:36'),(53,'DGmUAN7woyQUFrdQLyfCuhn3X9yFvZRJDcFoQavv',NULL,3,'120.56.11.53','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36','2024-03-26 04:07:34','2024-03-26 04:51:42'),(54,'NgW00U1yhiKtT9SDorTpYplLbEjUKk36oS3BtZC4',NULL,1,'120.56.11.53','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36','2024-03-26 05:05:53','2024-03-26 05:34:44'),(55,'g7EIgflhj0r6A5J7mgQu9UWXaFM1qnAPcQ5kkFkE',NULL,1,'117.252.207.5','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36','2024-03-26 05:10:25','2024-03-26 05:10:25'),(56,'3fa6aNDDhsrQjbCURon150hcZVQsyzTRuukMhPqz',NULL,3,'120.56.11.53','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36','2024-03-26 05:37:09','2024-03-26 05:37:09'),(57,'GB9iZeQawYD7PPgizkKVuq6XR9O1EaxaHVmCtfJ6',NULL,1,'120.56.11.53','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36','2024-03-26 05:41:42','2024-03-26 05:41:42'),(58,'BZOYBOoGeVzEIulUJFbCUz4LUIXb5VDmGOwi0gXg',NULL,8,'117.252.207.5','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36','2024-03-26 05:49:43','2024-03-26 05:49:43'),(59,'1MWU2HRT2CfUQ9Y9G0sU2CNVQBFVYsUleU30BF7N',NULL,1,'117.252.207.5','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36','2024-03-26 05:57:07','2024-03-26 05:57:07'),(60,'nWnC6FDfIa9kzlX58V9Ej2SbHmBohpqq8mtm8esg',NULL,8,'117.252.207.5','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36','2024-03-26 05:59:07','2024-03-26 06:18:25'),(61,'FP1eq1D2aCA5Xbk8h2fOQjc7YjpemyKHBo5tk4j0',NULL,3,'120.56.11.53','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36','2024-03-26 06:09:58','2024-03-26 06:12:56'),(62,'6CECVDroIlNJEConEh2tdzSpVuSzPFAXfnkOoDrC',NULL,1,'120.56.11.53','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36','2024-03-26 06:13:59','2024-03-26 06:20:04'),(63,'LgVH2D0Cr1yGNoG389nfVUbtWd1ONVZJTtOp3Jhb',NULL,8,'117.252.207.5','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36','2024-03-26 06:27:39','2024-03-26 06:27:39'),(64,'cu0tTwGKRki1ELchs5xrzdPvmeMP1rV9b86y3OKr',NULL,8,'117.252.207.5','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36','2024-03-26 06:28:03','2024-03-26 06:34:21'),(65,'4KBW02j0SUrkTNQHJzpiwOH5mf4WANB3bZdfmg5H',NULL,1,'103.78.239.42','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36 Edg/122.0.0.0','2024-03-26 06:33:58','2024-03-26 06:43:51'),(66,'iZqsTSVIv0fvu8EqtJ7uQwsrHFkpWQW6ggTHphvf',NULL,1,'117.252.207.5','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36','2024-03-26 06:58:43','2024-03-26 06:58:43'),(67,'gGR3Nl5nWD9Oszm5Zy8gTKxeGeVYmwVtyuT2yciS',NULL,8,'117.252.207.5','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36','2024-03-26 07:00:42','2024-03-26 07:07:18'),(68,'sWbaQbD1BwoPoqhvVkIufCpHM0mQigaydH2Sl1w2',NULL,5,'103.43.114.129','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36','2024-03-26 07:02:37','2024-03-26 07:02:37'),(69,'wJCw1DLXE5pZIukmPqMotWIrnKUCcPPt5RJ3t0tr',NULL,1,'103.98.209.141','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36','2024-03-26 07:03:02','2024-03-26 07:03:02'),(70,'iMgTJSW9mVHnJQdBxRHJsc78Bd3xHAVaFpIM2QZF',NULL,5,'103.98.209.141','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36','2024-03-26 07:03:19','2024-03-26 07:03:19'),(71,'YUSRgNF5qSN4qshIbbEuc3xhFHLCuvg6LqW1J7sC',NULL,3,'120.56.11.53','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36','2024-03-26 07:05:50','2024-03-26 07:13:19'),(72,'J0JkfwsXj78YhCBhC33tvAvNUp5R6VJhBGHBJD6R',NULL,1,'117.252.207.5','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36','2024-03-26 07:11:05','2024-03-26 07:11:05'),(73,'SIZfWM4hp9e5RV2D7RvLdKZuXsDxujH8J162auKT',NULL,8,'117.252.207.5','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36','2024-03-26 07:13:27','2024-03-26 09:03:00'),(74,'ztmsJEvP6Im4VEz46hJ0qLE7nCQeieweWgbb92Rg',NULL,1,'103.98.209.141','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36','2024-03-26 07:30:33','2024-03-26 08:50:41'),(75,'CfojNMxk1OJimWiFzMAGyP1VFn25eROgaLJn4G2s',NULL,1,'120.56.11.53','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36','2024-03-26 07:50:08','2024-03-26 09:14:49'),(76,'Ue3PqRM70BofCdO45oUlWi8JTGS94xUmQB33eaWD',NULL,5,'103.98.209.141','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36','2024-03-26 08:01:11','2024-03-26 08:01:11'),(77,'ip3W6Ftqm8MAwTRcaSwvCgQWtVhCfRKLZu0ROODk',NULL,1,'59.92.190.219','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36','2024-03-26 09:21:28','2024-03-26 10:30:33'),(78,'VOxXblKINkcwFtGERTXcrVeUJZ3yFHQYfSO7feMe',NULL,3,'117.200.184.201','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36','2024-03-26 09:24:42','2024-03-26 09:24:42'),(79,'Blm8D0VNEilyZHTtFjS2j7KeJ0WfkVZ2HhWOSLlr',NULL,1,'117.200.184.201','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36','2024-03-26 09:33:50','2024-03-26 09:33:50'),(80,'SPdIxlPUo9o8YSzjli9qr4YmnlT18SoZXS6nyY6e',NULL,1,'103.98.209.141','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36','2024-03-26 13:11:11','2024-03-26 13:11:11'),(81,'WZD4EnQwLuOEasWRE8NV1ri0RhTTnGlmx2otSvyR',NULL,1,'103.98.209.141','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36','2024-03-26 17:07:08','2024-03-26 17:13:07'),(82,'kNP4kTNw7j4bAWSuUok0PmfklgfSs4NH5MAReJY1',NULL,1,'103.78.239.42','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36 Edg/122.0.0.0','2024-03-26 22:40:11','2024-03-26 22:40:16'),(85,'f6vJGUCnVXj51ZnsOl4Rqyksy7yUd1uirNDAaBAn',NULL,1,'117.251.238.81','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36','2024-03-27 06:00:15','2024-03-27 06:07:01'),(86,'WWfk47IhC8jiHbJEv9XTk66Y1bgt9iyXy0ztIq3p',NULL,8,'117.251.238.81','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36','2024-03-27 06:07:43','2024-03-27 06:09:27'),(87,'PTm2lINyylCDQsoptg5HVeIqTSxNNwxKQdGGseUR',NULL,1,'117.251.238.81','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36','2024-03-27 06:10:39','2024-03-27 06:10:39'),(88,'xzsVtwzulHE1GHjdRn7hly1FZdWzrgnXcfTmi8Rw',NULL,3,'117.202.67.196','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36','2024-03-27 08:20:10','2024-03-27 08:20:10'),(89,'UUnpuXGy34VOO2QTIQpKToXENQ4fhuwfTMs4y9dQ',NULL,1,'103.98.209.141','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36','2024-03-27 08:56:27','2024-03-27 09:09:48'),(90,'VZ1TsTxE8M8R9ka9WvQLWOxhupZ1OazlH3lqpS3i',NULL,5,'103.98.209.141','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36','2024-03-27 09:10:04','2024-03-27 09:10:38'),(91,'733jqVlyfqmSzDzWLLffwRQxD5Yi3xN2TDoyLLh8',NULL,1,'103.98.209.141','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36','2024-03-27 09:10:45','2024-03-27 09:25:00'),(92,'AMiYWvwzXXY1Bx6BFh2XYyrZ0cobb7EYLElzD0cR',NULL,5,'103.98.209.141','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36','2024-03-27 09:11:20','2024-03-27 09:26:58'),(93,'D7O2gFApo7B1USSB4zNdaGSZyzorKHUk9M8Im9MZ',NULL,1,'103.78.239.42','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36 Edg/122.0.0.0','2024-03-27 10:07:15','2024-03-27 10:07:15'),(96,'MU91vW3e25jKk9WELB03Uzt96e5pKk9NKd5Nf8xB',NULL,1,'103.98.209.141','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36','2024-03-27 12:41:19','2024-03-27 16:42:44'),(97,'xuLbews3IlCtr6yd38PBTBX1UVuJiClJNMiGM1wc',NULL,5,'103.98.209.141','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36','2024-03-27 12:41:54','2024-03-27 14:42:34'),(98,'HaVtzg7poO0vjT8y2ZcRFX3M7xpeoqiQIKSuDev4',NULL,3,'117.202.67.196','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36','2024-03-27 13:14:03','2024-03-27 13:14:03'),(100,'3rTYhG4zdAhVRUqhqOFPVy9m2zcyN0aKEwOCsopv',NULL,10,'117.201.6.197','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36 Edg/122.0.0.0','2024-03-27 16:38:14','2024-03-27 16:55:00'),(102,'z40CLs7n3qurPmh2M1vODWrernLURkug2Kr4qLc1',NULL,1,'103.98.209.141','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36','2024-03-27 17:10:45','2024-03-27 17:10:46'),(103,'8gB7JX77ICfvMFHOYI1fr13ybB4PIwByQ2AQnIhR',NULL,1,'103.78.239.42','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36 Edg/122.0.0.0','2024-03-27 19:18:24','2024-03-27 19:18:24'),(104,'M6Uicp5hi1ufPOfMQvc6NXhjpnzkp2M08pvmT36q',NULL,12,'120.56.8.231','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36','2024-03-28 05:34:06','2024-03-28 05:34:06'),(105,'jzUwREPsUz0TWxbl7kl8Lq5TcQYWtQs9Y2fsW0KR',NULL,1,'103.78.239.42','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36 Edg/122.0.0.0','2024-03-28 07:15:19','2024-03-28 08:26:11'),(106,'5sorpMNjQ1rv1reV6ecOGETSjoF0MRTVJ1H8lOZ6',NULL,3,'59.88.188.80','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36','2024-03-28 09:11:39','2024-03-28 09:11:49'),(107,'it3YS9jyi1tZwbFhsGDMjAw9lea4nxIZYVFDLetS',NULL,1,'103.98.209.26','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36','2024-03-28 09:29:02','2024-03-28 09:29:03'),(108,'0DUq3B3zpwNYCPFpqnYKfTA50rw5tjSgA48ayHoK',NULL,3,'157.44.195.245','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36','2024-03-28 12:11:17','2024-03-28 12:11:17'),(109,'MadGIfcVsJCpLhboBANkzdboujfhepMzlCuYeq8b',NULL,1,'103.88.77.184','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36','2024-03-28 14:38:52','2024-03-28 14:38:52'),(110,'2b9Lqh8wJZro5TYT7yUx10FmVgXWtUVODOXhRXIK',NULL,1,'103.78.239.42','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36 Edg/122.0.0.0','2024-03-28 21:33:56','2024-03-28 21:33:56'),(112,'tEw0WguCnTD1luddjc09cKinxPOYhaGbMkXYTXf5',NULL,1,'103.78.239.42','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36 Edg/122.0.0.0','2024-03-28 21:35:52','2024-03-28 21:35:52'),(113,'3p48siG4aG4vp61xJfJeKK4fUoLELCkkYYUk24WS',NULL,10,'103.78.239.42','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36 Edg/122.0.0.0','2024-03-28 21:36:00','2024-03-28 21:36:00'),(114,'juXyAvNugu02ZZyfeGCzs4lWJB5LUgejAQFqyGfS',NULL,1,'103.78.239.42','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36 Edg/122.0.0.0','2024-03-28 21:36:08','2024-03-28 21:36:13'),(115,'aQpss5Uah6i9kjaUusi2TDzdlYdAkY3uDax28VJV',NULL,1,'103.78.239.42','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36 Edg/122.0.0.0','2024-03-29 08:33:02','2024-03-29 08:33:02'),(116,'D0erkmI161Ae2AsRpirB81GwtfuRSl33S50okguE',NULL,1,'103.78.239.35','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0','2024-04-07 19:51:25','2024-04-07 20:22:01'),(117,'r5ANSYBr0Wb5Il3rAgyykfKnaV7ty8MaLl0W9zwh',NULL,1,'103.78.239.35','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0','2024-04-07 23:56:18','2024-04-08 00:29:24'),(118,'MQ2GdLkaFtooKKsWXUsL6mmZ2vgQErD0Oi2FTmgX',NULL,1,'103.78.239.35','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0','2024-04-08 04:52:38','2024-04-08 04:52:38'),(119,'xNKBETFqe98eWEM0LxKOJFfhqlc1Z0FQr53ZMBhU',NULL,1,'103.78.239.35','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0','2024-04-08 04:52:47','2024-04-08 06:07:13'),(120,'54uqw8N1HWVoPtVW2WwtluVROnOecFIMhUkoOVvh',NULL,1,'103.169.60.251','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36','2024-04-08 04:54:03','2024-04-08 05:43:15'),(121,'mV3SB0gVVkP0KXFjQ1W2Od6600OrDsotyD3LhdEg',NULL,1,'103.169.60.251','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36','2024-04-08 09:51:35','2024-04-08 13:37:28'),(122,'TzfdNKvjrHQLVKaI2KHg0v8SfTKSdIjnhx41gbM0',NULL,1,'103.78.239.35','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0','2024-04-08 10:46:20','2024-04-08 20:13:04'),(123,'9yqr4XgrsuZohjv1WXCefuP3TR0vftIzzeORuYZy',NULL,1,'117.252.206.82','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36','2024-04-08 14:31:24','2024-04-08 15:22:36'),(124,'bSTiORhEi9btX7zf4hIRkHt2DFXI9uZvkIddbUrL',NULL,1,'103.163.248.151','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36','2024-04-08 14:31:33','2024-04-08 14:34:42'),(125,'XHcChV4sgXqBmn5pmTS6elJTQz7EsAEnYISRAUre',NULL,1,'103.163.248.151','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36','2024-04-08 16:50:50','2024-04-08 20:34:41'),(127,'kYOYcPH9VqKmYWDCvecX6yffj0wxxis8uwtrsPJe',NULL,1,'103.169.60.251','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36','2024-04-09 05:09:07','2024-04-09 07:06:32'),(128,'LRQy0Uwg0vmSX6Wvamz1qMY1rukKlYw03nRBbAo9',NULL,1,'103.78.239.35','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0','2024-04-09 05:10:19','2024-04-09 05:10:26'),(130,'c4cApcRli5eT8QkASh0ptHlERu7IGAOMJW81dZET',NULL,1,'103.163.248.151','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36','2024-04-09 07:17:38','2024-04-09 07:17:38'),(131,'bGHWi0WU2GJC1Ni5Nv7SdCxKsXZG3F4WpUrRwAOe',NULL,1,'103.78.239.35','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0','2024-04-09 07:53:11','2024-04-09 07:53:36'),(132,'9otEtFrN6k5BTyefCDF6GRMMDd2FzvTaFt6cLlwG',NULL,12,'103.78.239.35','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0','2024-04-09 07:53:56','2024-04-09 07:53:57'),(133,'bZGBssMG5KBR2OizT6Dcmcl2lspWSvDcVLghShwz',NULL,1,'103.78.239.35','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0','2024-04-09 07:54:07','2024-04-09 07:54:07'),(134,'QZNNXUXpT3jbi07Ynp9UpDpTk6HfSQm7SiKiDepf',NULL,1,'103.78.239.35','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0','2024-04-09 10:53:13','2024-04-09 19:13:15'),(135,'xpp60quVW56z4fgXxtXnjAnq7VYNl3aQ9GCvyqKk',NULL,1,'103.163.248.151','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36','2024-04-09 13:07:19','2024-04-09 14:45:49'),(136,'5nrcUiuldSmdBrJJLo0fPcHFDoCY4gdBhPwD1O7h',NULL,1,'103.78.239.35','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0','2024-04-09 22:11:01','2024-04-09 22:11:01'),(137,'C2rZmH709RZuyzUshzx41M0f7U2vvremoWLjvY3K',NULL,1,'103.78.239.35','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0','2024-04-10 09:36:57','2024-04-10 09:36:57'),(138,'eAxwXUhGyrVMo7jiRrkaQsHGwBi1zgBbJtayCZBp',NULL,1,'103.78.239.35','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0','2024-04-10 13:10:22','2024-04-10 14:37:34'),(139,'Ei4yguRqEQne1cTfe2h4IIgYEfcd0FsrUvhequ24',NULL,1,'103.78.239.35','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0','2024-04-10 15:09:01','2024-04-10 15:09:01'),(140,'GcRpcuuSg0iCG6WASCf6VYgrZ73P106uQ89idTF9',NULL,1,'103.78.239.35','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0','2024-04-10 15:09:15','2024-04-10 15:09:15'),(141,'3lGd3jXRbUZUue72ATUQ9aU4AqQuW3Ie2SkT8jK3',NULL,12,'103.78.239.35','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0','2024-04-10 15:09:20','2024-04-10 15:09:46'),(142,'DxTHy0bpLn6MwsKpsNmWBVlba4jktOYjrJd1EkTS',NULL,1,'103.78.239.35','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0','2024-04-10 15:09:55','2024-04-10 15:09:55'),(143,'1OSG7ZCFjuakEFhLcYMrDVYwiC2qZj1AaeeIRxfC',NULL,1,'103.78.239.35','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0','2024-04-11 05:45:21','2024-04-11 07:41:48'),(144,'HFBvwOi6iZwoPGZawTC7tL5OJeAkOaPdFkpMihx2',NULL,8,'59.88.184.35','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36','2024-04-11 06:23:48','2024-04-11 12:22:47'),(145,'K7Yv8LA70W5K0ybxh9Zm9rJvKeNSolDMiEbB7Af5',NULL,3,'117.252.195.151','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36','2024-04-11 07:48:38','2024-04-11 08:32:33'),(146,'T9X07efWsncSKiqofXUc1hZDE909zskR1BYmbidZ',NULL,1,'117.252.195.151','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36','2024-04-11 08:40:21','2024-04-11 10:11:11'),(147,'3UtMjeDx2JDdIDxvoCPuJxRWcLWQpLmDPdWTUwcJ',NULL,3,'117.252.195.151','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36','2024-04-11 10:14:13','2024-04-11 10:23:10'),(148,'phYszJJoGS8G60MPLmkGdHlOyTQLgqNPvbzV1wAf',NULL,13,'117.252.195.151','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36','2024-04-11 10:30:54','2024-04-11 10:30:55'),(149,'sUxuhtQworDrVIMnaGltz64GRBu29zcq2MgYgXaf',NULL,13,'117.252.195.151','Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36','2024-04-11 10:32:12','2024-04-11 10:33:26'),(150,'CyRh0BPpID00zpUeDLlGRkeeCzDm8enYIGZgbJe7',NULL,13,'117.252.195.151','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36','2024-04-11 10:32:50','2024-04-11 10:32:50'),(151,'gPDyODn2wzKUvqxVHNykVcloOP6mdLUB5jUloyAR',NULL,13,'117.252.195.151','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36','2024-04-11 10:35:28','2024-04-11 10:37:09'),(152,'bIeajqLC9jVPpUu9YMjlOwxhQMyz5MASvuF8CF8I',NULL,13,'117.252.195.151','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36','2024-04-11 10:39:28','2024-04-11 11:44:06'),(153,'YOWkKrdBzV5ITJPkPmTmqjtyixSnYxc97JoESJZm',NULL,1,'103.78.239.35','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0','2024-04-11 10:56:00','2024-04-11 10:56:06'),(154,'RZvvY9UgjngVJqCrrOUBDIqbeVM94QpogNNPU7gw',NULL,5,'103.163.248.151','Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36','2024-04-11 11:35:38','2024-04-11 11:36:30'),(155,'ezLgqkPBkVnd6yRKSaYokgLyZwzF56yxc0263uq4',NULL,1,'103.163.248.151','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36','2024-04-11 11:36:06','2024-04-11 11:36:06'),(156,'IqK3S4t4IHZlswvnRcafHxF0ONhYjgO1JwYSfsqw',NULL,5,'103.163.248.151','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36','2024-04-11 11:37:33','2024-04-11 11:37:33'),(157,'UPrHt2LENH27gPGBmAphOG72b7eHkpH5YsVVwiTS',NULL,1,'103.163.248.151','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36','2024-04-11 11:46:35','2024-04-11 11:46:35'),(158,'RqhfxS0Hsn9AWNbKVzAocpRQXnttd5Vy2EE2saGk',NULL,5,'103.163.248.151','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36','2024-04-11 11:46:49','2024-04-11 11:46:49'),(159,'8G582uVKNnnpa6pbBMrIWGfMuSy0qydRINkCbPp7',NULL,1,'59.88.184.35','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36','2024-04-11 12:26:41','2024-04-11 12:45:54'),(160,'hlkJRtwNaUHS7SEw1z5mojPMix31CjfsMssoYiSB',NULL,1,'103.78.239.35','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0','2024-04-11 14:10:14','2024-04-11 14:12:31'),(161,'U3NaYXiGwkeCBZjvh7ba8Eek5iqzjpQYRoIXmtQG',NULL,1,'103.78.239.35','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0','2024-04-11 17:53:40','2024-04-11 17:53:40'),(162,'qxK2hd0Oju7GkTCm4vQT8qGFQidV93A0Se1J8gLk',NULL,1,'59.92.184.206','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36','2024-04-12 04:30:43','2024-04-12 04:41:10'),(163,'3GGcA7I7G4RYvXzhqjjo0qus90WuSl0g3b3tfJfO',NULL,1,'103.78.239.35','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0','2024-04-12 08:18:13','2024-04-12 08:18:13'),(164,'NsKVIuaGoR0a4mUUz5q510lDuoPfmRBThPsjH5wn',NULL,1,'103.78.239.35','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0','2024-04-12 12:55:53','2024-04-12 12:55:53'),(165,'21PlS5ZoUt1urqNgV2BIEy1I11V9JTAjuTeUCk0V',NULL,5,'103.163.248.151','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36','2024-04-12 18:33:50','2024-04-12 18:33:50'),(166,'nupCI1bNPpj8dtby31zI5JZZ7H0SruiTMFtkb47G',NULL,1,'103.163.248.151','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36','2024-04-12 18:34:04','2024-04-12 18:34:18'),(167,'n8s59JzJBDNm3U2n8RP2ZMaSHP33h3dvFAxXY48O',NULL,1,'103.78.239.35','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0','2024-04-13 07:08:05','2024-04-13 07:11:53'),(168,'E5assbsLwoehdziTM7RPsG22pyfWYQEZKMeBFArb',NULL,1,'103.78.239.35','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0','2024-04-13 07:24:36','2024-04-13 07:24:36'),(169,'ij690D2b53hW0mKrMqNj34xlIhndmCYuMb4yevm0',NULL,1,'103.78.239.35','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0','2024-04-13 07:24:42','2024-04-13 07:24:42'),(170,'iL5CxY5fJEvPLosJPiIgSGExrZLTPmjPUse6c0i0',NULL,1,'103.78.239.35','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0','2024-04-13 07:25:03','2024-04-13 07:25:03'),(171,'ltSwRfJ8ZjpxOaFXSSv7hylDlu6xNCO9wqRNIvTY',NULL,1,'103.78.239.35','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0','2024-04-13 07:25:07','2024-04-13 07:25:07'),(172,'9ap8MdYbHESW9S5g0QKnnoZYXlnhbgdRnsWRsKnS',NULL,1,'103.78.239.35','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0','2024-04-13 07:25:42','2024-04-13 07:25:42'),(173,'3LFdpzp1jRxsxj5ANbh6Xpx5qGkD1fgz1KUbkK8R',NULL,1,'103.78.239.35','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0','2024-04-13 07:25:49','2024-04-13 07:25:49'),(174,'PE5xPaUls2rdhI5vpuLgyIjzLQqgLUvn9nSu9Q2M',NULL,1,'103.78.239.35','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0','2024-04-13 07:25:52','2024-04-13 07:26:02'),(175,'gHE9kFfXCHTnHmQ12080GmjbvnXDGCfPdvY8dtwi',NULL,1,'103.78.239.35','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0','2024-04-13 07:26:07','2024-04-13 07:26:07'),(176,'OKUfBH2h02itEvvpveRXaQonyEPGSUQ7RKnAU4Hr',NULL,1,'103.78.239.35','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0','2024-04-13 07:26:12','2024-04-13 07:26:12'),(177,'R7SeVQwRqpkeKOOIWsp13hfaV4sIGSNglL39NYWd',NULL,1,'103.78.239.35','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0','2024-04-13 07:26:50','2024-04-13 07:26:50'),(178,'QMxyAzDIbUkGvZA6lOaKZrp4kJu6cSeg5dUZNEkW',NULL,1,'103.78.239.35','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0','2024-04-13 07:26:58','2024-04-13 07:26:58'),(179,'6VIaXghhYPTfRW5FJ774nKJbfaEbCMn9qi80QpPQ',NULL,1,'103.78.239.35','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0','2024-04-13 07:27:02','2024-04-13 07:27:02'),(180,'rRUHaGquoNFnkkPOjOK73HKyXnXS0eErSs8yRnK4',NULL,1,'103.78.239.35','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0','2024-04-13 07:27:14','2024-04-13 07:27:14'),(181,'XtJ90F4ZvOssFnSbNAneDaa9Wwg4ZwELQkVr4tSI',NULL,1,'103.78.239.35','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0','2024-04-13 07:27:19','2024-04-13 07:27:19'),(182,'QZ8tbjtExCsBgkceqUelFMQX7FEU4iuE5HIXUsU2',NULL,1,'103.78.239.35','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0','2024-04-13 08:05:01','2024-04-13 10:03:48'),(183,'OxKBFXzOp6qbCziHS2fxU62PswoKrzvWBjiV0Ovt',NULL,1,'103.163.248.230','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36','2024-04-13 18:06:54','2024-04-13 18:06:54'),(184,'MWb56yNCFOeSln6NoosIxNPMe7t5mSPwuM5WkZey',NULL,1,'59.88.176.68','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36','2024-04-15 03:54:28','2024-04-15 03:54:28'),(185,'Urrlf7d0p0VX2UAguvZz8sRSHODrY0tmMOmqaAJm',NULL,1,'59.88.176.68','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36','2024-04-15 03:54:56','2024-04-15 03:54:56'),(186,'aGAxHLjAlcoNsYvmC6j8zK3JZebTv4hd20GDRxxW',NULL,3,'59.88.176.68','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36','2024-04-15 03:55:24','2024-04-15 03:55:24'),(187,'JYJ7uTji1zI6FTc8803ArGTQOup8iUJ2VdsRXAIf',NULL,13,'59.88.176.68','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36','2024-04-15 03:56:03','2024-04-15 03:58:43'),(188,'YEgq5HvCk7aJUWQLZJHKDm6wbNU6mVvSBYdQucKg',NULL,1,'59.88.176.68','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36','2024-04-15 03:58:01','2024-04-15 03:58:01'),(189,'GnIt0jMPIRSmLRmQfi8jhMvFqPbzBCgeXeDN0wMQ',NULL,1,'59.92.189.145','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36','2024-04-15 08:22:49','2024-04-15 08:34:37'),(190,'J4JEMzDs4lxyokpsreYYCesBPvVuRcR18RFooEgk',NULL,1,'103.163.248.230','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36','2024-04-15 08:24:59','2024-04-15 08:34:23'),(191,'1iqxupSxCkZNUCWw9pFK2eTQeCG28UMD9aGK9GoY',NULL,3,'59.92.189.145','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36','2024-04-15 08:35:21','2024-04-15 09:41:05'),(192,'IsOM80ZakSZHT3AxGcEbLCcjyt8cjoKaKrnKcKYb',NULL,1,'59.92.189.145','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36','2024-04-15 09:50:20','2024-04-15 12:38:43'),(193,'OKqj9Xz4fIJPguO6cJgIXBrnMdwSf6CBiz0xsrmi',NULL,1,'117.202.76.178','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36','2024-04-15 11:40:30','2024-04-15 12:03:57'),(194,'wqcomQODYBcQaFrp1c5qXF71tDZ66PtArsga6wu9',NULL,1,'103.163.248.230','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36','2024-04-15 17:56:22','2024-04-15 17:58:16'),(195,'PWtJ8ebPgIb9gDsNbmy3z8XMK4Jqspf4g3WIxnZs',NULL,1,'117.201.1.160','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36','2024-04-16 04:21:30','2024-04-16 04:21:30'),(196,'tqKID6Bi8Aad18AhnE6tTZe1vTBLV9eM0GNu2lOF',NULL,1,'103.163.248.230','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36','2024-04-16 12:34:25','2024-04-16 12:34:25'),(197,'aCVElo2moCUFAbDvuj3uWlTkgzpVWS2HjHhLd99c',NULL,1,'103.98.209.241','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36','2024-04-17 08:27:28','2024-04-17 08:27:28'),(198,'vGVOz4DIs9EAO2OqThNl0gAuMPrpmV0yAYY5JnOx',NULL,1,'103.98.209.115','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36','2024-04-17 18:46:52','2024-04-17 18:46:52'),(199,'btTLFfl5xvh0DtJvCtdAn4gNAy3H57RCEel1fdYu',NULL,1,'103.163.248.191','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36','2024-04-18 14:16:26','2024-04-18 14:16:26'),(200,'BFhIHLxKXaOjeZbw3h2pDQqZFORAn00PUR5KzvM5',NULL,1,'103.163.248.191','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36','2024-04-18 16:55:57','2024-04-18 17:32:38'),(201,'W8krK1pbo4p4oLpCf0POPFaQ0lawAfnAzfdRsgBw',NULL,1,'103.78.239.35','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0','2024-04-19 19:08:42','2024-04-19 19:08:42'),(202,'UwteRUjEDgVbgc30KpnYIfAfdi6zagA4x00OdYnk',NULL,1,'103.78.239.35','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0','2024-04-20 12:00:14','2024-04-20 15:18:26'),(203,'dFUzzqEZZzRgnNeWOiGeS27wCHhiWmZL5aemc7mg',NULL,1,'103.98.209.47','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36','2024-04-20 14:01:06','2024-04-20 14:33:34'),(204,'DFJMyQNMJ56pe3epj0B2rfOFupontZDW65zAqrXk',NULL,1,'103.78.239.35','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0','2024-04-20 19:32:17','2024-04-20 19:32:17'),(205,'KvXPVKGkoG7H6b67XChpF6oS1AEMW3wIiakJ2zUG',NULL,1,'103.78.239.35','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36 Edg/124.0.0.0','2024-04-21 08:52:35','2024-04-21 09:24:09'),(206,'GBOniyRFYKZMq3ENTr1GR958uqnSCD5oX1nvV4Cr',NULL,1,'103.78.239.35','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36 Edg/124.0.0.0','2024-04-22 06:39:59','2024-04-22 06:39:59'),(207,'DisuWtprrlEjUFKIxF8PTUb841BbKkJGj9UcGsoH',NULL,1,'103.98.209.47','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36','2024-04-22 07:46:12','2024-04-22 07:46:20'),(208,'JxnfcmCd1Tll23SAa8WQTxVJ7MP3Q53HT8zM4c4I',NULL,1,'59.182.248.63','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36','2024-04-22 08:07:06','2024-04-22 10:51:02'),(209,'D8y3mEy7WU2M44BTHhNoZpEUOKJXltpPtWqSh10x',NULL,1,'103.78.239.35','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36 Edg/124.0.0.0','2024-04-22 09:34:28','2024-04-22 09:52:35'),(210,'JkcdahPwx4GSReW753NlIWkN46c2YFT9OADwiYBE',NULL,1,'103.98.209.47','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36','2024-04-22 15:16:49','2024-04-22 15:16:49'),(211,'yB7Y7SV1FNPPsUCRy4ZrCue0SIqxtQhWojYFXE1L',NULL,1,'103.98.209.47','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36','2024-04-24 15:15:25','2024-04-24 15:15:25'),(212,'mVR8RiIGIxHIv2lO5zPBH6PnCFpYQwfXmzpRKqG8',NULL,1,'103.98.209.47','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36','2024-04-24 18:45:50','2024-04-24 18:45:50'),(213,'KWNOn97DdQYJTDguJbRNNLFQosU3Qmnaq511ATUx',NULL,1,'103.98.209.47','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36','2024-04-25 09:22:44','2024-04-25 09:22:54'),(214,'4UMBHLmLNQj0H0SuLmx1b4H4z213VLOOGyDL32Ii',NULL,1,'59.92.176.86','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36','2024-04-25 09:23:05','2024-04-25 09:27:53'),(215,'AUTt8RhJoDiDjD8mW5shrGeurLKDDObrXHdmrIiB',NULL,3,'59.92.176.86','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36','2024-04-25 09:28:58','2024-04-25 09:34:47'),(216,'I5GC6Q7kAAkWcYtSQGTt3tY8Uc6dvsG2Y7dTtse2',NULL,1,'59.92.176.86','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36','2024-04-25 09:35:24','2024-04-25 09:35:24'),(217,'bvGcTAXpN7ElgYVljq0ohxFu8ZhwauomHgYiVfZ9',NULL,1,'103.98.209.47','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36','2024-04-25 17:57:44','2024-04-25 17:57:44'),(218,'pI8yU0hdRDpE3go4gDrT8MScD9XzM7JjwHF62kOK',NULL,1,'103.98.209.47','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36','2024-04-29 17:56:07','2024-04-29 17:56:07'),(219,'Ue6hlfx0nk7jXhNCnJkNbhYMOFLzgv2iuLmIj0m4',NULL,1,'103.98.209.47','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36','2024-05-03 18:20:16','2024-05-03 18:20:16'),(220,'7aJQcfEZxL1VU9uhKyENB7PWo9K00vGHjRgYsqJn',NULL,1,'103.98.209.47','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36','2024-05-03 18:59:01','2024-05-03 18:59:01'),(221,'jGuVskt9F4pUlI0cv9P49rxN2oQzQk7fZ8r9pfT6',NULL,1,'103.98.209.47','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36','2024-05-07 06:52:41','2024-05-07 07:09:23'),(222,'wAF8i7oM2DOSxCp32Rc0fre027qbfc71yvPY5EKX',NULL,1,'103.98.209.47','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36','2024-05-07 08:23:42','2024-05-07 08:23:42'),(223,'CEcJlRVCYNizqBWngQTn1lyPseCtUWeNi6TQlHrf',NULL,1,'117.201.12.92','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36','2024-05-07 08:24:03','2024-05-07 08:24:03'),(224,'vpl7efp8wLoqltCt65IjNZ1ELSpvB02fjA25cSbM',NULL,1,'103.99.150.185','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36','2024-05-07 15:57:32','2024-05-07 16:59:10'),(225,'Xp2azXyO9KfV4DvwwHKFi7woIQun7vgRFW8PY9BV',NULL,1,'103.169.56.25','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36','2024-05-07 16:23:38','2024-05-07 16:23:38');
/*!40000 ALTER TABLE `active_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bans`
--

DROP TABLE IF EXISTS `bans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bans` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `bannable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bannable_id` bigint unsigned NOT NULL,
  `created_by_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` bigint unsigned DEFAULT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `expired_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bans_bannable_type_bannable_id_index` (`bannable_type`,`bannable_id`),
  KEY `bans_created_by_type_created_by_id_index` (`created_by_type`,`created_by_id`),
  KEY `bans_expired_at_index` (`expired_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bans`
--

LOCK TABLES `bans` WRITE;
/*!40000 ALTER TABLE `bans` DISABLE KEYS */;
/*!40000 ALTER TABLE `bans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `billing_plans`
--

DROP TABLE IF EXISTS `billing_plans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `billing_plans` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(13,2) DEFAULT NULL,
  `currency` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_symbol` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '$',
  `interval` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'month',
  `interval_count` int NOT NULL DEFAULT '1',
  `parent_id` int DEFAULT NULL,
  `legacy_permissions` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `paypal_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recommended` tinyint(1) NOT NULL DEFAULT '0',
  `free` tinyint(1) NOT NULL DEFAULT '0',
  `show_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `features` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `position` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `available_space` bigint unsigned DEFAULT NULL,
  `hidden` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `billing_plans_hidden_index` (`hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `billing_plans`
--

LOCK TABLES `billing_plans` WRITE;
/*!40000 ALTER TABLE `billing_plans` DISABLE KEYS */;
/*!40000 ALTER TABLE `billing_plans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment_reports`
--

DROP TABLE IF EXISTS `comment_reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment_reports` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `reason` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `comment_id` bigint unsigned DEFAULT NULL,
  `user_ip` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `comment_reports_user_id_index` (`user_id`),
  KEY `comment_reports_comment_id_index` (`comment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment_reports`
--

LOCK TABLES `comment_reports` WRITE;
/*!40000 ALTER TABLE `comment_reports` DISABLE KEYS */;
/*!40000 ALTER TABLE `comment_reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment_votes`
--

DROP TABLE IF EXISTS `comment_votes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment_votes` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `vote_type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int unsigned DEFAULT NULL,
  `comment_id` int unsigned NOT NULL,
  `user_ip` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `comment_votes_user_ip_comment_id_unique` (`user_ip`,`comment_id`),
  UNIQUE KEY `comment_votes_user_id_comment_id_unique` (`user_id`,`comment_id`),
  KEY `comment_votes_user_id_index` (`user_id`),
  KEY `comment_votes_comment_id_index` (`comment_id`),
  KEY `comment_votes_user_ip_index` (`user_ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment_votes`
--

LOCK TABLES `comment_votes` WRITE;
/*!40000 ALTER TABLE `comment_votes` DISABLE KEYS */;
/*!40000 ALTER TABLE `comment_votes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comments` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int unsigned DEFAULT NULL,
  `path` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int unsigned NOT NULL,
  `commentable_id` int unsigned NOT NULL,
  `commentable_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `upvotes` bigint unsigned NOT NULL DEFAULT '0',
  `downvotes` bigint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `comments_parent_id_index` (`parent_id`),
  KEY `comments_path_index` (`path`),
  KEY `comments_user_id_index` (`user_id`),
  KEY `comments_commentable_id_index` (`commentable_id`),
  KEY `comments_commentable_type_index` (`commentable_type`),
  KEY `comments_deleted_index` (`deleted`),
  KEY `comments_upvotes_index` (`upvotes`),
  KEY `comments_downvotes_index` (`downvotes`),
  KEY `comments_created_at_index` (`created_at`),
  KEY `comments_updated_at_index` (`updated_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `css_themes`
--

DROP TABLE IF EXISTS `css_themes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `css_themes` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_dark` tinyint(1) NOT NULL DEFAULT '0',
  `default_light` tinyint(1) NOT NULL DEFAULT '0',
  `default_dark` tinyint(1) NOT NULL DEFAULT '0',
  `user_id` int NOT NULL,
  `values` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `font` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `css_themes_name_unique` (`name`),
  KEY `css_themes_default_light_index` (`default_light`),
  KEY `css_themes_default_dark_index` (`default_dark`),
  KEY `css_themes_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `css_themes`
--

LOCK TABLES `css_themes` WRITE;
/*!40000 ALTER TABLE `css_themes` DISABLE KEYS */;
INSERT INTO `css_themes` VALUES (1,'Dark',1,0,1,1,'{\"--be-foreground-base\":\"255 255 255\",\"--be-primary-light\":\"239 246 255\",\"--be-primary\":\"191 219 254\",\"--be-primary-dark\":\"222 245 229\",\"--be-on-primary\":\"56 30 114\",\"--be-background\":\"26 22 24\",\"--be-background-alt\":\"34 34 38\",\"--be-background-chip\":\"66 68 74\",\"--be-paper\":\"36 37 40\",\"--be-disabled-bg-opacity\":\"12%\",\"--be-disabled-fg-opacity\":\"30%\",\"--be-hover-opacity\":\"8%\",\"--be-focus-opacity\":\"12%\",\"--be-selected-opacity\":\"16%\",\"--be-text-main-opacity\":\"100%\",\"--be-text-muted-opacity\":\"70%\",\"--be-divider-opacity\":\"12%\",\"--be-button-radius\":\"9999px\",\"--be-input-radius\":\"0.25rem\",\"--be-panel-radius\":\"0.25rem\"}','{\"label\":{\"message\":\"System\"},\"family\":\"ui-sans-serif, system-ui, -apple-system, BlinkMacSystemFont, \\\"Segoe UI\\\", Roboto, \\\"Helvetica Neue\\\", Arial, \\\"Noto Sans\\\", sans-serif, \\\"Apple Color Emoji\\\", \\\"Segoe UI Emoji\\\", \\\"Segoe UI Symbol\\\", \\\"Noto Color Emoji\\\"\",\"category\":\"sans-serif\"}','2024-02-18 14:41:31','2024-04-20 12:00:40'),(2,'Light',0,1,0,1,'{\"--be-foreground-base\":\"0 0 0\",\"--be-primary-light\":\"253 227 167\",\"--be-primary\":\"59 130 246\",\"--be-primary-dark\":\"37 99 235\",\"--be-on-primary\":\"255 255 255\",\"--be-background\":\"255 255 255\",\"--be-background-alt\":\"246 248 250\",\"--be-background-chip\":\"233 236 239\",\"--be-paper\":\"255 255 255\",\"--be-disabled-bg-opacity\":\"12%\",\"--be-disabled-fg-opacity\":\"26%\",\"--be-hover-opacity\":\"4%\",\"--be-focus-opacity\":\"12%\",\"--be-selected-opacity\":\"8%\",\"--be-text-main-opacity\":\"87%\",\"--be-text-muted-opacity\":\"60%\",\"--be-divider-opacity\":\"12%\"}',NULL,'2024-02-18 14:41:31','2024-04-08 17:24:16'),(4,'New theme',0,0,0,1,'{\"--be-foreground-base\":\"4 4 4\",\"--be-primary-light\":\"191 219 254\",\"--be-primary\":\"251 176 1\",\"--be-primary-dark\":\"37 99 235\",\"--be-on-primary\":\"255 255 255\",\"--be-background\":\"255 255 255\",\"--be-background-alt\":\"253 227 167\",\"--be-background-chip\":\"13 6 16\",\"--be-paper\":\"255 255 255\",\"--be-disabled-bg-opacity\":\"12%\",\"--be-disabled-fg-opacity\":\"26%\",\"--be-hover-opacity\":\"4%\",\"--be-focus-opacity\":\"12%\",\"--be-selected-opacity\":\"8%\",\"--be-text-main-opacity\":\"87%\",\"--be-text-muted-opacity\":\"60%\",\"--be-divider-opacity\":\"12%\",\"--be-button-radius\":\"9999px\",\"--be-input-radius\":\"0.125rem\",\"--be-panel-radius\":\"0.125rem\",\"--be-navbar-color\":\"bg\"}','{\"family\":\"Kanit\",\"category\":\"sans-serif\",\"google\":true}','2024-03-22 08:31:23','2024-04-22 09:28:42');
/*!40000 ALTER TABLE `css_themes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `csv_exports`
--

DROP TABLE IF EXISTS `csv_exports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `csv_exports` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `cache_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `download_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `csv_exports_cache_name_unique` (`cache_name`),
  KEY `csv_exports_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `csv_exports`
--

LOCK TABLES `csv_exports` WRITE;
/*!40000 ALTER TABLE `csv_exports` DISABLE KEYS */;
INSERT INTO `csv_exports` VALUES (2,'users',1,'users.csv','3861ee9b-1c72-4665-9a63-1c9ea9e2456b','2024-03-29 08:33:44','2024-03-29 08:33:44');
/*!40000 ALTER TABLE `csv_exports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_domains`
--

DROP TABLE IF EXISTS `custom_domains`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `custom_domains` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `host` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `global` tinyint(1) NOT NULL DEFAULT '0',
  `resource_id` int unsigned DEFAULT NULL,
  `resource_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `workspace_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `custom_domains_host_unique` (`host`),
  KEY `custom_domains_user_id_index` (`user_id`),
  KEY `custom_domains_created_at_index` (`created_at`),
  KEY `custom_domains_updated_at_index` (`updated_at`),
  KEY `custom_domains_global_index` (`global`),
  KEY `custom_domains_resource_id_index` (`resource_id`),
  KEY `custom_domains_resource_type_index` (`resource_type`),
  KEY `custom_domains_workspace_id_index` (`workspace_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_domains`
--

LOCK TABLES `custom_domains` WRITE;
/*!40000 ALTER TABLE `custom_domains` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_domains` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_pages`
--

DROP TABLE IF EXISTS `custom_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `custom_pages` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `hide_nav` tinyint(1) NOT NULL DEFAULT '0',
  `workspace_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pages_slug_unique` (`slug`),
  KEY `pages_type_index` (`type`),
  KEY `pages_user_id_index` (`user_id`),
  KEY `custom_pages_workspace_id_index` (`workspace_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_pages`
--

LOCK TABLES `custom_pages` WRITE;
/*!40000 ALTER TABLE `custom_pages` DISABLE KEYS */;
INSERT INTO `custom_pages` VALUES (1,'Example Privacy Policy','<p>Welcome to BeDrive (\"us\", \"we\", or \"our\"). At http://localhost, we value your privacy and strive to protect your personal information. This Privacy Policy outlines the types of data we collect, how we use and protect it, and your rights regarding your personal information.</p>\n<h2>Information We Collect</h2>\n<p>We may collect various types of information from you, including:</p>\n<ol>\n  <li><strong>Personal Information:</strong> When you register for an account, place an order, subscribe to our newsletter, or interact with our website, we may collect personal information such as your name, email address, postal address, phone number, and payment information.</li>\n  <li><strong>Usage Data:</strong> We may automatically collect information about how you use our website, including your IP address, browser type, operating system, referring URLs, access times, and pages viewed.</li>\n  <li><strong>Cookies and Tracking Technologies:</strong> We use cookies and similar tracking technologies to enhance your browsing experience and collect data about your interactions with our website.</li>\n</ol>\n<h2>How We Use Your Information</h2>\n<p>We use the collected information for various purposes, including:</p>\n<ol>\n  <li>Providing and improving our services to you.</li>\n  <li>Processing your orders and payments.</li>\n  <li>Sending you newsletters and promotional materials.</li>\n  <li>Analyzing website usage and trends to enhance user experience.</li>\n  <li>Responding to your inquiries and providing customer support.</li>\n  <li>Protecting our legal rights and preventing fraud.</li>\n</ol>\n<h2>Data Sharing and Disclosure</h2>\n<p>We may share your personal information with:</p>\n<ol>\n  <li>Third-party service providers who assist us in operating our website and delivering services to you.</li>\n  <li>Legal authorities when required by law or to protect our rights and safety.</li>\n</ol>\n<p>We do not sell, rent, or trade your personal information to third parties for marketing purposes.</p>\n<h2>Your Rights</h2>\n<p>You have the right to:</p>\n<ol>\n  <li>Access, correct, or delete your personal information.</li>\n  <li>Withdraw your consent for processing your data.</li>\n  <li>Object to processing of your personal data.</li>\n  <li>Lodge a complaint with a supervisory authority.</li>\n</ol>\n<h2>Security</h2>\n<p>We take reasonable measures to protect your personal information from unauthorized access, alteration, or disclosure. However, no data transmission over the internet or storage system can be guaranteed to be 100% secure.</p>\n<h2>Children\'s Privacy</h2>\n<p>Our services are not intended for children under the age of 13. We do not knowingly collect or maintain personal information from children.</p>\n<h2>Changes to This Privacy Policy</h2>\n<p>We may update our Privacy Policy from time to time. Any changes will be posted on this page, and the \"Last updated\" date will be revised accordingly.</p>\n<h2>Contact Us</h2>\n<p>If you have any questions, concerns, or requests regarding your personal information or our Privacy Policy, please contact us at <a href=\"mailto:\"></a>.</p>\n','privacy-policy',NULL,'default','2024-02-18 14:41:31','2024-02-18 14:41:31',NULL,0,NULL),(2,'Example Terms of Service','<p>\n  Welcome to BeDrive (\"us\", \"we\", or \"our\"). By accessing and using our website, you agree to\n  comply with and be bound by the following Terms of Service. Please read these terms carefully\n  before using our services.\n</p>\n<h2>1. Acceptance of Terms</h2>\n<p>\n  By using our website, you acknowledge that you have read, understood, and agree to abide by these\n  Terms of Service. If you do not agree with these terms, please do not use our services.\n</p>\n<h2>2. Use of Our Services</h2>\n<p>\n  You may use our website and services only for lawful purposes and in compliance with all\n  applicable laws and regulations. You agree not to engage in any activity that may disrupt or\n  interfere with the functioning of our website.\n</p>\n<h2>3. User Accounts</h2>\n<p>\n  If you create an account on our website, you are responsible for maintaining the confidentiality\n  of your account information and password. You agree to notify us immediately of any unauthorized\n  use of your account.\n</p>\n<h2>4. Content</h2>\n<p>\n  Any content you submit to our website, including text, images, and other materials, must comply\n  with our content guidelines. You retain ownership of your content, but you grant us a\n  non-exclusive, royalty-free license to use, reproduce, and distribute your content on our\n  platform.\n</p>\n<h2>5. Intellectual Property</h2>\n<p>\n  Unless otherwise stated, all content and materials on our website are the property of [Website\n  Name] and are protected by copyright, trademark, and other intellectual property laws.\n</p>\n<h2>6. Disclaimer of Warranties</h2>\n<p>\n  Our website is provided \"as is\" and \"as available\" without any warranties of any kind, whether\n  express or implied. We do not guarantee the accuracy, completeness, or reliability of any content\n  or materials on our website.\n</p>\n<h2>7. Limitation of Liability</h2>\n<p>\n  We shall not be liable for any indirect, incidental, special, consequential, or punitive damages\n  arising out of or relating to your use of our website.\n</p>\n<h2>8. Governing Law</h2>\n<p>\n  These Terms of Service shall be governed by and construed in accordance with the laws of [Your\n  Country/State], without regard to its conflict of law principles.\n</p>\n<h2>9. Changes to Terms</h2>\n<p>\n  We reserve the right to modify or update these Terms of Service at any time. It is your\n  responsibility to review these terms periodically. Your continued use of our website after any\n  changes signifies your acceptance of the modified terms.\n</p>\n<h2>10. Contact Us</h2>\n<p>\n  If you have any questions or concerns regarding these Terms of Service, please contact us at\n  <a href=\"mailto:\"></a>.\n</p>\n','terms-of-service',NULL,'default','2024-02-18 14:41:31','2024-02-18 14:41:31',NULL,0,NULL),(3,'Example About Us','<p>The standard Lorem Ipsum passage, used since the 1500s\n    \"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</p>\n\n<p>Section 1.10.32 of \"de Finibus Bonorum et Malorum\", written by Cicero in 45 BC\n    \"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"</p>\n\n<p>1914 translation by H. Rackham\n    \"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"</p>\n\n<p>Section 1.10.33 of \"de Finibus Bonorum et Malorum\", written by Cicero in 45 BC\n    \"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\"</p>\n\n<p>1914 translation by H. Rackham\n    \"On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.\"</p>','about-us',NULL,'default','2024-02-18 14:41:31','2024-02-18 14:41:31',NULL,0,NULL);
/*!40000 ALTER TABLE `custom_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fcm_tokens`
--

DROP TABLE IF EXISTS `fcm_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fcm_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `device_id` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(180) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `fcm_tokens_device_id_user_id_unique` (`device_id`,`user_id`),
  KEY `fcm_tokens_device_id_index` (`device_id`),
  KEY `fcm_tokens_token_index` (`token`),
  KEY `fcm_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fcm_tokens`
--

LOCK TABLES `fcm_tokens` WRITE;
/*!40000 ALTER TABLE `fcm_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `fcm_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `file_entries`
--

DROP TABLE IF EXISTS `file_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `file_entries` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_size` bigint unsigned NOT NULL DEFAULT '0',
  `user_id` int DEFAULT NULL,
  `parent_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `path` varchar(255) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `disk_prefix` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extension` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `public` tinyint(1) NOT NULL DEFAULT '0',
  `preview_token` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail` tinyint(1) NOT NULL DEFAULT '0',
  `workspace_id` int unsigned DEFAULT NULL,
  `owner_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `files_user_id_index` (`user_id`),
  KEY `files_folder_id_index` (`parent_id`),
  KEY `file_entries_name_index` (`name`),
  KEY `file_entries_path_index` (`path`),
  KEY `file_entries_type_index` (`type`),
  KEY `file_entries_public_index` (`public`),
  KEY `file_entries_description_index` (`description`),
  KEY `file_entries_workspace_id_index` (`workspace_id`),
  KEY `file_entries_owner_id_index` (`owner_id`)
) ENGINE=InnoDB AUTO_INCREMENT=591 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `file_entries`
--

LOCK TABLES `file_entries` WRITE;
/*!40000 ALTER TABLE `file_entries` DISABLE KEYS */;
INSERT INTO `file_entries` VALUES (2,'N-1.png',NULL,'586f7ec9-29cb-47fc-af17-7e9ba9a40d00.png','image/png',11239,NULL,NULL,'2024-03-21 18:32:30','2024-03-21 18:32:30',NULL,NULL,'branding_media','image','png',1,NULL,0,12,1),(3,'N-1.png',NULL,'b167a736-5834-4005-9914-1e4cdcc91c63.png','image/png',11239,NULL,NULL,'2024-03-21 18:32:33','2024-03-21 18:32:33',NULL,NULL,'branding_media','image','png',1,NULL,0,12,1),(4,'EMPLOYMENT_AGREEMENT_-_Manjiu.pdf',NULL,'e5559400-ccf0-45df-92b3-eccde58ef25d','application/pdf',338789,NULL,NULL,'2024-03-22 07:12:15','2024-03-22 07:12:19','2024-03-22 07:12:19','4','e5559400-ccf0-45df-92b3-eccde58ef25d','pdf','pdf',0,NULL,0,0,2),(15,'logo2.png',NULL,'2e00cc71-5bf4-4025-b3dd-8247cb3ef3be.png','image/png',2799,NULL,NULL,'2024-03-22 08:41:43','2024-03-22 08:41:43',NULL,NULL,'branding_media','image','png',1,NULL,0,12,1),(16,'logo.png',NULL,'6b853083-fbf4-4501-bf1f-5dca8466e6d2.png','image/png',3018,NULL,NULL,'2024-03-22 08:41:57','2024-03-22 08:41:57',NULL,NULL,'branding_media','image','png',1,NULL,0,12,1),(17,'logo.png',NULL,'62746352-b515-4f19-9ce0-b77b6dc95681.png','image/png',3018,NULL,NULL,'2024-03-22 08:42:07','2024-03-22 08:42:07',NULL,NULL,'branding_media','image','png',1,NULL,0,12,1),(18,'WhatsApp_Image_2024-01-28_at_21.16.02-removebg-preview.png',NULL,'e83ea4f4-75be-4d08-b1e2-148ca73478f2.png','image/png',56326,NULL,NULL,'2024-03-22 08:46:42','2024-03-22 08:46:42',NULL,NULL,'branding_media','image','png',1,NULL,0,12,1),(19,'WhatsApp_Image_2024-01-28_at_21.16.02-removebg-preview.png',NULL,'b5554167-92ba-48ed-8ece-e6abbd2ceda0.png','image/png',56326,NULL,NULL,'2024-03-22 08:46:51','2024-03-22 08:46:51',NULL,NULL,'branding_media','image','png',1,NULL,0,12,1),(20,'Zeitstoneai_website_test',NULL,'Zeitstoneai_website',NULL,8906876,NULL,NULL,'2024-03-22 09:11:27','2024-03-26 04:11:50',NULL,'k',NULL,'folder',NULL,0,NULL,0,0,3),(21,'Zeitstoneai_website',NULL,'Zeitstoneai_website',NULL,8900735,NULL,20,'2024-03-22 09:11:27','2024-03-22 09:11:42',NULL,'k/l',NULL,'folder',NULL,0,NULL,0,0,3),(22,'images',NULL,'images',NULL,8790928,NULL,21,'2024-03-22 09:11:27','2024-03-22 09:11:38',NULL,'k/l/m',NULL,'folder',NULL,0,NULL,0,0,3),(23,'4NB4.gif',NULL,'1c3f9838-b28a-46f7-b334-d031f3b07261','image/gif',407073,NULL,22,'2024-03-22 09:11:27','2024-03-22 09:11:27',NULL,'k/l/m/n','1c3f9838-b28a-46f7-b334-d031f3b07261','image','gif',0,NULL,0,0,3),(24,'banner.png',NULL,'8a2f8a97-cc6b-46e0-a53f-d65913aaa1ac','image/png',6767610,NULL,22,'2024-03-22 09:11:30','2024-03-22 09:11:30',NULL,'k/l/m/o','8a2f8a97-cc6b-46e0-a53f-d65913aaa1ac','image','png',0,NULL,1,0,3),(25,'banner1.jpg',NULL,'179602a0-5171-47f6-aca3-ea76e63231a9','image/jpeg',115779,NULL,22,'2024-03-22 09:11:31','2024-03-22 09:11:31',NULL,'k/l/m/p','179602a0-5171-47f6-aca3-ea76e63231a9','image','jpg',0,NULL,0,0,3),(26,'banner2.jpg',NULL,'9f172fa1-a63d-403d-8c46-08afcc410647','image/jpeg',386456,NULL,22,'2024-03-22 09:11:31','2024-03-22 09:11:31',NULL,'k/l/m/q','9f172fa1-a63d-403d-8c46-08afcc410647','image','jpg',0,NULL,0,0,3),(27,'banner3.png',NULL,'e116f326-caea-4cfc-a7d9-413f2cf80d78','image/png',1037885,NULL,22,'2024-03-22 09:11:32','2024-03-22 09:11:32',NULL,'k/l/m/r','e116f326-caea-4cfc-a7d9-413f2cf80d78','image','png',0,NULL,1,0,3),(28,'bee.png',NULL,'3b5109cf-65c6-4c0d-93f4-30a184c2108b','image/png',31940,NULL,22,'2024-03-22 09:11:33','2024-03-22 09:11:33',NULL,'k/l/m/s','3b5109cf-65c6-4c0d-93f4-30a184c2108b','image','png',0,NULL,0,0,3),(29,'cursor-button.svg',NULL,'cc571fb0-8455-4cec-9e9b-3d0303a0e795','image/svg+xml',475,NULL,22,'2024-03-22 09:11:36','2024-03-22 09:11:36',NULL,'k/l/m/t','cc571fb0-8455-4cec-9e9b-3d0303a0e795','image','svg',0,NULL,0,0,3),(30,'cursor.svg',NULL,'6fae5901-6db7-4056-b595-73941c345e1a','image/svg+xml',313,NULL,22,'2024-03-22 09:11:36','2024-03-22 09:11:36',NULL,'k/l/m/u','6fae5901-6db7-4056-b595-73941c345e1a','image','svg',0,NULL,0,0,3),(31,'logo.png',NULL,'28ec8ea4-2801-46d8-a6f9-37f40b91a22c','image/png',3018,NULL,22,'2024-03-22 09:11:37','2024-03-22 09:11:37',NULL,'k/l/m/v','28ec8ea4-2801-46d8-a6f9-37f40b91a22c','image','png',0,NULL,0,0,3),(32,'logo1.png',NULL,'074d93dd-ed2b-4beb-8968-a10035ff25af','image/png',2628,NULL,22,'2024-03-22 09:11:37','2024-03-22 09:11:37',NULL,'k/l/m/w','074d93dd-ed2b-4beb-8968-a10035ff25af','image','png',0,NULL,0,0,3),(33,'logo2.png',NULL,'63792179-1edf-4205-9f99-2347d2d27dcf','image/png',2799,NULL,22,'2024-03-22 09:11:37','2024-03-22 09:11:37',NULL,'k/l/m/x','63792179-1edf-4205-9f99-2347d2d27dcf','image','png',0,NULL,0,0,3),(34,'logo3.png',NULL,'34124c69-75e9-42ad-ab25-aea2d0e23f2e','image/png',2853,NULL,22,'2024-03-22 09:11:38','2024-03-22 09:11:38',NULL,'k/l/m/y','34124c69-75e9-42ad-ab25-aea2d0e23f2e','image','png',0,NULL,0,0,3),(35,'staff5.png',NULL,'273e0d7a-ec95-4c3d-9108-1e0d7290bf78','image/png',32099,NULL,22,'2024-03-22 09:11:38','2024-03-22 09:11:38',NULL,'k/l/m/z','273e0d7a-ec95-4c3d-9108-1e0d7290bf78','image','png',0,NULL,0,0,3),(36,'pages',NULL,'pages',NULL,102142,NULL,21,'2024-03-22 09:11:39','2024-03-22 09:11:42',NULL,'k/l/10',NULL,'folder',NULL,0,NULL,0,0,3),(37,'blog.html',NULL,'8c473ee3-1f05-4052-946d-40b47cf0bf0c','text/html',13904,NULL,36,'2024-03-22 09:11:39','2024-03-22 09:11:39',NULL,'k/l/10/11','8c473ee3-1f05-4052-946d-40b47cf0bf0c','text','html',0,NULL,0,0,3),(38,'Blog_01_detailed.html',NULL,'ecd27259-670f-49c3-b5d8-2fb297353d70','text/html',11739,NULL,36,'2024-03-22 09:11:39','2024-03-22 09:11:39',NULL,'k/l/10/12','ecd27259-670f-49c3-b5d8-2fb297353d70','text','html',0,NULL,0,0,3),(39,'contact.html',NULL,'b87cea32-6f88-4bd7-bc9f-6e0663ddc380','text/html',13470,NULL,36,'2024-03-22 09:11:39','2024-03-22 09:11:39',NULL,'k/l/10/13','b87cea32-6f88-4bd7-bc9f-6e0663ddc380','text','html',0,NULL,0,0,3),(40,'cursor_check.html',NULL,'7bcb869c-9612-4207-8e93-d4054d1f8711','text/html',703,NULL,36,'2024-03-22 09:11:40','2024-03-22 09:11:40',NULL,'k/l/10/14','7bcb869c-9612-4207-8e93-d4054d1f8711','text','html',0,NULL,0,0,3),(41,'index.html',NULL,'27b43e19-d207-4416-886f-f11b9752e1ef','text/html',25431,NULL,36,'2024-03-22 09:11:40','2024-03-22 09:11:40',NULL,'k/l/10/15','27b43e19-d207-4416-886f-f11b9752e1ef','text','html',0,NULL,0,0,3),(42,'pricing.html',NULL,'3f767b6b-a950-4e36-82f8-1bbac05fcd8f','text/html',17429,NULL,36,'2024-03-22 09:11:41','2024-03-22 09:11:41',NULL,'k/l/10/16','3f767b6b-a950-4e36-82f8-1bbac05fcd8f','text','html',0,NULL,0,0,3),(43,'products.html',NULL,'05683dae-fbb8-4ca1-9a1d-edc8ec02745a','text/html',15917,NULL,36,'2024-03-22 09:11:41','2024-03-22 09:11:41',NULL,'k/l/10/17','05683dae-fbb8-4ca1-9a1d-edc8ec02745a','text','html',0,NULL,0,0,3),(44,'subscribe_to_newsletter.html',NULL,'1ddfbd04-1794-43c1-9773-5966d27f48be','text/html',1075,NULL,36,'2024-03-22 09:11:41','2024-03-22 09:11:41',NULL,'k/l/10/18','1ddfbd04-1794-43c1-9773-5966d27f48be','text','html',0,NULL,0,0,3),(45,'test.html',NULL,'d92f48b8-19d5-4f85-94db-4a8daa57fc23','text/html',2474,NULL,36,'2024-03-22 09:11:42','2024-03-22 09:11:42',NULL,'k/l/10/19','d92f48b8-19d5-4f85-94db-4a8daa57fc23','text','html',0,NULL,0,0,3),(46,'test.ipynb',NULL,'e04c8793-579a-4a47-92f9-fc94558a02df','application/octet-stream',7665,NULL,21,'2024-03-22 09:11:42','2024-03-22 09:11:42',NULL,'k/l/1a','e04c8793-579a-4a47-92f9-fc94558a02df','file','ipynb',0,NULL,0,0,3),(47,'__MACOSX',NULL,'__MACOSX',NULL,6141,NULL,20,'2024-03-22 09:11:43','2024-03-22 09:11:50',NULL,'k/1b',NULL,'folder',NULL,0,NULL,0,0,3),(48,'Zeitstoneai_website',NULL,'Zeitstoneai_website',NULL,6141,NULL,47,'2024-03-22 09:11:43','2024-03-22 09:11:50',NULL,'k/1b/1c',NULL,'folder',NULL,0,NULL,0,0,3),(49,'._.DS_Store',NULL,'85013bbd-cf14-418e-a2d5-7a1a3c8565ea','application/octet-stream',120,NULL,48,'2024-03-22 09:11:43','2024-03-22 09:11:43',NULL,'k/1b/1c/1d','85013bbd-cf14-418e-a2d5-7a1a3c8565ea','file','DS_Store',0,NULL,0,0,3),(50,'._css',NULL,'5ea23183-ac39-4f98-aaf6-77fa7537ee28','application/octet-stream',163,NULL,48,'2024-03-22 09:11:43','2024-03-22 09:11:43',NULL,'k/1b/1c/1e','5ea23183-ac39-4f98-aaf6-77fa7537ee28','file','_css',0,NULL,0,0,3),(51,'._pages',NULL,'7db396b0-c1ee-4d29-b327-4df76bffa46b','application/octet-stream',163,NULL,48,'2024-03-22 09:11:43','2024-03-22 09:11:43',NULL,'k/1b/1c/1f','7db396b0-c1ee-4d29-b327-4df76bffa46b','file','_pages',0,NULL,0,0,3),(52,'._test.ipynb',NULL,'6677b220-6dc4-4795-8ab0-347d35d48662','application/octet-stream',163,NULL,48,'2024-03-22 09:11:44','2024-03-22 09:11:44',NULL,'k/1b/1c/1g','6677b220-6dc4-4795-8ab0-347d35d48662','file','ipynb',0,NULL,0,0,3),(53,'images',NULL,'images',NULL,4065,NULL,48,'2024-03-22 09:11:44','2024-03-22 09:11:47',NULL,'k/1b/1c/1h',NULL,'folder',NULL,0,NULL,0,0,3),(54,'._10215531.jpg',NULL,'5c79c2f0-e68b-4477-a85c-bf9200a7c51e','image/jpeg',176,NULL,53,'2024-03-22 09:11:44','2024-03-22 09:11:44',NULL,'k/1b/1c/1h/1i','5c79c2f0-e68b-4477-a85c-bf9200a7c51e','image','jpg',0,NULL,0,0,3),(55,'._4141245.jpg',NULL,'ef11ab95-9981-41bf-b0e2-53349517ebd4','image/jpeg',176,NULL,53,'2024-03-22 09:11:44','2024-03-22 09:11:44',NULL,'k/1b/1c/1h/1j','ef11ab95-9981-41bf-b0e2-53349517ebd4','image','jpg',0,NULL,0,0,3),(56,'._4NB4.gif',NULL,'59f6e75c-aa65-47f8-8f97-da8e99a63a80','image/gif',360,NULL,53,'2024-03-22 09:11:45','2024-03-22 09:11:45',NULL,'k/1b/1c/1h/1k','59f6e75c-aa65-47f8-8f97-da8e99a63a80','image','gif',0,NULL,0,0,3),(57,'._bee.png',NULL,'734a985a-e00f-4d92-addd-17733b944f48','image/png',2345,NULL,53,'2024-03-22 09:11:45','2024-03-22 09:11:45',NULL,'k/1b/1c/1h/1l','734a985a-e00f-4d92-addd-17733b944f48','image','png',0,NULL,0,0,3),(58,'._cursor-button.svg',NULL,'701e420d-7c3c-4fa3-8d5f-21939fde13cf','image/svg+xml',426,NULL,53,'2024-03-22 09:11:46','2024-03-22 09:11:46',NULL,'k/1b/1c/1h/1m','701e420d-7c3c-4fa3-8d5f-21939fde13cf','image','svg',0,NULL,0,0,3),(59,'._cursor.svg',NULL,'e399304f-c124-4b2e-a10e-5d6dc35e9877','image/svg+xml',419,NULL,53,'2024-03-22 09:11:46','2024-03-22 09:11:46',NULL,'k/1b/1c/1h/1n','e399304f-c124-4b2e-a10e-5d6dc35e9877','image','svg',0,NULL,0,0,3),(60,'._Screenshot 2024-02-19 at 10.02.39 PM.png',NULL,'960dfebd-b5fa-44b7-9123-295ceb252b21','image/png',163,NULL,53,'2024-03-22 09:11:47','2024-03-22 09:11:47',NULL,'k/1b/1c/1h/1o','960dfebd-b5fa-44b7-9123-295ceb252b21','image','png',0,NULL,0,0,3),(61,'pages',NULL,'pages',NULL,1467,NULL,48,'2024-03-22 09:11:47','2024-03-22 09:11:50',NULL,'k/1b/1c/1p',NULL,'folder',NULL,0,NULL,0,0,3),(62,'._blog.html',NULL,'eaec66eb-bc4d-417b-a624-3a5aa47b178a','text/html',163,NULL,61,'2024-03-22 09:11:47','2024-03-22 09:11:47',NULL,'k/1b/1c/1p/1q','eaec66eb-bc4d-417b-a624-3a5aa47b178a','text','html',0,NULL,0,0,3),(63,'._Blog_01_detailed.html',NULL,'7b7e3811-190a-4e66-8981-633a319810a2','text/html',163,NULL,61,'2024-03-22 09:11:47','2024-03-22 09:11:47',NULL,'k/1b/1c/1p/1r','7b7e3811-190a-4e66-8981-633a319810a2','text','html',0,NULL,0,0,3),(64,'._contact.html',NULL,'ef137d70-4e4a-4322-9464-d424a0af7a1f','text/html',163,NULL,61,'2024-03-22 09:11:48','2024-03-22 09:11:48',NULL,'k/1b/1c/1p/1s','ef137d70-4e4a-4322-9464-d424a0af7a1f','text','html',0,NULL,0,0,3),(65,'._cursor_check.html',NULL,'3fb56c44-5738-4200-ba38-9f318ba4244a','text/html',163,NULL,61,'2024-03-22 09:11:48','2024-03-22 09:11:48',NULL,'k/1b/1c/1p/1t','3fb56c44-5738-4200-ba38-9f318ba4244a','text','html',0,NULL,0,0,3),(66,'._index.html',NULL,'dd6af8dc-86c8-4869-92b8-879e9ad02b30','text/html',163,NULL,61,'2024-03-22 09:11:49','2024-03-22 09:11:49',NULL,'k/1b/1c/1p/1u','dd6af8dc-86c8-4869-92b8-879e9ad02b30','text','html',0,NULL,0,0,3),(67,'._pricing.html',NULL,'c90b90b2-7ffc-42de-88e4-ceca527418ad','text/html',163,NULL,61,'2024-03-22 09:11:49','2024-03-22 09:11:49',NULL,'k/1b/1c/1p/1v','c90b90b2-7ffc-42de-88e4-ceca527418ad','text','html',0,NULL,0,0,3),(68,'._products.html',NULL,'fde35573-3763-42c6-889a-be57b63f4a06','text/html',163,NULL,61,'2024-03-22 09:11:49','2024-03-22 09:11:49',NULL,'k/1b/1c/1p/1w','fde35573-3763-42c6-889a-be57b63f4a06','text','html',0,NULL,0,0,3),(69,'._subscribe_to_newsletter.html',NULL,'5d32c474-cd7c-4b9b-a244-f2e80139b090','text/html',163,NULL,61,'2024-03-22 09:11:50','2024-03-22 09:11:50',NULL,'k/1b/1c/1p/1x','5d32c474-cd7c-4b9b-a244-f2e80139b090','text','html',0,NULL,0,0,3),(70,'._test.html',NULL,'8050d98b-a957-43ef-a5cb-99c3fd8ec7f1','text/html',163,NULL,61,'2024-03-22 09:11:50','2024-03-22 09:11:50',NULL,'k/1b/1c/1p/1y','8050d98b-a957-43ef-a5cb-99c3fd8ec7f1','text','html',0,NULL,0,0,3),(71,'logo3.png',NULL,'aac859a2-a942-4ac2-9cba-608b53295ece.png','image/png',2853,NULL,NULL,'2024-03-22 09:33:39','2024-03-22 09:33:39',NULL,NULL,'branding_media','image','png',1,NULL,0,12,1),(72,'logo3.png',NULL,'e106e4d7-e29b-4a05-be26-f183999e70b2.png','image/png',2853,NULL,NULL,'2024-03-22 09:34:28','2024-03-22 09:34:28',NULL,NULL,'branding_media','image','png',1,NULL,0,12,1),(78,'WallX_192705_1080x1920.jpeg',NULL,'a936644d-f8c6-4cf1-83e2-747ef8a5d359','image/jpeg',61119,NULL,NULL,'2024-03-22 17:06:21','2024-03-22 17:06:21',NULL,'26','a936644d-f8c6-4cf1-83e2-747ef8a5d359','image','jpeg',0,NULL,0,0,6),(79,'WallX_205350_1080x1920.jpeg',NULL,'d3d78ef9-94ec-4514-8d90-f9b16eeca814','image/jpeg',771608,NULL,NULL,'2024-03-22 17:06:22','2024-03-22 17:06:22',NULL,'27','d3d78ef9-94ec-4514-8d90-f9b16eeca814','image','jpeg',0,NULL,1,0,6),(81,'VID_97971120_230936_390.mp4',NULL,'f3bc8ec8-5be3-4323-b973-ef8f3248f3aa','video/mp4',9358737,NULL,NULL,'2024-03-22 17:07:43','2024-03-22 17:07:43',NULL,'29','f3bc8ec8-5be3-4323-b973-ef8f3248f3aa','video','mp4',0,NULL,0,0,6),(82,'IMG_20240205_020143_572.jpg',NULL,'d81f3997-a792-43a6-a2fb-d3bd83f719e0.jpg','image/jpeg',9274,NULL,NULL,'2024-03-22 17:08:33','2024-03-22 17:08:33',NULL,NULL,'avatars','image','jpg',1,NULL,0,12,6),(84,'my folder',NULL,'my folder',NULL,0,NULL,NULL,'2024-03-22 17:43:04','2024-03-22 17:43:04',NULL,'2c',NULL,'folder',NULL,0,NULL,0,2,6),(139,'staff5.png',NULL,'5dfdd033-3333-40f2-9f65-bc9a6dd8f561.png','image/png',32099,NULL,NULL,'2024-03-26 04:50:42','2024-03-26 04:50:42',NULL,NULL,'avatars','image','png',1,NULL,0,12,3),(140,'ban_ai44.jpg',NULL,'324b9905-1258-48e1-a740-e19001a4c71b','image/jpeg',164888,NULL,NULL,'2024-03-26 04:53:38','2024-03-26 04:53:54',NULL,'3w','324b9905-1258-48e1-a740-e19001a4c71b','image','jpg',0,NULL,0,0,3),(141,'services.html',NULL,'0d493c3c-552b-4a94-a358-bcad384f8ecc','text/html',19603,NULL,NULL,'2024-03-26 04:55:30','2024-03-26 04:55:30',NULL,'3x','0d493c3c-552b-4a94-a358-bcad384f8ecc','text','html',0,NULL,0,0,3),(142,'vidz',NULL,'vidz',NULL,1687325,NULL,NULL,'2024-03-26 04:56:39','2024-03-26 04:58:59',NULL,'3y',NULL,'folder',NULL,0,NULL,0,0,3),(143,'sample44.mp4',NULL,'041b0eae-3865-47b7-bae2-f897662a1413','video/mp4',1687325,NULL,142,'2024-03-26 04:57:31','2024-03-26 04:58:59',NULL,'3y/3z','041b0eae-3865-47b7-bae2-f897662a1413','video','mp4',0,NULL,0,0,3),(154,'banner_image (14).png',NULL,'407ee3b8-aed1-4a63-acc1-e9e8bfa4cc2e','image/png',3455368,NULL,NULL,'2024-03-26 05:50:47','2024-03-26 06:31:05',NULL,'4a','407ee3b8-aed1-4a63-acc1-e9e8bfa4cc2e','image','png',0,NULL,1,0,8),(155,'brain-stroke-main.zip',NULL,'58fd307b-70fe-4f5c-a8cc-a4d18fe85fda','application/x-zip-compressed',523777,NULL,168,'2024-03-26 06:01:19','2024-04-11 09:27:32',NULL,'dn/4o/4b','58fd307b-70fe-4f5c-a8cc-a4d18fe85fda','archive','zip',0,NULL,0,0,8),(167,'Zeitstoneai_website (2).zip',NULL,'5134a183-ac91-49e8-b9b7-8e3d151450f8','application/x-zip-compressed',22308752,NULL,NULL,'2024-03-26 06:10:54','2024-03-26 06:10:54',NULL,'4n','5134a183-ac91-49e8-b9b7-8e3d151450f8','archive','zip',0,NULL,0,0,3),(168,'sssss',NULL,'sssss',NULL,523777,NULL,491,'2024-03-26 06:28:56','2024-04-11 09:27:32',NULL,'dn/4o',NULL,'folder',NULL,0,NULL,0,0,8),(169,'brain-stroke-main.zip - sss',NULL,'Pty8VElFYazTzIkPu9LXNh02RAshDuWO9nFK','application/x-zip-compressed',523777,NULL,NULL,'2024-03-26 06:31:24','2024-03-26 06:32:49',NULL,'4p','58fd307b-70fe-4f5c-a8cc-a4d18fe85fda','archive','zip',0,NULL,0,0,8),(170,'mms_collection.json',NULL,'565f1b04-7f34-4036-8980-2935cf6c5fe3','application/json',1504,NULL,NULL,'2024-03-26 07:03:26','2024-03-26 07:03:26',NULL,'4q','565f1b04-7f34-4036-8980-2935cf6c5fe3','file','json',0,NULL,0,0,5),(171,'logo',NULL,'logo',NULL,1534,NULL,NULL,'2024-03-26 07:20:22','2024-03-26 07:22:58',NULL,'4r',NULL,'folder',NULL,0,NULL,0,5,8),(172,'favicon.png',NULL,'769f844f-e24c-4030-a6a3-ade2016e4b16','image/png',1534,NULL,171,'2024-03-26 07:20:22','2024-03-26 07:20:22',NULL,'4r/4s','769f844f-e24c-4030-a6a3-ade2016e4b16','image','png',0,NULL,0,5,8),(173,'banner_image (3).png',NULL,'a60eeff8-da19-4e71-9b2d-3a211e215f42','image/png',3455368,NULL,NULL,'2024-03-26 07:22:18','2024-03-26 07:22:58',NULL,'4t','a60eeff8-da19-4e71-9b2d-3a211e215f42','image','png',0,NULL,1,5,8),(174,'banner_image (14).png - Copy',NULL,'pwsK0UsirkVBIGcpfXz5aVCbBX7nNevSwVrB','image/png',3455368,NULL,NULL,'2024-03-26 07:44:29','2024-03-26 09:04:58','2024-03-26 09:04:58','4u','407ee3b8-aed1-4a63-acc1-e9e8bfa4cc2e','image','png',0,NULL,1,0,8),(175,'sssss - Copy',NULL,'jTrIVIcTyNZ08NN8zv5CimZChExEscSPzOfv',NULL,1047554,NULL,NULL,'2024-03-26 07:44:39','2024-03-26 09:05:03','2024-03-26 09:05:03','4v',NULL,'folder',NULL,0,NULL,0,0,8),(176,'brain-stroke-main.zip',NULL,'Crtpp5mJX0heSX4PzIvc6mbtVuodLhSC9Kxf','application/x-zip-compressed',523777,NULL,175,'2024-03-26 07:44:40','2024-03-26 09:05:03','2024-03-26 09:05:03','4v/4w','58fd307b-70fe-4f5c-a8cc-a4d18fe85fda','archive','zip',0,NULL,0,0,8),(177,'sample_job_description.txt',NULL,'c7234ab1-8cc3-48b4-98de-8c255e0ff048','text/plain',742,NULL,179,'2024-03-26 08:01:29','2024-03-26 08:02:53',NULL,'4z/4x','c7234ab1-8cc3-48b4-98de-8c255e0ff048','text','txt',0,NULL,0,0,5),(178,'sample_resume.txt',NULL,'6ecf4ff9-4246-433e-9afa-6677c5fe0e67','text/plain',1046,NULL,180,'2024-03-26 08:01:30','2024-03-26 08:02:51',NULL,'50/4y','6ecf4ff9-4246-433e-9afa-6677c5fe0e67','text','txt',0,NULL,0,0,5),(179,'Job_description',NULL,'Job_description',NULL,742,NULL,NULL,'2024-03-26 08:02:34','2024-03-26 08:02:53',NULL,'4z',NULL,'folder',NULL,0,NULL,0,0,5),(180,'Resumes',NULL,'Resumes',NULL,1046,NULL,NULL,'2024-03-26 08:02:42','2024-03-26 08:02:51',NULL,'50',NULL,'folder',NULL,0,NULL,0,0,5),(181,'vidz - Copy',NULL,'JpFDwxl3rRrzRnEl44Wdv8TcPVPbqVFy0ssO',NULL,3374650,NULL,NULL,'2024-03-26 09:27:00','2024-03-26 09:27:01',NULL,'51',NULL,'folder',NULL,0,NULL,0,0,3),(182,'sample44.mp4',NULL,'De0If0OxbNODDmaCUwUhUwA2QrHszsm4CxyF','video/mp4',1687325,NULL,181,'2024-03-26 09:27:00','2024-03-26 09:27:00',NULL,'51/52','041b0eae-3865-47b7-bae2-f897662a1413','video','mp4',0,NULL,0,0,3),(446,'Analytics_Engine_Feature_Tasks.xlsx',NULL,'cc81c9d1-3744-42d9-84ed-433fcbb5dd3f','application/vnd.openxmlformats-officedocument.spreadsheetml.sheet',6670,NULL,NULL,'2024-03-27 12:44:40','2024-03-27 12:44:42',NULL,'ce','cc81c9d1-3744-42d9-84ed-433fcbb5dd3f','spreadsheet','xlsx',0,'djRJBKcfK1BTXBc',0,6,5),(448,'Backup_of_Untitled-1.cdr',NULL,'59888e41-6fac-4ebc-a192-5bf580c08eea','application/octet-stream',3630426,NULL,NULL,'2024-03-27 16:40:38','2024-03-27 16:40:38',NULL,'cg','59888e41-6fac-4ebc-a192-5bf580c08eea','file','cdr',0,NULL,0,7,10),(450,'R.png',NULL,'4b7733d6-8f5e-4cc6-92ce-38f3f298a1c2','image/png',283810,NULL,NULL,'2024-03-27 16:50:30','2024-03-27 16:50:30',NULL,'ci','4b7733d6-8f5e-4cc6-92ce-38f3f298a1c2','image','png',0,NULL,0,7,10),(451,'R (1).svg',NULL,'14c3d0eb-5042-426d-b273-86e861b159da','image/svg+xml',93285,NULL,NULL,'2024-03-27 16:53:29','2024-03-27 16:53:29',NULL,'cj','14c3d0eb-5042-426d-b273-86e861b159da','image','svg',0,NULL,0,7,10),(452,'aaa.jpg',NULL,'faed0fa2-b775-47ea-b500-c82059466c58','image/jpeg',40449,NULL,NULL,'2024-03-27 16:56:32','2024-03-27 16:56:32',NULL,'ck','faed0fa2-b775-47ea-b500-c82059466c58','image','jpg',0,NULL,0,7,10),(453,'3148FOQDiML._UX342_.jpg',NULL,'ba40f3a5-8742-4686-a25c-d943f238f1bb','image/jpeg',8758,NULL,NULL,'2024-03-27 17:08:22','2024-03-27 17:08:22',NULL,'cl','ba40f3a5-8742-4686-a25c-d943f238f1bb','image','jpg',0,NULL,0,7,10),(454,'Zeitstoneai_website (4).zip',NULL,'6b1b0f4f-d99f-4044-b7c7-efc03e10a115','application/x-zip-compressed',67139754,NULL,NULL,'2024-03-28 13:49:20','2024-04-24 18:45:39','2024-04-24 18:45:39','cm','6b1b0f4f-d99f-4044-b7c7-efc03e10a115','archive','zip',0,NULL,0,1,3),(462,'Untitled Folder',NULL,'Untitled Folder',NULL,6640024,NULL,NULL,'2024-04-08 00:19:29','2024-04-08 11:53:33',NULL,'cu',NULL,'folder',NULL,0,NULL,0,0,1),(463,'WallX_moon_black_night_177109_1080x1920.jpeg',NULL,'3a61a1df-794c-4e1e-a338-db3e0058e00c','image/jpeg',27631,NULL,NULL,'2024-04-08 00:29:29','2024-04-08 00:29:29',NULL,'cv','3a61a1df-794c-4e1e-a338-db3e0058e00c','image','jpeg',0,NULL,0,0,1),(465,'Untitled Folder - Copy',NULL,'Untitled Folder',NULL,7882944,NULL,NULL,'2024-04-08 05:04:44','2024-04-08 05:04:44',NULL,'cx',NULL,'folder',NULL,0,NULL,0,0,1),(466,'download-1712551455.zip',NULL,'69291111-6423-4722-a424-c9fee39c9588','application/x-zip-compressed',7882944,NULL,465,'2024-04-08 05:04:44','2024-04-08 05:04:44',NULL,'cx/cy','69291111-6423-4722-a424-c9fee39c9588','archive','zip',0,NULL,0,0,1),(467,'Untitled Folder - Copy(1)',NULL,'Untitled Folder',NULL,7882944,NULL,NULL,'2024-04-08 05:04:53','2024-04-08 05:04:53',NULL,'cz',NULL,'folder',NULL,0,NULL,0,0,1),(468,'download-1712551455.zip',NULL,'69291111-6423-4722-a424-c9fee39c9588','application/x-zip-compressed',7882944,NULL,467,'2024-04-08 05:04:53','2024-04-08 05:04:53',NULL,'cz/d0','69291111-6423-4722-a424-c9fee39c9588','archive','zip',0,NULL,0,0,1),(469,'cloud.mp4',NULL,'b3231ddb-0f67-4c23-955b-db8daafa490a','video/mp4',2098072,NULL,462,'2024-04-08 05:13:33','2024-04-08 05:13:33',NULL,'cu/d1','b3231ddb-0f67-4c23-955b-db8daafa490a','video','mp4',0,NULL,0,0,1),(470,'cloud - Copy.mp4',NULL,'b3231ddb-0f67-4c23-955b-db8daafa490a','video/mp4',2098072,NULL,462,'2024-04-08 05:13:49','2024-04-08 05:13:49',NULL,'cu/d2','b3231ddb-0f67-4c23-955b-db8daafa490a','video','mp4',0,NULL,0,0,1),(471,'cloud - Copy(1).mp4',NULL,'b3231ddb-0f67-4c23-955b-db8daafa490a','video/mp4',2098072,NULL,462,'2024-04-08 05:13:56','2024-04-08 05:13:56',NULL,'cu/d3','b3231ddb-0f67-4c23-955b-db8daafa490a','video','mp4',0,NULL,0,0,1),(472,'#bestlivingroomdesigns (6).webp',NULL,'258bf4fe-5018-4856-ba04-24e4e41ddd02','image/webp',127652,NULL,462,'2024-04-08 11:16:33','2024-04-08 11:16:33',NULL,'cu/d4','258bf4fe-5018-4856-ba04-24e4e41ddd02','image','webp',0,NULL,0,0,1),(473,'#bestlivingroomdesigns (8).webp',NULL,'b1b432ce-3e96-4bbc-a8b7-bf1e5fc3c832','image/webp',107877,NULL,462,'2024-04-08 11:52:17','2024-04-08 11:52:17',NULL,'cu/d5','b1b432ce-3e96-4bbc-a8b7-bf1e5fc3c832','image','webp',0,NULL,0,0,1),(474,'#bestlivingroomdesigns (19).webp',NULL,'eb1b2276-cead-4467-b552-294f9f8cf5aa','image/webp',110279,NULL,462,'2024-04-08 11:53:33','2024-04-08 11:53:33',NULL,'cu/d6','eb1b2276-cead-4467-b552-294f9f8cf5aa','image','webp',0,NULL,0,0,1),(477,'N-1.png',NULL,'27bb6c2a-9a3a-4e08-ab00-443d859e011f.png','image/png',11239,NULL,NULL,'2024-04-09 07:53:29','2024-04-09 07:53:29',NULL,NULL,'branding_media','image','png',1,NULL,0,12,1),(478,'Predictive_Analytics_in_Healthcare_Report.txt',NULL,'43b52413-052c-4cdf-b976-f799b5ce4f94','text/plain',4502,NULL,NULL,'2024-04-09 13:09:03','2024-04-09 13:09:03',NULL,'da','43b52413-052c-4cdf-b976-f799b5ce4f94','text','txt',0,NULL,0,0,1),(491,'dddd',NULL,'dddd',NULL,4502922,NULL,NULL,'2024-04-11 06:41:28','2024-04-11 09:27:32',NULL,'dn',NULL,'folder',NULL,0,NULL,0,0,8),(492,'banner_image (14).png',NULL,'3ca2ffaa-f968-494a-97bd-42f2940cba60','image/png',3455368,NULL,491,'2024-04-11 06:43:06','2024-04-11 06:43:08',NULL,'dn/do','3ca2ffaa-f968-494a-97bd-42f2940cba60','image','png',0,NULL,0,0,8),(493,'fam4.jpg',NULL,'b6a44f20-ff01-47ae-96ee-c52303dbd3bc.jpg','image/jpeg',15812,NULL,NULL,'2024-04-11 07:50:54','2024-04-11 07:50:54',NULL,NULL,'avatars','image','jpg',1,NULL,0,12,3),(495,'htmlnew2',NULL,'htmlnew2',NULL,35356,NULL,NULL,'2024-04-11 08:54:13','2024-04-17 11:07:35',NULL,'dr',NULL,'folder',NULL,0,NULL,0,0,1),(496,'index.html',NULL,'82419dc3-c3eb-4e88-8a09-a1c977c9c836','text/html',885,NULL,495,'2024-04-11 08:54:13','2024-04-11 08:54:13',NULL,'dr/ds','82419dc3-c3eb-4e88-8a09-a1c977c9c836','text','html',0,NULL,0,0,1),(497,'images',NULL,'images',NULL,35356,NULL,495,'2024-04-11 08:54:13','2024-04-17 11:07:35',NULL,'dr/dt',NULL,'folder',NULL,0,NULL,0,0,1),(498,'BULB1.jpg',NULL,'90748154-b330-42c3-b0d2-b9ae62b83eca','image/jpeg',16201,NULL,497,'2024-04-11 08:54:13','2024-04-11 08:54:13',NULL,'dr/dt/du','90748154-b330-42c3-b0d2-b9ae62b83eca','image','jpg',0,NULL,0,0,1),(499,'BULB2.jpg',NULL,'1e402372-a8e5-4e4f-be4f-f4e712b40242','image/jpeg',18270,NULL,497,'2024-04-11 08:54:14','2024-04-11 08:54:14',NULL,'dr/dt/dv','1e402372-a8e5-4e4f-be4f-f4e712b40242','image','jpg',0,NULL,0,0,1),(501,'brain-stroke-main.zip - sss',NULL,'04f0ed9f-d3b0-438e-bd07-98f95152eeb4','application/octet-stream',523777,NULL,491,'2024-04-11 09:11:23','2024-04-11 09:27:32',NULL,'dn/dx','04f0ed9f-d3b0-438e-bd07-98f95152eeb4','file','zip - sss',0,NULL,0,0,8),(502,'contact1.jpg',NULL,'e164fdd3-b2f6-4879-bbec-203a2b057555.jpg','image/jpeg',118745,NULL,NULL,'2024-04-11 09:18:21','2024-04-11 09:18:21',NULL,NULL,'avatars','image','jpg',1,NULL,0,12,1),(503,'htmlnew2 - Copy',NULL,'htmlnew2',NULL,35356,NULL,NULL,'2024-04-11 09:45:21','2024-04-11 09:45:21',NULL,'dz',NULL,'folder',NULL,0,NULL,0,0,1),(504,'index.html',NULL,'82419dc3-c3eb-4e88-8a09-a1c977c9c836','text/html',885,NULL,503,'2024-04-11 09:45:21','2024-04-11 09:45:21',NULL,'dz/e0','82419dc3-c3eb-4e88-8a09-a1c977c9c836','text','html',0,NULL,0,0,1),(505,'images',NULL,'images',NULL,34471,NULL,503,'2024-04-11 09:45:21','2024-04-11 09:45:21',NULL,'dz/e1',NULL,'folder',NULL,0,NULL,0,0,1),(506,'BULB1.jpg',NULL,'90748154-b330-42c3-b0d2-b9ae62b83eca','image/jpeg',16201,NULL,505,'2024-04-11 09:45:21','2024-04-11 09:45:21',NULL,'dz/e1/e2','90748154-b330-42c3-b0d2-b9ae62b83eca','image','jpg',0,NULL,0,0,1),(507,'BULB2.jpg',NULL,'1e402372-a8e5-4e4f-be4f-f4e712b40242','image/jpeg',18270,NULL,505,'2024-04-11 09:45:21','2024-04-11 09:45:21',NULL,'dz/e1/e3','1e402372-a8e5-4e4f-be4f-f4e712b40242','image','jpg',0,NULL,0,0,1),(508,'Atlas Free Website Template - Free-CSS.com',NULL,'Atlas Free Website Template - Free-C',NULL,1866012,NULL,NULL,'2024-04-11 10:26:46','2024-04-11 10:27:12',NULL,'e4',NULL,'folder',NULL,0,NULL,0,0,3),(509,'Atlas',NULL,'Atlas',NULL,1866012,NULL,508,'2024-04-11 10:26:46','2024-04-11 10:27:12',NULL,'e4/e5',NULL,'folder',NULL,0,NULL,0,0,3),(510,'index.html',NULL,'ad7bec02-09cb-424f-b77b-9f67041933e7','text/html',12311,NULL,509,'2024-04-11 10:26:46','2024-04-11 10:26:46',NULL,'e4/e5/e6','ad7bec02-09cb-424f-b77b-9f67041933e7','text','html',0,NULL,0,0,3),(511,'license.txt',NULL,'cb681cf7-d7f1-4644-a825-92b47aa4843c','text/plain',471,NULL,509,'2024-04-11 10:26:48','2024-04-11 10:26:48',NULL,'e4/e5/e7','cb681cf7-d7f1-4644-a825-92b47aa4843c','text','txt',0,NULL,0,0,3),(512,'js',NULL,'js',NULL,14244,NULL,509,'2024-04-11 10:26:48','2024-04-11 10:26:48',NULL,'e4/e5/e8',NULL,'folder',NULL,0,NULL,0,0,3),(513,'aos.js',NULL,'65d13dba-b1a9-4d2f-817b-6e23efa133be','text/javascript',14244,NULL,512,'2024-04-11 10:26:48','2024-04-11 10:26:48',NULL,'e4/e5/e8/e9','65d13dba-b1a9-4d2f-817b-6e23efa133be','text','js',0,NULL,0,0,3),(514,'img',NULL,'img',NULL,346638,NULL,509,'2024-04-11 10:26:49','2024-04-11 10:26:55',NULL,'e4/e5/ea',NULL,'folder',NULL,0,NULL,0,0,3),(515,'banner-bk.jpg',NULL,'70454694-8455-4e29-b524-a72b07333a54','image/jpeg',97027,NULL,514,'2024-04-11 10:26:49','2024-04-11 10:26:49',NULL,'e4/e5/ea/eb','70454694-8455-4e29-b524-a72b07333a54','image','jpg',0,NULL,0,0,3),(516,'client-1.png',NULL,'e43c6b2f-c11d-4e88-9bd2-0e144ca9f6bf','image/png',1350,NULL,514,'2024-04-11 10:26:49','2024-04-11 10:26:49',NULL,'e4/e5/ea/ec','e43c6b2f-c11d-4e88-9bd2-0e144ca9f6bf','image','png',0,NULL,0,0,3),(517,'client-2.png',NULL,'d4645afc-b271-4b11-843f-5ee300cb1a51','image/png',865,NULL,514,'2024-04-11 10:26:50','2024-04-11 10:26:50',NULL,'e4/e5/ea/ed','d4645afc-b271-4b11-843f-5ee300cb1a51','image','png',0,NULL,0,0,3),(518,'client-3.png',NULL,'87e0a25c-95d3-4f3b-99fb-ce4b7e2dfdc3','image/png',1169,NULL,514,'2024-04-11 10:26:50','2024-04-11 10:26:50',NULL,'e4/e5/ea/ee','87e0a25c-95d3-4f3b-99fb-ce4b7e2dfdc3','image','png',0,NULL,0,0,3),(519,'client-4.png',NULL,'3701b159-38ab-4302-9870-53cc0fe79033','image/png',606,NULL,514,'2024-04-11 10:26:51','2024-04-11 10:26:51',NULL,'e4/e5/ea/ef','3701b159-38ab-4302-9870-53cc0fe79033','image','png',0,NULL,0,0,3),(520,'client-5.png',NULL,'a0348751-7e06-48fc-a762-8f39b7bb1baa','image/png',993,NULL,514,'2024-04-11 10:26:51','2024-04-11 10:26:51',NULL,'e4/e5/ea/eg','a0348751-7e06-48fc-a762-8f39b7bb1baa','image','png',0,NULL,0,0,3),(521,'client-6.png',NULL,'161393d5-4ac1-4675-91ef-5a2b42e904f2','image/png',1125,NULL,514,'2024-04-11 10:26:52','2024-04-11 10:26:52',NULL,'e4/e5/ea/eh','161393d5-4ac1-4675-91ef-5a2b42e904f2','image','png',0,NULL,0,0,3),(522,'contact-bk.jpg',NULL,'983f276b-b509-4695-ba46-370df148369d','image/jpeg',59563,NULL,514,'2024-04-11 10:26:52','2024-04-11 10:26:52',NULL,'e4/e5/ea/ei','983f276b-b509-4695-ba46-370df148369d','image','jpg',0,NULL,0,0,3),(523,'favicon.png',NULL,'a730d71c-5785-4657-8e84-fcb34b10c13d','image/png',235,NULL,514,'2024-04-11 10:26:53','2024-04-11 10:26:53',NULL,'e4/e5/ea/ej','a730d71c-5785-4657-8e84-fcb34b10c13d','image','png',0,NULL,0,0,3),(524,'feature-1.png',NULL,'e2355475-62d1-4ce6-9c5b-0a01e93b8658','image/png',76409,NULL,514,'2024-04-11 10:26:53','2024-04-11 10:26:53',NULL,'e4/e5/ea/ek','e2355475-62d1-4ce6-9c5b-0a01e93b8658','image','png',0,NULL,0,0,3),(525,'feature-2.png',NULL,'b7614bd5-9b8a-4bdd-b675-0d5a50526491','image/png',83673,NULL,514,'2024-04-11 10:26:53','2024-04-11 10:26:53',NULL,'e4/e5/ea/el','b7614bd5-9b8a-4bdd-b675-0d5a50526491','image','png',0,NULL,0,0,3),(526,'logo.png',NULL,'99669879-45e8-4213-84c6-8c273a9741f7','image/png',2809,NULL,514,'2024-04-11 10:26:54','2024-04-11 10:26:54',NULL,'e4/e5/ea/em','99669879-45e8-4213-84c6-8c273a9741f7','image','png',0,NULL,0,0,3),(527,'smart-protect-1.jpg',NULL,'31d41d60-edb5-4987-81a2-b9129b191735','image/jpeg',7534,NULL,514,'2024-04-11 10:26:54','2024-04-11 10:26:54',NULL,'e4/e5/ea/en','31d41d60-edb5-4987-81a2-b9129b191735','image','jpg',0,NULL,0,0,3),(528,'smart-protect-2.jpg',NULL,'412274ae-f5f1-4e5f-adcd-d2db204e2c63','image/jpeg',6610,NULL,514,'2024-04-11 10:26:55','2024-04-11 10:26:55',NULL,'e4/e5/ea/eo','412274ae-f5f1-4e5f-adcd-d2db204e2c63','image','jpg',0,NULL,0,0,3),(529,'smart-protect-3.jpg',NULL,'38b52a22-f3b0-4886-9916-17a5b919e54e','image/jpeg',6670,NULL,514,'2024-04-11 10:26:55','2024-04-11 10:26:55',NULL,'e4/e5/ea/ep','38b52a22-f3b0-4886-9916-17a5b919e54e','image','jpg',0,NULL,0,0,3),(530,'font-awesome-4.7.0',NULL,'font-awesome-4.7.0',NULL,1312970,NULL,509,'2024-04-11 10:26:56','2024-04-11 10:27:11',NULL,'e4/e5/eq',NULL,'folder',NULL,0,NULL,0,0,3),(531,'scss',NULL,'scss',NULL,79919,NULL,530,'2024-04-11 10:26:56','2024-04-11 10:27:01',NULL,'e4/e5/eq/er',NULL,'folder',NULL,0,NULL,0,0,3),(532,'font-awesome.scss',NULL,'44d64f90-5c35-4856-87f0-90c5c9aadac8','application/octet-stream',430,NULL,531,'2024-04-11 10:26:56','2024-04-11 10:26:56',NULL,'e4/e5/eq/er/es','44d64f90-5c35-4856-87f0-90c5c9aadac8','file','scss',0,NULL,0,0,3),(533,'_animated.scss',NULL,'539ea63b-7953-43e3-8c19-a54a4bbc5b24','application/octet-stream',715,NULL,531,'2024-04-11 10:26:56','2024-04-11 10:26:56',NULL,'e4/e5/eq/er/et','539ea63b-7953-43e3-8c19-a54a4bbc5b24','file','scss',0,NULL,0,0,3),(534,'_bordered-pulled.scss',NULL,'7d92fff5-ff88-4193-933f-1402340f7b91','application/octet-stream',592,NULL,531,'2024-04-11 10:26:56','2024-04-11 10:26:56',NULL,'e4/e5/eq/er/eu','7d92fff5-ff88-4193-933f-1402340f7b91','file','scss',0,NULL,0,0,3),(535,'_core.scss',NULL,'6538da76-9ee3-4cf9-bd65-bbb4cfebb6e8','application/octet-stream',459,NULL,531,'2024-04-11 10:26:57','2024-04-11 10:26:57',NULL,'e4/e5/eq/er/ev','6538da76-9ee3-4cf9-bd65-bbb4cfebb6e8','file','scss',0,NULL,0,0,3),(536,'_fixed-width.scss',NULL,'8c56c179-48c6-4e58-a5db-e48ea747eb94','application/octet-stream',120,NULL,531,'2024-04-11 10:26:57','2024-04-11 10:26:57',NULL,'e4/e5/eq/er/ew','8c56c179-48c6-4e58-a5db-e48ea747eb94','file','scss',0,NULL,0,0,3),(537,'_icons.scss',NULL,'7e99a113-8974-4e84-952c-705f45726c21','application/octet-stream',50498,NULL,531,'2024-04-11 10:26:58','2024-04-11 10:26:58',NULL,'e4/e5/eq/er/ex','7e99a113-8974-4e84-952c-705f45726c21','file','scss',0,NULL,0,0,3),(538,'_larger.scss',NULL,'89858ca7-b8d6-4031-a683-a149329a3afb','application/octet-stream',375,NULL,531,'2024-04-11 10:26:58','2024-04-11 10:26:58',NULL,'e4/e5/eq/er/ey','89858ca7-b8d6-4031-a683-a149329a3afb','file','scss',0,NULL,0,0,3),(539,'_list.scss',NULL,'4bd842e7-6bb9-4eaf-948b-6a1d84890680','application/octet-stream',378,NULL,531,'2024-04-11 10:26:59','2024-04-11 10:26:59',NULL,'e4/e5/eq/er/ez','4bd842e7-6bb9-4eaf-948b-6a1d84890680','file','scss',0,NULL,0,0,3),(540,'_mixins.scss',NULL,'a03d14d0-85ce-4a3c-a248-f162ce8c0a51','application/octet-stream',1637,NULL,531,'2024-04-11 10:26:59','2024-04-11 10:26:59',NULL,'e4/e5/eq/er/f0','a03d14d0-85ce-4a3c-a248-f162ce8c0a51','file','scss',0,NULL,0,0,3),(541,'_path.scss',NULL,'d6fb32dc-f12f-48c4-8c2b-f986f4ea73da','application/octet-stream',783,NULL,531,'2024-04-11 10:27:00','2024-04-11 10:27:00',NULL,'e4/e5/eq/er/f1','d6fb32dc-f12f-48c4-8c2b-f986f4ea73da','file','scss',0,NULL,0,0,3),(542,'_rotated-flipped.scss',NULL,'4082938a-fb8d-4bfc-93f7-f12242b338ab','application/octet-stream',672,NULL,531,'2024-04-11 10:27:00','2024-04-11 10:27:00',NULL,'e4/e5/eq/er/f2','4082938a-fb8d-4bfc-93f7-f12242b338ab','file','scss',0,NULL,0,0,3),(543,'_screen-reader.scss',NULL,'116ace91-c60e-4580-b3f9-229e8953183d','application/octet-stream',134,NULL,531,'2024-04-11 10:27:00','2024-04-11 10:27:00',NULL,'e4/e5/eq/er/f3','116ace91-c60e-4580-b3f9-229e8953183d','file','scss',0,NULL,0,0,3),(544,'_stacked.scss',NULL,'76ebb635-aec6-473d-961f-01483803b661','application/octet-stream',482,NULL,531,'2024-04-11 10:27:01','2024-04-11 10:27:01',NULL,'e4/e5/eq/er/f4','76ebb635-aec6-473d-961f-01483803b661','file','scss',0,NULL,0,0,3),(545,'_variables.scss',NULL,'022a5919-6ab9-44f6-956f-17ff82b98caf','application/octet-stream',22644,NULL,531,'2024-04-11 10:27:01','2024-04-11 10:27:01',NULL,'e4/e5/eq/er/f5','022a5919-6ab9-44f6-956f-17ff82b98caf','file','scss',0,NULL,0,0,3),(546,'less',NULL,'less',NULL,78976,NULL,530,'2024-04-11 10:27:02','2024-04-11 10:27:07',NULL,'e4/e5/eq/f6',NULL,'folder',NULL,0,NULL,0,0,3),(547,'animated.less',NULL,'0598ca8c-4d92-44a1-a365-bd861fe44a1b','application/octet-stream',713,NULL,546,'2024-04-11 10:27:02','2024-04-11 10:27:02',NULL,'e4/e5/eq/f6/f7','0598ca8c-4d92-44a1-a365-bd861fe44a1b','file','less',0,NULL,0,0,3),(548,'bordered-pulled.less',NULL,'a9bcfbd0-1bb5-4d9d-b899-c05a3cc2912b','application/octet-stream',585,NULL,546,'2024-04-11 10:27:02','2024-04-11 10:27:02',NULL,'e4/e5/eq/f6/f8','a9bcfbd0-1bb5-4d9d-b899-c05a3cc2912b','file','less',0,NULL,0,0,3),(549,'core.less',NULL,'d43a3e48-f553-413c-9152-dfd663ff460b','application/octet-stream',452,NULL,546,'2024-04-11 10:27:03','2024-04-11 10:27:03',NULL,'e4/e5/eq/f6/f9','d43a3e48-f553-413c-9152-dfd663ff460b','file','less',0,NULL,0,0,3),(550,'fixed-width.less',NULL,'b9ca0424-95f2-4029-a8cf-55f0a79de743','application/octet-stream',119,NULL,546,'2024-04-11 10:27:03','2024-04-11 10:27:03',NULL,'e4/e5/eq/f6/fa','b9ca0424-95f2-4029-a8cf-55f0a79de743','file','less',0,NULL,0,0,3),(551,'font-awesome.less',NULL,'303df653-46d3-49dd-8dcd-55f70d38d1eb','application/octet-stream',495,NULL,546,'2024-04-11 10:27:03','2024-04-11 10:27:03',NULL,'e4/e5/eq/f6/fb','303df653-46d3-49dd-8dcd-55f70d38d1eb','file','less',0,NULL,0,0,3),(552,'icons.less',NULL,'4b6dea58-e4e4-49ad-9b21-0d743ec3f63a','application/octet-stream',49712,NULL,546,'2024-04-11 10:27:04','2024-04-11 10:27:04',NULL,'e4/e5/eq/f6/fc','4b6dea58-e4e4-49ad-9b21-0d743ec3f63a','file','less',0,NULL,0,0,3),(553,'larger.less',NULL,'ca4f044e-2251-4e77-b0d6-a1319ba727b2','application/octet-stream',370,NULL,546,'2024-04-11 10:27:04','2024-04-11 10:27:04',NULL,'e4/e5/eq/f6/fd','ca4f044e-2251-4e77-b0d6-a1319ba727b2','file','less',0,NULL,0,0,3),(554,'list.less',NULL,'ce6e2373-c9a6-44b7-aca6-92124899cfb3','application/octet-stream',377,NULL,546,'2024-04-11 10:27:05','2024-04-11 10:27:05',NULL,'e4/e5/eq/f6/fe','ce6e2373-c9a6-44b7-aca6-92124899cfb3','file','less',0,NULL,0,0,3),(555,'mixins.less',NULL,'84ba774d-bbe6-4b3d-96f5-cf415f3f9e80','application/octet-stream',1603,NULL,546,'2024-04-11 10:27:05','2024-04-11 10:27:05',NULL,'e4/e5/eq/f6/ff','84ba774d-bbe6-4b3d-96f5-cf415f3f9e80','file','less',0,NULL,0,0,3),(556,'path.less',NULL,'cf34b0d4-971c-445a-8785-700b7283aeba','application/octet-stream',771,NULL,546,'2024-04-11 10:27:05','2024-04-11 10:27:05',NULL,'e4/e5/eq/f6/fg','cf34b0d4-971c-445a-8785-700b7283aeba','file','less',0,NULL,0,0,3),(557,'rotated-flipped.less',NULL,'c2930922-1ff1-4caa-ad1d-f2f5ac5b8534','application/octet-stream',622,NULL,546,'2024-04-11 10:27:06','2024-04-11 10:27:06',NULL,'e4/e5/eq/f6/fh','c2930922-1ff1-4caa-ad1d-f2f5ac5b8534','file','less',0,NULL,0,0,3),(558,'screen-reader.less',NULL,'d9b4276f-1a91-4595-93e3-01dfec62f8c6','application/octet-stream',118,NULL,546,'2024-04-11 10:27:06','2024-04-11 10:27:06',NULL,'e4/e5/eq/f6/fi','d9b4276f-1a91-4595-93e3-01dfec62f8c6','file','less',0,NULL,0,0,3),(559,'stacked.less',NULL,'d400e939-86e8-4728-b32a-e36dfcdaac74','application/octet-stream',476,NULL,546,'2024-04-11 10:27:07','2024-04-11 10:27:07',NULL,'e4/e5/eq/f6/fj','d400e939-86e8-4728-b32a-e36dfcdaac74','file','less',0,NULL,0,0,3),(560,'variables.less',NULL,'c38a234a-3295-4dea-ac80-07145b0f1461','application/octet-stream',22563,NULL,546,'2024-04-11 10:27:07','2024-04-11 10:27:07',NULL,'e4/e5/eq/f6/fk','c38a234a-3295-4dea-ac80-07145b0f1461','file','less',0,NULL,0,0,3),(561,'fonts',NULL,'fonts',NULL,1085661,NULL,530,'2024-04-11 10:27:08','2024-04-11 10:27:10',NULL,'e4/e5/eq/fl',NULL,'folder',NULL,0,NULL,0,0,3),(562,'fontawesome-webfont.eot',NULL,'107058c2-94f0-4e0c-94f0-49800f1aa94f','application/octet-stream',165742,NULL,561,'2024-04-11 10:27:08','2024-04-11 10:27:08',NULL,'e4/e5/eq/fl/fm','107058c2-94f0-4e0c-94f0-49800f1aa94f','file','eot',0,NULL,0,0,3),(563,'fontawesome-webfont.svg',NULL,'3a3b4a47-9dcf-451e-971c-f42e35249cf0','image/svg+xml',444379,NULL,561,'2024-04-11 10:27:08','2024-04-11 10:27:08',NULL,'e4/e5/eq/fl/fn','3a3b4a47-9dcf-451e-971c-f42e35249cf0','image','svg',0,NULL,0,0,3),(564,'fontawesome-webfont.ttf',NULL,'9e83b45f-443f-417c-b7c1-eea98e16b8f0','application/octet-stream',165548,NULL,561,'2024-04-11 10:27:09','2024-04-11 10:27:09',NULL,'e4/e5/eq/fl/fo','9e83b45f-443f-417c-b7c1-eea98e16b8f0','file','ttf',0,NULL,0,0,3),(565,'fontawesome-webfont.woff',NULL,'d34d621a-c1bc-4de3-95b3-3f38dfa247cf','application/font-woff',98024,NULL,561,'2024-04-11 10:27:09','2024-04-11 10:27:09',NULL,'e4/e5/eq/fl/fp','d34d621a-c1bc-4de3-95b3-3f38dfa247cf','file','woff',0,NULL,0,0,3),(566,'fontawesome-webfont.woff2',NULL,'044b53f1-0134-4ab4-99e1-30ea08855945','application/octet-stream',77160,NULL,561,'2024-04-11 10:27:09','2024-04-11 10:27:09',NULL,'e4/e5/eq/fl/fq','044b53f1-0134-4ab4-99e1-30ea08855945','file','woff2',0,NULL,0,0,3),(567,'FontAwesome.otf',NULL,'64f99b57-b955-4831-b56b-625a4e3bf227','application/octet-stream',134808,NULL,561,'2024-04-11 10:27:10','2024-04-11 10:27:10',NULL,'e4/e5/eq/fl/fr','64f99b57-b955-4831-b56b-625a4e3bf227','file','otf',0,NULL,0,0,3),(568,'css',NULL,'css',NULL,68414,NULL,530,'2024-04-11 10:27:10','2024-04-11 10:27:11',NULL,'e4/e5/eq/fs',NULL,'folder',NULL,0,NULL,0,0,3),(569,'font-awesome.css',NULL,'63fb1a6a-fed6-4d62-bd91-446bce118946','text/css',37414,NULL,568,'2024-04-11 10:27:10','2024-04-11 10:27:10',NULL,'e4/e5/eq/fs/ft','63fb1a6a-fed6-4d62-bd91-446bce118946','text','css',0,NULL,0,0,3),(570,'font-awesome.min.css',NULL,'7f239d8e-b8db-4887-b044-27d5185e5649','text/css',31000,NULL,568,'2024-04-11 10:27:11','2024-04-11 10:27:11',NULL,'e4/e5/eq/fs/fu','7f239d8e-b8db-4887-b044-27d5185e5649','text','css',0,NULL,0,0,3),(571,'css',NULL,'css',NULL,179378,NULL,509,'2024-04-11 10:27:11','2024-04-11 10:27:12',NULL,'e4/e5/fv',NULL,'folder',NULL,0,NULL,0,0,3),(572,'aos.css',NULL,'72e21948-d557-42a9-89a0-5b7908a903b2','text/css',25983,NULL,571,'2024-04-11 10:27:11','2024-04-11 10:27:11',NULL,'e4/e5/fv/fw','72e21948-d557-42a9-89a0-5b7908a903b2','text','css',0,NULL,0,0,3),(573,'bootstrap.min.css',NULL,'215d22ed-633c-4e43-8fa3-b6f24a954bbf','text/css',150996,NULL,571,'2024-04-11 10:27:11','2024-04-11 10:27:11',NULL,'e4/e5/fv/fx','215d22ed-633c-4e43-8fa3-b6f24a954bbf','text','css',0,NULL,0,0,3),(574,'custom.css',NULL,'34ad488f-22d1-4ac9-917d-a6c10c7b60ac','text/css',2399,NULL,571,'2024-04-11 10:27:12','2024-04-11 10:27:12',NULL,'e4/e5/fv/fy','34ad488f-22d1-4ac9-917d-a6c10c7b60ac','text','css',0,NULL,0,0,3),(575,'columns.txt',NULL,'c3f36e87-a73a-4c99-b54d-367b6e08fe38','text/plain',1485,NULL,NULL,'2024-04-11 11:36:57','2024-04-11 11:36:57',NULL,'fz','c3f36e87-a73a-4c99-b54d-367b6e08fe38','text','txt',0,NULL,0,0,5),(576,'Data_Train.csv',NULL,'c50ac824-bcdd-439b-a140-68be65ce2780','text/csv',15922679,NULL,NULL,'2024-04-11 11:37:03','2024-04-11 11:37:03',NULL,'g0','c50ac824-bcdd-439b-a140-68be65ce2780','text','csv',0,NULL,0,0,5),(577,'Financial Resilience through Predictive Analytics A Case Study of Loan Default Prediction in Banking.docx',NULL,'c616092c-c353-4478-b1fe-b3685ecc1252','application/vnd.openxmlformats-officedocument.wordprocessingml.document',25827,NULL,NULL,'2024-04-11 11:37:04','2024-04-11 16:03:28',NULL,'g1','c616092c-c353-4478-b1fe-b3685ecc1252','word','docx',0,'XeiWY4wTdNuonYR',0,0,5),(578,'Shyam.xls',NULL,'a04694c0-e681-4286-a15e-e0ca255ca48a','application/vnd.ms-excel',101376,NULL,NULL,'2024-04-11 11:37:05','2024-04-11 16:53:39',NULL,'g2','a04694c0-e681-4286-a15e-e0ca255ca48a','spreadsheet','xls',0,'V8Gm2SFvgWyNaPX',0,0,5),(579,'logo22.png',NULL,'f0e9729e-d303-4ba9-b2f4-a8f730ecf843.png','image/png',11239,NULL,NULL,'2024-04-15 12:30:49','2024-04-15 12:30:49',NULL,NULL,'branding_media','image','png',1,NULL,0,12,1),(580,'logo3.png',NULL,'7047103e-51e7-408a-b3c4-38010e76afb5.png','image/png',2853,NULL,NULL,'2024-04-15 12:35:09','2024-04-15 12:35:09',NULL,NULL,'branding_media','image','png',1,NULL,0,12,1),(581,'logo22.png',NULL,'bf41c3ab-ccf2-4212-8661-13dc2e8c3d99.png','image/png',11239,NULL,NULL,'2024-04-15 12:37:17','2024-04-15 12:37:17',NULL,NULL,'branding_media','image','png',1,NULL,0,12,1),(582,'logo3.png',NULL,'2dfa26ac-2544-41af-b20d-72f5405774f3.png','image/png',2853,NULL,NULL,'2024-04-15 12:37:34','2024-04-15 12:37:34',NULL,NULL,'branding_media','image','png',1,NULL,0,12,1),(584,'GMT20240228-050257_Recording_1920x1080.mp4',NULL,'24c87b71-38c5-4043-81be-7d8c9708f849','video/mp4',133921170,NULL,NULL,'2024-04-16 12:38:10','2024-04-16 12:38:10',NULL,'g8','24c87b71-38c5-4043-81be-7d8c9708f849','video','mp4',0,NULL,0,0,1),(585,'index - Copy.html',NULL,'82419dc3-c3eb-4e88-8a09-a1c977c9c836','text/html',885,NULL,497,'2024-04-17 11:07:15','2024-04-17 11:07:35',NULL,'dr/dt/g9','82419dc3-c3eb-4e88-8a09-a1c977c9c836','text','html',0,NULL,0,0,1),(586,'WhatsApp Image 2024-05-01 at 16.08.52.jpeg',NULL,'55cef85d-cede-43d8-bfe1-7f992b0b9955.jpeg','image/jpeg',77728,NULL,NULL,'2024-05-07 07:00:04','2024-05-07 07:00:04',NULL,NULL,'branding_media','image','jpeg',1,NULL,0,12,1),(587,'WhatsApp_Image_2024-05-01_at_16.08.52-removebg-preview.png',NULL,'97dfd41e-5e6e-4902-9e08-9ee6cdc8f784.png','image/png',47493,NULL,NULL,'2024-05-07 07:02:06','2024-05-07 07:02:06',NULL,NULL,'branding_media','image','png',1,NULL,0,12,1),(588,'WhatsApp_Image_2024-05-01_at_16.08.52-removebg-preview.png',NULL,'0dce0e63-2220-41f9-b888-b3c0fe6b8f15.png','image/png',47493,NULL,NULL,'2024-05-07 07:02:25','2024-05-07 07:02:25',NULL,NULL,'branding_media','image','png',1,NULL,0,12,1),(589,'WhatsApp_Image_2024-05-01_at_16.08.52__1_-removebg-preview.png',NULL,'13cae6c3-760b-4a5e-88e2-381ff6fc88e2.png','image/png',46036,NULL,NULL,'2024-05-07 07:04:04','2024-05-07 07:04:04',NULL,NULL,'branding_media','image','png',1,NULL,0,12,1),(590,'WhatsApp_Image_2024-05-01_at_16.08.52__2_-removebg-preview.png',NULL,'ddb71701-153c-4580-acd5-39500c676614.png','image/png',13223,NULL,NULL,'2024-05-07 07:05:46','2024-05-07 07:05:46',NULL,NULL,'branding_media','image','png',1,NULL,0,12,1);
/*!40000 ALTER TABLE `file_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `file_entry_models`
--

DROP TABLE IF EXISTS `file_entry_models`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `file_entry_models` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `file_entry_id` int unsigned NOT NULL,
  `model_id` int unsigned NOT NULL,
  `model_type` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `owner` tinyint(1) NOT NULL DEFAULT '0',
  `permissions` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uploadable_unique` (`file_entry_id`,`model_id`,`model_type`),
  KEY `file_entry_models_owner_index` (`owner`)
) ENGINE=InnoDB AUTO_INCREMENT=958 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `file_entry_models`
--

LOCK TABLES `file_entry_models` WRITE;
/*!40000 ALTER TABLE `file_entry_models` DISABLE KEYS */;
INSERT INTO `file_entry_models` VALUES (2,2,1,'user','2024-03-21 18:32:30','2024-03-21 18:32:30',1,NULL),(3,3,1,'user','2024-03-21 18:32:33','2024-03-21 18:32:33',1,NULL),(4,4,2,'user','2024-03-22 07:12:15','2024-03-22 07:12:15',1,NULL),(15,15,1,'user','2024-03-22 08:41:43','2024-03-22 08:41:43',1,NULL),(16,16,1,'user','2024-03-22 08:41:57','2024-03-22 08:41:57',1,NULL),(17,17,1,'user','2024-03-22 08:42:07','2024-03-22 08:42:07',1,NULL),(18,18,1,'user','2024-03-22 08:46:42','2024-03-22 08:46:42',1,NULL),(19,19,1,'user','2024-03-22 08:46:52','2024-03-22 08:46:52',1,NULL),(20,20,3,'user','2024-03-22 09:11:27','2024-03-22 09:11:50',1,NULL),(21,21,3,'user','2024-03-22 09:11:27','2024-03-22 09:11:42',1,NULL),(22,22,3,'user','2024-03-22 09:11:27','2024-03-22 09:11:38',1,NULL),(23,23,3,'user','2024-03-22 09:11:27','2024-03-22 09:11:27',1,NULL),(24,24,3,'user','2024-03-22 09:11:30','2024-03-22 09:11:30',1,NULL),(25,25,3,'user','2024-03-22 09:11:31','2024-03-22 09:11:31',1,NULL),(26,26,3,'user','2024-03-22 09:11:31','2024-03-22 09:11:31',1,NULL),(27,27,3,'user','2024-03-22 09:11:32','2024-03-22 09:11:32',1,NULL),(28,28,3,'user','2024-03-22 09:11:33','2024-03-22 09:11:33',1,NULL),(29,29,3,'user','2024-03-22 09:11:36','2024-03-22 09:11:36',1,NULL),(30,30,3,'user','2024-03-22 09:11:36','2024-03-22 09:11:36',1,NULL),(31,31,3,'user','2024-03-22 09:11:37','2024-03-22 09:11:37',1,NULL),(32,32,3,'user','2024-03-22 09:11:37','2024-03-22 09:11:37',1,NULL),(33,33,3,'user','2024-03-22 09:11:37','2024-03-22 09:11:37',1,NULL),(34,34,3,'user','2024-03-22 09:11:38','2024-03-22 09:11:38',1,NULL),(35,35,3,'user','2024-03-22 09:11:38','2024-03-22 09:11:38',1,NULL),(36,36,3,'user','2024-03-22 09:11:39','2024-03-22 09:11:42',1,NULL),(37,37,3,'user','2024-03-22 09:11:39','2024-03-22 09:11:39',1,NULL),(38,38,3,'user','2024-03-22 09:11:39','2024-03-22 09:11:39',1,NULL),(39,39,3,'user','2024-03-22 09:11:40','2024-03-22 09:11:40',1,NULL),(40,40,3,'user','2024-03-22 09:11:40','2024-03-22 09:11:40',1,NULL),(41,41,3,'user','2024-03-22 09:11:40','2024-03-22 09:11:40',1,NULL),(42,42,3,'user','2024-03-22 09:11:41','2024-03-22 09:11:41',1,NULL),(43,43,3,'user','2024-03-22 09:11:41','2024-03-22 09:11:41',1,NULL),(44,44,3,'user','2024-03-22 09:11:41','2024-03-22 09:11:41',1,NULL),(45,45,3,'user','2024-03-22 09:11:42','2024-03-22 09:11:42',1,NULL),(46,46,3,'user','2024-03-22 09:11:42','2024-03-22 09:11:42',1,NULL),(47,47,3,'user','2024-03-22 09:11:43','2024-03-22 09:11:50',1,NULL),(48,48,3,'user','2024-03-22 09:11:43','2024-03-22 09:11:50',1,NULL),(49,49,3,'user','2024-03-22 09:11:43','2024-03-22 09:11:43',1,NULL),(50,50,3,'user','2024-03-22 09:11:43','2024-03-22 09:11:43',1,NULL),(51,51,3,'user','2024-03-22 09:11:43','2024-03-22 09:11:43',1,NULL),(52,52,3,'user','2024-03-22 09:11:44','2024-03-22 09:11:44',1,NULL),(53,53,3,'user','2024-03-22 09:11:44','2024-03-22 09:11:47',1,NULL),(54,54,3,'user','2024-03-22 09:11:44','2024-03-22 09:11:44',1,NULL),(55,55,3,'user','2024-03-22 09:11:44','2024-03-22 09:11:44',1,NULL),(56,56,3,'user','2024-03-22 09:11:45','2024-03-22 09:11:45',1,NULL),(57,57,3,'user','2024-03-22 09:11:45','2024-03-22 09:11:45',1,NULL),(58,58,3,'user','2024-03-22 09:11:46','2024-03-22 09:11:46',1,NULL),(59,59,3,'user','2024-03-22 09:11:46','2024-03-22 09:11:46',1,NULL),(60,60,3,'user','2024-03-22 09:11:47','2024-03-22 09:11:47',1,NULL),(61,61,3,'user','2024-03-22 09:11:47','2024-03-22 09:11:50',1,NULL),(62,62,3,'user','2024-03-22 09:11:47','2024-03-22 09:11:47',1,NULL),(63,63,3,'user','2024-03-22 09:11:47','2024-03-22 09:11:47',1,NULL),(64,64,3,'user','2024-03-22 09:11:48','2024-03-22 09:11:48',1,NULL),(65,65,3,'user','2024-03-22 09:11:48','2024-03-22 09:11:48',1,NULL),(66,66,3,'user','2024-03-22 09:11:49','2024-03-22 09:11:49',1,NULL),(67,67,3,'user','2024-03-22 09:11:49','2024-03-22 09:11:49',1,NULL),(68,68,3,'user','2024-03-22 09:11:49','2024-03-22 09:11:49',1,NULL),(69,69,3,'user','2024-03-22 09:11:50','2024-03-22 09:11:50',1,NULL),(70,70,3,'user','2024-03-22 09:11:50','2024-03-22 09:11:50',1,NULL),(71,71,1,'user','2024-03-22 09:33:39','2024-03-22 09:33:39',1,NULL),(72,72,1,'user','2024-03-22 09:34:28','2024-03-22 09:34:28',1,NULL),(78,78,6,'user','2024-03-22 17:06:21','2024-03-22 17:06:21',1,NULL),(79,79,6,'user','2024-03-22 17:06:22','2024-03-22 17:06:22',1,NULL),(81,81,6,'user','2024-03-22 17:07:43','2024-03-22 17:07:43',1,NULL),(82,82,6,'user','2024-03-22 17:08:33','2024-03-22 17:08:33',1,NULL),(84,84,6,'user','2024-03-22 17:43:04','2024-03-22 17:43:04',1,NULL),(139,20,4,'user','2024-03-26 04:25:13','2024-03-26 04:25:13',0,'{\"view\":true,\"edit\":false,\"download\":true}'),(140,21,4,'user','2024-03-26 04:25:13','2024-03-26 04:25:13',0,'{\"view\":true,\"edit\":false,\"download\":true}'),(141,22,4,'user','2024-03-26 04:25:13','2024-03-26 04:25:13',0,'{\"view\":true,\"edit\":false,\"download\":true}'),(142,23,4,'user','2024-03-26 04:25:13','2024-03-26 04:25:13',0,'{\"view\":true,\"edit\":false,\"download\":true}'),(143,24,4,'user','2024-03-26 04:25:13','2024-03-26 04:25:13',0,'{\"view\":true,\"edit\":false,\"download\":true}'),(144,25,4,'user','2024-03-26 04:25:13','2024-03-26 04:25:13',0,'{\"view\":true,\"edit\":false,\"download\":true}'),(145,26,4,'user','2024-03-26 04:25:13','2024-03-26 04:25:13',0,'{\"view\":true,\"edit\":false,\"download\":true}'),(146,27,4,'user','2024-03-26 04:25:13','2024-03-26 04:25:13',0,'{\"view\":true,\"edit\":false,\"download\":true}'),(147,28,4,'user','2024-03-26 04:25:13','2024-03-26 04:25:13',0,'{\"view\":true,\"edit\":false,\"download\":true}'),(148,29,4,'user','2024-03-26 04:25:13','2024-03-26 04:25:13',0,'{\"view\":true,\"edit\":false,\"download\":true}'),(149,30,4,'user','2024-03-26 04:25:13','2024-03-26 04:25:13',0,'{\"view\":true,\"edit\":false,\"download\":true}'),(150,31,4,'user','2024-03-26 04:25:13','2024-03-26 04:25:13',0,'{\"view\":true,\"edit\":false,\"download\":true}'),(151,32,4,'user','2024-03-26 04:25:13','2024-03-26 04:25:13',0,'{\"view\":true,\"edit\":false,\"download\":true}'),(152,33,4,'user','2024-03-26 04:25:13','2024-03-26 04:25:13',0,'{\"view\":true,\"edit\":false,\"download\":true}'),(153,34,4,'user','2024-03-26 04:25:13','2024-03-26 04:25:13',0,'{\"view\":true,\"edit\":false,\"download\":true}'),(154,35,4,'user','2024-03-26 04:25:13','2024-03-26 04:25:13',0,'{\"view\":true,\"edit\":false,\"download\":true}'),(155,36,4,'user','2024-03-26 04:25:13','2024-03-26 04:25:13',0,'{\"view\":true,\"edit\":false,\"download\":true}'),(156,37,4,'user','2024-03-26 04:25:13','2024-03-26 04:25:13',0,'{\"view\":true,\"edit\":false,\"download\":true}'),(157,38,4,'user','2024-03-26 04:25:13','2024-03-26 04:25:13',0,'{\"view\":true,\"edit\":false,\"download\":true}'),(158,39,4,'user','2024-03-26 04:25:13','2024-03-26 04:25:13',0,'{\"view\":true,\"edit\":false,\"download\":true}'),(159,40,4,'user','2024-03-26 04:25:13','2024-03-26 04:25:13',0,'{\"view\":true,\"edit\":false,\"download\":true}'),(160,41,4,'user','2024-03-26 04:25:13','2024-03-26 04:25:13',0,'{\"view\":true,\"edit\":false,\"download\":true}'),(161,42,4,'user','2024-03-26 04:25:13','2024-03-26 04:25:13',0,'{\"view\":true,\"edit\":false,\"download\":true}'),(162,43,4,'user','2024-03-26 04:25:13','2024-03-26 04:25:13',0,'{\"view\":true,\"edit\":false,\"download\":true}'),(163,44,4,'user','2024-03-26 04:25:13','2024-03-26 04:25:13',0,'{\"view\":true,\"edit\":false,\"download\":true}'),(164,45,4,'user','2024-03-26 04:25:13','2024-03-26 04:25:13',0,'{\"view\":true,\"edit\":false,\"download\":true}'),(165,46,4,'user','2024-03-26 04:25:13','2024-03-26 04:25:13',0,'{\"view\":true,\"edit\":false,\"download\":true}'),(166,47,4,'user','2024-03-26 04:25:13','2024-03-26 04:25:13',0,'{\"view\":true,\"edit\":false,\"download\":true}'),(167,48,4,'user','2024-03-26 04:25:13','2024-03-26 04:25:13',0,'{\"view\":true,\"edit\":false,\"download\":true}'),(168,49,4,'user','2024-03-26 04:25:13','2024-03-26 04:25:13',0,'{\"view\":true,\"edit\":false,\"download\":true}'),(169,50,4,'user','2024-03-26 04:25:13','2024-03-26 04:25:13',0,'{\"view\":true,\"edit\":false,\"download\":true}'),(170,51,4,'user','2024-03-26 04:25:13','2024-03-26 04:25:13',0,'{\"view\":true,\"edit\":false,\"download\":true}'),(171,52,4,'user','2024-03-26 04:25:13','2024-03-26 04:25:13',0,'{\"view\":true,\"edit\":false,\"download\":true}'),(172,53,4,'user','2024-03-26 04:25:13','2024-03-26 04:25:13',0,'{\"view\":true,\"edit\":false,\"download\":true}'),(173,54,4,'user','2024-03-26 04:25:13','2024-03-26 04:25:13',0,'{\"view\":true,\"edit\":false,\"download\":true}'),(174,55,4,'user','2024-03-26 04:25:13','2024-03-26 04:25:13',0,'{\"view\":true,\"edit\":false,\"download\":true}'),(175,56,4,'user','2024-03-26 04:25:13','2024-03-26 04:25:13',0,'{\"view\":true,\"edit\":false,\"download\":true}'),(176,57,4,'user','2024-03-26 04:25:13','2024-03-26 04:25:13',0,'{\"view\":true,\"edit\":false,\"download\":true}'),(177,58,4,'user','2024-03-26 04:25:13','2024-03-26 04:25:13',0,'{\"view\":true,\"edit\":false,\"download\":true}'),(178,59,4,'user','2024-03-26 04:25:13','2024-03-26 04:25:13',0,'{\"view\":true,\"edit\":false,\"download\":true}'),(179,60,4,'user','2024-03-26 04:25:13','2024-03-26 04:25:13',0,'{\"view\":true,\"edit\":false,\"download\":true}'),(180,61,4,'user','2024-03-26 04:25:13','2024-03-26 04:25:13',0,'{\"view\":true,\"edit\":false,\"download\":true}'),(181,62,4,'user','2024-03-26 04:25:13','2024-03-26 04:25:13',0,'{\"view\":true,\"edit\":false,\"download\":true}'),(182,63,4,'user','2024-03-26 04:25:13','2024-03-26 04:25:13',0,'{\"view\":true,\"edit\":false,\"download\":true}'),(183,64,4,'user','2024-03-26 04:25:13','2024-03-26 04:25:13',0,'{\"view\":true,\"edit\":false,\"download\":true}'),(184,65,4,'user','2024-03-26 04:25:13','2024-03-26 04:25:13',0,'{\"view\":true,\"edit\":false,\"download\":true}'),(185,66,4,'user','2024-03-26 04:25:13','2024-03-26 04:25:13',0,'{\"view\":true,\"edit\":false,\"download\":true}'),(186,67,4,'user','2024-03-26 04:25:13','2024-03-26 04:25:13',0,'{\"view\":true,\"edit\":false,\"download\":true}'),(187,68,4,'user','2024-03-26 04:25:13','2024-03-26 04:25:13',0,'{\"view\":true,\"edit\":false,\"download\":true}'),(188,69,4,'user','2024-03-26 04:25:13','2024-03-26 04:25:13',0,'{\"view\":true,\"edit\":false,\"download\":true}'),(189,70,4,'user','2024-03-26 04:25:13','2024-03-26 04:25:13',0,'{\"view\":true,\"edit\":false,\"download\":true}'),(190,139,3,'user','2024-03-26 04:50:42','2024-03-26 04:50:42',1,NULL),(191,140,3,'user','2024-03-26 04:53:38','2024-03-26 04:53:38',1,NULL),(192,141,3,'user','2024-03-26 04:55:30','2024-03-26 04:55:30',1,NULL),(193,142,3,'user','2024-03-26 04:56:39','2024-03-26 04:56:39',1,NULL),(194,143,3,'user','2024-03-26 04:57:31','2024-03-26 04:57:31',1,NULL),(205,154,8,'user','2024-03-26 05:50:47','2024-03-26 05:50:47',1,NULL),(207,155,8,'user','2024-03-26 06:01:19','2024-03-26 06:01:19',1,NULL),(219,167,3,'user','2024-03-26 06:10:54','2024-03-26 06:10:54',1,NULL),(220,168,8,'user','2024-03-26 06:28:56','2024-03-26 06:28:56',1,NULL),(221,169,8,'user','2024-03-26 06:31:24','2024-03-26 06:31:24',1,NULL),(222,170,5,'user','2024-03-26 07:03:26','2024-03-26 07:03:26',1,NULL),(223,140,8,'user','2024-03-26 07:07:25','2024-03-26 07:07:25',0,'{\"view\":true,\"edit\":false,\"download\":false}'),(224,154,1,'user','2024-03-26 07:10:23','2024-03-26 07:10:23',0,'{\"view\":true,\"edit\":false,\"download\":false}'),(225,154,3,'user','2024-03-26 07:10:23','2024-03-26 07:10:23',0,'{\"view\":true,\"edit\":false,\"download\":false}'),(226,171,8,'user','2024-03-26 07:20:22','2024-03-26 07:20:22',1,NULL),(227,172,8,'user','2024-03-26 07:20:22','2024-03-26 07:20:22',1,NULL),(228,173,8,'user','2024-03-26 07:22:18','2024-03-26 07:22:18',1,NULL),(229,20,8,'user','2024-03-26 07:38:26','2024-03-26 07:38:26',0,'{\"view\":true,\"download\":true}'),(230,21,8,'user','2024-03-26 07:38:26','2024-03-26 07:38:26',0,'{\"view\":true,\"download\":true}'),(231,22,8,'user','2024-03-26 07:38:26','2024-03-26 07:38:26',0,'{\"view\":true,\"download\":true}'),(232,23,8,'user','2024-03-26 07:38:26','2024-03-26 07:38:26',0,'{\"view\":true,\"download\":true}'),(233,24,8,'user','2024-03-26 07:38:26','2024-03-26 07:38:26',0,'{\"view\":true,\"download\":true}'),(234,25,8,'user','2024-03-26 07:38:26','2024-03-26 07:38:26',0,'{\"view\":true,\"download\":true}'),(235,26,8,'user','2024-03-26 07:38:26','2024-03-26 07:38:26',0,'{\"view\":true,\"download\":true}'),(236,27,8,'user','2024-03-26 07:38:26','2024-03-26 07:38:26',0,'{\"view\":true,\"download\":true}'),(237,28,8,'user','2024-03-26 07:38:26','2024-03-26 07:38:26',0,'{\"view\":true,\"download\":true}'),(238,29,8,'user','2024-03-26 07:38:26','2024-03-26 07:38:26',0,'{\"view\":true,\"download\":true}'),(239,30,8,'user','2024-03-26 07:38:26','2024-03-26 07:38:26',0,'{\"view\":true,\"download\":true}'),(240,31,8,'user','2024-03-26 07:38:26','2024-03-26 07:38:26',0,'{\"view\":true,\"download\":true}'),(241,32,8,'user','2024-03-26 07:38:26','2024-03-26 07:38:26',0,'{\"view\":true,\"download\":true}'),(242,33,8,'user','2024-03-26 07:38:26','2024-03-26 07:38:26',0,'{\"view\":true,\"download\":true}'),(243,34,8,'user','2024-03-26 07:38:26','2024-03-26 07:38:26',0,'{\"view\":true,\"download\":true}'),(244,35,8,'user','2024-03-26 07:38:26','2024-03-26 07:38:26',0,'{\"view\":true,\"download\":true}'),(245,36,8,'user','2024-03-26 07:38:26','2024-03-26 07:38:26',0,'{\"view\":true,\"download\":true}'),(246,37,8,'user','2024-03-26 07:38:26','2024-03-26 07:38:26',0,'{\"view\":true,\"download\":true}'),(247,38,8,'user','2024-03-26 07:38:26','2024-03-26 07:38:26',0,'{\"view\":true,\"download\":true}'),(248,39,8,'user','2024-03-26 07:38:26','2024-03-26 07:38:26',0,'{\"view\":true,\"download\":true}'),(249,40,8,'user','2024-03-26 07:38:26','2024-03-26 07:38:26',0,'{\"view\":true,\"download\":true}'),(250,41,8,'user','2024-03-26 07:38:26','2024-03-26 07:38:26',0,'{\"view\":true,\"download\":true}'),(251,42,8,'user','2024-03-26 07:38:26','2024-03-26 07:38:26',0,'{\"view\":true,\"download\":true}'),(252,43,8,'user','2024-03-26 07:38:26','2024-03-26 07:38:26',0,'{\"view\":true,\"download\":true}'),(253,44,8,'user','2024-03-26 07:38:26','2024-03-26 07:38:26',0,'{\"view\":true,\"download\":true}'),(254,45,8,'user','2024-03-26 07:38:26','2024-03-26 07:38:26',0,'{\"view\":true,\"download\":true}'),(255,46,8,'user','2024-03-26 07:38:26','2024-03-26 07:38:26',0,'{\"view\":true,\"download\":true}'),(256,47,8,'user','2024-03-26 07:38:26','2024-03-26 07:38:26',0,'{\"view\":true,\"download\":true}'),(257,48,8,'user','2024-03-26 07:38:26','2024-03-26 07:38:26',0,'{\"view\":true,\"download\":true}'),(258,49,8,'user','2024-03-26 07:38:26','2024-03-26 07:38:26',0,'{\"view\":true,\"download\":true}'),(259,50,8,'user','2024-03-26 07:38:26','2024-03-26 07:38:26',0,'{\"view\":true,\"download\":true}'),(260,51,8,'user','2024-03-26 07:38:26','2024-03-26 07:38:26',0,'{\"view\":true,\"download\":true}'),(261,52,8,'user','2024-03-26 07:38:26','2024-03-26 07:38:26',0,'{\"view\":true,\"download\":true}'),(262,53,8,'user','2024-03-26 07:38:26','2024-03-26 07:38:26',0,'{\"view\":true,\"download\":true}'),(263,54,8,'user','2024-03-26 07:38:26','2024-03-26 07:38:26',0,'{\"view\":true,\"download\":true}'),(264,55,8,'user','2024-03-26 07:38:26','2024-03-26 07:38:26',0,'{\"view\":true,\"download\":true}'),(265,56,8,'user','2024-03-26 07:38:26','2024-03-26 07:38:26',0,'{\"view\":true,\"download\":true}'),(266,57,8,'user','2024-03-26 07:38:26','2024-03-26 07:38:26',0,'{\"view\":true,\"download\":true}'),(267,58,8,'user','2024-03-26 07:38:26','2024-03-26 07:38:26',0,'{\"view\":true,\"download\":true}'),(268,59,8,'user','2024-03-26 07:38:26','2024-03-26 07:38:26',0,'{\"view\":true,\"download\":true}'),(269,60,8,'user','2024-03-26 07:38:26','2024-03-26 07:38:26',0,'{\"view\":true,\"download\":true}'),(270,61,8,'user','2024-03-26 07:38:26','2024-03-26 07:38:26',0,'{\"view\":true,\"download\":true}'),(271,62,8,'user','2024-03-26 07:38:26','2024-03-26 07:38:26',0,'{\"view\":true,\"download\":true}'),(272,63,8,'user','2024-03-26 07:38:26','2024-03-26 07:38:26',0,'{\"view\":true,\"download\":true}'),(273,64,8,'user','2024-03-26 07:38:26','2024-03-26 07:38:26',0,'{\"view\":true,\"download\":true}'),(274,65,8,'user','2024-03-26 07:38:26','2024-03-26 07:38:26',0,'{\"view\":true,\"download\":true}'),(275,66,8,'user','2024-03-26 07:38:26','2024-03-26 07:38:26',0,'{\"view\":true,\"download\":true}'),(276,67,8,'user','2024-03-26 07:38:26','2024-03-26 07:38:26',0,'{\"view\":true,\"download\":true}'),(277,68,8,'user','2024-03-26 07:38:26','2024-03-26 07:38:26',0,'{\"view\":true,\"download\":true}'),(278,69,8,'user','2024-03-26 07:38:26','2024-03-26 07:38:26',0,'{\"view\":true,\"download\":true}'),(279,70,8,'user','2024-03-26 07:38:26','2024-03-26 07:38:26',0,'{\"view\":true,\"download\":true}'),(280,174,8,'user','2024-03-26 07:44:29','2024-03-26 07:44:29',1,NULL),(281,175,8,'user','2024-03-26 07:44:39','2024-03-26 07:44:39',1,NULL),(282,176,8,'user','2024-03-26 07:44:40','2024-03-26 07:44:40',1,NULL),(283,177,5,'user','2024-03-26 08:01:29','2024-03-26 08:01:29',1,NULL),(284,178,5,'user','2024-03-26 08:01:30','2024-03-26 08:01:30',1,NULL),(285,179,5,'user','2024-03-26 08:02:34','2024-03-26 08:02:34',1,NULL),(286,180,5,'user','2024-03-26 08:02:42','2024-03-26 08:02:42',1,NULL),(287,181,3,'user','2024-03-26 09:27:00','2024-03-26 09:27:00',1,NULL),(288,182,3,'user','2024-03-26 09:27:00','2024-03-26 09:27:00',1,NULL),(552,446,5,'user','2024-03-27 12:44:40','2024-03-27 12:44:40',1,NULL),(554,140,4,'user','2024-03-27 13:15:25','2024-03-27 13:15:25',0,'{\"view\":true,\"edit\":false,\"download\":true}'),(811,448,10,'user','2024-03-27 16:40:38','2024-03-27 16:40:38',1,NULL),(813,450,10,'user','2024-03-27 16:50:30','2024-03-27 16:50:30',1,NULL),(814,451,10,'user','2024-03-27 16:53:29','2024-03-27 16:53:29',1,NULL),(815,452,10,'user','2024-03-27 16:56:32','2024-03-27 16:56:32',1,NULL),(816,453,10,'user','2024-03-27 17:08:22','2024-03-27 17:08:22',1,NULL),(817,454,3,'user','2024-03-28 13:49:20','2024-03-28 13:49:20',1,NULL),(825,462,1,'user','2024-04-08 00:19:29','2024-04-08 00:19:29',1,NULL),(826,463,1,'user','2024-04-08 00:29:29','2024-04-08 00:29:29',1,NULL),(828,465,1,'user','2024-04-08 05:04:44','2024-04-08 05:04:44',1,NULL),(829,466,1,'user','2024-04-08 05:04:44','2024-04-08 05:04:44',1,NULL),(830,467,1,'user','2024-04-08 05:04:53','2024-04-08 05:04:53',1,NULL),(831,468,1,'user','2024-04-08 05:04:53','2024-04-08 05:04:53',1,NULL),(832,469,1,'user','2024-04-08 05:13:33','2024-04-08 05:13:33',1,NULL),(833,470,1,'user','2024-04-08 05:13:49','2024-04-08 05:13:49',1,NULL),(834,471,1,'user','2024-04-08 05:13:56','2024-04-08 05:13:56',1,NULL),(835,472,1,'user','2024-04-08 11:16:33','2024-04-08 11:16:33',1,NULL),(836,473,1,'user','2024-04-08 11:52:17','2024-04-08 11:52:17',1,NULL),(837,474,1,'user','2024-04-08 11:53:33','2024-04-08 11:53:33',1,NULL),(840,477,1,'user','2024-04-09 07:53:29','2024-04-09 07:53:29',1,NULL),(841,478,1,'user','2024-04-09 13:09:03','2024-04-09 13:09:03',1,NULL),(854,491,8,'user','2024-04-11 06:41:29','2024-04-11 06:41:29',1,NULL),(855,492,8,'user','2024-04-11 06:43:12','2024-04-11 06:43:12',1,NULL),(856,493,3,'user','2024-04-11 07:50:54','2024-04-11 07:50:54',1,NULL),(857,142,8,'user','2024-04-11 08:41:37','2024-04-11 08:41:37',0,'{\"view\":true,\"edit\":false,\"download\":false}'),(858,143,8,'user','2024-04-11 08:41:37','2024-04-11 08:41:37',0,'{\"view\":true,\"edit\":false,\"download\":false}'),(860,495,1,'user','2024-04-11 08:54:13','2024-04-11 08:54:14',1,NULL),(861,496,1,'user','2024-04-11 08:54:13','2024-04-11 08:54:13',1,NULL),(862,497,1,'user','2024-04-11 08:54:13','2024-04-11 08:54:14',1,NULL),(863,498,1,'user','2024-04-11 08:54:13','2024-04-11 08:54:13',1,NULL),(864,499,1,'user','2024-04-11 08:54:14','2024-04-11 08:54:14',1,NULL),(866,501,8,'user','2024-04-11 09:11:23','2024-04-11 09:11:23',1,NULL),(867,502,1,'user','2024-04-11 09:18:21','2024-04-11 09:18:21',1,NULL),(869,503,1,'user','2024-04-11 09:45:21','2024-04-11 09:45:21',1,NULL),(870,504,1,'user','2024-04-11 09:45:21','2024-04-11 09:45:21',1,NULL),(871,505,1,'user','2024-04-11 09:45:21','2024-04-11 09:45:21',1,NULL),(872,506,1,'user','2024-04-11 09:45:21','2024-04-11 09:45:21',1,NULL),(873,507,1,'user','2024-04-11 09:45:21','2024-04-11 09:45:21',1,NULL),(875,508,3,'user','2024-04-11 10:26:46','2024-04-11 10:27:12',1,NULL),(876,509,3,'user','2024-04-11 10:26:46','2024-04-11 10:27:12',1,NULL),(877,510,3,'user','2024-04-11 10:26:46','2024-04-11 10:26:46',1,NULL),(878,511,3,'user','2024-04-11 10:26:48','2024-04-11 10:26:48',1,NULL),(879,512,3,'user','2024-04-11 10:26:48','2024-04-11 10:26:48',1,NULL),(880,513,3,'user','2024-04-11 10:26:48','2024-04-11 10:26:48',1,NULL),(881,514,3,'user','2024-04-11 10:26:49','2024-04-11 10:26:55',1,NULL),(882,515,3,'user','2024-04-11 10:26:49','2024-04-11 10:26:49',1,NULL),(883,516,3,'user','2024-04-11 10:26:49','2024-04-11 10:26:49',1,NULL),(884,517,3,'user','2024-04-11 10:26:50','2024-04-11 10:26:50',1,NULL),(885,518,3,'user','2024-04-11 10:26:50','2024-04-11 10:26:50',1,NULL),(886,519,3,'user','2024-04-11 10:26:51','2024-04-11 10:26:51',1,NULL),(887,520,3,'user','2024-04-11 10:26:51','2024-04-11 10:26:51',1,NULL),(888,521,3,'user','2024-04-11 10:26:52','2024-04-11 10:26:52',1,NULL),(889,522,3,'user','2024-04-11 10:26:52','2024-04-11 10:26:52',1,NULL),(890,523,3,'user','2024-04-11 10:26:53','2024-04-11 10:26:53',1,NULL),(891,524,3,'user','2024-04-11 10:26:53','2024-04-11 10:26:53',1,NULL),(892,525,3,'user','2024-04-11 10:26:53','2024-04-11 10:26:53',1,NULL),(893,526,3,'user','2024-04-11 10:26:54','2024-04-11 10:26:54',1,NULL),(894,527,3,'user','2024-04-11 10:26:54','2024-04-11 10:26:54',1,NULL),(895,528,3,'user','2024-04-11 10:26:55','2024-04-11 10:26:55',1,NULL),(896,529,3,'user','2024-04-11 10:26:55','2024-04-11 10:26:55',1,NULL),(897,530,3,'user','2024-04-11 10:26:56','2024-04-11 10:27:11',1,NULL),(898,531,3,'user','2024-04-11 10:26:56','2024-04-11 10:27:01',1,NULL),(899,532,3,'user','2024-04-11 10:26:56','2024-04-11 10:26:56',1,NULL),(900,533,3,'user','2024-04-11 10:26:56','2024-04-11 10:26:56',1,NULL),(901,534,3,'user','2024-04-11 10:26:56','2024-04-11 10:26:56',1,NULL),(902,535,3,'user','2024-04-11 10:26:57','2024-04-11 10:26:57',1,NULL),(903,536,3,'user','2024-04-11 10:26:57','2024-04-11 10:26:57',1,NULL),(904,537,3,'user','2024-04-11 10:26:58','2024-04-11 10:26:58',1,NULL),(905,538,3,'user','2024-04-11 10:26:58','2024-04-11 10:26:58',1,NULL),(906,539,3,'user','2024-04-11 10:26:59','2024-04-11 10:26:59',1,NULL),(907,540,3,'user','2024-04-11 10:26:59','2024-04-11 10:26:59',1,NULL),(908,541,3,'user','2024-04-11 10:27:00','2024-04-11 10:27:00',1,NULL),(909,542,3,'user','2024-04-11 10:27:00','2024-04-11 10:27:00',1,NULL),(910,543,3,'user','2024-04-11 10:27:01','2024-04-11 10:27:01',1,NULL),(911,544,3,'user','2024-04-11 10:27:01','2024-04-11 10:27:01',1,NULL),(912,545,3,'user','2024-04-11 10:27:01','2024-04-11 10:27:01',1,NULL),(913,546,3,'user','2024-04-11 10:27:02','2024-04-11 10:27:07',1,NULL),(914,547,3,'user','2024-04-11 10:27:02','2024-04-11 10:27:02',1,NULL),(915,548,3,'user','2024-04-11 10:27:02','2024-04-11 10:27:02',1,NULL),(916,549,3,'user','2024-04-11 10:27:03','2024-04-11 10:27:03',1,NULL),(917,550,3,'user','2024-04-11 10:27:03','2024-04-11 10:27:03',1,NULL),(918,551,3,'user','2024-04-11 10:27:03','2024-04-11 10:27:03',1,NULL),(919,552,3,'user','2024-04-11 10:27:04','2024-04-11 10:27:04',1,NULL),(920,553,3,'user','2024-04-11 10:27:04','2024-04-11 10:27:04',1,NULL),(921,554,3,'user','2024-04-11 10:27:05','2024-04-11 10:27:05',1,NULL),(922,555,3,'user','2024-04-11 10:27:05','2024-04-11 10:27:05',1,NULL),(923,556,3,'user','2024-04-11 10:27:05','2024-04-11 10:27:05',1,NULL),(924,557,3,'user','2024-04-11 10:27:06','2024-04-11 10:27:06',1,NULL),(925,558,3,'user','2024-04-11 10:27:06','2024-04-11 10:27:06',1,NULL),(926,559,3,'user','2024-04-11 10:27:07','2024-04-11 10:27:07',1,NULL),(927,560,3,'user','2024-04-11 10:27:07','2024-04-11 10:27:07',1,NULL),(928,561,3,'user','2024-04-11 10:27:08','2024-04-11 10:27:10',1,NULL),(929,562,3,'user','2024-04-11 10:27:08','2024-04-11 10:27:08',1,NULL),(930,563,3,'user','2024-04-11 10:27:08','2024-04-11 10:27:08',1,NULL),(931,564,3,'user','2024-04-11 10:27:09','2024-04-11 10:27:09',1,NULL),(932,565,3,'user','2024-04-11 10:27:09','2024-04-11 10:27:09',1,NULL),(933,566,3,'user','2024-04-11 10:27:09','2024-04-11 10:27:09',1,NULL),(934,567,3,'user','2024-04-11 10:27:10','2024-04-11 10:27:10',1,NULL),(935,568,3,'user','2024-04-11 10:27:10','2024-04-11 10:27:11',1,NULL),(936,569,3,'user','2024-04-11 10:27:10','2024-04-11 10:27:10',1,NULL),(937,570,3,'user','2024-04-11 10:27:11','2024-04-11 10:27:11',1,NULL),(938,571,3,'user','2024-04-11 10:27:11','2024-04-11 10:27:12',1,NULL),(939,572,3,'user','2024-04-11 10:27:11','2024-04-11 10:27:11',1,NULL),(940,573,3,'user','2024-04-11 10:27:11','2024-04-11 10:27:11',1,NULL),(941,574,3,'user','2024-04-11 10:27:12','2024-04-11 10:27:12',1,NULL),(942,575,5,'user','2024-04-11 11:36:57','2024-04-11 11:36:57',1,NULL),(943,576,5,'user','2024-04-11 11:37:03','2024-04-11 11:37:03',1,NULL),(944,577,5,'user','2024-04-11 11:37:04','2024-04-11 11:37:04',1,NULL),(945,578,5,'user','2024-04-11 11:37:05','2024-04-11 11:37:05',1,NULL),(946,579,1,'user','2024-04-15 12:30:49','2024-04-15 12:30:49',1,NULL),(947,580,1,'user','2024-04-15 12:35:09','2024-04-15 12:35:09',1,NULL),(948,581,1,'user','2024-04-15 12:37:17','2024-04-15 12:37:17',1,NULL),(949,582,1,'user','2024-04-15 12:37:34','2024-04-15 12:37:34',1,NULL),(951,584,1,'user','2024-04-16 12:38:10','2024-04-16 12:38:10',1,NULL),(952,585,1,'user','2024-04-17 11:07:15','2024-04-17 11:07:15',1,NULL),(953,586,1,'user','2024-05-07 07:00:04','2024-05-07 07:00:04',1,NULL),(954,587,1,'user','2024-05-07 07:02:06','2024-05-07 07:02:06',1,NULL),(955,588,1,'user','2024-05-07 07:02:25','2024-05-07 07:02:25',1,NULL),(956,589,1,'user','2024-05-07 07:04:04','2024-05-07 07:04:04',1,NULL),(957,590,1,'user','2024-05-07 07:05:46','2024-05-07 07:05:46',1,NULL);
/*!40000 ALTER TABLE `file_entry_models` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `folders`
--

DROP TABLE IF EXISTS `folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `folders` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `user_id` int DEFAULT NULL,
  `folder_id` int DEFAULT NULL,
  `share_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `folders_user_id_index` (`user_id`),
  KEY `folders_share_id_index` (`share_id`),
  KEY `folders_folder_id_index` (`folder_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `folders`
--

LOCK TABLES `folders` WRITE;
/*!40000 ALTER TABLE `folders` DISABLE KEYS */;
/*!40000 ALTER TABLE `folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `follows`
--

DROP TABLE IF EXISTS `follows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `follows` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `follower_id` int NOT NULL,
  `followed_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `follows_follower_id_followed_id_unique` (`follower_id`,`followed_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `follows`
--

LOCK TABLES `follows` WRITE;
/*!40000 ALTER TABLE `follows` DISABLE KEYS */;
/*!40000 ALTER TABLE `follows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoices`
--

DROP TABLE IF EXISTS `invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoices` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `subscription_id` int NOT NULL,
  `paid` tinyint(1) NOT NULL,
  `uuid` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `invoices_subscription_id_index` (`subscription_id`),
  KEY `invoices_uuid_index` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoices`
--

LOCK TABLES `invoices` WRITE;
/*!40000 ALTER TABLE `invoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_reserved_at_index` (`queue`,`reserved_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `localizations`
--

DROP TABLE IF EXISTS `localizations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `localizations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `language` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `localizations_name_index` (`name`),
  KEY `localizations_language_index` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `localizations`
--

LOCK TABLES `localizations` WRITE;
/*!40000 ALTER TABLE `localizations` DISABLE KEYS */;
INSERT INTO `localizations` VALUES (1,'English','2024-02-18 14:41:31','2024-02-18 14:41:31','en');
/*!40000 ALTER TABLE `localizations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=135 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2014_10_12_200000_add_two_factor_columns_to_users_table',1),(4,'2015_04_127_156842_create_social_profiles_table',1),(5,'2015_04_13_140047_create_files_models_table',1),(6,'2015_04_18_134312_create_folders_table',1),(7,'2015_05_29_131549_create_settings_table',1),(8,'2015_10_23_164355_create_follows_table',1),(9,'2016_04_06_140017_add_folder_id_index_to_files_table',1),(10,'2016_05_12_190852_create_tags_table',1),(11,'2016_05_12_190958_create_taggables_table',1),(12,'2016_05_26_170044_create_uploads_table',1),(13,'2016_05_27_143158_create_uploadables_table',1),(14,'2016_07_14_153703_create_groups_table',1),(15,'2016_07_14_153921_create_user_group_table',1),(16,'2016_10_17_152159_add_space_available_column_to_users_table',1),(17,'2017_07_02_120142_create_pages_table',1),(18,'2017_07_11_122825_create_localizations_table',1),(19,'2017_08_26_131330_add_private_field_to_settings_table',1),(20,'2017_09_17_144728_add_columns_to_users_table',1),(21,'2017_09_17_152854_make_password_column_nullable',1),(22,'2017_09_30_152855_make_settings_value_column_nullable',1),(23,'2017_10_01_152897_add_public_column_to_uploads_table',1),(24,'2017_12_04_132911_add_avatar_column_to_users_table',1),(25,'2018_01_10_140732_create_subscriptions_table',1),(26,'2018_01_10_140746_add_billing_to_users_table',1),(27,'2018_01_10_161706_create_billing_plans_table',1),(28,'2018_06_05_142932_rename_files_table_to_file_entries',1),(29,'2018_06_06_141629_rename_file_entries_table_columns',1),(30,'2018_06_07_141630_merge_files_and_folders_tables',1),(31,'2018_07_03_114346_create_shareable_links_table',1),(32,'2018_07_24_113757_add_available_space_to_billing_plans_table',1),(33,'2018_07_24_124254_add_available_space_to_users_table',1),(34,'2018_07_26_142339_rename_groups_to_roles',1),(35,'2018_07_26_142842_rename_user_role_table_columns_to_roles',1),(36,'2018_08_07_124200_rename_uploads_to_file_entries',1),(37,'2018_08_07_124327_refactor_file_entries_columns',1),(38,'2018_08_07_130653_add_folder_path_column_to_file_entries_table',1),(39,'2018_08_07_140328_delete_legacy_root_folders',1),(40,'2018_08_07_140330_move_folders_into_file_entries_table',1),(41,'2018_08_07_140440_migrate_file_entry_users_to_many_to_many',1),(42,'2018_08_10_142251_update_users_table_to_v2',1),(43,'2018_08_15_132225_move_uploads_into_subfolders',1),(44,'2018_08_16_111525_transform_file_entries_records_to_v2',1),(45,'2018_08_31_104145_rename_uploadables_table',1),(46,'2018_08_31_104325_rename_file_entry_models_table_columns',1),(47,'2018_11_26_171703_add_type_and_title_columns_to_pages_table',1),(48,'2018_12_01_144233_change_unique_index_on_tags_table',1),(49,'2019_02_16_150049_delete_old_seo_settings',1),(50,'2019_02_24_141457_create_jobs_table',1),(51,'2019_03_11_162627_add_preview_token_to_file_entries_table',1),(52,'2019_03_12_160803_add_thumbnail_column_to_file_entries_table',1),(53,'2019_03_16_161836_add_paypal_id_column_to_billing_plans_table',1),(54,'2019_05_14_120930_index_description_column_in_file_entries_table',1),(55,'2019_06_08_120504_create_custom_domains_table',1),(56,'2019_06_13_140318_add_user_id_column_to_pages_table',1),(57,'2019_06_15_114320_rename_pages_table_to_custom_pages',1),(58,'2019_06_18_133933_create_permissions_table',1),(59,'2019_06_18_134203_create_permissionables_table',1),(60,'2019_06_18_135822_rename_permissions_columns',1),(61,'2019_07_08_122001_create_css_themes_table',1),(62,'2019_07_20_141752_create_invoices_table',1),(63,'2019_08_19_121112_add_global_column_to_custom_domains_table',1),(64,'2019_09_13_141123_change_plan_amount_to_float',1),(65,'2019_10_14_171943_add_index_to_username_column',1),(66,'2019_10_20_143522_create_comments_table',1),(67,'2019_10_23_134520_create_notifications_table',1),(68,'2019_11_21_144956_add_resource_id_and_type_to_custom_domains_table',1),(69,'2019_12_14_000001_create_personal_access_tokens_table',1),(70,'2019_12_14_194512_rename_public_path_column_to_disk_prefix',1),(71,'2019_12_24_165237_change_file_size_column_default_value_to_0',1),(72,'2019_12_28_190836_update_file_entry_models_table_to_v2',1),(73,'2019_12_28_191105_move_user_file_entry_table_records_to_file_entry_models',1),(74,'2020_01_26_143733_create_notification_subscriptions_table',1),(75,'2020_03_03_140720_add_language_col_to_localizations_table',1),(76,'2020_03_03_143142_add_lang_code_to_existing_localizations',1),(77,'2020_04_14_163347_add_hidden_column_to_plans_table',1),(78,'2020_06_27_180040_add_verified_at_column_to_users_table',1),(79,'2020_06_27_180253_move_confirmed_column_to_email_verified_at',1),(80,'2020_07_15_144024_fix_issues_with_migration_to_laravel_7',1),(81,'2020_07_22_165126_create_workspaces_table',1),(82,'2020_07_23_145652_create_workspace_invites_table',1),(83,'2020_07_23_164502_create_workspace_user_table',1),(84,'2020_07_26_165349_add_columns_to_roles_table',1),(85,'2020_07_29_141418_add_workspace_id_column_to_workspaceable_models',1),(86,'2020_07_30_152330_add_type_column_to_permissions_table',1),(87,'2020_08_29_165057_add_hide_nav_column_to_custom_pages_table',1),(88,'2020_12_14_155112_create_table_fcm_tokens',1),(89,'2020_12_17_124109_subscribe_users_to_notifications',1),(90,'2021_04_22_172459_add_internal_columm_to_roles_table',1),(91,'2021_05_03_173446_add_deleted_column_to_comments_table',1),(92,'2021_05_12_164940_add_advanced_column_to_permissions_table',1),(93,'2021_06_04_143405_add_workspace_id_col_to_custom_domains_table',1),(94,'2021_06_04_143406_add_workspace_id_col_to_custom_pages_table',1),(95,'2021_06_04_143406_add_workspace_id_col_to_file_entries_table',1),(96,'2021_06_05_182202_create_csv_exports_table',1),(97,'2021_06_18_161030_rename_gateway_col_in_subscriptions_table',1),(98,'2021_06_19_111939_add_owner_id_column_to_file_entries_table',1),(99,'2021_06_19_112035_materialize_owner_id_in_file_entries_table',1),(100,'2021_07_06_144837_migrate_landing_page_config_to_20',1),(101,'2021_07_17_093454_add_created_at_col_to_user_role_table',1),(102,'2021_09_30_123758_slugify_tag_name_column',1),(103,'2021_10_13_132915_add_token_cols_to_social_profiles_table',1),(104,'2022_04_08_122553_change_default_workspace_id_from_null_to_zero',1),(105,'2022_04_23_115027_add_id_to_all_menus',1),(106,'2022_07_30_181012_transform_landing_page_cta',1),(107,'2022_08_10_200344_add_produce_id_column_to_subscriptions_table',1),(108,'2022_08_11_160401_create_prices_table',1),(109,'2022_08_11_170041_create_products_table',1),(110,'2022_08_11_170117_move_billing_plans_to_products_and_prices_tables',1),(111,'2022_08_17_184337_add_card_expires_column_to_users_table',1),(112,'2022_08_20_125319_add_paypal_id_to_users_table',1),(113,'2022_08_24_192127_migrate_common_settings_to_v3',1),(114,'2022_09_03_164633_add_expires_at_column_to_personal_access_tokens_table',1),(115,'2022_09_27_124344_change_available_space_column_to_big_int',1),(116,'2022_09_28_121423_migrate_notif_settings_from_array_to_obj',1),(117,'2022_11_06_115107_increase_file_name_column_length',1),(118,'2023_03_17_175502_add_user_id_to_tags_table',1),(119,'2023_03_17_180355_change_name_index_to_name_user_id_in_tags_table',1),(120,'2023_05_09_124348_create_bans_table',1),(121,'2023_05_09_133514_add_banned_at_column_to_users_table',1),(122,'2023_05_11_200001_add_two_factor_columns_to_users_table',1),(123,'2023_05_13_132948_active_sessions_table',1),(124,'2023_05_16_150805_change_social_profiles_token_length',1),(125,'2023_06_10_131615_add_pos_and_neg_votes_to_comments_table',1),(126,'2023_06_10_132135_add_comment_ratings_table',1),(127,'2023_06_11_124655_create_comment_reports_table',1),(128,'2023_08_08_103123_add_timestamp_indexes_to_comments_table',1),(129,'2023_08_31_124910_update_model_types_from_namespace_to_string',1),(130,'2023_09_14_172633_create_failed_jobs_table',1),(131,'2023_12_10_124446_upgrade_css_themes_table_to_v3',1),(132,'2023_12_18_141540_add_search_indices_to_users_table',1),(133,'2023_12_19_122804_add_uuid_column_to_failed_jobs_table',1),(134,'2023_12_23_121618_encrypt_secret_settings',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notification_subscriptions`
--

DROP TABLE IF EXISTS `notification_subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notification_subscriptions` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `notif_id` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int NOT NULL,
  `channels` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `notification_subscriptions_notif_id_index` (`notif_id`),
  KEY `notification_subscriptions_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification_subscriptions`
--

LOCK TABLES `notification_subscriptions` WRITE;
/*!40000 ALTER TABLE `notification_subscriptions` DISABLE KEYS */;
INSERT INTO `notification_subscriptions` VALUES ('1a7b22a1-cf82-4fdb-b1b4-9d0a140ef340','W01',7,'{\"email\":true,\"browser\":true,\"mobile\":true}'),('22685925-7fc5-4263-8608-a45a61dcbf8e','A01',12,'{\"email\":true,\"browser\":true,\"mobile\":true}'),('272b126a-0130-44ab-982f-217822a3fe8e','W01',6,'{\"email\":true,\"browser\":true,\"mobile\":true}'),('2eaddf83-7be6-4251-9d06-a52215d0c5b5','W01',11,'{\"email\":true,\"browser\":true,\"mobile\":true}'),('3393ec85-3425-4489-a62d-2ac66752a03c','A01',11,'{\"email\":true,\"browser\":true,\"mobile\":true}'),('341f6a2f-8175-441d-8c3c-fd01b89a13eb','W01',2,'{\"email\":true,\"browser\":true,\"mobile\":true}'),('3ca90052-6524-49da-b3ae-ef0fd46d62fd','A01',4,'{\"email\":true,\"browser\":true,\"mobile\":true}'),('48522401-cd37-492c-9d13-dda793953440','A01',3,'{\"email\":true,\"browser\":true,\"mobile\":true}'),('4b647c3f-31e4-4de9-9c5e-a4d50cdf650b','A01',8,'{\"email\":true,\"browser\":true,\"mobile\":true}'),('54b5ba26-b444-46f9-81aa-13a5d9bb4053','W01',5,'{\"email\":true,\"browser\":true,\"mobile\":true}'),('56600488-d345-4205-a8ab-0b8cc027daf2','W01',13,'{\"email\":true,\"browser\":true,\"mobile\":true}'),('56b21d61-bc9d-428b-b050-391cddb6056c','W01',10,'{\"email\":true,\"browser\":true,\"mobile\":true}'),('5ce07ba3-fd9d-445a-a599-178f31c3afbc','A01',10,'{\"email\":true,\"browser\":true,\"mobile\":true}'),('7e16b998-eab7-4e3b-9578-1ce1174cbdd9','W01',9,'{\"email\":true,\"browser\":true,\"mobile\":true}'),('8cb8ff36-154e-4ba3-9f27-82952878948b','A01',6,'{\"email\":true,\"browser\":true,\"mobile\":true}'),('8d040210-8ba4-4f4c-b6ca-6ec81af618a3','W01',12,'{\"email\":true,\"browser\":true,\"mobile\":true}'),('8f017fe9-7d35-42c3-92d5-c5a37ba5ec0a','A01',7,'{\"email\":true,\"browser\":true,\"mobile\":true}'),('96c7ae58-2600-4b04-8242-431ecbe3281a','A01',13,'{\"email\":true,\"browser\":true,\"mobile\":true}'),('99efb11a-69ac-4e84-b4f1-504002aa1e0e','W01',3,'{\"email\":true,\"browser\":true,\"mobile\":true}'),('a532378a-c3b8-4ac2-9596-7ac049922120','W01',8,'{\"email\":true,\"browser\":true,\"mobile\":true}'),('b95557d2-61f9-49ca-b672-1ab8d159777c','A01',5,'{\"email\":true,\"browser\":true,\"mobile\":true}'),('d0338f32-bf05-4329-bb09-4135f28a8874','A01',9,'{\"email\":true,\"browser\":true,\"mobile\":true}'),('e42d275b-d17a-4a5c-9091-072e9ba5674a','W01',4,'{\"email\":true,\"browser\":true,\"mobile\":true}'),('fe823295-86df-454d-a08a-88ed7ea9c184','A01',2,'{\"email\":true,\"browser\":true,\"mobile\":true}');
/*!40000 ALTER TABLE `notification_subscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notifications` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint unsigned NOT NULL,
  `data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
INSERT INTO `notifications` VALUES ('36508db7-0014-498c-ad90-5132e0f889e8','Common\\Workspaces\\Notifications\\WorkspaceInvitation','user',8,'{\"inviteId\":\"9bc7efa6-ffca-47b7-ab35-30e0dd049c32\",\"lines\":[{\"content\":\"Akhil invited you to join `Test.`\"},{\"content\":\"Accepting the invitation will give you access to links, domains, overlays and other resources in this workspace.\"}],\"buttonActions\":[{\"label\":\"Join\",\"action\":\"join\",\"color\":\"primary\"},{\"label\":\"Decline\",\"action\":\"decline\",\"color\":\"error\"}]}',NULL,'2024-04-11 10:10:18','2024-04-11 10:10:18'),('8a07f58b-60d2-4843-a7d1-f5a167a9136c','Common\\Csv\\CsvExportReadyNotif','user',1,'{\"mainAction\":{\"Label\":\"Download\",\"action\":\"http:\\/\\/13.201.20.171\\/csv\\/download\\/2\"},\"lines\":[{\"content\":\"\\u201cUsers\\u201c CSV export is ready to download.\"},{\"content\":\"This download link will expire in one day.\"}]}','2024-04-08 00:06:22','2024-03-29 08:33:48','2024-04-08 00:06:22'),('a44c12bf-c38d-4a44-a68e-08afac2b01dc','Common\\Csv\\CsvExportReadyNotif','user',1,'{\"mainAction\":{\"Label\":\"Download\",\"action\":\"http:\\/\\/13.201.20.171\\/csv\\/download\\/1\"},\"lines\":[{\"content\":\"\\u201cUsers\\u201c CSV export is ready to download.\"},{\"content\":\"This download link will expire in one day.\"}]}','2024-03-22 08:42:47','2024-03-22 08:33:23','2024-03-22 08:42:47');
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissionables`
--

DROP TABLE IF EXISTS `permissionables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permissionables` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `permission_id` int NOT NULL,
  `permissionable_id` int NOT NULL,
  `permissionable_type` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `restrictions` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissionable_unique` (`permission_id`,`permissionable_id`,`permissionable_type`),
  KEY `permissionables_permission_id_index` (`permission_id`),
  KEY `permissionables_permissionable_id_index` (`permissionable_id`),
  KEY `permissionables_permissionable_type_index` (`permissionable_type`)
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissionables`
--

LOCK TABLES `permissionables` WRITE;
/*!40000 ALTER TABLE `permissionables` DISABLE KEYS */;
INSERT INTO `permissionables` VALUES (1,1,1,'user',NULL),(2,4,1,'role','[]'),(3,9,1,'role','[]'),(4,18,1,'role','[]'),(5,49,1,'role','[]'),(6,48,1,'role','[]'),(8,52,1,'role','[]'),(9,32,1,'role','[]'),(10,37,1,'role','[]'),(11,22,1,'role','[]'),(12,42,1,'role','[]'),(13,9,2,'role','[]'),(14,48,2,'role','[]'),(15,26,2,'role','[]'),(16,32,2,'role','[]'),(17,37,2,'role','[]'),(18,22,2,'role','[]'),(19,17,3,'role',NULL),(20,18,3,'role',NULL),(21,19,3,'role',NULL),(22,20,3,'role',NULL),(23,21,3,'role',NULL),(24,45,3,'role',NULL),(25,46,3,'role',NULL),(26,47,3,'role',NULL),(27,17,4,'role',NULL),(28,18,4,'role',NULL),(29,19,4,'role',NULL),(30,20,4,'role',NULL),(31,21,4,'role',NULL),(32,17,5,'role',NULL),(33,52,1,'product','[]'),(34,41,3,'product','[]'),(35,42,3,'product','[{\"name\":\"count\",\"value\":1},{\"name\":\"member_count\",\"value\":-1}]'),(36,43,3,'product','[]'),(37,44,3,'product','[]'),(38,48,3,'product','[]'),(39,49,3,'product','[]'),(40,50,3,'product','[]'),(41,41,4,'product','[]'),(42,42,4,'product','[{\"name\":\"count\",\"value\":1},{\"name\":\"member_count\",\"value\":-1}]'),(43,43,4,'product','[]'),(44,44,4,'product','[]'),(45,48,4,'product','[]'),(46,49,4,'product','[]'),(47,50,4,'product','[]'),(48,41,5,'product','[]'),(49,42,5,'product','[{\"name\":\"count\",\"value\":1},{\"name\":\"member_count\",\"value\":-1}]'),(50,43,5,'product','[]'),(51,44,5,'product','[]'),(52,48,5,'product','[]'),(53,49,5,'product','[]'),(54,50,5,'product','[]'),(55,52,5,'product','[]'),(56,41,6,'product','[]'),(57,42,6,'product','[{\"name\":\"count\",\"value\":1},{\"name\":\"member_count\",\"value\":-1}]'),(58,43,6,'product','[]'),(59,44,6,'product','[]'),(60,48,6,'product','[]'),(61,49,6,'product','[]'),(62,50,6,'product','[]'),(63,52,6,'product','[]'),(64,41,7,'product','[]'),(65,42,7,'product','[{\"name\":\"count\",\"value\":1},{\"name\":\"member_count\",\"value\":-1}]'),(66,43,7,'product','[]'),(67,44,7,'product','[]'),(68,48,7,'product','[]'),(69,49,7,'product','[]'),(70,50,7,'product','[]'),(71,52,7,'product','[]'),(72,41,8,'product','[]'),(73,42,8,'product','[{\"name\":\"count\",\"value\":1},{\"name\":\"member_count\",\"value\":-1}]'),(74,43,8,'product','[]'),(75,44,8,'product','[]'),(76,48,8,'product','[]'),(77,49,8,'product','[]'),(78,50,8,'product','[]'),(79,52,8,'product','[]'),(80,41,9,'product','[]'),(81,42,9,'product','[{\"name\":\"count\",\"value\":1},{\"name\":\"member_count\",\"value\":-1}]'),(82,43,9,'product','[]'),(83,44,9,'product','[]'),(84,48,9,'product','[]'),(85,49,9,'product','[]'),(86,50,9,'product','[]'),(87,52,9,'product','[]'),(88,4,14,'product','[]'),(89,41,14,'product','[]'),(90,42,14,'product','[{\"name\":\"count\",\"value\":5},{\"name\":\"member_count\",\"value\":10}]'),(91,43,14,'product','[]'),(92,44,14,'product','[]'),(93,48,14,'product','[]'),(94,49,14,'product','[]'),(95,50,14,'product','[]'),(96,51,14,'product','[]'),(97,52,14,'product','[]'),(98,2,15,'product','[]'),(99,3,15,'product','[]'),(100,4,15,'product','[]'),(101,22,15,'product','[]'),(102,41,15,'product','[]'),(103,42,15,'product','[{\"name\":\"count\",\"value\":5},{\"name\":\"member_count\",\"value\":50}]'),(104,43,15,'product','[]'),(105,44,15,'product','[]'),(106,48,15,'product','[]'),(107,49,15,'product','[]'),(108,50,15,'product','[]'),(109,51,15,'product','[]'),(110,52,15,'product','[]'),(111,22,6,'user','[]'),(114,36,1,'role','[]'),(115,26,6,'user','[]'),(116,27,6,'user','[]'),(117,28,6,'user','[]'),(118,29,6,'user','[]'),(119,3,8,'user','[]');
/*!40000 ALTER TABLE `permissionables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permissions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `group` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `restrictions` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'sitewide',
  `advanced` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_unique` (`name`),
  KEY `permissions_advanced_index` (`advanced`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'admin','Super Admin','Give all permissions to user.','admin',NULL,'2024-02-18 14:41:30','2024-02-18 14:41:30','sitewide',0),(2,'admin.access','Access Admin','Required in order to access any admin area page.','admin',NULL,'2024-02-18 14:41:31','2024-02-18 14:41:31','sitewide',0),(3,'appearance.update','Update Appearance','Allows access to appearance editor.','admin',NULL,'2024-02-18 14:41:31','2024-02-18 14:41:31','sitewide',0),(4,'api.access','Access Api','Required in order for users to be able to use the API.','api',NULL,'2024-02-18 14:41:31','2024-02-18 14:41:31','sitewide',0),(5,'roles.view','View Roles','Allow viewing ALL roles, regardless of who is the owner.','roles',NULL,'2024-02-18 14:41:31','2024-02-18 14:41:31','sitewide',1),(6,'roles.create','Create Roles','Allow creating new roles, regardless of who is the owner.','roles',NULL,'2024-02-18 14:41:31','2024-02-18 14:41:31','sitewide',1),(7,'roles.update','Update Roles','Allow updating ALL roles, regardless of who is the owner.','roles',NULL,'2024-02-18 14:41:31','2024-02-18 14:41:31','sitewide',1),(8,'roles.delete','Delete Roles','Allow deleting ALL roles, regardless of who is the owner.','roles',NULL,'2024-02-18 14:41:31','2024-02-18 14:41:31','sitewide',1),(9,'custom_pages.view','View Custom Pages','Allow viewing of all pages on the site, regardless of who created them. User can view their own pages without this permission.','custom_pages',NULL,'2024-02-18 14:41:31','2024-02-18 14:41:31','sitewide',1),(10,'custom_pages.create','Create Custom Pages','Allow creating new custom pages, regardless of who is the owner.','custom_pages','[{\"name\":\"count\",\"type\":\"number\",\"description\":\"Maximum number of pages user will be able to create. Leave empty for unlimited.\"}]','2024-02-18 14:41:31','2024-02-18 14:41:31','sitewide',1),(11,'custom_pages.update','Update Custom Pages','Allow editing of all pages on the site, regardless of who created them. User can edit their own pages without this permission.','custom_pages',NULL,'2024-02-18 14:41:31','2024-02-18 14:41:31','sitewide',1),(12,'custom_pages.delete','Delete Custom Pages','Allow deleting of all pages on the site, regardless of who created them. User can delete their own pages without this permission.','custom_pages',NULL,'2024-02-18 14:41:31','2024-02-18 14:41:31','sitewide',1),(13,'custom_domains.view','View Custom Domains','Allow viewing all domains on the site, regardless of who created them. User can view their own domains without this permission.','custom_domains',NULL,'2024-02-18 14:41:31','2024-02-18 14:41:31','sitewide',1),(14,'custom_domains.create','Create Custom Domains','Allow user to connect their own custom domains.','custom_domains','[{\"name\":\"count\",\"type\":\"number\",\"description\":\"Maximum number of domains user will be able to create. Leave empty for unlimited.\"}]','2024-02-18 14:41:31','2024-02-18 14:41:31','sitewide',0),(15,'custom_domains.update','Update Custom Domains','Allow editing all domains on the site, regardless of who created them. User can edit their own domains without this permission.','custom_domains',NULL,'2024-02-18 14:41:31','2024-02-18 14:41:31','sitewide',1),(16,'custom_domains.delete','Delete Custom Domains','Allow deleting all domains on the site, regardless of who created them. User can delete their own domains without this permission.','custom_domains',NULL,'2024-02-18 14:41:31','2024-02-18 14:41:31','sitewide',1),(17,'files.view','View Files','Allow viewing all uploaded files on the site. Users can view their own uploads without this permission.','files',NULL,'2024-02-18 14:41:31','2024-02-18 14:41:31','sitewide',1),(18,'files.create','Create Files','Allow uploading files on the site. This permission is used by any page where it is possible for user to upload files.','files',NULL,'2024-02-18 14:41:31','2024-02-18 14:41:31','sitewide',1),(19,'files.update','Update Files','Allow editing all uploaded files on the site. Users can edit their own uploads without this permission.','files',NULL,'2024-02-18 14:41:31','2024-02-18 14:41:31','sitewide',1),(20,'files.delete','Delete Files','Allow deleting all uploaded files on the site. Users can delete their own uploads (where applicable) without this permission.','files',NULL,'2024-02-18 14:41:31','2024-02-18 14:41:31','sitewide',1),(21,'files.download','Download Files','Allow downloading all uploaded files on the site. Users can download their own uploads (where applicable) without this permission.','files',NULL,'2024-02-18 14:41:31','2024-02-18 14:41:31','sitewide',1),(22,'users.view','View Users','Allow viewing user profile pages on the site. User can view their own profile without this permission.','users',NULL,'2024-02-18 14:41:31','2024-02-18 14:41:31','sitewide',0),(23,'users.create','Create Users','Allow creating users from admin area. Users can register for new accounts without this permission. Registration can be disabled from settings page.','users',NULL,'2024-02-18 14:41:31','2024-02-18 14:41:31','sitewide',1),(24,'users.update','Update Users','Allow editing details of any user on the site. User can edit their own details without this permission.','users',NULL,'2024-02-18 14:41:31','2024-02-18 14:41:31','sitewide',1),(25,'users.delete','Delete Users','Allow deleting any user on the site. User can request deletion of their own account without this permission.','users',NULL,'2024-02-18 14:41:31','2024-02-18 14:41:31','sitewide',1),(26,'localizations.view','View Localizations','Allow viewing ALL localizations, regardless of who is the owner.','localizations',NULL,'2024-02-18 14:41:31','2024-02-18 14:41:31','sitewide',1),(27,'localizations.create','Create Localizations','Allow creating new localizations, regardless of who is the owner.','localizations',NULL,'2024-02-18 14:41:31','2024-02-18 14:41:31','sitewide',1),(28,'localizations.update','Update Localizations','Allow updating ALL localizations, regardless of who is the owner.','localizations',NULL,'2024-02-18 14:41:31','2024-02-18 14:41:31','sitewide',1),(29,'localizations.delete','Delete Localizations','Allow deleting ALL localizations, regardless of who is the owner.','localizations',NULL,'2024-02-18 14:41:31','2024-02-18 14:41:31','sitewide',1),(30,'settings.view','View Settings','Allow viewing ALL settings, regardless of who is the owner.','settings',NULL,'2024-02-18 14:41:31','2024-02-18 14:41:31','sitewide',1),(31,'settings.update','Update Settings','Allow updating ALL settings, regardless of who is the owner.','settings',NULL,'2024-02-18 14:41:31','2024-02-18 14:41:31','sitewide',1),(32,'plans.view','View Plans','Allow viewing ALL plans, regardless of who is the owner.','plans',NULL,'2024-02-18 14:41:31','2024-02-18 14:41:31','sitewide',1),(33,'plans.create','Create Plans','Allow creating new plans, regardless of who is the owner.','plans',NULL,'2024-02-18 14:41:31','2024-02-18 14:41:31','sitewide',1),(34,'plans.update','Update Plans','Allow updating ALL plans, regardless of who is the owner.','plans',NULL,'2024-02-18 14:41:31','2024-02-18 14:41:31','sitewide',1),(35,'plans.delete','Delete Plans','Allow deleting ALL plans, regardless of who is the owner.','plans',NULL,'2024-02-18 14:41:31','2024-02-18 14:41:31','sitewide',1),(36,'invoices.view','View Invoices','Allow viewing ALL invoices, regardless of who is the owner.','invoices',NULL,'2024-02-18 14:41:31','2024-02-18 14:41:31','sitewide',1),(37,'tags.view','View Tags','Allow viewing ALL tags, regardless of who is the owner.','tags',NULL,'2024-02-18 14:41:31','2024-02-18 14:41:31','sitewide',1),(38,'tags.create','Create Tags','Allow creating new tags, regardless of who is the owner.','tags',NULL,'2024-02-18 14:41:31','2024-02-18 14:41:31','sitewide',1),(39,'tags.update','Update Tags','Allow updating ALL tags, regardless of who is the owner.','tags',NULL,'2024-02-18 14:41:31','2024-02-18 14:41:31','sitewide',1),(40,'tags.delete','Delete Tags','Allow deleting ALL tags, regardless of who is the owner.','tags',NULL,'2024-02-18 14:41:31','2024-02-18 14:41:31','sitewide',1),(41,'workspaces.view','View Workspaces','Allow viewing ALL workspaces, regardless of who is the owner.','workspaces',NULL,'2024-02-18 14:41:31','2024-02-18 14:41:31','sitewide',0),(42,'workspaces.create','Create Workspaces','Allow creating new workspaces, regardless of who is the owner.','workspaces','[{\"name\":\"count\",\"type\":\"number\",\"description\":\"Maximum number of workspaces user will be able to create. Leave empty for unlimited.\"},{\"name\":\"member_count\",\"type\":\"number\",\"description\":\"Maximum number of members workspace is allowed to have.\"}]','2024-02-18 14:41:31','2024-02-18 14:41:31','sitewide',0),(43,'workspaces.update','Update Workspaces','Allow updating ALL workspaces, regardless of who is the owner.','workspaces',NULL,'2024-02-18 14:41:31','2024-02-18 14:41:31','sitewide',0),(44,'workspaces.delete','Delete Workspaces','Allow deleting ALL workspaces, regardless of who is the owner.','workspaces',NULL,'2024-02-18 14:41:31','2024-02-18 14:41:31','sitewide',0),(45,'workspace_members.invite','Invite Members','Allow user to invite new members into a workspace.','workspace_members',NULL,'2024-02-18 14:41:31','2024-02-18 14:41:31','workspace',0),(46,'workspace_members.update','Update Members','Allow user to change role of other members.','workspace_members',NULL,'2024-02-18 14:41:31','2024-02-18 14:41:31','workspace',0),(47,'workspace_members.delete','Delete Members','Allow user to remove members from workspace.','workspace_members',NULL,'2024-02-18 14:41:31','2024-02-18 14:41:31','workspace',0),(48,'links.view','View Links','Allow viewing ALL links, regardless of who is the owner.','links',NULL,'2024-02-18 14:41:31','2024-02-18 14:41:31','sitewide',0),(49,'links.create','Create Links','Allow creating new links, regardless of who is the owner.','links',NULL,'2024-02-18 14:41:31','2024-02-18 14:41:31','sitewide',0),(50,'links.update','Update Links','Allow updating ALL links, regardless of who is the owner.','links',NULL,'2024-02-18 14:41:31','2024-02-18 14:41:31','sitewide',0),(51,'links.delete','Delete Links','Allow deleting ALL links, regardless of who is the owner.','links',NULL,'2024-02-18 14:41:31','2024-02-18 14:41:31','sitewide',0),(52,'notifications.subscribe','Subscribe Notifications','Allows agents to subscribe to various conversation notifications.','notifications',NULL,'2024-02-18 14:41:31','2024-02-18 14:41:31','sitewide',0);
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prices`
--

DROP TABLE IF EXISTS `prices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prices` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `amount` decimal(13,2) NOT NULL,
  `currency` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `interval` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'month',
  `interval_count` int NOT NULL DEFAULT '1',
  `product_id` int NOT NULL,
  `stripe_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paypal_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `prices_product_id_index` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prices`
--

LOCK TABLES `prices` WRITE;
/*!40000 ALTER TABLE `prices` DISABLE KEYS */;
INSERT INTO `prices` VALUES (1,10.00,'USD','month',1,2,'price_1Ox7eySJXeWBhgezUeGt7Y1E',NULL,0,'2024-03-22 12:28:34','2024-03-22 19:57:44'),(2,99.00,'USD','year',1,2,'price_1Ox7ezSJXeWBhgezDLNV8pX4',NULL,0,'2024-03-22 12:28:34','2024-03-22 19:57:44'),(3,5.00,'USD','month',1,3,NULL,NULL,0,'2024-03-22 12:29:27','2024-03-22 12:29:27'),(4,49.00,'USD','year',1,3,NULL,NULL,0,'2024-03-22 12:29:27','2024-03-22 12:29:27'),(5,5.00,'USD','month',1,4,'price_1Ox7ezSJXeWBhgezlN55iZHV',NULL,0,'2024-03-22 12:29:42','2024-03-22 12:57:25'),(6,5.00,'USD','month',1,5,'price_1Ox7ezSJXeWBhgezQr9koMgl',NULL,0,'2024-03-22 12:30:07','2024-03-22 12:57:26'),(7,5.00,'USD','month',1,6,'price_1Ox7f0SJXeWBhgeziC4pdJCX',NULL,0,'2024-03-22 12:31:04','2024-03-22 12:57:26'),(8,5.00,'USD','month',1,7,'price_1Ox7f0SJXeWBhgeznNGB4NeL',NULL,0,'2024-03-22 12:32:11','2024-03-22 12:57:26'),(9,5.00,'USD','month',1,8,'price_1Ox7f1SJXeWBhgez4bjmds6l',NULL,0,'2024-03-22 12:33:01','2024-03-22 12:57:27'),(10,5.00,'USD','month',1,9,'price_1Ox7f1SJXeWBhgeztl3XRISr',NULL,0,'2024-03-22 12:33:08','2024-03-22 12:57:27'),(11,1000.00,'INR','month',1,10,'price_1Ox7f2SJXeWBhgezkrKyjwOj',NULL,0,'2024-03-22 12:36:59','2024-03-22 12:57:28'),(12,1000.00,'GNF','month',1,11,'price_1Ox7f2SJXeWBhgezNHgwSgOS',NULL,0,'2024-03-22 12:37:24','2024-03-22 12:57:28'),(13,1000.00,'INR','month',1,12,'price_1Ox7f3SJXeWBhgezmZQiZm1R',NULL,0,'2024-03-22 12:37:33','2024-03-22 12:57:29'),(14,1000.00,'INR','month',1,13,NULL,NULL,0,'2024-03-22 12:37:47','2024-03-22 12:37:47'),(15,20.00,'USD','month',1,14,'price_1OxBKCSJXeWBhgezm7QIDOPz',NULL,0,'2024-03-22 16:52:11','2024-03-22 19:59:49'),(16,199.00,'USD','year',1,14,'price_1OxBKCSJXeWBhgezlNqlaaDb',NULL,0,'2024-03-22 16:52:11','2024-03-22 19:59:49'),(17,30.00,'USD','month',1,15,'price_1OxBNqSJXeWBhgez0BceJOFu',NULL,0,'2024-03-22 16:55:57','2024-04-12 04:34:57'),(18,299.00,'USD','year',1,15,'price_1OxBNqSJXeWBhgez94qBrTIf',NULL,0,'2024-03-22 16:55:57','2024-04-12 04:34:57'),(19,0.10,'USD','month',1,16,'price_1OxEKuSJXeWBhgezBMIN8gsC',NULL,0,'2024-03-22 20:05:07','2024-03-22 20:05:09');
/*!40000 ALTER TABLE `prices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `feature_list` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `position` smallint NOT NULL DEFAULT '0',
  `recommended` tinyint(1) NOT NULL DEFAULT '0',
  `free` tinyint(1) NOT NULL DEFAULT '0',
  `hidden` tinyint(1) NOT NULL DEFAULT '0',
  `available_space` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `products_position_index` (`position`),
  KEY `products_free_index` (`free`),
  KEY `products_hidden_index` (`hidden`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Free',NULL,'5c524f38-e247-4a3f-8e4e-86d736e15aec','[\"Storage: 1 GB\",\"Access Control: Basic role-based access\",\"Sync Workspace: Limited to 2 users\",\"Support: Community forums\"]',0,0,1,0,524288000,'2024-03-22 12:27:06','2024-04-08 17:19:04'),(2,'Standard',NULL,'797b9749-2f93-44df-9dbb-8a342e074e85','[\"Storage: 50 GB\",\"Sync Workspace: Up to 5 users\",\"Developer API: Standard access with moderate rate limits\",\"Analytics and Reporting: Basic usage stats\",\"Support: Email support\"]',1,1,0,0,214748364800,'2024-03-22 12:28:34','2024-03-22 19:57:44'),(14,'Premium',NULL,'01af801b-3704-4f97-8db4-7e37dbe01335','[\"Storage: 200 GB\",\"Access Control: Advanced role-based access\",\"Sync Workspace: Up to 15 users\",\"Developer API: High rate limits and advanced endpoints\",\"Analytics and Reporting: Advanced analytics with custom reports\",\"Priority Support: Phone and email support\",\"Security Features: Multi-factor authentication, encryption at rest and in transit\"]',2,0,0,0,214748364800,'2024-03-22 16:52:11','2024-03-22 19:59:49'),(15,'Teams',NULL,'77276996-37fd-402d-8555-439e2652eb9b','[\"Storage: 1 TB\",\"Access Control: Advanced role-based access with custom roles\",\"Sync Workspace: Unlimited users\",\"Developer API: Premium access with highest rate limits\",\"Analytics and Reporting: Advanced analytics with custom reports and insights\",\"Priority Support: Dedicated account manager, 24\\/7 phone and email support\",\"Security Features: Advanced security features, including end-to-end encryption\",\"Custom Integrations: Support for custom integrations\"]',3,0,0,0,1099511627776,'2024-03-22 16:55:57','2024-03-22 20:02:40');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `legacy_permissions` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `default` tinyint unsigned NOT NULL DEFAULT '0',
  `guests` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'sitewide',
  `internal` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `groups_name_unique` (`name`),
  KEY `groups_default_index` (`default`),
  KEY `groups_guests_index` (`guests`),
  KEY `roles_internal_index` (`internal`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'users',NULL,1,0,'2024-02-18 14:41:32','2024-02-18 14:41:32',NULL,'sitewide',1),(2,'guests',NULL,0,1,'2024-02-18 14:41:32','2024-02-18 14:41:32',NULL,'sitewide',1),(3,'Workspace Admin',NULL,0,0,'2024-02-18 14:41:32','2024-02-18 14:41:32','Manage workspace content, members, settings and invite new members.','workspace',0),(4,'Workspace Editor',NULL,0,0,'2024-02-18 14:41:32','2024-02-18 14:41:32','Add, edit, move and delete workspace files.','workspace',0),(5,'Workspace Contributor',NULL,0,0,'2024-02-18 14:41:32','2024-02-18 14:41:32','Add and edit files.','workspace',0),(6,'Studio',NULL,0,0,'2024-04-25 09:37:32','2024-04-25 09:37:32',NULL,'sitewide',0);
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `private` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_name_unique` (`name`),
  KEY `settings_private_index` (`private`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'dates.format','short','2024-02-18 14:41:32','2024-02-18 14:41:32',0),(2,'dates.locale','en_US','2024-02-18 14:41:32','2024-02-18 14:41:32',0),(3,'dates.default_timezone','auto','2024-02-18 14:41:32','2024-02-18 14:41:32',0),(4,'locale.default','auto','2024-02-18 14:41:32','2024-02-18 14:41:32',0),(5,'social.google.enable','true','2024-02-18 14:41:32','2024-02-18 14:41:32',0),(6,'social.twitter.enable','true','2024-02-18 14:41:32','2024-02-18 14:41:32',0),(7,'social.facebook.enable','true','2024-02-18 14:41:32','2024-02-18 14:41:32',0),(8,'social.compact_buttons','true','2024-02-18 14:41:32','2024-02-18 14:41:32',0),(9,'realtime.enable','false','2024-02-18 14:41:32','2024-02-18 14:41:32',0),(10,'registration.disable','false','2024-02-18 14:41:32','2024-02-18 14:41:32',0),(11,'branding.logo_dark','https://jebin.s3.ap-south-1.amazonaws.com/storage/branding_media/13cae6c3-760b-4a5e-88e2-381ff6fc88e2.png','2024-02-18 14:41:32','2024-05-07 07:04:18',0),(12,'branding.logo_light','https://jebin.s3.ap-south-1.amazonaws.com/storage/branding_media/0dce0e63-2220-41f9-b888-b3c0fe6b8f15.png','2024-02-18 14:41:32','2024-05-07 07:02:29',0),(13,'i18n.default_localization','en','2024-02-18 14:41:32','2024-02-18 14:41:32',0),(14,'i18n.enable','true','2024-02-18 14:41:32','2024-02-18 14:41:32',0),(15,'logging.sentry_public','','2024-02-18 14:41:32','2024-02-18 14:41:32',0),(16,'realtime.pusher_key','','2024-02-18 14:41:32','2024-02-18 14:41:32',0),(17,'themes.user_change','true','2024-02-18 14:41:32','2024-02-18 14:41:32',0),(18,'themes.default_id','0','2024-02-18 14:41:32','2024-02-18 14:41:32',0),(19,'billing.enable','true','2024-02-18 14:41:32','2024-03-21 18:38:42',0),(20,'billing.paypal_test_mode','true','2024-02-18 14:41:32','2024-02-18 14:41:32',0),(21,'billing.stripe_test_mode','true','2024-02-18 14:41:32','2024-02-18 14:41:32',0),(22,'billing.stripe.enable','true','2024-02-18 14:41:32','2024-03-21 18:38:42',0),(23,'billing.paypal.enable','false','2024-02-18 14:41:32','2024-02-18 14:41:32',0),(24,'billing.accepted_cards','[\"visa\",\"mastercard\",\"american-express\",\"discover\"]','2024-02-18 14:41:32','2024-02-18 14:41:32',0),(25,'uploads.chunk','true','2024-02-18 14:41:32','2024-02-18 14:41:32',0),(26,'cookie_notice.enable','true','2024-02-18 14:41:32','2024-02-18 14:41:32',0),(27,'cookie_notice.position','bottom','2024-02-18 14:41:32','2024-02-18 14:41:32',0),(28,'cache.report_minutes','60','2024-02-18 14:41:32','2024-02-18 14:41:32',0),(29,'homepage.type','loginPage','2024-02-18 14:41:32','2024-03-22 06:16:44',0),(30,'menus','[{\"name\":\"Drive Sidebar\",\"positions\":[\"drive-sidebar\"],\"id\":\"v01akw\",\"items\":[{\"id\":\"wkd771\",\"type\":\"route\",\"order\":1,\"label\":\"Shared with me\",\"action\":\"\\/drive\\/shares\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"M9 13.75c-2.34 0-7 1.17-7 3.5V19h14v-1.75c0-2.33-4.66-3.5-7-3.5zM4.34 17c.84-.58 2.87-1.25 4.66-1.25s3.82.67 4.66 1.25H4.34zM9 12c1.93 0 3.5-1.57 3.5-3.5S10.93 5 9 5 5.5 6.57 5.5 8.5 7.07 12 9 12zm0-5c.83 0 1.5.67 1.5 1.5S9.83 10 9 10s-1.5-.67-1.5-1.5S8.17 7 9 7zm7.04 6.81c1.16.84 1.96 1.96 1.96 3.44V19h4v-1.75c0-2.02-3.5-3.17-5.96-3.44zM15 12c1.93 0 3.5-1.57 3.5-3.5S16.93 5 15 5c-.54 0-1.04.13-1.5.35.63.89 1 1.98 1 3.15s-.37 2.26-1 3.15c.46.22.96.35 1.5.35z\"}}]},{\"id\":\"jo2m1s\",\"type\":\"route\",\"order\":2,\"label\":\"Recent\",\"action\":\"\\/drive\\/recent\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"M13 3c-4.97 0-9 4.03-9 9H1l3.89 3.89.07.14L9 12H6c0-3.87 3.13-7 7-7s7 3.13 7 7-3.13 7-7 7c-1.93 0-3.68-.79-4.94-2.06l-1.42 1.42C8.27 19.99 10.51 21 13 21c4.97 0 9-4.03 9-9s-4.03-9-9-9zm-1 5v5l4.25 2.52.77-1.28-3.52-2.09V8z\"}}]},{\"id\":\"4e6cie\",\"type\":\"route\",\"order\":3,\"label\":\"Starred\",\"action\":\"\\/drive\\/starred\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"M12 17.27 18.18 21l-1.64-7.03L22 9.24l-7.19-.61L12 2 9.19 8.63 2 9.24l5.46 4.73L5.82 21 12 17.27z\"}}]},{\"id\":\"h5p54n\",\"type\":\"route\",\"order\":4,\"label\":\"Trash\",\"action\":\"\\/drive\\/trash\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"M16 9v10H8V9h8m-1.5-6h-5l-1 1H5v2h14V4h-3.5l-1-1zM18 7H6v12c0 1.1.9 2 2 2h8c1.1 0 2-.9 2-2V7z\"}}]},{\"id\":\"3NWlEv\",\"type\":\"link\",\"target\":\"_self\",\"label\":\"Developer API\",\"action\":\"http:\\/\\/13.201.20.171\\/api-docs\",\"roles\":[1],\"permissions\":[\"users.view\"],\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"M7 5h10v2h2V3c0-1.1-.9-1.99-2-1.99L7 1c-1.1 0-2 .9-2 2v4h2V5zm8.41 11.59L20 12l-4.59-4.59L14 8.83 17.17 12 14 15.17l1.41 1.42zM10 15.17 6.83 12 10 8.83 8.59 7.41 4 12l4.59 4.59L10 15.17zM17 19H7v-2H5v4c0 1.1.9 2 2 2h10c1.1 0 2-.9 2-2v-4h-2v2z\"}}]},{\"id\":\"8fmouy\",\"type\":\"link\",\"target\":\"_self\",\"label\":\"Momentify\",\"action\":\"https:\\/\\/dev.df0jqalrn76rb.amplifyapp.com\\/\",\"roles\":[1],\"permissions\":[\"api.access\"],\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"M6 22h12l-6-6z\"}},{\"tag\":\"path\",\"attr\":{\"d\":\"M21 3H3c-1.1 0-2 .9-2 2v12c0 1.1.9 2 2 2h4v-2H3V5h18v12h-4v2h4c1.1 0 2-.9 2-2V5c0-1.1-.9-2-2-2z\"}}]}]},{\"name\":\"footer\",\"id\":\"4tbwog\",\"positions\":[\"footer\"],\"items\":[{\"type\":\"route\",\"id\":\"c1sf2g\",\"position\":1,\"label\":\"Developers\",\"action\":\"\\/api-docs\",\"condition\":\"auth\"},{\"type\":\"route\",\"id\":\"rlz27v\",\"position\":2,\"label\":\"Privacy Policy\",\"action\":\"\\/pages\\/privacy-policy\"},{\"type\":\"route\",\"id\":\"p80pvk\",\"position\":3,\"label\":\"Terms of Service\",\"action\":\"\\/pages\\/terms-of-service\"},{\"type\":\"route\",\"id\":\"q8dtht\",\"position\":4,\"label\":\"Contact Us\",\"action\":\"\\/contact\"}]},{\"name\":\"Footer Social\",\"id\":\"odw4ah\",\"positions\":[\"footer-secondary\"],\"items\":[{\"type\":\"link\",\"id\":\"6j747e\",\"position\":1,\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"M19 3H5a2 2 0 00-2 2v14a2 2 0 002 2h7.621v-6.961h-2.343v-2.725h2.343V9.309c0-2.324 1.421-3.591 3.495-3.591.699-.002 1.397.034 2.092.105v2.43H16.78c-1.13 0-1.35.534-1.35 1.322v1.735h2.7l-.351 2.725h-2.365V21H19a2 2 0 002-2V5a2 2 0 00-2-2z\"}}],\"action\":\"https:\\/\\/facebook.com\"},{\"type\":\"link\",\"id\":\"jo96zw\",\"position\":2,\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"M24 4.3c-.898.4-1.8.7-2.8.802 1-.602 1.8-1.602 2.198-2.704-1 .602-2 1-3.097 1.204C19.3 2.602 18 2 16.6 2a4.907 4.907 0 00-4.9 4.898c0 .403 0 .801.102 1.102C7.7 7.8 4.102 5.898 1.7 2.898c-.5.704-.7 1.602-.7 2.5 0 1.704.898 3.204 2.2 4.102-.802-.102-1.598-.3-2.2-.602V9c0 2.398 1.7 4.398 3.898 4.8-.398.098-.796.2-1.296.2-.301 0-.602 0-.903-.102.602 2 2.403 3.403 4.602 3.403-1.7 1.3-3.801 2.097-6.102 2.097-.398 0-.8 0-1.199-.097C2.2 20.699 4.8 21.5 7.5 21.5c9.102 0 14-7.5 14-14v-.602c1-.699 1.8-1.597 2.5-2.597\"}}],\"action\":\"https:\\/\\/twitter.com\"},{\"type\":\"link\",\"id\":\"57dsea\",\"position\":3,\"action\":\"https:\\/\\/instagram.com\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"M12 0C8.74 0 8.333.015 7.053.072 5.775.132 4.905.333 4.14.63c-.789.306-1.459.717-2.126 1.384S.935 3.35.63 4.14C.333 4.905.131 5.775.072 7.053.012 8.333 0 8.74 0 12s.015 3.667.072 4.947c.06 1.277.261 2.148.558 2.913a5.885 5.885 0 001.384 2.126A5.868 5.868 0 004.14 23.37c.766.296 1.636.499 2.913.558C8.333 23.988 8.74 24 12 24s3.667-.015 4.947-.072c1.277-.06 2.148-.262 2.913-.558a5.898 5.898 0 002.126-1.384 5.86 5.86 0 001.384-2.126c.296-.765.499-1.636.558-2.913.06-1.28.072-1.687.072-4.947s-.015-3.667-.072-4.947c-.06-1.277-.262-2.149-.558-2.913a5.89 5.89 0 00-1.384-2.126A5.847 5.847 0 0019.86.63c-.765-.297-1.636-.499-2.913-.558C15.667.012 15.26 0 12 0zm0 2.16c3.203 0 3.585.016 4.85.071 1.17.055 1.805.249 2.227.415.562.217.96.477 1.382.896.419.42.679.819.896 1.381.164.422.36 1.057.413 2.227.057 1.266.07 1.646.07 4.85s-.015 3.585-.074 4.85c-.061 1.17-.256 1.805-.421 2.227a3.81 3.81 0 01-.899 1.382 3.744 3.744 0 01-1.38.896c-.42.164-1.065.36-2.235.413-1.274.057-1.649.07-4.859.07-3.211 0-3.586-.015-4.859-.074-1.171-.061-1.816-.256-2.236-.421a3.716 3.716 0 01-1.379-.899 3.644 3.644 0 01-.9-1.38c-.165-.42-.359-1.065-.42-2.235-.045-1.26-.061-1.649-.061-4.844 0-3.196.016-3.586.061-4.861.061-1.17.255-1.814.42-2.234.21-.57.479-.96.9-1.381.419-.419.81-.689 1.379-.898.42-.166 1.051-.361 2.221-.421 1.275-.045 1.65-.06 4.859-.06l.045.03zm0 3.678a6.162 6.162 0 100 12.324 6.162 6.162 0 100-12.324zM12 16c-2.21 0-4-1.79-4-4s1.79-4 4-4 4 1.79 4 4-1.79 4-4 4zm7.846-10.405a1.441 1.441 0 01-2.88 0 1.44 1.44 0 012.88 0z\"}}]},{\"type\":\"link\",\"id\":\"lzntr2\",\"position\":4,\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"M5.68 2l1.478 5.344v2.562H8.44V7.344L9.937 2h-1.29l-.538 2.432a27.21 27.21 0 00-.29 1.515h-.04c-.063-.42-.159-.93-.29-1.525L6.97 2H5.68zm5.752 2.018c-.434 0-.784.084-1.051.257-.267.172-.464.448-.59.825-.125.377-.187.876-.187 1.498v.84c0 .615.054 1.107.164 1.478.11.371.295.644.556.82.261.176.62.264 1.078.264.446 0 .8-.087 1.06-.26.26-.173.45-.444.565-.818.116-.374.174-.869.174-1.485v-.84c0-.62-.059-1.118-.178-1.492-.119-.373-.308-.648-.566-.824-.258-.176-.598-.263-1.025-.263zm2.447.113v4.314c0 .534.09.927.271 1.178.182.251.465.377.848.377.552 0 .968-.267 1.244-.8h.028l.113.706H17.4V4.131h-1.298v4.588a.635.635 0 01-.23.263.569.569 0 01-.325.104c-.132 0-.226-.054-.283-.164-.057-.11-.086-.295-.086-.553V4.131h-1.3zm-2.477.781c.182 0 .311.095.383.287.072.191.108.495.108.91v1.8c0 .426-.036.735-.108.923-.072.188-.2.282-.38.283-.183 0-.309-.095-.378-.283-.07-.188-.103-.497-.103-.924V6.11c0-.414.035-.718.107-.91.072-.19.195-.287.371-.287zM5 11c-1.1 0-2 .9-2 2v7c0 1.1.9 2 2 2h14c1.1 0 2-.9 2-2v-7c0-1.1-.9-2-2-2H5zm7.049 2h1.056v2.568h.008c.095-.186.232-.335.407-.449.175-.114.364-.17.566-.17.26 0 .463.07.611.207.148.138.257.361.323.668.066.308.097.735.097 1.281v.772h.002c0 .727-.089 1.26-.264 1.602-.175.342-.447.513-.818.513-.207 0-.394-.047-.564-.142a.93.93 0 01-.383-.391h-.024l-.11.46h-.907V13zm-6.563.246h3.252v.885h-1.09v5.789H6.576v-5.79h-1.09v-.884zm11.612 1.705c.376 0 .665.07.867.207.2.138.343.354.426.645.082.292.123.695.123 1.209v.836h-1.836v.248c0 .313.008.547.027.703.02.156.057.27.115.342.058.072.148.107.27.107.164 0 .277-.064.338-.191.06-.127.094-.338.1-.635l.947.055a1.6 1.6 0 01.007.175c0 .451-.124.788-.37 1.01-.248.223-.595.334-1.046.334-.54 0-.92-.17-1.138-.51-.218-.339-.326-.863-.326-1.574v-.851c0-.732.112-1.267.337-1.604.225-.337.613-.506 1.159-.506zm-8.688.094h1.1v3.58c0 .217.024.373.072.465.048.093.126.139.238.139a.486.486 0 00.276-.088.538.538 0 00.193-.223v-3.873h1.1v4.875h-.862l-.093-.598h-.026c-.234.452-.584.678-1.05.678-.325 0-.561-.106-.715-.318-.154-.212-.233-.544-.233-.994v-3.643zm8.664.648c-.117 0-.204.036-.26.104-.056.069-.093.182-.11.338a6.504 6.504 0 00-.028.71v.35h.803v-.35c0-.312-.01-.548-.032-.71-.02-.162-.059-.276-.115-.342-.056-.066-.14-.1-.258-.1zm-3.482.036a.418.418 0 00-.293.126.699.699 0 00-.192.327v2.767a.487.487 0 00.438.256.337.337 0 00.277-.127c.07-.085.12-.228.149-.43.029-.2.043-.48.043-.835v-.627c0-.382-.011-.676-.035-.883-.024-.207-.067-.357-.127-.444a.299.299 0 00-.26-.13z\"}}],\"action\":\"https:\\/\\/youtube.com\"}]},{\"name\":\"Auth Dropdown\",\"id\":\"h8r6vg\",\"items\":[{\"label\":\"Admin Area\",\"id\":\"upm1rv\",\"action\":\"\\/admin\",\"type\":\"route\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"M19 5v2h-4V5h4M9 5v6H5V5h4m10 8v6h-4v-6h4M9 17v2H5v-2h4M21 3h-8v6h8V3zM11 3H3v10h8V3zm10 8h-8v10h8V11zm-10 4H3v6h8v-6z\"}}],\"permissions\":[\"admin.access\"]},{\"label\":\"My Files\",\"id\":\"ehj0uk\",\"action\":\"\\/drive\",\"type\":\"route\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"M20 6h-8l-2-2H4c-1.1 0-2 .9-2 2v12c0 1.1.9 2 2 2h16c1.1 0 2-.9 2-2V8c0-1.1-.9-2-2-2zm0 12H4V6h5.17l1.41 1.41.59.59H20v10zm-7.84-6H8v2h4.16l-1.59 1.59L11.99 17 16 13.01 11.99 9l-1.41 1.41L12.16 12z\"}}]},{\"label\":\"Account Settings\",\"id\":\"6a89z5\",\"action\":\"\\/account-settings\",\"type\":\"route\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"M19.43 12.98c.04-.32.07-.64.07-.98 0-.34-.03-.66-.07-.98l2.11-1.65c.19-.15.24-.42.12-.64l-2-3.46c-.09-.16-.26-.25-.44-.25-.06 0-.12.01-.17.03l-2.49 1c-.52-.4-1.08-.73-1.69-.98l-.38-2.65C14.46 2.18 14.25 2 14 2h-4c-.25 0-.46.18-.49.42l-.38 2.65c-.61.25-1.17.59-1.69.98l-2.49-1c-.06-.02-.12-.03-.18-.03-.17 0-.34.09-.43.25l-2 3.46c-.13.22-.07.49.12.64l2.11 1.65c-.04.32-.07.65-.07.98 0 .33.03.66.07.98l-2.11 1.65c-.19.15-.24.42-.12.64l2 3.46c.09.16.26.25.44.25.06 0 .12-.01.17-.03l2.49-1c.52.4 1.08.73 1.69.98l.38 2.65c.03.24.24.42.49.42h4c.25 0 .46-.18.49-.42l.38-2.65c.61-.25 1.17-.59 1.69-.98l2.49 1c.06.02.12.03.18.03.17 0 .34-.09.43-.25l2-3.46c.12-.22.07-.49-.12-.64l-2.11-1.65zm-1.98-1.71c.04.31.05.52.05.73 0 .21-.02.43-.05.73l-.14 1.13.89.7 1.08.84-.7 1.21-1.27-.51-1.04-.42-.9.68c-.43.32-.84.56-1.25.73l-1.06.43-.16 1.13-.2 1.35h-1.4l-.19-1.35-.16-1.13-1.06-.43c-.43-.18-.83-.41-1.23-.71l-.91-.7-1.06.43-1.27.51-.7-1.21 1.08-.84.89-.7-.14-1.13c-.03-.31-.05-.54-.05-.74s.02-.43.05-.73l.14-1.13-.89-.7-1.08-.84.7-1.21 1.27.51 1.04.42.9-.68c.43-.32.84-.56 1.25-.73l1.06-.43.16-1.13.2-1.35h1.39l.19 1.35.16 1.13 1.06.43c.43.18.83.41 1.23.71l.91.7 1.06-.43 1.27-.51.7 1.21-1.07.85-.89.7.14 1.13zM12 8c-2.21 0-4 1.79-4 4s1.79 4 4 4 4-1.79 4-4-1.79-4-4-4zm0 6c-1.1 0-2-.9-2-2s.9-2 2-2 2 .9 2 2-.9 2-2 2z\"}}]}],\"positions\":[\"auth-dropdown\"]},{\"name\":\"Admin Sidebar\",\"id\":\"2d43u1\",\"items\":[{\"label\":\"Analytics\",\"id\":\"886nz4\",\"action\":\"\\/admin\",\"type\":\"route\",\"condition\":\"admin\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"M19 3H5c-1.1 0-2 .9-2 2v14c0 1.1.9 2 2 2h14c1.1 0 2-.9 2-2V5c0-1.1-.9-2-2-2zm0 16H5V5h14v14z\"}},{\"tag\":\"path\",\"attr\":{\"d\":\"M7 12h2v5H7zm8-5h2v10h-2zm-4 7h2v3h-2zm0-4h2v2h-2z\"}}],\"role\":1,\"permissions\":[\"admin.access\"],\"roles\":[]},{\"label\":\"Appearance\",\"id\":\"slcqm0\",\"action\":\"\\/admin\\/appearance\",\"type\":\"route\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"m2.53 19.65 1.34.56v-9.03l-2.43 5.86c-.41 1.02.08 2.19 1.09 2.61zm19.5-3.7L17.07 3.98c-.31-.75-1.04-1.21-1.81-1.23-.26 0-.53.04-.79.15L7.1 5.95c-.75.31-1.21 1.03-1.23 1.8-.01.27.04.54.15.8l4.96 11.97c.31.76 1.05 1.22 1.83 1.23.26 0 .52-.05.77-.15l7.36-3.05c1.02-.42 1.51-1.59 1.09-2.6zm-9.2 3.8L7.87 7.79l7.35-3.04h.01l4.95 11.95-7.35 3.05z\"}},{\"tag\":\"circle\",\"attr\":{\"cx\":\"11\",\"cy\":\"9\",\"r\":\"1\"}},{\"tag\":\"path\",\"attr\":{\"d\":\"M5.88 19.75c0 1.1.9 2 2 2h1.45l-3.45-8.34v6.34z\"}}],\"permissions\":[\"appearance.update\"]},{\"label\":\"Settings\",\"id\":\"x5k484\",\"action\":\"\\/admin\\/settings\",\"type\":\"route\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"M19.43 12.98c.04-.32.07-.64.07-.98 0-.34-.03-.66-.07-.98l2.11-1.65c.19-.15.24-.42.12-.64l-2-3.46c-.09-.16-.26-.25-.44-.25-.06 0-.12.01-.17.03l-2.49 1c-.52-.4-1.08-.73-1.69-.98l-.38-2.65C14.46 2.18 14.25 2 14 2h-4c-.25 0-.46.18-.49.42l-.38 2.65c-.61.25-1.17.59-1.69.98l-2.49-1c-.06-.02-.12-.03-.18-.03-.17 0-.34.09-.43.25l-2 3.46c-.13.22-.07.49.12.64l2.11 1.65c-.04.32-.07.65-.07.98 0 .33.03.66.07.98l-2.11 1.65c-.19.15-.24.42-.12.64l2 3.46c.09.16.26.25.44.25.06 0 .12-.01.17-.03l2.49-1c.52.4 1.08.73 1.69.98l.38 2.65c.03.24.24.42.49.42h4c.25 0 .46-.18.49-.42l.38-2.65c.61-.25 1.17-.59 1.69-.98l2.49 1c.06.02.12.03.18.03.17 0 .34-.09.43-.25l2-3.46c.12-.22.07-.49-.12-.64l-2.11-1.65zm-1.98-1.71c.04.31.05.52.05.73 0 .21-.02.43-.05.73l-.14 1.13.89.7 1.08.84-.7 1.21-1.27-.51-1.04-.42-.9.68c-.43.32-.84.56-1.25.73l-1.06.43-.16 1.13-.2 1.35h-1.4l-.19-1.35-.16-1.13-1.06-.43c-.43-.18-.83-.41-1.23-.71l-.91-.7-1.06.43-1.27.51-.7-1.21 1.08-.84.89-.7-.14-1.13c-.03-.31-.05-.54-.05-.74s.02-.43.05-.73l.14-1.13-.89-.7-1.08-.84.7-1.21 1.27.51 1.04.42.9-.68c.43-.32.84-.56 1.25-.73l1.06-.43.16-1.13.2-1.35h1.39l.19 1.35.16 1.13 1.06.43c.43.18.83.41 1.23.71l.91.7 1.06-.43 1.27-.51.7 1.21-1.07.85-.89.7.14 1.13zM12 8c-2.21 0-4 1.79-4 4s1.79 4 4 4 4-1.79 4-4-1.79-4-4-4zm0 6c-1.1 0-2-.9-2-2s.9-2 2-2 2 .9 2 2-.9 2-2 2z\"}}],\"permissions\":[\"settings.update\"]},{\"label\":\"Plans\",\"id\":\"7o42rt\",\"action\":\"\\/admin\\/plans\",\"type\":\"route\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"M7 15h7v2H7zm0-4h10v2H7zm0-4h10v2H7zm12-4h-4.18C14.4 1.84 13.3 1 12 1c-1.3 0-2.4.84-2.82 2H5c-.14 0-.27.01-.4.04-.39.08-.74.28-1.01.55-.18.18-.33.4-.43.64-.1.23-.16.49-.16.77v14c0 .27.06.54.16.78s.25.45.43.64c.27.27.62.47 1.01.55.13.02.26.03.4.03h14c1.1 0 2-.9 2-2V5c0-1.1-.9-2-2-2zm-7-.25c.41 0 .75.34.75.75s-.34.75-.75.75-.75-.34-.75-.75.34-.75.75-.75zM19 19H5V5h14v14z\"}}],\"permissions\":[\"plans.update\"]},{\"label\":\"Subscriptions\",\"action\":\"\\/admin\\/subscriptions\",\"type\":\"route\",\"id\":\"sdcb5a\",\"condition\":\"admin\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"M4 6h16v2H4zm2-4h12v2H6zm14 8H4c-1.1 0-2 .9-2 2v8c0 1.1.9 2 2 2h16c1.1 0 2-.9 2-2v-8c0-1.1-.9-2-2-2zm0 10H4v-8h16v8zm-10-7.27v6.53L16 16z\"}}],\"permissions\":[\"subscriptions.update\"]},{\"label\":\"Users\",\"action\":\"\\/admin\\/users\",\"type\":\"route\",\"id\":\"fzfb45\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"M12 6c1.1 0 2 .9 2 2s-.9 2-2 2-2-.9-2-2 .9-2 2-2m0 10c2.7 0 5.8 1.29 6 2H6c.23-.72 3.31-2 6-2m0-12C9.79 4 8 5.79 8 8s1.79 4 4 4 4-1.79 4-4-1.79-4-4-4zm0 10c-2.67 0-8 1.34-8 4v2h16v-2c0-2.66-5.33-4-8-4z\"}}],\"permissions\":[\"users.update\"]},{\"label\":\"Roles\",\"action\":\"\\/admin\\/roles\",\"type\":\"route\",\"id\":\"mwdkf0\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"M9 13.75c-2.34 0-7 1.17-7 3.5V19h14v-1.75c0-2.33-4.66-3.5-7-3.5zM4.34 17c.84-.58 2.87-1.25 4.66-1.25s3.82.67 4.66 1.25H4.34zM9 12c1.93 0 3.5-1.57 3.5-3.5S10.93 5 9 5 5.5 6.57 5.5 8.5 7.07 12 9 12zm0-5c.83 0 1.5.67 1.5 1.5S9.83 10 9 10s-1.5-.67-1.5-1.5S8.17 7 9 7zm7.04 6.81c1.16.84 1.96 1.96 1.96 3.44V19h4v-1.75c0-2.02-3.5-3.17-5.96-3.44zM15 12c1.93 0 3.5-1.57 3.5-3.5S16.93 5 15 5c-.54 0-1.04.13-1.5.35.63.89 1 1.98 1 3.15s-.37 2.26-1 3.15c.46.22.96.35 1.5.35z\"}}],\"permissions\":[\"roles.update\"]},{\"label\":\"Files\",\"action\":\"\\/admin\\/files\",\"type\":\"route\",\"id\":\"vguvti\",\"icon\":[{\"tag\":\"path\",\"attr\":{\"d\":\"M16 1H4c-1.1 0-2 .9-2 2v14h2V3h12V1zm-1 4H8c-1.1 0-1.99.9-1.99 2L6 21c0 1.1.89 2 1.99 2H19c1.1 0 2-.9 2-2V11l-6-6zM8 21V7h6v5h5v9H8z\"}}],\"permissions\":[\"files.update\"]}],\"positions\":[\"admin-sidebar\"]}]','2024-02-18 14:41:32','2024-04-15 11:24:05',0),(31,'uploads.max_size','1073741824','2024-02-18 14:41:32','2024-03-22 08:58:52',0),(32,'uploads.chunk_size','15728640','2024-02-18 14:41:32','2024-02-18 14:41:32',0),(33,'uploads.available_space','524288000','2024-02-18 14:41:32','2024-03-22 08:55:47',0),(34,'s3_direct_upload','true','2024-02-18 14:41:32','2024-02-18 14:41:32',0),(35,'uploads.blocked_extensions','[\"exe\",\"application\\/x-msdownload\",\"x-dosexec\"]','2024-02-18 14:41:32','2024-02-18 14:41:32',0),(36,'homepage.appearance','{\"headerTitle\":\"BeDrive. A new home for your files.\",\"headerSubtitle\":\"Register or Login now to upload, backup, manage and access your files on any device, from anywhere, free.\",\"headerImage\":\"images\\/homepage\\/homepage-header-bg.jpg\",\"headerImageOpacity\":1,\"headerOverlayColor1\":null,\"headerOverlayColor2\":null,\"footerTitle\":\"Get started with BeDrive\",\"footerSubtitle\":null,\"footerImage\":\"images\\/homepage\\/homepage-footer-bg.svg\",\"actions\":{\"cta1\":{\"label\":\"Register Now\",\"type\":\"route\",\"action\":\"\\/register\"},\"cta2\":null,\"cta3\":{\"label\":\"Sign up for free\",\"type\":\"route\",\"action\":\"\\/register\"}},\"primaryFeatures\":[{\"title\":\"Store any file\",\"subtitle\":\"Keep photos, stories, designs, drawings, recordings, videos, and more. Your first 15 GB of storage are free.\",\"image\":\"images\\/homepage\\/upload.svg\"},{\"title\":\"See your stuff anywhere\",\"subtitle\":\"Your files in BeDrive can be reached from any smartphone, tablet, or computer.\",\"image\":\"images\\/homepage\\/web-devices.svg\"},{\"title\":\"Share files and folders\",\"subtitle\":\"You can quickly invite others to view, download, and collaborate on all the files you want.\",\"image\":\"images\\/homepage\\/share.svg\"}],\"secondaryFeatures\":[{\"title\":\"Keep your files safe\",\"image\":\"images\\/homepage\\/homepage-feature-1.jpg\",\"description\":\"If something happens to your device, you don\'t have to worry about losing your files or photos \\u2013 they\'re in your BeDrive. And BeDrive is encrypted using SSL.\"},{\"title\":\"Reliable storage and fast transfers\",\"image\":\"images\\/homepage\\/homepage-feature-2.jpg\",\"description\":\"We make secure cloud storage simple and convenient. Create a free BeDrive account today!\"}]}','2024-02-18 14:41:32','2024-02-18 14:41:32',0),(37,'drive.default_view','grid','2024-02-18 14:41:32','2024-02-18 14:41:32',0),(38,'drive.send_share_notification','false','2024-02-18 14:41:32','2024-02-18 14:41:32',0),(39,'share.suggest_emails','false','2024-02-18 14:41:32','2024-02-18 14:41:32',0),(40,'branding.favicon','favicon/icon-144x144.png?v=1708287094','2024-02-18 14:41:34','2024-02-18 14:41:34',0),(41,'uploads.blocked_extensions.0','exe','2024-03-21 18:32:35','2024-03-21 18:32:35',0),(42,'uploads.blocked_extensions.1','application/x-msdownload','2024-03-21 18:32:35','2024-03-21 18:32:35',0),(43,'uploads.blocked_extensions.2','x-dosexec','2024-03-21 18:32:35','2024-03-21 18:32:35',0),(44,'homepage.appearance.headerTitle','BeDrive. A new home for your files.','2024-03-21 18:32:35','2024-03-21 18:32:35',0),(45,'homepage.appearance.headerSubtitle','Register or Login now to upload, backup, manage and access your files on any device, from anywhere, free.','2024-03-21 18:32:35','2024-03-21 18:32:35',0),(46,'homepage.appearance.headerImage','images/homepage/homepage-header-bg.jpg','2024-03-21 18:32:35','2024-03-21 18:32:35',0),(47,'homepage.appearance.headerImageOpacity','1','2024-03-21 18:32:35','2024-03-21 18:32:35',0),(48,'homepage.appearance.headerOverlayColor1','','2024-03-21 18:32:35','2024-03-21 18:32:35',0),(49,'homepage.appearance.headerOverlayColor2','','2024-03-21 18:32:35','2024-03-21 18:32:35',0),(50,'homepage.appearance.footerTitle','Get started with BeDrive','2024-03-21 18:32:35','2024-03-21 18:32:35',0),(51,'homepage.appearance.footerSubtitle','','2024-03-21 18:32:35','2024-03-21 18:32:35',0),(52,'homepage.appearance.footerImage','images/homepage/homepage-footer-bg.svg','2024-03-21 18:32:35','2024-03-21 18:32:35',0),(53,'homepage.appearance.actions.cta1.label','Register Now','2024-03-21 18:32:35','2024-03-21 18:32:35',0),(54,'homepage.appearance.actions.cta1.type','route','2024-03-21 18:32:35','2024-03-21 18:32:35',0),(55,'homepage.appearance.actions.cta1.action','/register','2024-03-21 18:32:35','2024-03-21 18:32:35',0),(56,'homepage.appearance.actions.cta2','','2024-03-21 18:32:35','2024-03-21 18:32:35',0),(57,'homepage.appearance.actions.cta3.label','Sign up for free','2024-03-21 18:32:35','2024-03-21 18:32:35',0),(58,'homepage.appearance.actions.cta3.type','route','2024-03-21 18:32:35','2024-03-21 18:32:35',0),(59,'homepage.appearance.actions.cta3.action','/register','2024-03-21 18:32:35','2024-03-21 18:32:35',0),(60,'homepage.appearance.primaryFeatures.0.title','Store any file','2024-03-21 18:32:35','2024-03-21 18:32:35',0),(61,'homepage.appearance.primaryFeatures.0.subtitle','Keep photos, stories, designs, drawings, recordings, videos, and more. Your first 15 GB of storage are free.','2024-03-21 18:32:35','2024-03-21 18:32:35',0),(62,'homepage.appearance.primaryFeatures.0.image','images/homepage/upload.svg','2024-03-21 18:32:35','2024-03-21 18:32:35',0),(63,'homepage.appearance.primaryFeatures.1.title','See your stuff anywhere','2024-03-21 18:32:35','2024-03-21 18:32:35',0),(64,'homepage.appearance.primaryFeatures.1.subtitle','Your files in BeDrive can be reached from any smartphone, tablet, or computer.','2024-03-21 18:32:35','2024-03-21 18:32:35',0),(65,'homepage.appearance.primaryFeatures.1.image','images/homepage/web-devices.svg','2024-03-21 18:32:35','2024-03-21 18:32:35',0),(66,'homepage.appearance.primaryFeatures.2.title','Share files and folders','2024-03-21 18:32:35','2024-03-21 18:32:35',0),(67,'homepage.appearance.primaryFeatures.2.subtitle','You can quickly invite others to view, download, and collaborate on all the files you want.','2024-03-21 18:32:35','2024-03-21 18:32:35',0),(68,'homepage.appearance.primaryFeatures.2.image','images/homepage/share.svg','2024-03-21 18:32:35','2024-03-21 18:32:35',0),(69,'homepage.appearance.secondaryFeatures.0.title','Keep your files safe','2024-03-21 18:32:35','2024-03-21 18:32:35',0),(70,'homepage.appearance.secondaryFeatures.0.image','images/homepage/homepage-feature-1.jpg','2024-03-21 18:32:35','2024-03-21 18:32:35',0),(71,'homepage.appearance.secondaryFeatures.0.description','If something happens to your device, you don\'t have to worry about losing your files or photos – they\'re in your BeDrive. And BeDrive is encrypted using SSL.','2024-03-21 18:32:35','2024-03-21 18:32:35',0),(72,'homepage.appearance.secondaryFeatures.1.title','Reliable storage and fast transfers','2024-03-21 18:32:35','2024-03-21 18:32:35',0),(73,'homepage.appearance.secondaryFeatures.1.image','images/homepage/homepage-feature-2.jpg','2024-03-21 18:32:35','2024-03-21 18:32:35',0),(74,'homepage.appearance.secondaryFeatures.1.description','We make secure cloud storage simple and convenient. Create a free BeDrive account today!','2024-03-21 18:32:35','2024-03-21 18:32:35',0),(75,'require_email_confirmation','true','2024-03-21 18:38:34','2024-04-17 18:47:05',0),(76,'branding.site_description','An company emerging with the cutting edge AI technologies','2024-03-27 09:07:04','2024-03-27 09:07:04',0);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shareable_links`
--

DROP TABLE IF EXISTS `shareable_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shareable_links` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `hash` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int unsigned NOT NULL,
  `entry_id` int unsigned NOT NULL,
  `allow_edit` tinyint(1) NOT NULL DEFAULT '0',
  `allow_download` tinyint(1) NOT NULL DEFAULT '1',
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `shareable_links_hash_unique` (`hash`),
  KEY `shareable_links_user_id_index` (`user_id`),
  KEY `shareable_links_entry_id_index` (`entry_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shareable_links`
--

LOCK TABLES `shareable_links` WRITE;
/*!40000 ALTER TABLE `shareable_links` DISABLE KEYS */;
INSERT INTO `shareable_links` VALUES (8,'GnA7Y4UgGTKUR2zyRspN64GThf6KaU',3,20,0,1,NULL,NULL,'2024-03-26 04:23:13','2024-03-26 04:23:13'),(11,'6O28G14vjFbpinWs2yLvRqpkLOn4Sn',8,169,0,1,NULL,NULL,'2024-03-26 06:32:54','2024-03-26 06:32:54'),(12,'h4ClR97NWrsYcHOEyVNuAu9YBtyqXb',8,168,0,1,NULL,NULL,'2024-03-26 07:01:24','2024-03-26 07:01:24'),(18,'mgJfj9FCEiCx8AOXg6Ttb2zseIqRtT',1,154,0,1,NULL,NULL,'2024-04-08 14:32:17','2024-04-08 14:32:17');
/*!40000 ALTER TABLE `shareable_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_profiles`
--

DROP TABLE IF EXISTS `social_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_profiles` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `service_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_service_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `access_token` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `refresh_token` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `access_expires_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `social_profiles_user_id_service_name_unique` (`user_id`,`service_name`),
  UNIQUE KEY `social_profiles_service_name_user_service_id_unique` (`service_name`,`user_service_id`),
  KEY `social_profiles_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_profiles`
--

LOCK TABLES `social_profiles` WRITE;
/*!40000 ALTER TABLE `social_profiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscriptions`
--

DROP TABLE IF EXISTS `subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subscriptions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `price_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `gateway_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'none',
  `gateway_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int NOT NULL DEFAULT '1',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `ends_at` timestamp NULL DEFAULT NULL,
  `renews_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `subscriptions_gateway_id_unique` (`gateway_id`),
  KEY `subscriptions_user_id_index` (`user_id`),
  KEY `subscriptions_plan_id_index` (`price_id`),
  KEY `subscriptions_gateway_index` (`gateway_name`),
  KEY `subscriptions_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscriptions`
--

LOCK TABLES `subscriptions` WRITE;
/*!40000 ALTER TABLE `subscriptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `subscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taggables`
--

DROP TABLE IF EXISTS `taggables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taggables` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `tag_id` int unsigned NOT NULL,
  `taggable_id` int unsigned NOT NULL,
  `taggable_type` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `taggable_unique` (`tag_id`,`taggable_id`,`user_id`,`taggable_type`),
  KEY `taggables_tag_id_index` (`tag_id`),
  KEY `taggables_taggable_id_index` (`taggable_id`),
  KEY `taggables_taggable_type_index` (`taggable_type`),
  KEY `taggables_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taggables`
--

LOCK TABLES `taggables` WRITE;
/*!40000 ALTER TABLE `taggables` DISABLE KEYS */;
INSERT INTO `taggables` VALUES (3,1,20,'fileEntry',3),(4,1,154,'fileEntry',8);
/*!40000 ALTER TABLE `taggables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'custom',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tags_name_user_id_type_unique` (`name`,`user_id`,`type`),
  KEY `tags_type_index` (`type`),
  KEY `tags_created_at_index` (`created_at`),
  KEY `tags_updated_at_index` (`updated_at`),
  KEY `tags_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'starred','Starred','label','2024-02-18 14:41:32','2024-02-18 14:41:32',NULL);
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uploads`
--

DROP TABLE IF EXISTS `uploads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `uploads` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_size` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `extension` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail_url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `public` tinyint(1) NOT NULL DEFAULT '0',
  `path` varchar(191) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uploads_file_name_unique` (`file_name`),
  KEY `uploads_name_index` (`name`),
  KEY `uploads_user_id_index` (`user_id`),
  KEY `uploads_public_index` (`public`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uploads`
--

LOCK TABLES `uploads` WRITE;
/*!40000 ALTER TABLE `uploads` DISABLE KEYS */;
/*!40000 ALTER TABLE `uploads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_role` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `role_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_group_user_id_group_id_unique` (`user_id`,`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES (1,2,1,NULL),(2,3,1,NULL),(5,6,1,NULL),(6,5,1,NULL),(7,7,1,NULL),(8,8,1,NULL),(10,10,1,NULL),(12,12,1,NULL),(13,13,1,NULL);
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `legacy_permissions` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_secret` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `card_brand` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_last_four` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `space_available` bigint unsigned DEFAULT NULL,
  `language` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timezone` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `available_space` bigint unsigned DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `card_expires` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paypal_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banned_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_created_at_index` (`created_at`),
  KEY `users_updated_at_index` (`updated_at`),
  KEY `users_username_index` (`username`),
  KEY `users_paypal_id_index` (`paypal_id`),
  KEY `users_first_name_index` (`first_name`),
  KEY `users_last_name_index` (`last_name`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'akhil','Admin','Only',NULL,NULL,NULL,'portforwarding03@gmail.com','$2y$10$kPWC6bxgORHttKOSUtufpuzBxwDbE2yG1cxqXy9NvPlDO9i1Q5xFC',NULL,NULL,NULL,NULL,NULL,'HMx4DQSDIBpZTh0NBTJFv3MuGYTKKyrXIBYmEA4Tn1Ko8vMJrHMmZVzRqQD1','2024-02-18 14:41:30','2024-04-22 10:51:31',NULL,NULL,NULL,NULL,'https://jebin.s3.ap-south-1.amazonaws.com/storage/avatars/e164fdd3-b2f6-4879-bbec-203a2b057555.jpg','cus_PmghIuaJPLXQ9J',NULL,'2024-02-18 14:41:30',NULL,NULL,NULL),(2,NULL,NULL,NULL,NULL,NULL,NULL,'t.p.akhiljinu@gmail.com','$2y$10$N9S4MVMK5Hb6u/8VCqo.AuXQpZUrVZKi4B3VXqQYIetBj/47Yt83m',NULL,NULL,NULL,NULL,NULL,NULL,'2024-03-22 07:11:35','2024-03-22 07:11:51',NULL,'en','US','America/New_York',NULL,NULL,NULL,'2024-03-22 07:11:51',NULL,NULL,NULL),(3,NULL,'Vivek','Gopakumar',NULL,NULL,NULL,'vivekg@zeitstoneai.com','$2y$10$pJ3URgZOLvSCdzicJ2F7yO75nDyrHCiDvm21B0z6G3xJSQ/87Qyx2',NULL,NULL,NULL,NULL,NULL,'DvUnBWtkXgpDpPFhP4fBLqJBi2ndm8GgwATKH986FH8UXOd7JOSlORvHWBik','2024-03-22 09:07:04','2024-04-11 07:50:54',NULL,'en','US','America/New_York','https://jebin.s3.ap-south-1.amazonaws.com/storage/avatars/b6a44f20-ff01-47ae-96ee-c52303dbd3bc.jpg','cus_Po3yayI24LpUQT',NULL,'2024-03-22 09:07:49',NULL,NULL,NULL),(5,NULL,'test',NULL,NULL,NULL,NULL,'test@gmail.com','$2y$10$9NWr2mCEmjclYUj5oIS4QOkTOeBiBJxXZB8cCpD.M6H5DNx/l//lu',NULL,NULL,NULL,NULL,NULL,'l3h6nA5t29wjZQkGNfjjIC6X2vQAP7l7hsx7JYWJjH27Y765xI0szTTEXXYR','2024-03-22 12:50:12','2024-03-26 15:19:06',NULL,'en','US','America/New_York','https://www.gravatar.com/avatar/1aedb8d9dc4751e229a335e371db8058?s=&d=retro','cus_PoEEmpzVqv16cY',104857600,NULL,NULL,NULL,NULL),(6,NULL,'ARUN','RK',NULL,NULL,NULL,'arunrk130@gmail.com','$2y$10$bMasoiBfki6dhoIY7y8aaeYq1SMyQHCMMQxbVF1I167Iu7vHZLgPi',NULL,NULL,NULL,NULL,NULL,'ebQ0vs1zyPjke3BoXk7JSS51jwoi10nDh72x2bWX7haVhGktcAmeJaAtlCi3','2024-03-22 17:05:02','2024-03-22 17:43:19',NULL,'en','US','America/New_York','storage/avatars/d81f3997-a792-43a6-a2fb-d3bd83f719e0.jpg',NULL,524288000,'2024-03-22 17:43:19',NULL,NULL,NULL),(7,NULL,NULL,NULL,NULL,NULL,NULL,'msmahesh@gmail.com','$2y$10$JbiWbe3QbWmKvj/ktc7Me.TSSodtysvmDoGPhlQ40uZYrdeFwHVxy',NULL,NULL,NULL,NULL,NULL,'6AnftkRtSxrGhEaB6v9ZmbNGU0XKVcYpNHG7dFTbaRyb9TYO1uyyRhcYZuOy','2024-03-25 15:15:46','2024-03-25 15:15:46',NULL,'en','US','America/New_York',NULL,NULL,NULL,'2024-03-25 15:15:46',NULL,NULL,NULL),(8,NULL,'Agnes','Bosco',NULL,NULL,NULL,'agnesbosco01@gmail.com','$2y$10$WG7iecbtTTKh..T1iGuC1ecP4BiAvGkEu9pDb/tvgBTi7Yux6KwTm',NULL,NULL,NULL,NULL,NULL,'RgNqEyxinQA26ccSWY3fQbhB4MS6d8Hucl3ujLfx4jHm0CI8yzaNcoyLZgfZ','2024-03-26 05:47:35','2024-03-26 06:27:12',NULL,'en','US','America/New_York',NULL,NULL,NULL,'2024-03-26 05:47:35',NULL,NULL,NULL),(10,NULL,NULL,NULL,NULL,NULL,NULL,'abizeck@gmail.com','$2y$10$WXPmWe2JNH/kFKdUVKs0xuimGgwp68TM7IRH10H5cswDuC80TeUY.',NULL,NULL,NULL,NULL,NULL,'PGD93H1OdRCpQHXf8kZ6xo0vOfiOy8fQiSr0lH7c9zErcDnIO4FpvtaxS7O7','2024-03-27 16:38:14','2024-03-27 16:38:14',NULL,'en','US','America/New_York',NULL,NULL,NULL,'2024-03-27 16:38:14',NULL,NULL,NULL),(12,NULL,NULL,NULL,NULL,NULL,NULL,'ajith@gmail.com','$2y$10$toktXLZmW6Xb3bVK1r9Hiu1KrTIRsRlYslgxhbF2c5aFHCd32dwGK',NULL,NULL,NULL,NULL,NULL,'9dt08ZmCwG9JJEPFcRcj6IksuSl2sW7uka9eXBSWvd6Qe0FwRqMN8DISQgKD','2024-03-28 05:34:06','2024-03-28 05:34:06',NULL,'en','US','America/New_York',NULL,NULL,NULL,'2024-03-28 05:34:06',NULL,NULL,NULL),(13,NULL,'Vivek','LG',NULL,NULL,NULL,'vivekg4995@gmail.com','$2y$10$shYoO7ack.1BhBXEr8PpWuiJOs2C/wE7fJhFEp1qX4Pd8llMzKwg6',NULL,NULL,NULL,NULL,NULL,'mByXSiXnp8lyhy3XsatYctLhkwzKMeI9opJXWzGHPiLsF20YJYUqXgJ8eFrI','2024-04-11 10:30:51','2024-04-11 11:10:33',NULL,'en','US','America/New_York','https://www.gravatar.com/avatar/c831cb3406b9b7437aef831666b7d1f8?s=&d=retro','cus_Pu9qkusykzAPTQ',NULL,'2024-04-11 10:33:26',NULL,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workspace_invites`
--

DROP TABLE IF EXISTS `workspace_invites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `workspace_invites` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `workspace_id` int unsigned NOT NULL,
  `user_id` int unsigned DEFAULT NULL,
  `email` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `workspace_invites_workspace_id_index` (`workspace_id`),
  KEY `workspace_invites_user_id_index` (`user_id`),
  KEY `workspace_invites_email_index` (`email`),
  KEY `workspace_invites_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workspace_invites`
--

LOCK TABLES `workspace_invites` WRITE;
/*!40000 ALTER TABLE `workspace_invites` DISABLE KEYS */;
INSERT INTO `workspace_invites` VALUES ('9bc7efa6-ffca-47b7-ab35-30e0dd049c32',NULL,8,8,'agnesbosco01@gmail.com',3,'2024-04-11 10:10:14','2024-04-11 10:10:14');
/*!40000 ALTER TABLE `workspace_invites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workspace_user`
--

DROP TABLE IF EXISTS `workspace_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `workspace_user` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `workspace_id` int unsigned NOT NULL,
  `role_id` int unsigned DEFAULT NULL,
  `is_owner` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `workspace_user_workspace_id_user_id_unique` (`workspace_id`,`user_id`),
  KEY `workspace_user_user_id_index` (`user_id`),
  KEY `workspace_user_workspace_id_index` (`workspace_id`),
  KEY `workspace_user_role_id_index` (`role_id`),
  KEY `workspace_user_is_owner_index` (`is_owner`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workspace_user`
--

LOCK TABLES `workspace_user` WRITE;
/*!40000 ALTER TABLE `workspace_user` DISABLE KEYS */;
INSERT INTO `workspace_user` VALUES (1,1,1,NULL,1,'2024-03-22 08:56:11','2024-03-22 08:56:11'),(2,6,2,NULL,1,'2024-03-22 17:40:18','2024-03-22 17:40:18'),(3,3,1,4,0,'2024-03-26 04:09:48','2024-03-26 04:09:48'),(6,8,5,NULL,1,'2024-03-26 07:17:50','2024-03-26 07:17:50'),(7,5,6,NULL,1,'2024-03-26 15:14:58','2024-03-26 15:14:58'),(8,10,7,NULL,1,'2024-03-27 16:40:11','2024-03-27 16:40:11'),(10,1,8,NULL,1,'2024-04-11 10:09:22','2024-04-11 10:09:22'),(11,3,8,3,0,'2024-04-11 10:18:52','2024-04-11 10:18:52');
/*!40000 ALTER TABLE `workspace_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workspaces`
--

DROP TABLE IF EXISTS `workspaces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `workspaces` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `workspaces_owner_id_index` (`owner_id`),
  KEY `workspaces_created_at_index` (`created_at`),
  KEY `workspaces_updated_at_index` (`updated_at`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workspaces`
--

LOCK TABLES `workspaces` WRITE;
/*!40000 ALTER TABLE `workspaces` DISABLE KEYS */;
INSERT INTO `workspaces` VALUES (1,'moments_for_life',1,'2024-03-22 08:56:11','2024-03-22 08:56:11'),(2,'arun\'s workspace',6,'2024-03-22 17:40:18','2024-03-22 17:40:18'),(5,'html',8,'2024-03-26 07:17:50','2024-03-26 07:17:50'),(6,'test',5,'2024-03-26 15:14:58','2024-03-26 15:14:58'),(7,'Yakkay Technologies',10,'2024-03-27 16:40:11','2024-03-27 16:40:11'),(8,'test',1,'2024-04-11 10:09:22','2024-04-11 10:09:22');
/*!40000 ALTER TABLE `workspaces` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-09 16:10:14
