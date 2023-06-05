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
-- Table structure for table `checkin`
--

DROP TABLE IF EXISTS `checkin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `checkin` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `eventoFk` bigint NOT NULL,
  `usuarioFk` bigint NOT NULL,
  `data` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `eventoFk` (`eventoFk`),
  KEY `usuarioFk` (`usuarioFk`),
  CONSTRAINT `checkIn_ibfk_1` FOREIGN KEY (`eventoFk`) REFERENCES `eventos` (`id`),
  CONSTRAINT `checkIn_ibfk_2` FOREIGN KEY (`usuarioFk`) REFERENCES `usuarios` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `checkin`
--

LOCK TABLES `checkin` WRITE;
/*!40000 ALTER TABLE `checkin` DISABLE KEYS */;
INSERT INTO `checkin` VALUES (1,1,1,'2023-05-23 00:21:13'),(2,1,2,'2023-05-23 00:21:13'),(3,1,5,'2023-05-23 00:21:13'),(4,2,2,'2023-05-23 00:21:13'),(5,2,4,'2023-05-23 00:21:13'),(6,2,5,'2023-05-23 00:21:13'),(7,2,6,'2023-05-23 00:21:13'),(8,3,1,'2023-05-23 00:21:13'),(9,3,6,'2023-05-23 00:21:13'),(10,4,3,'2023-05-23 00:21:13'),(11,4,4,'2023-05-23 00:21:13'),(12,4,5,'2023-05-23 00:21:13'),(13,1,5,'2023-05-23 01:40:58'),(14,1,6,'2023-05-23 01:40:58'),(28,1,2,'2023-06-05 20:38:25'),(29,1,1,'2023-01-01 00:00:00'),(30,1,5,'2023-06-05 20:38:25'),(31,2,6,'2023-06-05 20:38:25'),(32,2,4,'2023-06-05 20:38:25'),(33,3,1,'2023-05-05 00:00:00'),(34,3,2,'2023-06-05 20:38:25'),(35,3,4,'2023-06-05 20:38:25'),(36,3,6,'2023-08-08 00:00:00'),(37,4,1,'2023-06-05 20:38:25'),(38,4,4,'2023-06-05 20:38:25'),(39,4,6,'2023-06-05 20:38:25'),(40,5,2,'2023-06-05 20:38:25'),(41,1,2,'2023-06-05 20:45:37'),(42,1,1,'2023-01-01 00:00:00'),(43,1,5,'2023-06-05 20:45:37'),(44,2,6,'2023-06-05 20:45:37'),(45,2,4,'2023-06-05 20:45:37'),(46,3,1,'2023-05-05 00:00:00'),(47,3,2,'2023-06-05 20:45:37'),(48,3,4,'2023-06-05 20:45:37'),(49,3,6,'2023-08-08 00:00:00'),(50,4,1,'2023-06-05 20:45:37'),(51,4,4,'2023-06-05 20:45:37'),(52,4,6,'2023-06-05 20:45:37'),(53,5,2,'2023-06-05 20:45:37');
/*!40000 ALTER TABLE `checkin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `checklist`
--

