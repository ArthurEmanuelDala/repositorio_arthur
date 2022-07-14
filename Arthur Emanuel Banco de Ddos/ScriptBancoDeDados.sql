CREATE DATABASE  IF NOT EXISTS `db_loja` /*!40100 DEFAULT CHARACTER SET utf8mb3 COLLATE utf8_bin */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `db_loja`;
-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: db_loja
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
-- Table structure for table `autor`
--

DROP TABLE IF EXISTS `autor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `autor` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(10) COLLATE utf8_bin NOT NULL,
  `sobrenome` varchar(15) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autor`
--

LOCK TABLES `autor` WRITE;
/*!40000 ALTER TABLE `autor` DISABLE KEYS */;
INSERT INTO `autor` VALUES (10,'Arthur','Emanuel'),(11,'João','Pedro'),(12,'Gabriel','Lidio'),(13,'Gabriel','Lidio'),(14,'Luiz','Fernando'),(15,'Pedro','Lucas'),(16,'João','Gabriel'),(17,'Gustavo','Pedroso'),(18,'Lucas','Mueller'),(19,'Adrian','Feier');
/*!40000 ALTER TABLE `autor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoria` (
  `id` int NOT NULL AUTO_INCREMENT,
  `categoria` varchar(10) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (1,'Infantil'),(2,'Romance'),(3,'Ação'),(4,'Fictícia'),(5,'Drama'),(6,'Direitos'),(7,'Romance'),(8,'Ação'),(9,'Fictícia'),(10,'Drama'),(11,'Direitos'),(12,'Romance'),(13,'Ação'),(14,'Fictícia'),(15,'Drama'),(16,'Direitos'),(17,'Ciências'),(18,'Aventura'),(19,'Matemática');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contato`
--

DROP TABLE IF EXISTS `contato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contato` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(10) COLLATE utf8_bin NOT NULL,
  `sobrenome` varchar(15) COLLATE utf8_bin NOT NULL,
  `ddd` varchar(4) COLLATE utf8_bin NOT NULL,
  `telefone` varchar(15) COLLATE utf8_bin NOT NULL,
  `data_nasc` varchar(15) COLLATE utf8_bin NOT NULL,
  `email` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contato`
--

LOCK TABLES `contato` WRITE;
/*!40000 ALTER TABLE `contato` DISABLE KEYS */;
INSERT INTO `contato` VALUES (5,'Arthur','Emanuel','49','989180958','08/01/2006','arthuremanueldalalibera@gmail.com'),(6,'João','Pedro','49','988888330','05/06/2000','joaopedro@gmail.com'),(7,'Gustavo','Santos','48','956483215','02/08/1990','santos_gustavo@gmail.com'),(8,'José','Paulo','53','987519634','26/04/1996','josepaulo@hotmail.com'),(9,'Gabriel','Lídio','11','955443220','17/02/1983','gabilidio@outlook.com'),(10,'Maurício','Junior','49','93322580','09/08/1963','mauriciojsr@yahoo.com'),(11,'Eduardo','Martins','49','947598623','25/07/1992','martins_eduardo04@gmail.com'),(12,'Maiara','Santos','21','985556935','20/11/1995','maisantos@hotmail.com'),(13,'Anderson','Lima','13','975328564','18/09/2001','limaandreson@outlook.live..com'),(14,'Rafaela','Camargo','49','945356879','02/03/2004','carafa@gmail.com'),(15,'Letícia','Dalva','49','985243658','28/07/2003','leticiadalva@gmail.com');
/*!40000 ALTER TABLE `contato` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curso`
--

DROP TABLE IF EXISTS `curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `curso` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(10) COLLATE utf8_bin NOT NULL,
  `nivel` varchar(15) COLLATE utf8_bin NOT NULL,
  `data_inicio` varchar(15) COLLATE utf8_bin NOT NULL,
  `data_fim` varchar(15) COLLATE utf8_bin NOT NULL,
  `valor` varchar(25) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curso`
--

LOCK TABLES `curso` WRITE;
/*!40000 ALTER TABLE `curso` DISABLE KEYS */;
INSERT INTO `curso` VALUES (1,'Arthur','Avançado','02/03/2021','02/12/2021','650,00 Mensais'),(3,'Lucas','Básico 1','05/03/2021','05/12/2021','300,00 Mensais'),(4,'Fabiana','Básico','21/03/2021','21/12/2021','250,00 Mensais'),(5,'Camila','Avaçado 1','17/03/2021','17/12/2021','620,00 Mensais'),(6,'Pedro','Avançado 3','12/03/2021','12/12/2021','701,00 Mensais'),(12,'José','Intermediário','09/03/2021','09/12/2021','450,00 Mensais'),(13,'Fernando','Básico','20/03/2021','20/12/2021','360,00 Mensais'),(14,'Maria','Avançado 2','13/03/2021','13/12/2021','502,00 Mensais'),(15,'Kátia','Basico','28/03/2021','28/12/2021','302,00 Mensais'),(16,'Matheus','Avançado','05/03/2021','05/12/2021','405,00 Mensais'),(17,'Marcos','Basico','10/03/2021','10/12/2021','225,00 Mensais'),(18,'Cleber','Intermediário','15/03/2021','15/12/2021','455,00 Mensais'),(19,'Fabio','Avançado','22/03/2021','22/12/2021','405,00 Mensais');
/*!40000 ALTER TABLE `curso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email`
--

DROP TABLE IF EXISTS `email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `email` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(45) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email`
--

LOCK TABLES `email` WRITE;
/*!40000 ALTER TABLE `email` DISABLE KEYS */;
INSERT INTO `email` VALUES (1,'arthuremanueldalalibera@gmail.com'),(2,'josehenrique@hotmail.com'),(3,'pedrolucas@gmail.com'),(4,'ribeiromaria@outlook.com'),(5,'marianalima@gmail.com'),(6,'rafaelacardoso@outlook.live.com'),(7,'fernandojr@gmail.com'),(8,'ramirodaniel@gmail.com'),(9,'carlosfernando@hotmail.com'),(10,'pedrocamargo@hotmail.com');
/*!40000 ALTER TABLE `email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filial`
--

DROP TABLE IF EXISTS `filial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `filial` (
  `id` int NOT NULL AUTO_INCREMENT,
  `razaoSocial` varchar(50) COLLATE utf8_bin NOT NULL,
  `nomeFantasiaFilial` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `endereco` varchar(50) COLLATE utf8_bin NOT NULL,
  `cidade` varchar(15) COLLATE utf8_bin NOT NULL,
  `cep` varchar(10) COLLATE utf8_bin NOT NULL,
  `estado` varchar(20) COLLATE utf8_bin NOT NULL,
  `pais` varchar(10) COLLATE utf8_bin NOT NULL,
  `cnpj` varchar(20) COLLATE utf8_bin NOT NULL,
  `inscricaoEstadual` varchar(30) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filial`
--

LOCK TABLES `filial` WRITE;
/*!40000 ALTER TABLE `filial` DISABLE KEYS */;
INSERT INTO `filial` VALUES (1,'Coca-Cola','Coca','Bairro Efapi - Rua Marechal','Chapecó','89.801-463','Santa Catarina','Brasil','05.295.362/0002-56','388.108.598.269'),(2,'ABP Engenharia LTDA','ABP','Bairro Presidente Médice - Rua Gênova','Chapecó','89.801-115','Santa Catarina','Brasil','02.396.301/0001-01','459.228.205.306'),(3,'Skin','Skin','Bairro Jardim América - Rua das Palmeiras','São Paulo','89.801-463','São Paulo','Brasil','58.368.571/0015-01','561.897.468.878'),(4,'Santa Maria','Santa Maria','Bairro Paraíso - Rua Luíza Machado','Luziânia','89.801-463','Goiás','Brasil','02.298.562/0003-21','794.897.687.684'),(5,'Nostra Casa','Nostra Casa','Bairro Capimzal - Rua Pedro Luíz','São Machado','89.801-463','Rio de Janeiro','Brasil','08.485.209/0008-34','844.599.489.948'),(6,'Havam','Havam','Bairro São Pedro - Rua Campinas','Luiz Corrêa','89.801-463','Amazônia','Brasil','07.125.458/0001-18','854.648.974.059'),(7,'Americanas','Americanas','Bairro Marechal Bormamn - Rua São Luíz','Campoere','89.801-463','Acre','Brasil','04.421.575/0009-64','764.978.495.499'),(8,'Schuman','Schuman','Bairro Goiânia - Rua Fernando Machado','Petrolina','89.801-463','Minas Gerais ','Brasil','05.620.205/0010-86','501.498.864.589'),(9,'Papelaria Estrela','Estrela','Bairro Filipinas - Rua Paraíso','Canoainhas','89.801-463','Santa Catarina','Brasil','10.789.581/0006-15','987.231.465.167'),(10,'Influx Chapecó','Influx','Bairro Campinas - Rua São Paulo','Ronda Alta','89.801-463','Rio Grande do Sul','Brasil','08.654.231/0005-48','101.621.329.571');
/*!40000 ALTER TABLE `filial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fornecedor`
--

DROP TABLE IF EXISTS `fornecedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fornecedor` (
  `id` int NOT NULL AUTO_INCREMENT,
  `razaoSocial` varchar(50) COLLATE utf8_bin NOT NULL,
  `nomeFantasia` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `inscricaoEstadual` varchar(30) COLLATE utf8_bin NOT NULL,
  `cnpj` varchar(16) COLLATE utf8_bin NOT NULL,
  `produtoServico` varchar(50) COLLATE utf8_bin NOT NULL,
  `endereco` varchar(45) COLLATE utf8_bin NOT NULL,
  `cep` varchar(10) COLLATE utf8_bin NOT NULL,
  `cidade` varchar(15) COLLATE utf8_bin NOT NULL,
  `estado` varchar(20) COLLATE utf8_bin NOT NULL,
  `email` varchar(35) COLLATE utf8_bin DEFAULT NULL,
  `website` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `observacoes` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`,`cnpj`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fornecedor`
--

LOCK TABLES `fornecedor` WRITE;
/*!40000 ALTER TABLE `fornecedor` DISABLE KEYS */;
/*!40000 ALTER TABLE `fornecedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `livro`
--

DROP TABLE IF EXISTS `livro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `livro` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) COLLATE utf8_bin NOT NULL,
  `isbn13` varchar(20) COLLATE utf8_bin NOT NULL,
  `isbn10` varchar(20) COLLATE utf8_bin NOT NULL,
  `dataPublicacao` varchar(10) COLLATE utf8_bin NOT NULL,
  `preco` varchar(6) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `livro`
--

LOCK TABLES `livro` WRITE;
/*!40000 ALTER TABLE `livro` DISABLE KEYS */;
/*!40000 ALTER TABLE `livro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `material`
--

DROP TABLE IF EXISTS `material`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `material` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `material`
--

LOCK TABLES `material` WRITE;
/*!40000 ALTER TABLE `material` DISABLE KEYS */;
INSERT INTO `material` VALUES (1,'Cimento'),(2,'Pó de Brita'),(3,'Brita Graduada'),(4,'Areia Média'),(5,'Areia Fina'),(6,'Aço 5MT, 8mm'),(7,'Paver de Acessibilidade'),(8,'Areia Grossa'),(9,'Brita 1'),(10,'Betonera 500L');
/*!40000 ALTER TABLE `material` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mensagem`
--

DROP TABLE IF EXISTS `mensagem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mensagem` (
  `id` int NOT NULL AUTO_INCREMENT,
  `mensagem` varchar(100) COLLATE utf8_bin NOT NULL,
  `remetente` varchar(25) COLLATE utf8_bin NOT NULL,
  `destinatario` varchar(25) COLLATE utf8_bin NOT NULL,
  `data` varchar(15) COLLATE utf8_bin NOT NULL,
  `hora` varchar(7) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mensagem`
--

LOCK TABLES `mensagem` WRITE;
/*!40000 ALTER TABLE `mensagem` DISABLE KEYS */;
INSERT INTO `mensagem` VALUES (1,'Bom dia, Que horas será a reunião?','Diego Carraro','Arthur Emanuel','14/07/2022','10:20'),(2,'Bom tarde, Quando ocorrerá a concretagem da obra?','Pedro Lucas','William Cavalerio','12/01/2021','16:20'),(3,'Bom dia, Que horas será a reunião?','Diego Carraro','Arthur Emanuel','14/07/2022','10:20'),(4,'Bom tarde, Quando ocorrerá a concretagem da obra?','Pedro Lucas','William Cavalerio','12/01/2021','16:20'),(5,'Boa Noite, Que horas ocorerá a palestra?','Luíz Camargo','Josías Franco','12/05/2020','20:20');
/*!40000 ALTER TABLE `mensagem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prioridade`
--

DROP TABLE IF EXISTS `prioridade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prioridade` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prioridade`
--

LOCK TABLES `prioridade` WRITE;
/*!40000 ALTER TABLE `prioridade` DISABLE KEYS */;
INSERT INTO `prioridade` VALUES (2,'Alta'),(3,'Baixa'),(4,'Média'),(5,'Urgente'),(6,'Emergente'),(7,'Amanhã'),(8,'Média 2'),(9,'Alta 2'),(10,'Baixa 2'),(11,'Livre');
/*!40000 ALTER TABLE `prioridade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `professor`
--

DROP TABLE IF EXISTS `professor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `professor` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(10) COLLATE utf8_bin NOT NULL,
  `sobrenome` varchar(15) COLLATE utf8_bin NOT NULL,
  `disciplina` varchar(15) COLLATE utf8_bin NOT NULL,
  `data_admissao` varchar(10) COLLATE utf8_bin NOT NULL,
  `data_nascimento` varchar(10) COLLATE utf8_bin NOT NULL,
  `celular` varchar(15) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professor`
--

LOCK TABLES `professor` WRITE;
/*!40000 ALTER TABLE `professor` DISABLE KEYS */;
/*!40000 ALTER TABLE `professor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `setor`
--

DROP TABLE IF EXISTS `setor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `setor` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) COLLATE utf8_bin NOT NULL,
  `sigla` varchar(10) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setor`
--

LOCK TABLES `setor` WRITE;
/*!40000 ALTER TABLE `setor` DISABLE KEYS */;
INSERT INTO `setor` VALUES (1,'Administrativo','Adm'),(2,'Recurso Humanos','RH'),(3,'Compras','Comp'),(4,'Financeiro','FNC'),(5,'Menor Aprendiz','MAP'),(6,'Comercial','Com'),(7,'Recepcionista','REP'),(8,'Conselhativo','CONSE');
/*!40000 ALTER TABLE `setor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `email` varchar(45) DEFAULT NULL,
  `celular` int unsigned NOT NULL,
  `setor` varchar(45) NOT NULL,
  `filial` varchar(45) NOT NULL,
  `login` varchar(45) NOT NULL,
  `senha` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'db_loja'
--

--
-- Dumping routines for database 'db_loja'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-14 11:16:42
