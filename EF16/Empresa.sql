CREATE DATABASE  IF NOT EXISTS `empresa` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `empresa`;

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
-- Table structure for table `comissao`
--

DROP TABLE IF EXISTS `comissao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comissao` (
  `pes_codigo` int(11) NOT NULL,
  `men_codigo` int(11) NOT NULL,
  `com_valor` decimal(8,2) NOT NULL,
  PRIMARY KEY (`pes_codigo`,`men_codigo`),
  KEY `Id_Msg` (`men_codigo`),
  CONSTRAINT `comissao_ibfk_1` FOREIGN KEY (`pes_codigo`) REFERENCES `pessoa` (`pes_codigo`),
  CONSTRAINT `comissao_ibfk_2` FOREIGN KEY (`men_codigo`) REFERENCES `mensagem` (`men_codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comissao`
--

LOCK TABLES `comissao` WRITE;
/*!40000 ALTER TABLE `comissao` DISABLE KEYS */;
INSERT INTO `comissao` VALUES (14,10,10500.00),(14,60,2600.00),(14,70,400.00),(14,100,3750.00),(25,10,2500.00),(25,30,370.00),(37,10,5500.00),(37,30,14230.00),(37,40,20.00),(37,50,120.00),(42,20,20.00),(42,30,170.00),(49,20,2300.00);
/*!40000 ALTER TABLE `comissao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mensagem`
--

DROP TABLE IF EXISTS `mensagem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mensagem` (
  `men_codigo` int(11) NOT NULL,
  `men_descricao` varchar(30) NOT NULL,
  PRIMARY KEY (`men_codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mensagem`
--

LOCK TABLES `mensagem` WRITE;
/*!40000 ALTER TABLE `mensagem` DISABLE KEYS */;
INSERT INTO `mensagem` VALUES (10,'Comissão de Vendas'),(20,'Fretes Individuais'),(30,'Fretes Empresas'),(40,'Vendas Extra'),(50,'Deslocações'),(60,'Refeições'),(70,'Combustíveis'),(80,'Transportes'),(90,'Telefonemas'),(100,'Ofertas');
/*!40000 ALTER TABLE `mensagem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pessoa`
--

DROP TABLE IF EXISTS `pessoa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pessoa` (
  `pes_codigo` int(11) NOT NULL,
  `pes_nome` varchar(30) NOT NULL,
  `pes_idade` int(11) NOT NULL,
  `pes_salario` decimal(8,2) NOT NULL,
  `pes_telefone` varchar(12) DEFAULT NULL,
  `pos_codigo` int(11) NOT NULL,
  PRIMARY KEY (`pes_codigo`),
  KEY `Cod_Postal` (`pos_codigo`),
  CONSTRAINT `pessoa_ibfk_1` FOREIGN KEY (`pos_codigo`) REFERENCES `postal` (`pos_codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pessoa`
--

LOCK TABLES `pessoa` WRITE;
/*!40000 ALTER TABLE `pessoa` DISABLE KEYS */;
INSERT INTO `pessoa` VALUES (5,'Célia Morais',26,170000.00,'123456',1100),(14,'Nascimento Augusto',35,220000.00,'456123',2300),(25,'Paulo Viegas',32,95000.00,NULL,1500),(32,'Florinda Simões',35,147000.00,NULL,4000),(37,'Isabel Espada',28,86000.00,NULL,1100),(42,'António Dias',43,74000.00,'789654',1500),(49,'José António',17,210000.00,NULL,1500);
/*!40000 ALTER TABLE `pessoa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `postal`
--

DROP TABLE IF EXISTS `postal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `postal` (
  `pos_codigo` int(11) NOT NULL,
  `pos_localidade` varchar(30) NOT NULL,
  PRIMARY KEY (`pos_codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `postal`
--

LOCK TABLES `postal` WRITE;
/*!40000 ALTER TABLE `postal` DISABLE KEYS */;
INSERT INTO `postal` VALUES (1000,'LISBOA'),(1100,'LISBOA'),(1200,'LISBOA'),(1500,'LISBOA'),(2000,'SANTAREM'),(2300,'TOMAR'),(3000,'COIMBRA'),(4000,'PORTO'),(9000,'FUNCHAL');
/*!40000 ALTER TABLE `postal` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-08 20:56:52
