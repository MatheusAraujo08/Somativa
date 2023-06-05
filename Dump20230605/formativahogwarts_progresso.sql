-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: formativahogwarts
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `progresso`
--

DROP TABLE IF EXISTS `progresso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `progresso` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `status` enum('Não iniciada','Em andamento','Concluida','Encerrada') DEFAULT NULL,
  `andamento` date DEFAULT NULL,
  `conclusao` date DEFAULT NULL,
  `comentarios` varchar(300) NOT NULL,
  `fotos` mediumtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `progresso`
--

LOCK TABLES `progresso` WRITE;
/*!40000 ALTER TABLE `progresso` DISABLE KEYS */;
INSERT INTO `progresso` VALUES (1,'Concluida',NULL,NULL,'Sem Comentario',NULL),(2,'Não iniciada',NULL,NULL,'Sem Comentario',NULL),(3,'Encerrada',NULL,NULL,'Sem Comentario',NULL),(4,'Em andamento',NULL,NULL,'Sem Comentario',NULL),(5,'Concluida',NULL,NULL,'Sem Comentario',NULL),(6,'Concluida',NULL,NULL,'Sem Comentario',NULL),(7,'Não iniciada',NULL,NULL,'Sem Comentario',NULL),(8,'Concluida',NULL,NULL,'Sem Comentario',NULL),(9,'Não iniciada',NULL,NULL,'Sem Comentario',NULL),(10,'Encerrada',NULL,NULL,'Sem Comentario',NULL),(11,'Em andamento',NULL,NULL,'Sem Comentario',NULL),(12,'Concluida',NULL,NULL,'Sem Comentario',NULL),(13,'Concluida',NULL,NULL,'Sem Comentario',NULL),(14,'Não iniciada',NULL,NULL,'Sem Comentario',NULL);
/*!40000 ALTER TABLE `progresso` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-05 20:54:25
