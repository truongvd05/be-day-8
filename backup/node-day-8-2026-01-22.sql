-- MySQL dump 10.13  Distrib 8.0.44, for Win64 (x86_64)
--
-- Host: localhost    Database: node-day-6
-- ------------------------------------------------------
-- Server version	8.0.44

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
-- Table structure for table `queues`
--

DROP TABLE IF EXISTS `queues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `queues` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `payload` text,
  `status` varchar(255) DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `update_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `queues`
--

LOCK TABLES `queues` WRITE;
/*!40000 ALTER TABLE `queues` DISABLE KEYS */;
INSERT INTO `queues` VALUES (1,'sendVerifyEmail',NULL,'completed',NULL,NULL),(2,'sendVerifyEmail','{\"token\":\"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjMyLCJqdGkiOiI0N2EzNDY4OS0yYjExLTQ3OWEtOWUwZi00YTQ1NGM1ZDg5NWYiLCJpYXQiOjE3Njg4ODEzNTgsImV4cCI6MTc2ODg4ODU1OH0.RX2bLOgzCFD-CYUEOHv96jh-7LyBxOrmYjDHn3CcYII\"}','completed',NULL,NULL),(3,'sendChangePasswordEmail','{}','failse',NULL,NULL),(4,'sendChangePasswordEmail','{\"token\":\"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjI5LCJqdGkiOiIzMGZjZTAxYS0wMDE1LTRjZmYtYmJlZC1kZDhlY2Y0NjBhNzUiLCJpYXQiOjE3Njg4OTgxODYsImV4cCI6MTc2ODg5OTA4Nn0.Htj9DUcQTgBTDnWh_M_d_609vKWCsJgyovi6eZde9tE\"}','failse',NULL,NULL),(5,'sendChangePasswordEmail','{\"token\":\"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjI5LCJqdGkiOiIzZGFmZGYyMi1iZWI3LTRlMjYtYTZhMC02NDZhMGUyMTRhYWIiLCJpYXQiOjE3Njg4OTg1MDcsImV4cCI6MTc2ODg5OTQwN30.igx-NX5X2_WRx2R6jIk1kaMJ4TaH9NngpEcDumgxlTU\"}','failse',NULL,NULL),(6,'sendChangePasswordEmail','{\"token\":\"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjI5LCJqdGkiOiJkYmZkZDVkNi03ZTRiLTQ3MzctYjljNC1lZTE5YTFmNGRiYjMiLCJpYXQiOjE3Njg4OTg4NTcsImV4cCI6MTc2ODg5OTc1N30.uQ6djQZd3CKUpLkD0w4yWlhYFXcFvH_Y8xCIn2WkXC0\",\"secretType\":\"email\"}','failse',NULL,NULL),(7,'sendChangePasswordEmail','{\"token\":\"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjI5LCJqdGkiOiIyNDM1N2VmMi00NjE3LTRlN2ItOGZmNy1jZTFhODRjZjlkNDkiLCJpYXQiOjE3Njg4OTg5NDgsImV4cCI6MTc2ODg5OTg0OH0.jnA9VmZ4H-seHg_UATnahhCeG6qARpr91NuBj9qcB2g\",\"secretType\":\"email\"}','failse',NULL,NULL),(8,'sendChangePasswordEmail','{\"token\":\"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjI5LCJqdGkiOiI5ZDcyNGQzYS0yOTg0LTRkYWUtODM0ZS02M2QyZmU3ZWRkM2IiLCJpYXQiOjE3Njg4OTg5NzQsImV4cCI6MTc2ODg5OTg3NH0.3XeUU6ZQP4g8WgfV9ll8jPmIvosgx1XVUWynzTk16U8\",\"secretType\":\"email\"}','failse',NULL,NULL),(9,'sendChangePasswordEmail','{\"token\":\"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjI5LCJqdGkiOiJkYTA2ZmExZi1iOGI3LTQ3NjktYjA4Ni0yNDFkYTRmY2RkMjciLCJpYXQiOjE3Njg4OTkwMDQsImV4cCI6MTc2ODg5OTkwNH0.JC90S21DQVupII5XOJws_OT4VjScWvj_4MGkYoAf8uQ\",\"secretType\":\"email\"}','failse',NULL,NULL),(10,'sendChangePasswordEmail','{\"token\":\"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjI5LCJqdGkiOiI0Mzg2ODczNS1lZTQxLTRjMjItYmY3NC00NGQ4MTFhODVlY2IiLCJpYXQiOjE3Njg4OTkwNjAsImV4cCI6MTc2ODg5OTk2MH0.vFdE_rMFAWsYLVzbXVRYy-HTe3AYJlSIMxQwm7vUAxo\",\"secretType\":\"email\"}','failse',NULL,NULL),(11,'sendChangePasswordEmail','{\"token\":\"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjI5LCJqdGkiOiJhYzlhNTgyMC1kNzdkLTQ5MjMtOGExYi00OTY5NGQ3YmY5MDgiLCJpYXQiOjE3Njg4OTkwOTIsImV4cCI6MTc2ODg5OTk5Mn0.zBvFImPpdpj7pbAV3XKKu7iI2ydnw5MI3LkDL6JueEY\",\"secretType\":\"email\"}','failse',NULL,NULL),(12,'sendChangePasswordEmail','{\"token\":\"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjI5LCJqdGkiOiIyNjE1Nzk4Ni02MTY0LTQwNGEtOTIxNi0yODNjZDBjNjJkMWYiLCJpYXQiOjE3Njg4OTkxMjUsImV4cCI6MTc2ODkwMDAyNX0.M-nWKe0wSWIGv1n6TsT6YVuTXj4KObnS_jorR4PXiWc\",\"secretType\":\"email\"}','failse',NULL,NULL),(13,'sendChangePasswordEmail','{\"token\":\"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjI5LCJqdGkiOiI5ZTczMzQxYi1jOTk4LTQ0YzgtOTEyZC04NTQwMjg3ZTZiZGEiLCJpYXQiOjE3Njg5MDAwMDAsImV4cCI6MTc2ODkwMDkwMH0.dsDBKapVb2OyIzxA3gxCD3BN8XCNUdLvmPT0331nnQM\"}','failse',NULL,NULL),(14,'sendChangePasswordEmail','{\"token\":\"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjI5LCJqdGkiOiI5OTdmNDhjYi1iYzczLTRlMTctYjEzZi0wYjdjZWI0N2QwM2YiLCJpYXQiOjE3Njg5MDAwMzYsImV4cCI6MTc2ODkwMDkzNn0.YTj3qtwIGlg9bbcWVGMFF6TSfNg5-U5U58vYI5Tv17A\"}','failse',NULL,NULL),(15,'sendChangePasswordEmail','{\"token\":\"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjI5LCJqdGkiOiJjMjVmZTczMS1kZDFkLTRlNDAtYmMwNC1mN2U2ZDNiYzkzMDkiLCJpYXQiOjE3Njg5MDAxMTIsImV4cCI6MTc2ODkwMTAxMn0.zTeycnJ-En7TbT3LtPqQC8RtTf_m_yOeXbsMgTut5-0\",\"secretType\":\"password\"}','completed',NULL,NULL),(16,'sendVerifyEmail','{\"token\":\"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjMzLCJqdGkiOiJkZjBhZGY4OC0zNmM3LTRmMDctOWQ4Yi01OWEwNjcwMWU0OGIiLCJpYXQiOjE3Njg5ODQyMTIsImV4cCI6MTc2ODk5MTQxMn0.PQzzf4zWoHagesXWIj-P9DLj0n-YP1vhxBFwGJv3mEQ\",\"secretType\":\"email\"}','pending',NULL,NULL);
/*!40000 ALTER TABLE `queues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revoked_tokens`
--

DROP TABLE IF EXISTS `revoked_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `revoked_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `jti` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `revoked_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `expired_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_revoked-token_user` (`user_id`),
  CONSTRAINT `fk_revoked-token_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revoked_tokens`
--

LOCK TABLES `revoked_tokens` WRITE;
/*!40000 ALTER TABLE `revoked_tokens` DISABLE KEYS */;
INSERT INTO `revoked_tokens` VALUES (1,5,'9b5e721d-0371-4d75-9d4c-d013f7309abf','2026-01-17 10:54:57','2026-01-17 11:49:59'),(2,5,'a37f8443-5937-47a0-9457-f46dea81081e','2026-01-18 10:58:43','2026-01-18 11:50:59');
/*!40000 ALTER TABLE `revoked_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `refresh_token` varchar(255) DEFAULT NULL,
  `refresh_expires_at` timestamp NULL DEFAULT NULL,
  `verified_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uq_user_email` (`email`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (5,'truong@gmail.com','$2b$10$nkxkYEVEQSKCz85Qxzg1D.I5didNMDJYHj94aBXcQ6Zm.kwG2p3fC','282ebabf55792a23192222a47d9280f971732e8220e50c0469d2bf86617e51d46fbef74a428b2b0057e4f783f67fb6de8df58bf6607248a9e19bab0125dc2810','2026-01-26 03:02:35','2026-01-19 03:40:06'),(24,'truong1@gmail.com','$2b$10$6PpcA3GbY1o976pR4c/fS./2J1lOBUY44P/9Ba.VBjbwMyD2EUoey',NULL,NULL,NULL),(26,'truong2@gmail.com','$2b$10$uzuxI8ZdKUdGBLdOzyZCdeX88NS35eK0LAb/aywFW1JajISECJUTW',NULL,NULL,NULL),(27,'truong3@gmail.com','$2b$10$Sac4PbBpAQh2eNGOqRHecO6SCRWQfM4R.SdO1sWC5I1nejovT9xSO',NULL,NULL,NULL),(28,'truong4@gmail.com','$2b$10$ZLGj5YRjBFZ71i.Biw1fEOfcg/sR6h1e760Gqz5qRrxiZ5s6McJ3q',NULL,NULL,NULL),(29,'truong5@gmail.com','$2b$10$UncHR6/T1NAv9T8Fq4jsd.duiprqQIBU/GpmNZIhf5Ta1pIeFiPGm','4fdaebb44a60568e7570ab01944b86513f064004f43c4d0f8c0091bf1935dd7134d07983c3c49c18f093c53823fd0b9a409b9b4435206ec0ba8c8d257da5de17','2026-01-27 08:11:11','2026-01-19 09:31:29'),(30,'truong6@gmail.com','$2b$10$kqw6jIh9qjGOd0abJolgfOhDTkRCP9Ta9Bd6SB8S92xGebsqNIGRK',NULL,NULL,NULL),(31,'truong7@gmail.com','$2b$10$KW8NSpreA0pVorSyuhmlHe2OmcP.ZPSeSaXkWkNqGZl6cr2p6p9.2',NULL,NULL,'2026-01-20 03:34:58'),(32,'truong8@gmail.com','$2b$10$ah9uzBhf/p5hNr6XXFOe8umZ9G/I7fV1ameaJGWp0XZ7Yo4BB/cE2',NULL,NULL,'2026-01-20 04:01:38'),(33,'truong9@gmail.com','$2b$10$4NwWvz33lEY9lpa7z7ctAek5vhBZvhIsbcgC03uHrzlX.pVfRcTVy','6256bf24b669d0b907644292e3bccf7ac11d6988a18eab3065069feed5a4797d67079a70c47f338333794a8183c18ea3a84eae17100da4b182dcc80d00f21bef','2026-01-28 08:30:12',NULL);
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

-- Dump completed on 2026-01-22 16:38:50
