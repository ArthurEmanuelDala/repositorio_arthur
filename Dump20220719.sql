CREATE DATABASE  IF NOT EXISTS `aluno_prova` /*!40100 DEFAULT CHARACTER SET utf8mb3 COLLATE utf8_bin */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `aluno_prova`;
-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: aluno_prova
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Dumping events for database 'aluno_prova'
--

--
-- Dumping routines for database 'aluno_prova'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-19 11:45:08
CREATE DATABASE  IF NOT EXISTS `db_prova` /*!40100 DEFAULT CHARACTER SET utf8mb3 COLLATE utf8_bin */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `db_prova`;
-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: db_prova
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `aluno`
--

DROP TABLE IF EXISTS `aluno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aluno` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) COLLATE utf8_bin NOT NULL,
  `celular` varchar(20) COLLATE utf8_bin NOT NULL,
  `email` varchar(60) COLLATE utf8_bin NOT NULL,
  `github_usuario` varchar(45) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aluno`
--

LOCK TABLES `aluno` WRITE;
/*!40000 ALTER TABLE `aluno` DISABLE KEYS */;
INSERT INTO `aluno` VALUES (1,'Arthur Emanuel','4998918-0958','arthuremanueldalalibera@gmail.com','ArthurEmanuelDala'),(2,'Diego Carraro','4999840-7925','diegocarraro10@gmail.com','DiegoCarraro'),(5,'Arthur Emanuel','4998918-0958','arthuremanueldalalibera@gmail.com','ArthurEmanuelDala'),(6,'Diego Carraro','4999840-7925','diegocarraro10@gmail.com','DiegoCarraro');
/*!40000 ALTER TABLE `aluno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aluno_prova`
--

DROP TABLE IF EXISTS `aluno_prova`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aluno_prova` (
  `aluno_id` int NOT NULL,
  `prova_id` int NOT NULL,
  PRIMARY KEY (`aluno_id`,`prova_id`),
  KEY `fk_prova_idx` (`prova_id`),
  CONSTRAINT `fk_aluno` FOREIGN KEY (`aluno_id`) REFERENCES `aluno` (`id`),
  CONSTRAINT `fk_prova` FOREIGN KEY (`prova_id`) REFERENCES `prova` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aluno_prova`
--

LOCK TABLES `aluno_prova` WRITE;
/*!40000 ALTER TABLE `aluno_prova` DISABLE KEYS */;
INSERT INTO `aluno_prova` VALUES (1,784),(2,784);
/*!40000 ALTER TABLE `aluno_prova` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pergunta`
--

DROP TABLE IF EXISTS `pergunta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pergunta` (
  `id` int NOT NULL,
  `pergunta` varchar(150) COLLATE utf8_bin NOT NULL,
  `prova_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_pergunta_prova_idx` (`prova_id`),
  CONSTRAINT `fk_pergunta_prova` FOREIGN KEY (`prova_id`) REFERENCES `prova` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pergunta`
--

LOCK TABLES `pergunta` WRITE;
/*!40000 ALTER TABLE `pergunta` DISABLE KEYS */;
INSERT INTO `pergunta` VALUES (2,'O que é um banco de dados?',784),(3,'Explique o que é um SGBD e cite exemplos.',784),(4,'O que são DML, DCL, DDL e DQL?',784),(5,'O que é uma Entidade?',784),(6,'Descreva oque é uma chave primária.',784),(7,'Descreva o que é uma chave estrangeira.',784),(8,'Cite a diferença entre chave primária e chave estrangeira',784),(9,'Um campo do tipo char armazena quais valores? E do tipo, int, varchar, date, datetime?',784),(10,'Explique a(s) diferenças entre os tipos Timme, Year, DateTime e Date?',784),(11,'Explique p/ que serve a instrução DELETE.',784);
/*!40000 ALTER TABLE `pergunta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prova`
--

DROP TABLE IF EXISTS `prova`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prova` (
  `id` int NOT NULL,
  `disciplina` varchar(45) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prova`
--

LOCK TABLES `prova` WRITE;
/*!40000 ALTER TABLE `prova` DISABLE KEYS */;
INSERT INTO `prova` VALUES (784,'Banco de Dados Relacionais e SQL');
/*!40000 ALTER TABLE `prova` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resposta`
--

DROP TABLE IF EXISTS `resposta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `resposta` (
  `id` int NOT NULL AUTO_INCREMENT,
  `resposta` varchar(1000) COLLATE utf8_bin NOT NULL,
  `pergunta_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_resposta_pergunta_idx` (`pergunta_id`),
  CONSTRAINT `fk_resposta_pergunta` FOREIGN KEY (`pergunta_id`) REFERENCES `pergunta` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resposta`
--

LOCK TABLES `resposta` WRITE;
/*!40000 ALTER TABLE `resposta` DISABLE KEYS */;
INSERT INTO `resposta` VALUES (101,'É um conjunto de tabelas nos quais armazenamos dados, que podem ser fisícos e lógicos, e seu objetivo é facilitar o fornecimento de informações ao usuário',2),(102,'Significa o Sistema de Gerenciamento de Banco de Dados, contendo nela ferramentas de edição e criação de tabelas etc.. Tais principais como Oracle, SQL Server, DB2, MongoDB, PostgreSQL, NoSQL',3),(103,'DML: É um conjunto de instruções usada nas consultas e modificações dos dados armazenados nas tabelas do banco de dados\n		   INSERT: Instrução utilizada para inserir dados a uma ou mais tabelas no banco de dados,\n           DCL: São para controle e acesso e gerenciamento de permissões parra usuários no banco de dados. Com eles, pode facilmente permitir ou negar algumas ações para usuários nas tabelas ou registrios\n           GRANT: Atribui privilégios de acesso ao usuário,\n           DDL: É um conjunto de instruções usado para criar e modificar as estruturas dos objetos armazenados no Banco de Dados\n		   CREATE: Usa-se instruções Create para definir novas entidades,\n           DQL: Ele é responsável por comandos de consultas aos dados armazenados, dentro dele encontramos apenas o comando SELECT',4),(104,'Entidades são objetos que estão presentes no dia a dia, pode ser qualquer coisa, exemplo TV, abajur, um móvel etc...e dentro disso existem os lógicos, que são dependentes dos fisicos e suas de suas funcionalidades\n			As entidades ficam dividas em tres tipos: FORTE, FRACA, ASSOCIATIVA',5),(105,'Chave primária é o identificador único de um registro na tabela, exemplo CPF onde cada dado é único e não se repete',6),(106,'Chave estrangeira é a chave que permite a referência a registros oriundos de outras tabelas',7),(107,' A diferença entre chave primária e chave estrangeira é que enquanto a chave primaria é um identificador único a chave estrangeira representa uma relação entre demais tabelas, usando um dado já disponibilizado',8),(108,'Char armazena valores inteiros com ou sem sinal tipo valores fixos, INT armazena dados inteiros ,ou seja, somente número, Varchar armazena números, letras, caracteres, ele é do tipo variável, o DATE armazena dados de tempo\n			como, meses, data e o DATATIME armazena dados tipo hora, e data com precisão de nanosegundos.',9),(109,' TIME é o dado utilizado para armazenar uma faixa de tempo, é exibido pelo MySQL no formato de HH:MM:SS, o YEAR armazena o ano, que pode ser com dois ou quatro algarismos, entre 1901 a 2155, o \n		DATATIME armazena dados tipo hora, e data com precisão de nanosegundos, DATE armazena dados de tempo como, meses, data',10),(110,' A instrução DELETE serve para excluir um registro na sua tabela, escreve-se DELETE FROM nome_tabela WHERE Clause',11);
/*!40000 ALTER TABLE `resposta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'db_prova'
--

--
-- Dumping routines for database 'db_prova'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-19 11:45:08