DROP TABLE IF EXISTS `checklist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `checklist` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `localFk` bigint NOT NULL,
  `itemFk` bigint NOT NULL,
  `qtd` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `localFk` (`localFk`),
  KEY `itemFk` (`itemFk`),
  CONSTRAINT `checkList_ibfk_1` FOREIGN KEY (`localFk`) REFERENCES `locais` (`id`),
  CONSTRAINT `checkList_ibfk_2` FOREIGN KEY (`itemFk`) REFERENCES `item` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `checklist`
--

LOCK TABLES `checklist` WRITE;
/*!40000 ALTER TABLE `checklist` DISABLE KEYS */;
INSERT INTO `checklist` VALUES (1,1,1,1),(2,1,2,1),(3,1,5,1),(4,2,1,1),(5,2,5,1),(6,3,3,1),(7,3,2,1),(8,4,1,1),(9,4,2,1),(10,4,3,1),(11,4,5,1),(12,1,2,1),(13,1,5,1),(14,1,6,1),(15,1,3,1),(16,2,1,1),(17,2,2,1),(18,3,3,1),(19,3,4,1),(20,3,5,1),(21,4,1,1),(22,4,3,1),(23,4,5,1),(24,4,6,1),(25,1,2,1),(26,1,5,1),(27,1,6,1),(28,1,3,1),(29,2,1,1),(30,2,2,1),(31,3,3,1),(32,3,4,1),(33,3,5,1),(34,4,1,1),(35,4,3,1),(36,4,5,1),(37,4,6,1);
/*!40000 ALTER TABLE `checklist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eventos`
--

DROP TABLE IF EXISTS `eventos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `eventos` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nome` varchar(200) NOT NULL,
  `localFk` bigint NOT NULL,
  `inicio` datetime NOT NULL,
  `fim` datetime NOT NULL,
  `inicioCheckIn` datetime NOT NULL,
  `fimCheckIn` datetime NOT NULL,
  `vagas` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `localFk` (`localFk`),
  CONSTRAINT `eventos_ibfk_1` FOREIGN KEY (`localFk`) REFERENCES `locais` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eventos`
--

