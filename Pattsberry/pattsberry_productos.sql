-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: pattsberry
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
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) NOT NULL,
  `Descripción` varchar(200) NOT NULL,
  `Imagen` varchar(45) NOT NULL,
  `Precio` float NOT NULL,
  `Tamaño` varchar(45) NOT NULL,
  `SKU` varchar(45) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,'Libreta Alicia','Libreta cocida','gatoalicia.jpg',250,'Media carta','LP000001'),(2,'Libretas girasoles','Libreta de arillo, 100 hojas, rayada','girasoles.jpg',200,'Media carta','LP000002'),(3,'Libreta Gravity Falls','Libreta cosida, 100 hojas, rayadas','gravity.jpg',200,'Media carta','LP000003'),(4,'Libreta  hijo de su pink floyd','Libreta de arillo, 100 hojas, rayada','pinkfloyd.jpg',200,'Media carta','LP000004'),(5,'Libreta El principito','Libreta cosida, 100 hojas, rayada','principito.jpg',200,'Media carta','LP000005'),(6,'Aguacates','Dos aguacates tejidos ','aguacates.jpg',300,'15 cm de altura','LP000001'),(7,'Conejo Evan','Conejo tejido','conejoEvan.jpg',200,'15 cm de altura','LP000002'),(8,'Monkey','Mono tejido ','monkey.JPG',200,'15 cm de altura','LP000003'),(9,'Monster Inc','Figuras tejidas de Mike y Sully de Monsters Inc','monster.jpg',250,'15 cm de altura','LP000004'),(10,'Spiderman','Spiderman tejido','spiderman.jpg',200,'15 cm de altura','LP000005'),(11,'Un jolk bien macizo','Un jolk tejido y mamado','jolk.jpg',200,'15 cm de altura','AM00006');
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-19 19:00:27
