CREATE DATABASE  IF NOT EXISTS `dados2` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `dados2`;
-- MySQL dump 10.14  Distrib 5.5.63-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: dados2
-- ------------------------------------------------------
-- Server version	5.5.63-MariaDB-1ubuntu0.14.04.1

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
-- Table structure for table `joh_classificacao`
--

DROP TABLE IF EXISTS `joh_classificacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joh_classificacao` (
  `joh_id` int(11) NOT NULL,
  `joh_name` varchar(255) NOT NULL,
  PRIMARY KEY (`joh_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `joh_classificacao`
--

LOCK TABLES `joh_classificacao` WRITE;
/*!40000 ALTER TABLE `joh_classificacao` DISABLE KEYS */;
INSERT INTO `joh_classificacao` VALUES (1,'Meio Ambiente');
/*!40000 ALTER TABLE `joh_classificacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `joh_ideias`
--

DROP TABLE IF EXISTS `joh_ideias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joh_ideias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) DEFAULT NULL,
  `resumo` varchar(300) DEFAULT NULL,
  `descricao` varchar(3000) DEFAULT NULL,
  `idRecursos` int(11) DEFAULT NULL,
  `tipo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `joh_ideias`
--

LOCK TABLES `joh_ideias` WRITE;
/*!40000 ALTER TABLE `joh_ideias` DISABLE KEYS */;
INSERT INTO `joh_ideias` VALUES (1,'Park Security (estacionamento seguro)','Desenvolver um aplicativo para cadastrar os veí­culos e fazer a gestaoo dos espacos para estacionar','O Aplicativo que estará com o seguranca contará com a facilidade da visaoo computacional para tirar uma foto da placa do carro e consultar no banco de dados, se naoo for cadastrado entaoo irá disponibilizar o cadastro rápido do veí­culo no aplicativo possuirá botões para alertas- 1 vermelho para situacões muito urgentes, ou seja, existe um sinistro em curso\n- 2 Amarelo: para alertar sobre uma situacaoo suspeita\n- 3 Verde: indicando que esta tudo bem, para os donos ficarem tranquilos.',1,'Aplicativo'),(2,'Toten Evangelí­stico para Hospital','Criar um móvel com suporte para um TV, para ser colocado filmes e mensagens de auto ajuda, alem de colocar tambem um equipamento eletronico para coletar pedidos de oracaoo e outro lugar para deixar livros e brinquedos para uso publico.','O Toten seria colocado em um lugar de facil acesso e seria atualizado pela internet com conteudos de mensagens biblicas, oracoes, musicas com mensagens.',1,'financeiro'),(3,'Banho Portatil','Criar um dispositivo pratico que possa ser levado em uma mochila, que possa aquecer uma certa quantidade de agua e fixando em uma porta por exemplo possa diponibilizar banho rapido e economico.','O dispositivo seria no formato de um cilindro feito de plastico e com um reservatorio para 5 litros de agua, sendo aquecida por uma resistencia dentro de uma bolsa própria.',1,'Higiene'),(4,'neto','teste','neto',0,'neto');
/*!40000 ALTER TABLE `joh_ideias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `joh_recursos`
--

DROP TABLE IF EXISTS `joh_recursos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joh_recursos` (
  `idRecurso` int(11) NOT NULL,
  `tipoRecurso` varchar(45) DEFAULT NULL,
  `descricao` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`idRecurso`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `joh_recursos`
--

LOCK TABLES `joh_recursos` WRITE;
/*!40000 ALTER TABLE `joh_recursos` DISABLE KEYS */;
INSERT INTO `joh_recursos` VALUES (1,'Financeiro','capital necessario');
/*!40000 ALTER TABLE `joh_recursos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mysql_migrations_347ertt3e`
--

DROP TABLE IF EXISTS `mysql_migrations_347ertt3e`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mysql_migrations_347ertt3e` (
  `timestamp` varchar(254) NOT NULL,
  UNIQUE KEY `timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mysql_migrations_347ertt3e`
--

LOCK TABLES `mysql_migrations_347ertt3e` WRITE;
/*!40000 ALTER TABLE `mysql_migrations_347ertt3e` DISABLE KEYS */;
INSERT INTO `mysql_migrations_347ertt3e` VALUES ('1557400077527'),('1557415673046'),('1557416094760'),('1557416192231'),('1557416277498'),('1557416938188');
/*!40000 ALTER TABLE `mysql_migrations_347ertt3e` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-10 22:21:39
