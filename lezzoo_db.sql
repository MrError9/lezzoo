-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: lezzoo_test
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
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admins` (
  `admin_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `password` varchar(72) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`admin_id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (1,'lezzoo','$2b$12$o8gVSqPEPSbZjMm9uxxzI.ESY1rty3GXBJWPY4pD.v1YQJOaQPbCC','2021-04-21 11:19:30','2021-04-21 11:19:30');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `category_id` int NOT NULL AUTO_INCREMENT,
  `store_id` int NOT NULL,
  `name` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  PRIMARY KEY (`category_id`),
  UNIQUE KEY `name` (`name`),
  KEY `fk_categories_stores` (`store_id`),
  CONSTRAINT `fk_categories_stores` FOREIGN KEY (`store_id`) REFERENCES `stores` (`store_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,2,'Hoodies','006.png'),(2,2,'T-Shirts','018.png'),(3,2,'Jackets','030.png'),(4,2,'Shorts','014.png'),(5,3,'Compression','001.png'),(6,3,'Tracksuit','024.png'),(7,3,'Socks','029.png'),(8,3,'Swimwear','000.png'),(9,1,'Lifestyle shoes','001.png'),(10,1,'Jordan shoes','013.png'),(11,1,'Running shoes','026.png'),(12,1,'Basketball shoes','005.png'),(13,1,'Soccer Shoes','033.png'),(14,4,'Baseball Shoes','031.png'),(15,4,'Training Shoes','032.png'),(16,4,'Golf Shoes','033.png'),(17,4,'Padel Shoes','029.png'),(18,5,'Tennies Shoes','001.png'),(19,5,'Fitness Shoes','013.png'),(20,5,'Shoulder Bags','027.png'),(21,5,'Top Handler','002.png'),(22,6,'Mini Bag','032.png'),(23,6,'Totes','003.png'),(24,6,'Clutches','027.png'),(25,6,'Backpacks','002.png'),(26,7,'Hobo bags','030.png'),(27,7,'Belt Bags','031.png'),(28,7,'Bucket bags','006.png'),(29,7,'Briefcase','004.png'),(30,8,'Loafers shose','026.png'),(31,8,'Sandals','029.png'),(32,8,'Sabot','001.png'),(33,8,'AnkerlBoots','033.png'),(35,6,'shoes','1623412632101.png');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `items` (
  `item_id` int NOT NULL AUTO_INCREMENT,
  `category_id` int NOT NULL,
  `store_id` int NOT NULL,
  `name` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL,
  `status` tinyint(1) DEFAULT '1',
  `price` int NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`item_id`),
  KEY `fk_items_categories_idx` (`category_id`),
  KEY `fk_items_stores_idx` (`store_id`),
  CONSTRAINT `fk_items_categories` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_items_stores` FOREIGN KEY (`store_id`) REFERENCES `stores` (`store_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=176 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` VALUES (11,1,1,'lezzoo','001.png',1,50,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(12,1,1,'lezzoo','002.png',1,78,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(13,1,1,'lezzoo','003.png',1,32,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(14,1,1,'lezzoo','004.png',1,11,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(15,2,1,'lezzoo','005.png',1,76,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(16,2,1,'lezzoo','000.png',1,34,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(17,2,1,'lezzoo','006.png',1,13,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(18,2,1,'lezzoo','009.png',1,99,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(19,3,1,'lezzoo','014.png',1,89,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(20,3,1,'lezzoo','019.png',1,72,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(21,3,1,'lezzoo','018.png',1,22,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(22,3,1,'lezzoo','025.png',1,13,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(23,4,1,'lezzoo','026.png',1,44,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(24,4,1,'lezzoo','027.png',1,66,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(25,4,1,'lezzoo','028.png',1,65,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(26,4,1,'lezzoo','029.png',1,59,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(27,1,1,'lezzoo','030.png',1,21,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(28,2,1,'lezzoo','031.png',1,29,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(29,3,1,'lezzoo','033.png',1,19,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(30,4,1,'lezzoo','032.png',1,39,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(31,1,2,'lezzoo','001.png',1,50,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(32,1,2,'lezzoo','002.png',1,78,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(33,1,2,'lezzoo','003.png',1,32,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(34,1,2,'lezzoo','004.png',1,11,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(35,2,2,'lezzoo','005.png',1,76,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(36,2,2,'lezzoo','000.png',1,34,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(37,2,2,'lezzoo','006.png',1,13,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(38,2,2,'lezzoo','009.png',1,99,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(39,3,2,'lezzoo','014.png',1,89,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(40,3,2,'lezzoo','019.png',1,72,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(41,3,2,'lezzoo','018.png',1,22,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(42,3,2,'lezzoo','025.png',1,13,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(43,4,2,'lezzoo','026.png',1,44,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(44,4,2,'lezzoo','027.png',1,66,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(45,4,2,'lezzoo','028.png',1,65,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(46,4,2,'lezzoo','029.png',1,59,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(47,1,2,'lezzoo','030.png',1,21,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(48,2,2,'lezzoo','031.png',1,29,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(49,3,2,'lezzoo','033.png',1,19,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(50,4,2,'lezzoo','032.png',1,39,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(51,1,3,'lezzoo','001.png',1,50,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(52,1,3,'lezzoo','002.png',1,78,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(53,1,3,'lezzoo','003.png',1,32,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(54,1,3,'lezzoo','004.png',1,11,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(55,2,3,'lezzoo','005.png',1,76,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(56,2,3,'lezzoo','000.png',1,34,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(57,2,3,'lezzoo','006.png',1,13,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(58,2,3,'lezzoo','009.png',1,99,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(59,3,3,'lezzoo','014.png',1,89,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(60,3,3,'lezzoo','019.png',1,72,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(61,3,3,'lezzoo','018.png',1,22,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(62,3,3,'lezzoo','025.png',1,13,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(63,4,3,'lezzoo','026.png',1,44,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(64,4,3,'lezzoo','027.png',1,66,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(65,4,3,'lezzoo','028.png',1,65,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(66,4,3,'lezzoo','029.png',1,59,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(67,1,3,'lezzoo','030.png',1,21,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(68,2,3,'lezzoo','031.png',1,29,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(69,3,3,'lezzoo','033.png',1,19,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(70,4,3,'lezzoo','032.png',1,39,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(71,1,4,'lezzoo','001.png',1,50,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(72,1,4,'lezzoo','002.png',1,78,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(73,1,4,'lezzoo','003.png',1,32,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(74,1,4,'lezzoo','004.png',1,11,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(75,2,4,'lezzoo','005.png',1,76,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(76,2,4,'lezzoo','000.png',1,34,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(77,2,4,'lezzoo','006.png',1,13,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(78,2,4,'lezzoo','009.png',1,99,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(79,3,4,'lezzoo','014.png',1,89,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(80,3,4,'lezzoo','019.png',1,72,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(81,3,4,'lezzoo','018.png',1,22,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(82,3,4,'lezzoo','025.png',1,13,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(83,4,4,'lezzoo','026.png',1,44,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(84,4,4,'lezzoo','027.png',1,66,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(85,4,4,'lezzoo','028.png',1,65,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(86,4,4,'lezzoo','029.png',1,59,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(87,1,4,'lezzoo','030.png',1,21,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(88,2,4,'lezzoo','031.png',1,29,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(89,3,4,'lezzoo','033.png',1,19,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(90,4,4,'lezzoo','032.png',1,39,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(91,1,5,'lezzoo','001.png',1,50,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(92,1,5,'lezzoo','002.png',1,78,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(93,1,5,'lezzoo','003.png',1,32,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(94,1,5,'lezzoo','004.png',1,11,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(95,2,5,'lezzoo','005.png',1,76,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(96,2,5,'lezzoo','000.png',1,34,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(97,2,5,'lezzoo','006.png',1,13,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(98,2,5,'lezzoo','009.png',1,99,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(99,3,5,'lezzoo','014.png',1,89,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(100,3,5,'lezzoo','019.png',1,72,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(101,3,5,'lezzoo','018.png',1,22,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(102,3,5,'lezzoo','025.png',1,13,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(103,4,5,'lezzoo','026.png',1,44,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(104,4,5,'lezzoo','027.png',1,66,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(105,4,5,'lezzoo','028.png',1,65,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(106,4,5,'lezzoo','029.png',1,59,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(107,1,5,'lezzoo','030.png',1,21,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(108,2,5,'lezzoo','031.png',1,29,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(109,3,5,'lezzoo','033.png',1,19,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(110,4,5,'lezzoo','032.png',1,39,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(111,1,6,'lezzoo','001.png',1,50,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(112,1,6,'lezzoo','002.png',1,78,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(113,1,6,'lezzoo','003.png',1,32,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(114,1,6,'lezzoo','004.png',1,11,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(115,2,6,'lezzoo','005.png',1,76,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(116,2,6,'lezzoo','000.png',1,34,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(117,2,6,'lezzoo','006.png',1,13,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(118,2,6,'lezzoo','009.png',1,99,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(119,3,6,'lezzoo','014.png',1,89,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(120,3,6,'lezzoo','019.png',1,72,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(121,3,6,'lezzoo','018.png',1,22,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(122,3,6,'lezzoo','025.png',1,13,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(123,4,6,'lezzoo','026.png',1,44,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(124,4,6,'lezzoo','027.png',1,66,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(125,4,6,'lezzoo','028.png',1,65,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(126,4,6,'lezzoo','029.png',1,59,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(127,1,6,'lezzoo','030.png',1,21,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(128,2,6,'lezzoo','031.png',1,29,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(129,3,6,'lezzoo','033.png',1,19,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(130,4,6,'lezzoo','032.png',1,39,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(131,1,7,'lezzoo','001.png',1,50,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(132,1,7,'lezzoo','002.png',1,78,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(133,1,7,'lezzoo','003.png',1,32,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(134,1,7,'lezzoo','004.png',1,11,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(135,2,7,'lezzoo','005.png',1,76,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(136,2,7,'lezzoo','000.png',1,34,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(137,2,7,'lezzoo','006.png',1,13,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(138,2,7,'lezzoo','009.png',1,99,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(139,3,7,'lezzoo','014.png',1,89,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(140,3,7,'lezzoo','019.png',1,72,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(141,3,7,'lezzoo','018.png',1,22,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(142,3,7,'lezzoo','025.png',1,13,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(143,4,7,'lezzoo','026.png',1,44,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(144,4,7,'lezzoo','027.png',1,66,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(145,4,7,'lezzoo','028.png',1,65,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(146,4,7,'lezzoo','029.png',1,59,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(147,1,7,'lezzoo','030.png',1,21,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(148,2,7,'lezzoo','031.png',1,29,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(149,3,7,'lezzoo','033.png',1,19,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(150,4,7,'lezzoo','032.png',1,39,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(151,1,8,'lezzoo','001.png',1,50,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(152,1,8,'lezzoo','002.png',1,78,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(153,1,8,'lezzoo','003.png',1,32,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(154,1,8,'lezzoo','004.png',1,11,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(155,2,8,'lezzoo','005.png',1,76,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(156,2,8,'lezzoo','000.png',1,34,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(157,2,8,'lezzoo','006.png',1,13,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(158,2,8,'lezzoo','009.png',1,99,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(159,3,8,'lezzoo','014.png',1,89,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(160,3,8,'lezzoo','019.png',1,72,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(161,3,8,'lezzoo','018.png',1,22,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(162,3,8,'lezzoo','025.png',1,13,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(163,4,8,'lezzoo','026.png',1,44,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(164,4,8,'lezzoo','027.png',1,66,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(165,4,8,'lezzoo','028.png',1,65,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(166,4,8,'lezzoo','029.png',1,59,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(167,1,8,'lezzoo','030.png',1,21,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(168,2,8,'lezzoo','031.png',1,29,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(169,3,8,'lezzoo','033.png',1,19,'2021-04-22 11:19:30','2021-04-22 11:19:30'),(170,4,8,'lezzoo','032.png',1,39,'2021-04-22 11:19:30','2021-04-22 11:19:30');
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stores`
--

