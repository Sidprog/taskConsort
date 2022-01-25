CREATE DATABASE  IF NOT EXISTS `taskconsort` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `taskconsort`;
-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: taskconsort
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `employee_name` varchar(255) NOT NULL,
  `employee_salary` decimal(11,2) unsigned DEFAULT '0.00',
  `employee_age` int unsigned DEFAULT '0',
  `profile_image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,'Tiger Nixon',320800.00,61,''),(2,'Garrett Winters',170750.00,63,''),(3,'Ashton Cox',86000.00,66,''),(4,'Cedric Kelly',433060.00,22,''),(5,'Airi Satou',162700.00,33,''),(6,'Brielle Williamson',372000.00,61,''),(7,'Herrod Chandler',137500.00,59,''),(8,'Rhona Davidson',327900.00,55,''),(9,'Colleen Hurst',205500.00,39,''),(10,'Sonya Frost',103600.00,23,''),(12,'Quinn Flynn',342000.00,22,''),(13,'Charde Marshall',470600.00,36,''),(14,'Haley Kennedy',313500.00,43,''),(15,'Tatyana Fitzpatrick',385750.00,28,''),(16,'Michael Silva',198500.00,66,''),(17,'Paul Byrd',725000.00,64,''),(18,'Gloria Little',237500.00,59,''),(19,'Bradley Greer',132000.00,41,''),(20,'Dai Rios',217500.00,35,''),(21,'Jenette Caldwell',345000.00,30,''),(22,'Yuri Berry',675000.00,40,''),(23,'Caesar Vance',106450.00,21,''),(24,'Doris Wilder',85600.00,40,''),(25,'Sam White',60000.00,29,'https://images.unsplash.com/photo-1483721310020-03333e577078?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1228&q=80'),(26,'Seth Ross',1000000.00,37,'https://media.istockphoto.com/photos/attitude-picture-id91597331?s=612x612'),(29,'Jena Gaines',90560.00,30,'https://media.istockphoto.com/photos/city-jena-thuringia-germany-picture-id485775731?s=612x612'),(30,'Tiger Nixon',320800.00,61,''),(31,'Garrett Winters',170750.00,63,''),(32,'Ashton Cox',86000.00,66,''),(33,'Cedric Kelly',433060.00,22,''),(34,'Airi Satou',162700.00,33,''),(35,'Brielle Williamson',372000.00,61,''),(36,'Herrod Chandler',137500.00,59,''),(37,'Rhona Davidson',327900.00,55,''),(38,'Colleen Hurst',205500.00,39,''),(39,'Sonya Frost',103600.00,23,''),(40,'Jena Gaines',90560.00,30,''),(41,'Quinn Flynn',342000.00,22,''),(42,'Charde Marshall',470600.00,36,''),(43,'Haley Kennedy',313500.00,43,''),(44,'Tatyana Fitzpatrick',385750.00,19,''),(45,'Michael Silva',198500.00,66,''),(46,'Paul Byrd',725000.00,64,''),(47,'Gloria Little',237500.00,59,''),(48,'Bradley Greer',132000.00,41,''),(49,'Dai Rios',217500.00,35,''),(50,'Jenette Caldwell',345000.00,30,''),(51,'Yuri Berry',675000.00,40,''),(52,'Caesar Vance',106450.00,21,''),(53,'Doris Wilder',85600.00,23,''),(54,'Richard Nixon',320800.00,21,''),(55,'Chad Smith',170750.00,55,''),(56,'Ashton Brooks',86000.00,28,''),(57,'Cedric Diggory',433060.00,42,''),(58,'Airi Satou',162700.00,33,''),(59,'Brie Williamson',372000.00,25,''),(60,'Herrod Chandler',137500.00,59,''),(61,'Rhona Davidson',327900.00,55,''),(62,'Colleen Brooks',205500.00,39,''),(63,'Sonya Habib',103600.00,28,''),(64,'Jena Lowey',90560.00,30,''),(65,'Quinn Flynn',342000.00,22,''),(66,'L P Marshall',470600.00,36,''),(67,'Haley Kennedy',313500.00,43,''),(68,'Tatyana Fitzpatrick',385750.00,19,''),(69,'Michael Silva',198500.00,420,''),(70,'Paul Walker',725000.00,64,':('),(71,'Gloria Little',237500.00,59,''),(72,'Bradley Greer',132000.00,41,''),(73,'Dai Rios',217500.00,35,''),(74,'Jenette Caldwell',345000.00,30,''),(75,'Yuri Berry',675000.00,40,''),(76,'Caesar Vance',106450.00,21,''),(77,'Doris Williams',85600.00,33,''),(78,'Tiger Nixon',320800.00,61,''),(79,'Garrett Winters',170750.00,63,''),(80,'Ashton Cox',86000.00,66,''),(81,'Cedric Kelly',433060.00,22,''),(82,'Airi Satou',162700.00,33,''),(83,'Brielle Williamson',372000.00,61,''),(84,'Herrod Chandler',137500.00,59,''),(85,'Rhona Davidson',327900.00,55,''),(86,'Colleen Hurst',205500.00,39,''),(87,'Sonya Frost',103600.00,23,''),(88,'Jena Gaines',90560.00,30,''),(89,'Quinn Flynn',342000.00,22,''),(90,'Charde Marshall',470600.00,36,''),(91,'Haley Kennedy',313500.00,43,''),(92,'Tatyana Fitzpatrick',385750.00,19,''),(93,'Michael Silva',198500.00,66,''),(94,'Paul Byrd',725000.00,64,''),(95,'Gloria Little',237500.00,59,''),(96,'Bradley Greer',132000.00,41,''),(97,'Dai Rios',217500.00,35,''),(98,'Jenette Caldwell',345000.00,30,''),(99,'Yuri Berry',675000.00,40,''),(100,'Caesar Vance',106450.00,21,''),(101,'Doris Wilder',85600.00,23,''),(102,'Yuri Berry',675000.00,40,''),(103,'Caesar Vance',106450.00,21,''),(104,'Doris Williams',85600.00,33,''),(105,'Tiger Nixon',320800.00,61,''),(106,'Garrett Winters',170750.00,63,''),(107,'Ashton Cox',86000.00,66,''),(108,'Cedric Kelly',433060.00,22,''),(109,'Airi Satou',162700.00,33,''),(110,'Brielle Williamson',372000.00,61,''),(111,'Herrod Chandler',137500.00,59,''),(112,'Rhona Davidson',327900.00,55,''),(113,'Colleen Hurst',205500.00,39,''),(114,'Sonya Frost',103600.00,23,''),(115,'Jena Gaines',90560.00,30,''),(116,'Quinn Flynn',342000.00,22,''),(117,'Charde Marshall',470600.00,36,''),(118,'Haley Kennedy',313500.00,43,''),(119,'Tatyana Fitzpatrick',385750.00,19,''),(120,'Michael Silva',198500.00,66,''),(121,'Paul Byrd',725000.00,64,''),(122,'Gloria Little',237500.00,59,''),(123,'Bradley Greer',132000.00,41,''),(125,'Dai Rios',217500.00,35,''),(126,'Jenette Caldwell',345000.00,30,''),(127,'Yuri Berry',675000.00,40,''),(128,'Caesar Vance',106450.00,21,''),(129,'Doris Wilder',85600.00,23,''),(130,'Deepak',100000000.00,23,'God himself xD'),(132,'Sid',600000.00,23,'');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-25 23:08:53