LOCK TABLES `eventos` WRITE;
/*!40000 ALTER TABLE `eventos` DISABLE KEYS */;
INSERT INTO `eventos` VALUES (1,'Workshop Cloud Básico',5,'2023-07-07 18:45:00','2023-07-07 23:10:00','2023-06-07 18:45:00','2023-07-07 18:45:00',32),(2,'Desenho Técnico SolidWorks',5,'2023-08-01 18:45:00','2023-08-02 23:10:00','2023-06-08 18:45:00','2023-08-01 18:45:00',32),(3,'Ensaios Mecânicos Avançados',4,'2023-12-01 18:45:00','2023-12-02 23:10:00','2023-12-08 18:45:00','2023-12-01 18:45:00',30),(4,'Conquistando o primeiro milhão',2,'2023-12-12 18:45:00','2023-12-12 23:10:00','2023-12-12 18:45:00','2023-12-12 18:45:00',100),(5,'Como fazer ovo de pascoa',1,'2023-01-01 18:45:00','2023-01-01 23:10:00','2023-01-01 18:45:00','2023-01-01 18:45:00',16),(6,'Workshop Cloud Básico',2,'2023-05-26 18:45:00','2023-05-26 23:45:00','2023-05-26 18:45:00','2023-05-26 23:45:00',30),(7,'Workshop Desenho SolidWorks',3,'2023-06-26 18:45:00','2023-06-26 23:45:00','2023-06-01 18:45:00','2023-06-01 23:45:00',16),(8,'Blockchain Básico',1,'2023-08-12 18:45:00','2023-08-15 23:45:00','2023-05-26 18:45:00','2023-05-26 23:45:00',0),(9,'Decolando sua carreira',4,'2023-12-12 18:45:00','2023-12-12 23:45:00','2023-08-26 18:45:00','2023-08-26 23:45:00',59),(10,'Desmistificando Spring Framework',1,'2024-01-26 18:45:00','2024-01-30 23:45:00','2024-01-01 18:45:00','2024-01-01 23:45:00',16),(11,'Criptomoedas e Web3',1,'2023-05-30 18:45:00','2023-05-30 23:45:00','2023-05-30 18:45:00','2023-05-30 23:45:00',10);
/*!40000 ALTER TABLE `eventos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nome` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES (1,'Projetor'),(2,'Ar condicionado'),(3,'Lousa digital'),(4,'Home Theater'),(5,'Ipad'),(6,'Ferro de Solda'),(7,'Projetor'),(8,'Tablet'),(9,'Ar condicionado'),(10,'Monitor'),(11,'TV Smart'),(12,'Som'),(13,'Projetor'),(14,'Tablet'),(15,'Ar condicionado'),(16,'Monitor'),(17,'TV Smart'),(18,'Som');
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locais`
--

DROP TABLE IF EXISTS `locais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `locais` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nome` varchar(150) NOT NULL,
  `bloco` enum('A','B','C','D') NOT NULL,
  `lotacao` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locais`
--

LOCK TABLES `locais` WRITE;
/*!40000 ALTER TABLE `locais` DISABLE KEYS */;
INSERT INTO `locais` VALUES (1,'Laboratório Eletrônica 01','A',16),(2,'Auditório','C',100),(3,'Laboratório Eletrônica 02','B',16),(4,'Laboratório Mecânica 01','A',30),(5,'Laboratório Informática 01','D',32),(6,'Laboratório Eletrônica 01','A',16),(7,'Laboratório Informática 02','C',30),(8,'Laboratório Metalmecânica','B',16),(9,'Auditório','A',100),(10,'Laboratório Eletrônica 02','A',16),(11,'Laboratório Ensaios Mecânicos','D',32),(12,'Laboratório Eletrônica 01','A',16),(13,'Laboratório Informática 02','C',30),(14,'Laboratório Metalmecânica','B',16),(15,'Auditório','A',100),(16,'Laboratório Eletrônica 02','A',16),(17,'Laboratório Ensaios Mecânicos','D',32);
/*!40000 ALTER TABLE `locais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nivelacesso`
--

DROP TABLE IF EXISTS `nivelacesso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nivelacesso` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nivel` varchar(100) NOT NULL,
  `descricao` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nivelacesso`
--

LOCK TABLES `nivelacesso` WRITE;
/*!40000 ALTER TABLE `nivelacesso` DISABLE KEYS */;
INSERT INTO `nivelacesso` VALUES (1,'Admin','blablá'),(2,'Gestor','blablá'),(3,'Usuário','blablá'),(4,'Visitante','blablá'),(5,'ADMIN',NULL),(6,'GESTOR',NULL),(7,'USUARIO',NULL),(8,'VISITANTE',NULL),(9,'ADMIN',NULL),(10,'GESTOR',NULL),(11,'USUARIO',NULL),(12,'VISITANTE',NULL);
/*!40000 ALTER TABLE `nivelacesso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ocupacao`
--

DROP TABLE IF EXISTS `ocupacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ocupacao` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `titulo` varchar(150) NOT NULL,
  `nivelAcessoFk` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `nivelAcessoFk` (`nivelAcessoFk`),
  CONSTRAINT `ocupacao_ibfk_1` FOREIGN KEY (`nivelAcessoFk`) REFERENCES `nivelacesso` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ocupacao`
--

LOCK TABLES `ocupacao` WRITE;
/*!40000 ALTER TABLE `ocupacao` DISABLE KEYS */;
INSERT INTO `ocupacao` VALUES (1,'Professor',3),(2,'Secretaria',3),(3,'Coordenador',2),(4,'Orientador',2),(5,'Aluno',4),(6,'TI',1),(7,'Professor',3),(8,'Secretária',3),(9,'Coordenador',2),(10,'Orientador',2),(11,'Aluno',4),(12,'Analista de Sistemas',1),(13,'Diretor',1),(14,'Professor',3),(15,'Secretária',3),(16,'Coordenador',2),(17,'Orientador',2),(18,'Aluno',4),(19,'Analista de Sistemas',1),(20,'Diretor',1);
/*!40000 ALTER TABLE `ocupacao` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `responsaveis`
--

DROP TABLE IF EXISTS `responsaveis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `responsaveis` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `tarefasFK` bigint NOT NULL,
  `responsavelFK` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tarefasFK` (`tarefasFK`),
  KEY `responsavelFK` (`responsavelFK`),
  CONSTRAINT `responsaveis_ibfk_1` FOREIGN KEY (`tarefasFK`) REFERENCES `tarefas` (`id`),
  CONSTRAINT `responsaveis_ibfk_2` FOREIGN KEY (`responsavelFK`) REFERENCES `usuarios` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `responsaveis`
--

LOCK TABLES `responsaveis` WRITE;
/*!40000 ALTER TABLE `responsaveis` DISABLE KEYS */;
INSERT INTO `responsaveis` VALUES (31,49,3),(32,50,4),(33,51,1),(34,52,2),(35,51,4),(36,50,4);
/*!40000 ALTER TABLE `responsaveis` ENABLE KEYS */;
UNLOCK TABLES;

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

-- Dump completed on 2023-06-05 20:54:43
