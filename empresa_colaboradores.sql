-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: empresa
-- ------------------------------------------------------
-- Server version	5.5.62-MariaDB

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
-- Table structure for table `colaboradores`
--

DROP TABLE IF EXISTS `colaboradores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `colaboradores` (
  `Nome` varchar(15) NOT NULL,
  `Minit` char(1) DEFAULT NULL,
  `Sobrenome` varchar(25) DEFAULT NULL,
  `Ssn` char(9) NOT NULL,
  `Bdata` date DEFAULT NULL,
  `Endereço` varchar(30) DEFAULT NULL,
  `Sexo` enum('M','F') DEFAULT NULL,
  `Salario` decimal(10,2) DEFAULT NULL,
  `Super_Ssn` char(9) DEFAULT NULL,
  `Dno` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`Ssn`),
  KEY `fk_empregado` (`Super_Ssn`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colaboradores`
--

LOCK TABLES `colaboradores` WRITE;
/*!40000 ALTER TABLE `colaboradores` DISABLE KEYS */;
INSERT INTO `colaboradores` VALUES ('John','B','Smith','123456789','1965-01-09','731-Fondren-Houston-TX','M',30000.00,'333445555',5),('Franklin','T','Wong','333445555','1955-12-08','638-Voss-Houston-TX','M',40000.00,'888665555',5),('Alicia','J','Zelaya','999887777','1968-01-19','3321-Castle-Spring-TX','F',25000.00,'987654321',4),('Jennifer','S','Wallace','987654321','1941-06-20','291-Berry-Bellaire-TX','F',43000.00,'888665555',4),('Ramesh','K','Narayan','666884444','1962-09-15','975-Fire-Oak-Humble-TX','M',38000.00,'333445555',5),('Joyce','A','English','453453453','1972-07-31','5631-Rice-Houston-TX','F',25000.00,'333445555',5),('Ahmad','V','Jabbar','987987987','1969-03-29','980-Dallas-Houston-TX','M',25000.00,'987654321',4),('James','E','Borg','888665555','1937-11-10','450-Stone-Houston-TX','M',55000.00,NULL,1);
/*!40000 ALTER TABLE `colaboradores` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-20 15:01:14