DROP TABLE IF EXISTS `stores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stores` (
  `store_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`store_id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stores`
--

LOCK TABLES `stores` WRITE;
/*!40000 ALTER TABLE `stores` DISABLE KEYS */;
INSERT INTO `stores` VALUES (1,'Nike','nike.png','2021-06-10 09:21:47','2021-06-10 09:21:47'),(2,'Zara','zaara.png','2021-06-10 09:32:46','2021-06-10 09:32:46'),(3,'Gucci','gucci.png','2021-06-10 09:32:46','2021-06-10 09:32:46'),(4,'LC','lcc.png','2021-06-10 09:32:46','2021-06-10 09:32:46'),(5,'Hermes','hermes.png','2021-06-10 09:32:46','2021-06-10 09:32:46'),(6,'Prada','prada.png','2021-06-10 09:32:46','2021-06-10 09:32:46'),(7,'Moncler','moncler.png','2021-06-10 09:32:46','2021-06-10 09:32:46'),(8,'Louis Vuitton','louis.png','2021-06-10 09:32:46','2021-06-10 09:32:46'),(13,'4','nike.png','2021-06-10 09:21:47','2021-06-10 09:21:47'),(14,'3','nike.png','2021-06-10 09:21:47','2021-06-10 09:21:47'),(15,'12','nike.png','2021-06-10 09:21:47','2021-06-10 09:21:47'),(16,'121','nike.png','2021-06-10 09:21:47','2021-06-10 09:21:47'),(17,'1123','nike.png','2021-06-10 09:21:47','2021-06-10 09:21:47'),(18,'111','nike.png','2021-06-10 09:21:47','2021-06-10 09:21:47');
/*!40000 ALTER TABLE `stores` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-11 17:13:38
