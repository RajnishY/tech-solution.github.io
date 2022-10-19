CREATE DATABASE  IF NOT EXISTS `e_commerce` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `e_commerce`;
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: e_commerce
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `ecom_contactform`
--

DROP TABLE IF EXISTS `ecom_contactform`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ecom_contactform` (
  `contform_id` int NOT NULL AUTO_INCREMENT,
  `contform_name` varchar(45) NOT NULL,
  `contform_email` varchar(45) NOT NULL,
  `contform_subject` varchar(45) NOT NULL,
  `contform_msg` varchar(45) NOT NULL,
  PRIMARY KEY (`contform_id`),
  UNIQUE KEY `id_UNIQUE` (`contform_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecom_contactform`
--

LOCK TABLES `ecom_contactform` WRITE;
/*!40000 ALTER TABLE `ecom_contactform` DISABLE KEYS */;
INSERT INTO `ecom_contactform` VALUES (1,'rajnish','Rajnish@gmail.com','asfasf','Asfasfas'),(2,'rajnish','Rajnish@gmail.com','asfasf','Asfasfas');
/*!40000 ALTER TABLE `ecom_contactform` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecom_user`
--

DROP TABLE IF EXISTS `ecom_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ecom_user` (
  `user_id` int NOT NULL,
  `user_name` varchar(45) NOT NULL,
  `user_email` varchar(45) NOT NULL,
  `user_pass` varchar(45) NOT NULL,
  `user_phone` int NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `id_UNIQUE` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecom_user`
--

LOCK TABLES `ecom_user` WRITE;
/*!40000 ALTER TABLE `ecom_user` DISABLE KEYS */;
INSERT INTO `ecom_user` VALUES (1,'user','user1234@gmail.com','user',1234567890);
/*!40000 ALTER TABLE `ecom_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'e_commerce'
--

--
-- Dumping routines for database 'e_commerce'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-20  5:18:13
