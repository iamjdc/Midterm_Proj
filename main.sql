-- MySQL dump 10.13  Distrib 5.7.17, for Linux (x86_64)
--
-- Host: localhost    Database: JDC
-- ------------------------------------------------------
-- Server version	5.7.17-0ubuntu0.16.04.1

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
-- Table structure for table `poDetails`
--

DROP TABLE IF EXISTS `poDetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `poDetails` (
  `poDetailID` int(30) NOT NULL AUTO_INCREMENT,
  `itemCategory` int(30) NOT NULL,
  `itemID` int(30) NOT NULL,
  `poListID` int(30) NOT NULL,
  `itemCost` double(8,2) NOT NULL,
  `itemQty` int(30) NOT NULL,
  PRIMARY KEY (`poDetailID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `poDetails`
--

LOCK TABLES `poDetails` WRITE;
/*!40000 ALTER TABLE `poDetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `poDetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `poLists`
--

DROP TABLE IF EXISTS `poLists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `poLists` (
  `poID` int(30) NOT NULL AUTO_INCREMENT,
  `poDate` date DEFAULT NULL,
  `poFinal` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`poID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `poLists`
--

LOCK TABLES `poLists` WRITE;
/*!40000 ALTER TABLE `poLists` DISABLE KEYS */;
INSERT INTO `poLists` VALUES (1,'2017-02-15','$55.00');
/*!40000 ALTER TABLE `poLists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stoneLists`
--

DROP TABLE IF EXISTS `stoneLists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stoneLists` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `stoneType` varchar(20) NOT NULL,
  `stonePrice` double(8,2) NOT NULL,
  `stoneCut` varchar(20) NOT NULL,
  `stoneQty` varchar(20) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stoneLists`
--

LOCK TABLES `stoneLists` WRITE;
/*!40000 ALTER TABLE `stoneLists` DISABLE KEYS */;
INSERT INTO `stoneLists` VALUES (1,'1.2 MM Diamond',2.50,'Round','5'),(8,'Daimond 5.9',15.00,'Emerald','25'),(9,'35',25.00,'Round','563');
/*!40000 ALTER TABLE `stoneLists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `styleNumbers`
--

DROP TABLE IF EXISTS `styleNumbers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `styleNumbers` (
  `styleID` int(30) NOT NULL AUTO_INCREMENT,
  `metalType` varchar(30) NOT NULL,
  `styleType` varchar(30) NOT NULL,
  `styleQty` varchar(30) NOT NULL,
  `stylePrice` varchar(30) NOT NULL,
  `styleNumber` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`styleID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `styleNumbers`
--

LOCK TABLES `styleNumbers` WRITE;
/*!40000 ALTER TABLE `styleNumbers` DISABLE KEYS */;
INSERT INTO `styleNumbers` VALUES (2,'18KW','Necklace','532','255','R0384239');
/*!40000 ALTER TABLE `styleNumbers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userAccounts`
--

DROP TABLE IF EXISTS `userAccounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userAccounts` (
  `userID` int(30) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userAccounts`
--

LOCK TABLES `userAccounts` WRITE;
/*!40000 ALTER TABLE `userAccounts` DISABLE KEYS */;
INSERT INTO `userAccounts` VALUES (1,'admin','admin');
/*!40000 ALTER TABLE `userAccounts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-03-06 22:08:15
