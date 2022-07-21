CREATE DATABASE  IF NOT EXISTS `db_agregacao` /*!40100 DEFAULT CHARACTER SET utf8mb3 COLLATE utf8_bin */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `db_agregacao`;
-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: db_agregacao
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
-- Table structure for table `classe`
--

DROP TABLE IF EXISTS `classe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `classe` (
  `cod_classe` int NOT NULL,
  `nome_classe` varchar(45) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`cod_classe`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classe`
--

LOCK TABLES `classe` WRITE;
/*!40000 ALTER TABLE `classe` DISABLE KEYS */;
INSERT INTO `classe` VALUES (1,'Limpeza'),(2,'Genêros de Livros'),(3,'Tecnologicos'),(4,'Eletrodomésticos'),(5,'Temperos'),(6,'Bebidas'),(7,'Mobílias'),(8,'Pets'),(9,'Brinquedos'),(10,'Roupas');
/*!40000 ALTER TABLE `classe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produto`
--

DROP TABLE IF EXISTS `produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produto` (
  `cod_produto` int NOT NULL,
  `cod_classe` int NOT NULL,
  `tipo_produto` varchar(45) COLLATE utf8_bin NOT NULL,
  `nome_produto` varchar(45) COLLATE utf8_bin NOT NULL,
  `quantidade_produto` varchar(45) COLLATE utf8_bin NOT NULL,
  `valor_produto` int NOT NULL,
  PRIMARY KEY (`cod_produto`),
  KEY `fk_cod_classe_idx` (`cod_classe`),
  CONSTRAINT `fk_cod_classe` FOREIGN KEY (`cod_classe`) REFERENCES `classe` (`cod_classe`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto`
--

LOCK TABLES `produto` WRITE;
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
INSERT INTO `produto` VALUES (1,1,'Limpeza','Detergente','40 unidades em Estoque',2),(2,2,'Genêros de Livros','As aventuras de Tintin','5 unidades em Estoque',50),(3,3,'Tecnologicos','Monitor LG 20\"','10 unidades em Estoque',2500),(4,4,'Eletrodomésticos','Geladeira Eletrolux','9 unidades em Estoque',3000),(5,5,'Temperos','Salsinha','50 pacotes de sememtes em Estoque',10),(6,6,'Bebidas','Coca-cola 600ml','60 latas em Estoque',4),(7,7,'Mobílias','Cadeira para cozinha','50 unidades em Estoque',100),(8,8,'Pets','Cachorro Dalmata','2 para adoção',0),(9,9,'Brinquedos','Ben 10 em miniatura','10 unidades em Estoque',30),(10,10,'Roupas','Camisa Ogochi M','50 unidades em Estoque',80),(11,1,'Limpeza','Sabão em Barra','70 unidades em Estoque',2),(12,2,'Genêros de Livros','É assim que se acaba','8 unidades em Estoque',40),(13,3,'Tecnologicos','Sansumg Galaxy S22','2 unidades em Estoque',5000),(14,4,'Eletrodomésticos','Fogão a Gás Midea','5 unidades em Estoque',2000),(15,5,'Temperos','Cebolinha','70 pacotes de sementes em Estoque',5),(16,6,'Bebidas','Sprite','50 Latas em Estoque',3),(17,7,'Mobílias','Cadeira de Praia','25 unidades em Estoque',30),(18,8,'Pets','Cachorro Salsicha','3 para adoção ',0),(19,9,'Brinquedos','Bola de Futebol Copa do Mundo 2018',' 5 unidades em Estoque',250),(20,10,'Roupas','Camiseta Nike','50 unidades em Estoque',70),(21,1,'Limpeza','Amaciante','60 unidades em Estoque',50),(22,2,'Genêros de Livros','Programação em C++','5 unidades em Estoque',100),(23,3,'Tecnologicos','NotBook Dell 20\"','2 unidades em Estoque',3500),(24,4,'Eletrodomésticos','Frezzer Brastemp','3 unidades em Estoque',2500),(25,5,'Temperos','Grão de Bico','50 pacotes de sementes em Estoque',7),(26,6,'Bebidas','Fanta Laranja 1,5L','26 unidade em Estoque',8),(27,7,'Mobílias','Nicho para Quarto','12 unidades em Estoque',40),(28,8,'Pets','Cachorro Labrador','5 para adoção',0),(29,9,'Brinquedos','Bolinha de gude','70 pacotes em Estoque',20),(30,10,'Roupas','Tênis Adidas','10 unidades em Estoque',200);
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'db_agregacao'
--

--
-- Dumping routines for database 'db_agregacao'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-21 11:17:10
