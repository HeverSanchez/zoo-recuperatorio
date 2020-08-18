-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: zoodb
-- ------------------------------------------------------
-- Server version	8.0.20

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
-- Table structure for table `animales`
--

DROP TABLE IF EXISTS `animales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `animales` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `altura` float DEFAULT NULL,
  `peso` float DEFAULT NULL,
  `foto` longblob,
  `preferenciaAlimento_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_preferenciaAlimento_idx` (`preferenciaAlimento_id`),
  CONSTRAINT `fk_preferenciaAlimento` FOREIGN KEY (`preferenciaAlimento_id`) REFERENCES `preferenciaalimento` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `animales`
--

LOCK TABLES `animales` WRITE;
/*!40000 ALTER TABLE `animales` DISABLE KEYS */;
INSERT INTO `animales` VALUES (1,'Leon',1.2,190,NULL,1),(2,'Jirafa',6.1,800,NULL,2),(3,'Oso',1.5,600,NULL,3),(4,'Tigre',3.1,310,NULL,1),(5,'Cebra',1.5,400,NULL,2),(6,'Avestruz',2.8,120,NULL,3),(7,'Puma',0.9,100,NULL,1),(8,'Ciervo',1.2,200,NULL,2),(9,'Cerdo',0.75,250,NULL,3),(10,'Cocodrilo',1.5,1000,NULL,1),(11,'Elefante',3.2,6000,NULL,2),(12,'Chimpancé',1.2,60,NULL,3),(13,'Águila',0.95,7,NULL,1),(14,'Koala',0.85,15,NULL,2),(15,'Gallina',0.4,1.4,NULL,3);
/*!40000 ALTER TABLE `animales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `animalescuidadores`
--

DROP TABLE IF EXISTS `animalescuidadores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `animalescuidadores` (
  `id` int NOT NULL AUTO_INCREMENT,
  `animales_id` int DEFAULT NULL,
  `cuidadores_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `animales_id_fk_idx` (`animales_id`),
  KEY `cuidadores_id_fk_idx` (`cuidadores_id`),
  CONSTRAINT `animales_id_fk` FOREIGN KEY (`animales_id`) REFERENCES `animales` (`id`),
  CONSTRAINT `cuidadores_id_fk` FOREIGN KEY (`cuidadores_id`) REFERENCES `cuidadores` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `animalescuidadores`
--

LOCK TABLES `animalescuidadores` WRITE;
/*!40000 ALTER TABLE `animalescuidadores` DISABLE KEYS */;
INSERT INTO `animalescuidadores` VALUES (1,1,4),(2,1,9),(3,2,6),(4,2,2),(5,2,1),(6,3,7),(7,3,3),(8,3,8),(9,4,8),(10,4,5),(11,5,10),(12,6,10),(13,6,1),(14,7,3),(15,8,4),(16,8,8),(17,9,9),(18,9,3),(19,10,3),(20,11,5),(21,11,6),(22,12,10),(23,13,9),(24,14,7),(25,15,1),(26,15,6);
/*!40000 ALTER TABLE `animalescuidadores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cuidadores`
--

DROP TABLE IF EXISTS `cuidadores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cuidadores` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `apellido` varchar(45) NOT NULL,
  `avatar` longblob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuidadores`
--

LOCK TABLES `cuidadores` WRITE;
/*!40000 ALTER TABLE `cuidadores` DISABLE KEYS */;
INSERT INTO `cuidadores` VALUES (1,'Hever','Sanchez',NULL),(2,'Dylan','Soriano',NULL),(3,'Alexandre','Paz',NULL),(4,'Roger','Leon',NULL),(5,'Juan','Francisco',NULL),(6,'Paulino','Betancor',NULL),(7,'Anibal','Kaur',NULL),(8,'Rubén','Ensinas',NULL),(9,'Lourdes','Domenech',NULL),(10,'Samira','Gallardo',NULL);
/*!40000 ALTER TABLE `cuidadores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `preferenciaalimento`
--

DROP TABLE IF EXISTS `preferenciaalimento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `preferenciaalimento` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `preferenciaalimento`
--

LOCK TABLES `preferenciaalimento` WRITE;
/*!40000 ALTER TABLE `preferenciaalimento` DISABLE KEYS */;
INSERT INTO `preferenciaalimento` VALUES (1,'Carnivoro'),(2,'Herbívoros'),(3,'Omnívoros');
/*!40000 ALTER TABLE `preferenciaalimento` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-14  7:30:35
