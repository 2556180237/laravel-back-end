-- MySQL dump 10.13  Distrib 5.7.20, for Linux (x86_64)
--
-- Host: localhost    Database: api
-- ------------------------------------------------------
-- Server version	5.7.20-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `data`
--

DROP TABLE IF EXISTS `data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `info` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data`
--

LOCK TABLES `data` WRITE;
/*!40000 ALTER TABLE `data` DISABLE KEYS */;
INSERT INTO `data` VALUES (1,'Placeat id omnis excepturi repudiandae modi.','2018-01-07 05:27:44','2018-01-07 05:27:44'),(2,'Dicta hic laboriosam dolorum hic tenetur aut.','2018-01-07 05:27:44','2018-01-07 05:27:44'),(3,'Nesciunt consequuntur voluptas optio suscipit.','2018-01-07 05:27:44','2018-01-07 05:27:44'),(4,'Quae totam alias ad adipisci sit.','2018-01-07 05:27:44','2018-01-07 05:27:44'),(5,'Repellendus quaerat illo quas est.','2018-01-07 05:27:44','2018-01-07 05:27:44'),(6,'Aspernatur consequuntur ut est non corrupti id.','2018-01-07 05:27:44','2018-01-07 05:27:44'),(7,'Eaque provident aperiam esse velit sapiente rem et.','2018-01-07 05:27:44','2018-01-07 05:27:44'),(8,'Natus qui adipisci ducimus beatae exercitationem.','2018-01-07 05:27:44','2018-01-07 05:27:44'),(9,'Nobis ab consequuntur non.','2018-01-07 05:27:44','2018-01-07 05:27:44'),(10,'Sapiente voluptas praesentium minima omnis incidunt.','2018-01-07 05:27:44','2018-01-07 05:27:44');
/*!40000 ALTER TABLE `data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2018_01_07_125330_create_data_table',1),(4,'2018_01_07_134553_adds_api_token_to_users_table',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `uuid` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `api_token` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_api_token_unique` (`api_token`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Admin','dmitry@ostanin.email','$2y$10$1/BTYi0itksBcbS5UrdzwO3oX37FCWYTqMAzBJR8fcF5ot8h8P/K6',NULL,'2018-01-07 05:27:45','2018-01-07 05:27:45',NULL,NULL),(2,'Mrs. Sarah Ratke','king.devon@gmail.com','$2y$10$1/BTYi0itksBcbS5UrdzwO3oX37FCWYTqMAzBJR8fcF5ot8h8P/K6',NULL,'2018-01-07 05:27:45','2018-01-07 05:27:45','8b249eda-fbe3-4731-9a1b-6eb5058902cd',NULL),(3,'Prof. Johann Jerde','lesch.haylee@hotmail.com','$2y$10$1/BTYi0itksBcbS5UrdzwO3oX37FCWYTqMAzBJR8fcF5ot8h8P/K6',NULL,'2018-01-07 05:27:45','2018-01-07 05:27:45','c355fce9-790a-4215-b8ae-269df6740f94',NULL),(4,'Mr. Paul Farrell DDS','eino69@little.org','$2y$10$1/BTYi0itksBcbS5UrdzwO3oX37FCWYTqMAzBJR8fcF5ot8h8P/K6',NULL,'2018-01-07 05:27:45','2018-01-07 05:27:45','d9925044-4d0f-4e7b-beb8-9f3ae8d0e803',NULL),(5,'Prof. Tillman Auer III','mabelle.klein@hotmail.com','$2y$10$1/BTYi0itksBcbS5UrdzwO3oX37FCWYTqMAzBJR8fcF5ot8h8P/K6',NULL,'2018-01-07 05:27:45','2018-01-07 05:27:45','02d2aec0-02d0-4fd0-912b-4bba7c1f7575',NULL),(6,'Prof. Alfonso Brown','kathleen.larson@yahoo.com','$2y$10$1/BTYi0itksBcbS5UrdzwO3oX37FCWYTqMAzBJR8fcF5ot8h8P/K6',NULL,'2018-01-07 05:27:45','2018-01-07 05:27:45','d0a8bc75-d7bc-4075-8e62-7f1f9509d98e',NULL),(7,'Dmitry','dmitry@dmitry.com','$2y$10$wHyvX.SnR0JwCrUkPKBcH.GQOR/Uu6q6zT6BDzHBgOdSGmSG0KPO2',NULL,'2018-01-07 06:10:58','2018-01-07 06:10:58','3137e466-0f6d-45bc-a737-19ca18b508e0',NULL),(8,'DDASS','dmitry@dmitskdflsdfry.com','$2y$10$FKGl3J6ZZOM5J7dTJJHceOslW5BtY7amluuUUgDOhsdaLrLVjOSMq',NULL,'2018-01-07 06:16:54','2018-01-07 06:16:54','00d78f4e-f997-47ad-931d-3a86d13bfd02',NULL),(9,'DDERES','dmitry@dmiflsdfry.com','$2y$10$HAKkhG06yGF/QFC0VnShuOQXd9dGcrv58NZ/DPX7ra6kpPNoaGQte',NULL,'2018-01-07 06:17:42','2018-01-07 06:17:42','9f2118b1-c465-4eb2-8d21-1e393cfaf42a',NULL),(10,'Dsdfgsd','dmitry@sdfry.com','$2y$10$XBbzpfBn0dM7Mt.7BcbMyeegGMUZiiQ7mfgyty0zkb9E6WJ5LDfBa',NULL,'2018-01-07 06:19:44','2018-01-07 06:19:44','4e3d3650-6585-42fe-af33-27790340700b',NULL),(11,'Dgsd','dmitry@sdf324123ry.com','$2y$10$uM6WXfoSt0okNxr9bHuKJ.q2psxLLU2etUbJhcn6lABJnm7NY7iRe',NULL,'2018-01-07 06:21:11','2018-01-07 06:21:11','2c96a0d3-9dd2-4a7b-a1e7-ec0769bbf5dc',NULL),(12,'DDSdg','dmitry@sdf324sdfasdfry.com','$2y$10$WdbksfRXYyQtQ4vffw9Y3u7SYbv7NYS/6OuK.Fryb7ieFKaekF5Di',NULL,'2018-01-07 06:29:18','2018-01-07 06:29:18','0167c9e6-c6af-46f2-99db-72cd6d55b459',NULL),(13,'DSdg','dmitry@ry.com','$2y$10$S67byGEE6MGVTdRFA2MiAuL1jwvx5BkTWL4T.ZiG3qNt0cI3xii2C',NULL,'2018-01-07 06:37:17','2018-01-07 09:28:45','26ff1089-6d86-4ab2-a493-51fa3a178fe4','8C5ZgfsSiOu4OSjop5DbEH2GUkBjXr8JYu8MCqKRvUA8mW6T5g5fjAh6PWeR');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-08  2:05:17
