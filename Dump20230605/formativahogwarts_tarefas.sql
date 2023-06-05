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
-- Table structure for table `tarefas`
--

DROP TABLE IF EXISTS `tarefas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tarefas` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `descricao` varchar(300) NOT NULL,
  `abertura` date NOT NULL,
  `prazo` int NOT NULL,
  `fechamento` date DEFAULT NULL,
  `solicitacao` bigint NOT NULL,
  `localFK` bigint NOT NULL,
  `progressoFk` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `solicitacao` (`solicitacao`),
  KEY `localFK` (`localFK`),
  KEY `progressoFk` (`progressoFk`),
  CONSTRAINT `tarefas_ibfk_1` FOREIGN KEY (`solicitacao`) REFERENCES `usuarios` (`id`),
  CONSTRAINT `tarefas_ibfk_2` FOREIGN KEY (`localFK`) REFERENCES `locais` (`id`),
  CONSTRAINT `tarefas_ibfk_3` FOREIGN KEY (`progressoFk`) REFERENCES `progresso` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tarefas`
--

LOCK TABLES `tarefas` WRITE;
/*!40000 ALTER TABLE `tarefas` DISABLE KEYS */;
INSERT INTO `tarefas` VALUES (49,'Formatação do computador: Computador não está ligando','2023-03-02',1,NULL,3,2,4),(50,'Verificar ar condicionado: O ar condicionado não refrigera a sala','2023-03-21',2,NULL,5,1,4),(51,'Tela riscado: A tela do PC está riscada','2023-03-11',3,NULL,2,1,1),(52,'Conserto ventilador: Ventilador não gira','2023-03-31',4,NULL,3,2,2),(53,'Teclado do PC: Teclas do PC 1 não funcionam','2023-03-23',5,NULL,2,3,4),(54,'Internet da sala: Sala esta sem internet','2023-03-07',5,NULL,1,2,1),(55,'Formatação do computador: Computador não está ligando','2023-03-02',2,NULL,3,2,4),(56,'Internet da sala: Sala esta sem internet','2023-03-31',4,NULL,3,2,2);
/*!40000 ALTER TABLE `tarefas` ENABLE KEYS */;
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
