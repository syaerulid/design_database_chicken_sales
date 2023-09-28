-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: ayam
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
-- Table structure for table `user_pesanan`
--

DROP TABLE IF EXISTS `user_pesanan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_pesanan` (
  `UniqueID` int DEFAULT NULL,
  `UniqueUser` varchar(255) NOT NULL,
  `NamaLengkap` varchar(255) DEFAULT NULL,
  `Alamat` varchar(255) DEFAULT NULL,
  `Kota` varchar(255) DEFAULT NULL,
  `Latitude` varchar(255) DEFAULT NULL,
  `Longitude` varchar(255) DEFAULT NULL,
  KEY `fk_uniq_user_pesanan` (`UniqueUser`),
  KEY `idx_alamat` (`Alamat`),
  KEY `idx_kota` (`Kota`),
  CONSTRAINT `fk_uniq_user_pesanan` FOREIGN KEY (`UniqueUser`) REFERENCES `pesanan` (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_pesanan`
--

LOCK TABLES `user_pesanan` WRITE;
/*!40000 ALTER TABLE `user_pesanan` DISABLE KEYS */;
INSERT INTO `user_pesanan` VALUES (1,'indri1','INDRI ','Unaaha','UNAAHA','-4,0719','122,1544444\r'),(2,'stq2','STQ ','Unaaha','UNAAHA','-4,0719','122,1544444\r'),(3,'isra3','ISRA ','Konsel','PONDIDAHA','-4,1228','122,4869444\r'),(4,'lina4','LINA ','Bombana','BOMBANA','-4,225','122,605\r'),(5,'hasna5','HASNA ','Unaaha','LAPOA','-3,7558','121,6561111\r'),(6,'ummu6','UMMU ','Unaaha','KOREM','-4,1228','122,4869444\r'),(7,'wandi7','WANDI ','Kendari','BARUGA','-3,697078','121,959229\r'),(8,'asdar8','ASDAR ','Konsel','MOROSI','-4,0017','122,5147222\r'),(9,'sapri9','SAPRI ','Unaaha','ASOLU','-3,9294','121,1163889\r'),(10,'ali10','ALI ','Unaaha','SONAI','-3,8761','121,7927778\r'),(11,'nabil11','NABIL ','Unaaha','LALAHAO','-4,14','123,0388889\r'),(12,'yus12','YUS ','Unaaha','LALAHAO','-4,14','123,0388889\r'),(13,'mamamelan13','MAMA MELAN ','Unaaha','LALAHAO','-4,14','123,0388889\r'),(14,'mise14','MISE ','Unaaha','AMERORO','-4,0611','122,5694444\r');
/*!40000 ALTER TABLE `user_pesanan` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-27 17:45:27
