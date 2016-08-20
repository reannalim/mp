CREATE DATABASE  IF NOT EXISTS `mp` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `mp`;
-- MySQL dump 10.13  Distrib 5.6.24, for Win32 (x86)
--
-- Host: localhost    Database: mp
-- ------------------------------------------------------
-- Server version	5.6.16

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
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts` (
  `username` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `billAddress` varchar(100) NOT NULL,
  `shipAddress` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `expiry` varchar(15) NOT NULL,
  `creditLimit` double NOT NULL,
  `currentCredit` double NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` VALUES ('ad','oyHYtAXj7yYElZhHs20XHuvrxKiUHccKR4STWk/KXVgT3oTfoEnwZUmqYbIISMFjPOgbZ1KG6o+1PbJA2DHFaA==','b1','b2','b3','b4','admin','na',0,0),('am','oyHYtAXj7yYElZhHs20XHuvrxKiUHccKR4STWk/KXVgT3oTfoEnwZUmqYbIISMFjPOgbZ1KG6o+1PbJA2DHFaA==','d1','d2','d3','d4','accountingManager','na',0,0),('cs','oyHYtAXj7yYElZhHs20XHuvrxKiUHccKR4STWk/KXVgT3oTfoEnwZUmqYbIISMFjPOgbZ1KG6o+1PbJA2DHFaA==','a1','a2','a3','a4','customer','na',20000,20000),('pm','oyHYtAXj7yYElZhHs20XHuvrxKiUHccKR4STWk/KXVgT3oTfoEnwZUmqYbIISMFjPOgbZ1KG6o+1PbJA2DHFaA==','c1','c2','c3','c4','productManager','na',0,0);
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `anonimus`
--

DROP TABLE IF EXISTS `anonimus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `anonimus` (
  `sessionID` varchar(32) NOT NULL,
  `isLocked` tinyint(1) NOT NULL,
  `time` datetime NOT NULL,
  `attempts` int(11) NOT NULL,
  PRIMARY KEY (`sessionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anonimus`
--

LOCK TABLES `anonimus` WRITE;
/*!40000 ALTER TABLE `anonimus` DISABLE KEYS */;
/*!40000 ALTER TABLE `anonimus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `finances`
--

DROP TABLE IF EXISTS `finances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `finances` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productId` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `date` varchar(45) NOT NULL,
  `buyer` varchar(45) NOT NULL,
  `ccn` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `finances`
--

LOCK TABLES `finances` WRITE;
/*!40000 ALTER TABLE `finances` DISABLE KEYS */;
INSERT INTO `finances` VALUES (10,1,1,'08/21/2016','cs','4111111111111111'),(11,2,2,'08/21/2016','cs','4111111111111111'),(12,3,3,'08/21/2016','cs','4111111111111111'),(13,1,1,'08/21/2016','cs','4111111111111111'),(14,2,2,'08/21/2016','cs','4111111111111111'),(15,3,3,'08/21/2016','cs','4111111111111111'),(16,1,96,'08/21/2016','jpjp','4111111111111111'),(17,1,96,'08/21/2016','jpjp','4111111111111111');
/*!40000 ALTER TABLE `finances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `category` varchar(45) NOT NULL,
  `price` double NOT NULL,
  `stock` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Boots [0]','boots',16,100000),(2,'Shoes [0]','shoes',14,96),(3,'Sandals [0]','sandals',12,94),(4,'Slippers [0]','slippers',10,100),(5,'Boots [1]','boots',20,100),(6,'Green Boots [1]','boots',30,100),(7,'Diabolus Boots [0]','boots',40,100),(8,'Shoes [1]','shoes',15,100),(9,'Tidal Shoes [1]','shoes',20,100),(10,'Valkyrian Shoes [1] ','shoes',30,100),(11,'Sandals of Wanderer [1]','sandals',25,100),(12,'Novice Slippers [0]','slippers',11,100);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reviews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `review` varchar(200) NOT NULL,
  `pid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-08-21  7:26:49
