-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: mydb
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `artist`
--

DROP TABLE IF EXISTS `artist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `artist` (
  `email` varchar(45) NOT NULL,
  `a_name` varchar(45) DEFAULT NULL,
  `pwd` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artist`
--

LOCK TABLES `artist` WRITE;
/*!40000 ALTER TABLE `artist` DISABLE KEYS */;
INSERT INTO `artist` VALUES ('art1@gmail.com','art2','1234'),('art2@gmail.com','art2','1234'),('art4@gmail.com','Artist4','1234'),('art6@gmail.com','Artist6','1234'),('art7@gmail.com','Artist7','1234'),('art8@gmail.com','Artist8','1234'),('art9@gmail.com','Artist9','1234'),('shiv@gmail.com','Shivani','1234');
/*!40000 ALTER TABLE `artist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bought_by`
--

DROP TABLE IF EXISTS `bought_by`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bought_by` (
  `url` varchar(2000) NOT NULL,
  `c_email` varchar(45) DEFAULT NULL,
  `cost` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bought_by`
--

LOCK TABLES `bought_by` WRITE;
/*!40000 ALTER TABLE `bought_by` DISABLE KEYS */;
INSERT INTO `bought_by` VALUES ('https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTDVUxHfY1hoFgcc5ah_JaVY0N5VgBVWimLLA&usqp=CAU','cust6@gmail.com',1500);
/*!40000 ALTER TABLE `bought_by` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `c_name` varchar(45) DEFAULT NULL,
  `c_email` varchar(45) NOT NULL,
  `pwd` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`c_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES ('cust2','cust2@gmail.com','1234'),('cust3','cust3@gmail.com','1234'),('customer4','cust4@gmail.com','1234'),('cust6','cust6@gmail.com','1234');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login` (
  `email` varchar(45) NOT NULL,
  `usertype` int DEFAULT NULL,
  `pwd` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES ('art1@gmail.com',1,'1234'),('art2@gmail.com',1,'1234'),('art4@gmail.com',1,'1234'),('art6@gmail.com',1,'1234'),('art7@gmail.com',1,'1234'),('art8@gmail.com',1,'1234'),('art9@gmail.com',1,'1234'),('cust1',2,'1234'),('cust2',2,'1234'),('cust3@gmail.com',2,'1234'),('cust4@gmail.com',2,'1234'),('cust6@gmail.com',2,'1234'),('shiv@gmail.com',1,'1234');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `painting`
--

DROP TABLE IF EXISTS `painting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `painting` (
  `url` varchar(1000) NOT NULL,
  `title` varchar(45) DEFAULT NULL,
  `year` varchar(45) DEFAULT NULL,
  `cost` decimal(5,0) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`url`),
  KEY `fk_email_idx` (`email`),
  CONSTRAINT `fk_email` FOREIGN KEY (`email`) REFERENCES `artist` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `painting`
--

LOCK TABLES `painting` WRITE;
/*!40000 ALTER TABLE `painting` DISABLE KEYS */;
INSERT INTO `painting` VALUES (' https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__340.jpg','pinksky','2019',300,'art1@gmail.com',NULL),('https://5.imimg.com/data5/KT/UK/DU/SELLER-43474334/watercolour-paintings-500x500.png','mountain','6789',987,'art6@gmail.com','Pencil sketch'),('https://cdn.shopify.com/s/files/1/0046/3709/8099/products/lord-buddha-wall-painting-art-unframed-18-inch-x-23-framed-best-religion-khirki-in-modern_996.jpg?v=1570869118','Buddha','2018',2000,'shiv@gmail.com','Oil painting'),('https://cs5.livemaster.ru/storage/d6/c5/ce55cf473f41e7781b788d3203g7--animal-painting-butterfly-painting-blue-butterfly-oil-paintin.jpg','butterfly','2018',1000,'art1@gmail.com','Watercolour'),('https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRJ2NM_Nylv66t0c-Nkb1lU5qu-5z-KiGaCoQ&usqp=CAU','birds','2005',7000,'art7@gmail.com','Watercolour'),('https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRq9pjHmZs4QM6vJRMJcESCbxdyOq7yvUMsYg&usqp=CAU','vidya frog','1234',9000,'art8@gmail.com','Acrylic'),('https://english.mathrubhumi.com/polopoly_fs/1.3305719.1542098400!/image/image.jpg_gen/derivatives/landscape_894_577/image.jpg','roses','2087',3000,'shiv@gmail.com','Acrylic'),('https://i.pinimg.com/originals/90/e7/f7/90e7f7232c3da75cceefc01c5ace5a85.jpg','mountains','2019',1890,NULL,'Pencil sketch');
/*!40000 ALTER TABLE `painting` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-24 19:32:57
