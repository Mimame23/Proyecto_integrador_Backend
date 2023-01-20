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
-- Table structure for table `tipo de producto`
--

DROP TABLE IF EXISTS `tipo de producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo de producto` (
  `Productos_SKU` varchar(45) NOT NULL,
  `Libretas` varchar(100) DEFAULT NULL,
  `Amigurumis` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Productos_SKU`),
  KEY `fk_Libretas_Productos_idx` (`Productos_SKU`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo de producto`
--

LOCK TABLES `tipo de producto` WRITE;
/*!40000 ALTER TABLE `tipo de producto` DISABLE KEYS */;
INSERT INTO `tipo de producto` VALUES ('AM000001',NULL,'Aguacates'),('AM000002',NULL,'Conejo Evan'),('AM000003',NULL,'Monkey'),('AM000004',NULL,'Monster Inc'),('AM000005',NULL,'Spiderman'),('AM000006',NULL,'un jolk bien macizo'),('LP000001','Libreta Alicia',''),('LP000002','Libretas girasoles',NULL),('LP000003','Libreta Gravity Falls',NULL),('LP000004','Libreta Pink Floyd',NULL),('LP000005','Libreta El principito',NULL),('LP000006','Libreta del holk',NULL);
/*!40000 ALTER TABLE `tipo de producto` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-19 19:00:28
