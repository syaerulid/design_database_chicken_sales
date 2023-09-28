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
-- Temporary view structure for view `pesanan_dan_user`
--

DROP TABLE IF EXISTS `pesanan_dan_user`;
/*!50001 DROP VIEW IF EXISTS `pesanan_dan_user`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `pesanan_dan_user` AS SELECT 
 1 AS `ID`,
 1 AS `Tanggal`,
 1 AS `Bulan`,
 1 AS `Tahun`,
 1 AS `Username`,
 1 AS `NamaPerusahaan`,
 1 AS `JumlahAyam`,
 1 AS `HargaUnit`,
 1 AS `TotalHarga`,
 1 AS `JumlahMati`,
 1 AS `UniqueID`,
 1 AS `UniqueUser`,
 1 AS `NamaLengkap`,
 1 AS `Alamat`,
 1 AS `Kota`,
 1 AS `Latitude`,
 1 AS `Longitude`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `pesanan_dan_user`
--

/*!50001 DROP VIEW IF EXISTS `pesanan_dan_user`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `pesanan_dan_user` AS select `p`.`ID` AS `ID`,`p`.`Tanggal` AS `Tanggal`,`p`.`Bulan` AS `Bulan`,`p`.`Tahun` AS `Tahun`,`p`.`Username` AS `Username`,`p`.`NamaPerusahaan` AS `NamaPerusahaan`,`p`.`JumlahAyam` AS `JumlahAyam`,`p`.`HargaUnit` AS `HargaUnit`,`p`.`TotalHarga` AS `TotalHarga`,`p`.`JumlahMati` AS `JumlahMati`,`up`.`UniqueID` AS `UniqueID`,`up`.`UniqueUser` AS `UniqueUser`,`up`.`NamaLengkap` AS `NamaLengkap`,`up`.`Alamat` AS `Alamat`,`up`.`Kota` AS `Kota`,`up`.`Latitude` AS `Latitude`,`up`.`Longitude` AS `Longitude` from (`pesanan` `p` left join `user_pesanan` `up` on((`p`.`Username` = `up`.`UniqueUser`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-27 17:45:27
