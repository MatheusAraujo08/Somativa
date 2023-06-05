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
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nome` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `dataNascimento` date NOT NULL,
  `senha` varchar(30) NOT NULL,
  `dataCadastro` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ocupacaoFk` bigint NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `imagem` mediumtext,
  `numeroTelefone` varchar(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ocupacaoFk` (`ocupacaoFk`),
  CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`ocupacaoFk`) REFERENCES `ocupacao` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'João','joao@gmail.com','2000-01-01','55s888ff','2023-05-22 23:56:10',1,1,NULL,''),(2,'Mara','mara@gmail.com','1986-01-03','554333','2023-05-22 23:56:10',2,1,NULL,''),(3,'Clarice','clarice@gmail.com','1999-03-01','54455s888ff','2023-05-22 23:56:10',3,1,NULL,''),(4,'Roberto','roberto@gmail.com','2001-01-21','6666444','2023-05-22 23:56:10',4,1,NULL,''),(5,'Miguel','miguel@gmail.com','1995-03-03','3354','2023-05-22 23:56:10',1,1,NULL,''),(6,'Lúcia','lucia@gmail.com','1970-05-25','abbbcdd','2023-05-22 23:56:10',2,1,NULL,''),(7,'João','joao@gmail.com','2000-01-01','dsdknoidn393943','2023-06-05 20:47:04',5,1,NULL,'19929286912'),(8,'Maria','maria@gmail.com','2002-05-11','dsdkner4553','2023-06-05 20:47:04',2,1,NULL,'19929294356'),(9,'Clara','clara@gmail.com','1999-01-01','wewer3434','2023-06-05 20:47:04',5,1,NULL,'19929296693'),(10,'Roberto','roberto@gmail.com','1998-12-01','3434343ref','2023-06-05 20:47:04',1,1,NULL,'19929284271'),(11,'Carlos','carlos@gmail.com','1995-01-01','343refefe','2023-06-05 20:47:04',6,1,NULL,'19968492912'),(12,'Alex','alex@gmail.com','2004-01-11','448ffjfff','2023-06-05 20:47:04',2,1,NULL,'19927062912'),(13,'José','jose@gmail.com','1985-01-01','4488fjjf','2023-06-05 20:47:04',5,1,NULL,'19939272912'),(14,'Jéssica','jessica@gmail.com','1997-01-01','ahhfhhff','2023-06-05 20:47:04',4,1,NULL,'19929292912'),(15,'João','joao@gmail.com','2000-01-01','dsdknoidn393943','2023-06-05 20:49:59',5,1,NULL,'19929286912'),(16,'Maria','maria@gmail.com','2002-05-11','dsdkner4553','2023-06-05 20:49:59',2,1,NULL,'19929294356'),(17,'Clara','clara@gmail.com','1999-01-01','wewer3434','2023-06-05 20:49:59',5,1,NULL,'19929296693'),(18,'Roberto','roberto@gmail.com','1998-12-01','3434343ref','2023-06-05 20:49:59',1,1,NULL,'19929284271'),(19,'Carlos','carlos@gmail.com','1995-01-01','343refefe','2023-06-05 20:49:59',6,1,NULL,'19968492912'),(20,'Alex','alex@gmail.com','2004-01-11','448ffjfff','2023-06-05 20:49:59',2,1,NULL,'19927062912'),(21,'José','jose@gmail.com','1985-01-01','4488fjjf','2023-06-05 20:49:59',5,1,NULL,'19939272912'),(22,'Jéssica','jessica@gmail.com','1997-01-01','ahhfhhff','2023-06-05 20:49:59',4,1,NULL,'19929292912');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-05 20:54:24
