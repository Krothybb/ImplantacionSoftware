-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: prestamos
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.28-MariaDB

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
-- Table structure for table `persona`
--

DROP TABLE IF EXISTS `persona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `persona` (
  `id_persona` int(11) NOT NULL,
  `matricula` int(11) DEFAULT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_persona`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persona`
--

LOCK TABLES `persona` WRITE;
/*!40000 ALTER TABLE `persona` DISABLE KEYS */;
INSERT INTO `persona` VALUES (0,3545123,'Nuevo registro','712737');
/*!40000 ALTER TABLE `persona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prestamo`
--

DROP TABLE IF EXISTS `prestamo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prestamo` (
  `id_prestamo` int(11) NOT NULL AUTO_INCREMENT,
  `dia` date DEFAULT NULL,
  `hora_prestamo` time DEFAULT NULL,
  `matricula` int(20) DEFAULT NULL,
  `telefono` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `nombre` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `salon` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `grupo` int(11) DEFAULT NULL,
  `tipo_prestamo` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `hora_entrega` time DEFAULT NULL,
  `estatus` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_prestamo`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prestamo`
--

LOCK TABLES `prestamo` WRITE;
/*!40000 ALTER TABLE `prestamo` DISABLE KEYS */;
INSERT INTO `prestamo` VALUES (10,NULL,'08:23:26',354573,'664 774 9192','Sergio Razo','B10',351,'hdmi3','08:23:26',0),(12,NULL,'08:40:14',354199,'686 122 5922','Karina Caro','C10',648,'laptop','08:40:14',0),(13,NULL,'08:45:26',354257,'615 106 3191','Javier Orozco','D11',351,'hdmi7','08:45:26',0),(14,NULL,'11:47:07',354324,'646 128 4933','El Ded','B12',381,'hdmi5','11:47:07',1),(17,NULL,'16:31:20',1234,'53453453','ded','b11',341,'hdmi1','16:31:20',1),(18,NULL,'11:47:07',1234,'3422324','ded','d10',351,'hdmi5','11:47:07',1),(20,NULL,'10:13:03',354199,'6861225922','Roberta','d9b',351,'hdmi1','10:17:32',1),(21,NULL,'23:52:48',357823,'6861576386','Razo','A4',603,'hdmi1','23:52:58',1),(22,NULL,'10:13:03',1234,'53453453','ded','b11',341,'hdmi1','10:16:36',1),(23,'2019-10-25','14:41:29',3545123,'712737','Nuevo registro','asd',3123,'hdmi3','14:44:25',1),(24,'2019-10-25','14:48:27',354199,'686 122 5922','Karina Caro','C10',648,'','14:48:27',1),(25,'2019-10-25','14:41:29',354199,'6861225922','PRUEBA','d9b',351,'hdmi3','14:41:29',1),(26,'2019-10-25','14:41:29',1234,'53453453','ded','b11',341,'hdmi3','14:42:39',1),(27,'2019-10-25','14:41:29',3545123,'712737','Nuevo registro','asd',3123,'hdmi3','00:00:00',0),(28,'2019-11-05','15:18:56',3545123,'712737','Nuevo registro','asd',3123,'hdmi7','15:18:56',0);
/*!40000 ALTER TABLE `prestamo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_prestamo`
--

DROP TABLE IF EXISTS `tipo_prestamo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_prestamo` (
  `ID` int(11) NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_prestamo`
--

LOCK TABLES `tipo_prestamo` WRITE;
/*!40000 ALTER TABLE `tipo_prestamo` DISABLE KEYS */;
INSERT INTO `tipo_prestamo` VALUES (1,'hdmi1'),(2,'hdmi2'),(3,'hdmi3'),(4,'hdmi4'),(5,'hdmi5'),(6,'hdmi6'),(7,'hdmi7'),(8,'hdmi8'),(9,'hdmi9'),(10,'hdmi10'),(11,'laptop'),(12,'laptop2'),(13,'laptop3'),(14,'laptop4'),(15,'laptop5'),(16,'laptop6'),(17,'laptop7'),(18,'laptop8'),(19,'laptop9'),(20,'laptop10'),(21,'Multiple'),(22,'Multiple2'),(23,'Multiple3'),(24,'Multiple4'),(25,'Multiple5');
/*!40000 ALTER TABLE `tipo_prestamo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-05 15:21:54
