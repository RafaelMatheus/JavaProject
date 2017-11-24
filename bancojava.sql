-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: bancojava
-- ------------------------------------------------------
-- Server version	5.7.14

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
-- Table structure for table `agenda`
--

DROP TABLE IF EXISTS `agenda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `agenda` (
  `IDAgenda` int(11) NOT NULL AUTO_INCREMENT,
  `ID_Cliente` int(11) NOT NULL,
  `Data_Cob` date NOT NULL,
  `Data_Comp` date NOT NULL,
  PRIMARY KEY (`IDAgenda`),
  KEY `ID_Cliente` (`ID_Cliente`),
  CONSTRAINT `Agenda_ibfk_1` FOREIGN KEY (`ID_Cliente`) REFERENCES `cliente` (`IDCliente`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agenda`
--

LOCK TABLES `agenda` WRITE;
/*!40000 ALTER TABLE `agenda` DISABLE KEYS */;
INSERT INTO `agenda` VALUES (1,1,'0000-00-00','0000-00-00'),(2,1,'0000-00-00','0000-00-00'),(3,1,'0000-00-00','0000-00-00'),(4,1,'1999-01-22','1999-01-20');
/*!40000 ALTER TABLE `agenda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categoria` (
  `id_categoria` int(11) NOT NULL AUTO_INCREMENT,
  `categoria` varchar(30) NOT NULL,
  PRIMARY KEY (`id_categoria`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (1,'teste'),(2,'limpeza'),(3,'Algum'),(4,'Alguma'),(5,'Esporte');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cliente` (
  `Nome` varchar(40) NOT NULL,
  `Email` varchar(30) DEFAULT NULL,
  `Cpf` varchar(30) NOT NULL,
  `IDCliente` int(11) NOT NULL AUTO_INCREMENT,
  `sexo` varchar(10) NOT NULL,
  `DataNasc` varchar(10) NOT NULL,
  `Endereco` varchar(50) NOT NULL,
  `NumeroCasa` varchar(6) NOT NULL,
  `Cidade` varchar(50) NOT NULL,
  `Bairro` varchar(50) NOT NULL,
  `Estado` varchar(2) NOT NULL,
  `Telefone1` varchar(15) NOT NULL,
  `Telefone2` varchar(15) DEFAULT NULL,
  `Complemento` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`IDCliente`),
  UNIQUE KEY `Cpf` (`Cpf`),
  UNIQUE KEY `cpf_2` (`Cpf`),
  UNIQUE KEY `Cpf_3` (`Cpf`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES ('Eduardo',NULL,'21583548778',1,'','','','','','','','',NULL,NULL),('aqui','as','233.213.212-33',2,'Masculino','21/33/2313','32131','12','as','asa','as','(32)32131-3131','(32)31213-2332','as'),('Rafael Matheus','Proximo ao hospital de itambé','666.666.666-66',4,'Masculino','13/08/1999','Eliud falcão','140','Itambé','Centro','PE','(99)99999-9999','(  )     -    ','Proximo ao hospital de itambé'),('Matheus','','144.566.677-78',5,'Feminino','13/08/1998','mas','12','alguma','Santo','Al','(13)33355-5555','(33)32222-2222',''),('Pereira','adadsda','213.132.313-23',7,'Masculino','13/02/3333','23','321','321321','321313','as','(32)13313-2132','(  )     -    ','adadsda'),('','','   .   .   -  ',8,'Masculino','  /  /    ','','','','','','(  )     -    ','(  )     -    ',''),('Rafel','','213.213.213-21',10,'Masculino','12/31/3213','32132','12','21332','131','21','(13)23321-3231','(32)32132-2313',''),('Barry alen','Proximo a nada','123.366.666-66',11,'Masculino','12/36/8465','Estado da america','12','America ','Americano','es','(94)66666-6666','(  )     -    ','Proximo a nada'),('Isis','proximo a alguma cidade','333.333.333-33',12,'Feminino','12/33/3333','JJoão pessoa','23','Algum','Acacia','JP','(98)99999-9999','(99)99999-9999','proximo a alguma cidade'),('Matheus de castro','','111.111.111-11',13,'Masculino','13/02/2233','Eliudao','23','Alguma','Elud','13','(99)99999-9999','(99)99999-9999',''),('Debora evelly','Proximo ao colegio waldecyr','444.444.444-44',16,'Feminino','11/11/1111','Alguma','3','Pedras de fogo','Planalto','PB','(99)99999-9999','(  )     -    ','Proximo ao colegio waldecyr'),('Selma maria','Proximo ao hospital','555.555.555-55',17,'Feminino','11/11/1111','Eliud falcao','140','Itambé','Centro','Pb','(99)99999-9999','(  )     -    ','Proximo ao hospital'),('Rafaella marinho','Hospital','777.777.777-77',18,'Feminino','11/11/1111','eliud falcão','14','itambé','centro','PE','(88)88888-8888','(  )     -    ','Hospital'),('Alvaro','proximo ao unipe','888.888.888-88',19,'Masculino','11/11/1111','alguma','140','João pessoa ','Miramar','PB','(99)99999-9999','(  )     -    ','proximo ao unipe');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compras`
--

DROP TABLE IF EXISTS `compras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `compras` (
  `ID_Produto` int(11) NOT NULL,
  `ID_Agenda` int(11) NOT NULL,
  `QTD` int(11) NOT NULL,
  `IDCompras` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`IDCompras`),
  KEY `ID_Produto` (`ID_Produto`),
  KEY `ID_Agenda` (`ID_Agenda`),
  CONSTRAINT `Compras_ibfk_1` FOREIGN KEY (`ID_Produto`) REFERENCES `produto` (`IDProduto`),
  CONSTRAINT `Compras_ibfk_2` FOREIGN KEY (`ID_Agenda`) REFERENCES `agenda` (`IDAgenda`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compras`
--

LOCK TABLES `compras` WRITE;
/*!40000 ALTER TABLE `compras` DISABLE KEYS */;
INSERT INTO `compras` VALUES (1,1,3,1),(1,1,4,2);
/*!40000 ALTER TABLE `compras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login` (
  `IDusuario` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(30) NOT NULL,
  `senha` varchar(30) NOT NULL,
  PRIMARY KEY (`IDusuario`),
  UNIQUE KEY `login` (`login`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES (3,'Rafael','123456'),(6,'Matheus','25031308'),(7,'Eduardo ','93931476'),(8,'rafaum','1234567');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produto`
--

DROP TABLE IF EXISTS `produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `produto` (
  `IDProduto` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) NOT NULL,
  `descricao` varchar(50) DEFAULT NULL,
  `categoria` varchar(30) NOT NULL,
  `preco` float(10,2) NOT NULL,
  `quantidade` int(10) DEFAULT NULL,
  `codBarras` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`IDProduto`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto`
--

LOCK TABLES `produto` WRITE;
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
INSERT INTO `produto` VALUES (1,'Rexona','Rexona Men active dry 48h','Limpeza',10.00,NULL,'123456'),(4,'impressora','','Diversao',54.00,NULL,'12345678910'),(5,'Rexona aqui','','123',14.50,NULL,'10036423682'),(7,'Mouse','','Informatica',14.50,NULL,'22651366'),(12,'Alguma','','Limpeza',12.00,12,'646546546'),(15,'Rafael','Pessoa chamada Rafael','Limpeza',1000.00,50,'65441616'),(16,'Testando','Alguma coisa','limpeza',14.00,5,'984656798'),(17,'LapTop','Alguma','teste',14.00,13,'456466657'),(18,'Placa mãe','','teste',170.40,1,'147852369'),(19,'Celular','','Esporte',500.99,1,'147852369799'),(20,'Celular','','Esporte',500.50,1,'14785236982'),(21,'Celular','','teste',15.00,5,'147823564646546'),(22,'Celular','','teste',15.00,12,'6564644554');
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-24 15:53:00
