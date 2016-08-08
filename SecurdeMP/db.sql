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
-- Table structure for table `access`
--

DROP TABLE IF EXISTS `access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access` (
  `userType` varchar(45) NOT NULL,
  `register` tinyint(1) NOT NULL,
  `editProduct` tinyint(1) NOT NULL,
  `addProduct` tinyint(1) NOT NULL,
  `deleteProduct` tinyint(1) NOT NULL,
  `viewFinance` tinyint(1) NOT NULL,
  `lockout` tinyint(1) NOT NULL,
  `createManager` tinyint(1) NOT NULL,
  PRIMARY KEY (`userType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `access`
--

LOCK TABLES `access` WRITE;
/*!40000 ALTER TABLE `access` DISABLE KEYS */;
INSERT INTO `access` VALUES ('accountingManager',0,0,0,0,1,0,0),('admin',0,0,0,0,0,1,1),('anonymous',1,0,0,0,0,0,0),('customer',0,0,0,0,0,0,0),('productManager',0,1,1,1,0,0,0);
/*!40000 ALTER TABLE `access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts` (
  `username` varchar(45) NOT NULL,
  `password` varchar(100) NOT NULL,
  `name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `billAddress` varchar(45) NOT NULL,
  `shipAddress` varchar(45) NOT NULL,
  `type` varchar(45) NOT NULL,
  `expiry` varchar(45) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` VALUES ('1','Tf9Oo0DwqCPxXT9PAati6uDl2lecy4Ufjbnf6ExYsrN7iZA6dA4e4XLaeTpuedVg5ff5vQWKEqKAQz7W+kZRCg==','1','1','1','1','customer','na'),('2','QLJEESZB3XjdT5O2yRkN1G4AmRlNWkQle3761u+f9Gg9oe2gJERIyzQ6poj10+/XMU2v5YCsC8vxFa7Kno3BFA==','2','2','2','2','customer','na'),('3','O6+/CIgqLRATMJOhuEM/UFY7k8FKzQW3kCjrHRJ5kCckFFCYBlGZRQFCOmbCdq4mxDtzm8ZcThaxDDr2wgKuuw==','3','3','3','3','productManager','08/09/2016'),('8','vCO4sBdy0t1n77j+Gl5r0PRLl8NhAb5swJ8lO1PmjWeiLkZDBo39E0GYATTqV1cKz2XjBuTZbO9NVgOEiUyIpA==','8','8','8','8','productManager','08/09/2016'),('ad','oyHYtAXj7yYElZhHs20XHuvrxKiUHccKR4STWk/KXVgT3oTfoEnwZUmqYbIISMFjPOgbZ1KG6o+1PbJA2DHFaA==','b1','b2','b3','b4','admin','na'),('am','oyHYtAXj7yYElZhHs20XHuvrxKiUHccKR4STWk/KXVgT3oTfoEnwZUmqYbIISMFjPOgbZ1KG6o+1PbJA2DHFaA==','d1','d2','d3','d4','accountingManager','na'),('cs','oyHYtAXj7yYElZhHs20XHuvrxKiUHccKR4STWk/KXVgT3oTfoEnwZUmqYbIISMFjPOgbZ1KG6o+1PbJA2DHFaA==','a1','a2','a3','a4','customer','na'),('g','GfFCsBjzB7/fHHAJ0VopQXyW2GeNKYLuvOSWGy5n7rEYqOux11twCHw+Zbx5NFDj/koQACvvotA45a7UeWk38g==','g','g','g','g','customer','na'),('pm','oyHYtAXj7yYElZhHs20XHuvrxKiUHccKR4STWk/KXVgT3oTfoEnwZUmqYbIISMFjPOgbZ1KG6o+1PbJA2DHFaA==','c1','c2','c3','c4','productManager','na');
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `finances`
--

LOCK TABLES `finances` WRITE;
/*!40000 ALTER TABLE `finances` DISABLE KEYS */;
INSERT INTO `finances` VALUES (1,1,1,'08/08/2016','0',''),(2,2,2,'08/08/2016','0',''),(3,3,4,'08/08/2016','0',''),(4,4,5,'08/08/2016','0',''),(5,3,4,'08/08/2016','0',''),(6,5,6,'08/08/2016','0',''),(7,6,7,'08/08/2016','0',''),(8,4,4,'08/08/2016','0',''),(9,1,100,'08/08/2016','cs','asas');
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Boots [0]','boots',16,-6),(2,'Shoes [0]','shoes',14,95),(3,'Sandals [0]','sandals',12,92),(4,'Slippers [0]','slippers',10,91),(5,'Boots [1]','boots',20,94),(6,'Green Boots [1]','boots',30,93),(7,'Diabolus Boots [0]','boots',40,100),(8,'Shoes [1]','shoes',15,100),(9,'Tidal Shoes [1]','shoes',20,100),(10,'Valkyrian Shoes [1] ','shoes',30,100),(11,'Sandals of Wanderer [1]','sandals',25,100),(12,'Novice Slippers [0]','slippers',11,100);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-08-08 21:03:56
