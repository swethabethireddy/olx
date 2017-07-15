-- MySQL dump 10.13  Distrib 5.5.55, for debian-linux-gnu (x86_64)
--
-- Host: 192.168.3.135    Database: OLX
-- ------------------------------------------------------
-- Server version	5.5.55-0ubuntu0.14.04.1

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
-- Table structure for table `Bikes`
--

DROP TABLE IF EXISTS `Bikes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Bikes` (
  `bikeId` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(15) DEFAULT NULL,
  `mileage` varchar(15) DEFAULT NULL,
  `yearOfModel` varchar(4) DEFAULT NULL,
  `regdNo` varchar(15) DEFAULT NULL,
  `detailsId` int(5) DEFAULT NULL,
  PRIMARY KEY (`bikeId`),
  KEY `detailsId` (`detailsId`),
  CONSTRAINT `Bikes_ibfk_1` FOREIGN KEY (`detailsId`) REFERENCES `ProductDetails` (`detailsId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Bikes`
--

LOCK TABLES `Bikes` WRITE;
/*!40000 ALTER TABLE `Bikes` DISABLE KEYS */;
INSERT INTO `Bikes` VALUES (1,'fd','234','234','kdfj',24),(2,'sdv','234','345','3125drg',31),(3,'b','2','b','b',33),(4,'2','2','2','r',36),(5,'hero','23','2010','ap24ac1064',55);
/*!40000 ALTER TABLE `Bikes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Books`
--

DROP TABLE IF EXISTS `Books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Books` (
  `bookId` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(15) DEFAULT NULL,
  `author` varchar(15) DEFAULT NULL,
  `publisher` varchar(15) DEFAULT NULL,
  `detailsId` int(11) DEFAULT NULL,
  PRIMARY KEY (`bookId`),
  KEY `detailsId` (`detailsId`),
  CONSTRAINT `Books_ibfk_1` FOREIGN KEY (`detailsId`) REFERENCES `ProductDetails` (`detailsId`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Books`
--

LOCK TABLES `Books` WRITE;
/*!40000 ALTER TABLE `Books` DISABLE KEYS */;
INSERT INTO `Books` VALUES (1,'dfdsgf','dgfvdsz','fdsgdfg',22),(2,'df','df','s',34),(3,'e','e','e',35),(4,'w','w','w',37),(5,'e','e','e',38),(6,'cf','c','c',39),(7,'w','w','w',40),(8,'vf','xv','xv',43),(9,'FLAT','K.V.N.Sunitha','Kavitha',46);
/*!40000 ALTER TABLE `Books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Cars`
--

DROP TABLE IF EXISTS `Cars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Cars` (
  `carId` int(11) NOT NULL AUTO_INCREMENT,
  `regdNo` varchar(20) DEFAULT NULL,
  `mileage` varchar(10) DEFAULT NULL,
  `color` varchar(20) DEFAULT NULL,
  `fuelType` varchar(10) DEFAULT NULL,
  `detailsId` int(11) DEFAULT NULL,
  PRIMARY KEY (`carId`),
  KEY `detailsId` (`detailsId`),
  CONSTRAINT `Cars_ibfk_1` FOREIGN KEY (`detailsId`) REFERENCES `ProductDetails` (`detailsId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cars`
--

LOCK TABLES `Cars` WRITE;
/*!40000 ALTER TABLE `Cars` DISABLE KEYS */;
INSERT INTO `Cars` VALUES (1,'AP15fg15','23','Black','Petrol',45),(2,'ap25ae1105','23','red','Petrol',52),(3,'ap1515','23','white','Diesel',57);
/*!40000 ALTER TABLE `Cars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Mobiles`
--

DROP TABLE IF EXISTS `Mobiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Mobiles` (
  `mobileId` int(11) NOT NULL AUTO_INCREMENT,
  `detailsId` int(11) DEFAULT NULL,
  PRIMARY KEY (`mobileId`),
  KEY `detailsId` (`detailsId`),
  CONSTRAINT `Mobiles_ibfk_1` FOREIGN KEY (`detailsId`) REFERENCES `ProductDetails` (`detailsId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Mobiles`
--

LOCK TABLES `Mobiles` WRITE;
/*!40000 ALTER TABLE `Mobiles` DISABLE KEYS */;
INSERT INTO `Mobiles` VALUES (1,53),(2,54);
/*!40000 ALTER TABLE `Mobiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ProductDetails`
--

DROP TABLE IF EXISTS `ProductDetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ProductDetails` (
  `detailsId` int(11) NOT NULL AUTO_INCREMENT,
  `brand` varchar(20) DEFAULT NULL,
  `image` blob,
  `description` varchar(500) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `yearsOfUsage` varchar(10) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  PRIMARY KEY (`detailsId`),
  KEY `userId` (`userId`),
  CONSTRAINT `ProductDetails_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `Users` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProductDetails`
--

LOCK TABLES `ProductDetails` WRITE;
/*!40000 ALTER TABLE `ProductDetails` DISABLE KEYS */;
INSERT INTO `ProductDetails` VALUES (1,'d','images/mobiles/buy2.png','ddas',3,NULL,1),(2,'bs','images/cars/sell-button.jpg','dfb',45,NULL,1),(3,'xdfgvbdf','images/mobiles/mobile1.jpeg','sdgvds',24234,NULL,1),(4,'fdg','images/mobiles/reg.jpg','dfg',64,'56',1),(5,'samsung','images/mobiles/sell2.jpeg','sgsh',12354,'4',1),(6,'sfgv','images/cars/sell-button.jpg','dfgvb',547,'3',1),(7,'Maruthi','images/cars/sell2.jpeg','dtgbhdc',45678,'4',1),(8,'vfx','images/cars/Screenshot from 2017-06-05 18:38:38.png','vxc',567,'7',1),(9,'asd','images/mobiles/Screenshot from 2017-06-05 18:38:22.png','dada',6778,'9',1),(10,'d','images/cars/loginresult.png','dfb ',234,'23',9),(11,'',NULL,NULL,NULL,NULL,9),(12,'',NULL,NULL,NULL,NULL,9),(13,'fgbc','images/cars/loginresult.png','gdr',688,'7',9),(14,'',NULL,NULL,NULL,NULL,9),(15,'dn ','images/cars/mobile5.jpg','dfbd',908,'5',10),(16,'svs','images/cars/mobile4.jpeg','sgvsv',235435,'5',10),(17,'xcfb ','images/cars/mobile5.jpg','xcfb ',235,'4',10),(18,'dg','images/cars/car2.jpeg','gxd',436,'6',10),(19,'ftbhr','images/cars/mobile4.jpeg','fcfgnj',54554,'45',10),(20,'dbgd','images/cars/Buy-Button.png','dtgvbegb',34,'3',10),(21,'dfgvbsd','images/cars/Buy-and-Sell.jpg','dfbd',345,'3',10),(22,NULL,'images/bikes/CREATE.png','fszdfffff',1213,'12',9),(23,NULL,'images/bikes/register.png','gfsf',134,'12',9),(24,NULL,'images/bikes/login.png','jkfik',24,'24',9),(25,'z','images/cars/Buy-Button.png','xvbsx',4,'3',10),(26,'vn','images/cars/Buy-Button.png','nv',687,'6',10),(27,NULL,'images/bikes/war.jpg','Central work of world literature',345,'1',9),(28,NULL,'images/bikes/war.jpg','Central work of world literature',345,'1',9),(29,NULL,'images/bikes/war.jpg','Central work of world literature',345,'1',9),(30,NULL,'images/bikes/war.jpg','Central work of world literature',345,'1',9),(31,NULL,NULL,NULL,NULL,NULL,10),(32,NULL,'images/bikes/reg1.jpg','xcvbxdzfgb',3463456,'34',10),(33,NULL,'images/bikes/mobiles.jpg','b',3,'3',10),(34,NULL,'images/bikes/Buy-and-Sell.jpg','g',3,'4',13),(35,NULL,'images/bikes/reg.jpg','e',3,'4',13),(36,'r','images/bikes/sell_my_phonr.jpg','r',3,'2',13),(37,NULL,'images/bikes/successione-6.jpg','w',1,'1',13),(38,'e','images/bikes/mobiles.jpg','e',2,'2',13),(39,'c','images/bikes/successione-6.jpg','c',5,'5',13),(40,'w','images/bikes/reg.jpg','w2',2,'2',13),(41,'ads','images/cars/background1.jpeg','fgd',46,'4',10),(42,'dg','images/cars/logo.jpg','dg',654,'6',10),(43,'xv','images/bikes/mobile2.jpg','xvxc',658,'6',10),(44,'htc','images/mobiles/mobile2.jpg','dh',9000,'2',10),(45,'Maruthi','images/cars/car1.jpg','Petrol car',100000,'1',13),(46,'Pegion','images/bikes/book1.jpeg','200 pages',200,'1',13),(47,'L.G','images/fridges/i1.jpeg','Double door Fridge',0,NULL,13),(48,'fgnf','images/fridges/i2.jpeg','This fridge contains four doors',100000,NULL,13),(49,'L.g','images/fridges/fridge1.png','xcfbx',150000,'2',13),(50,'Phillips','images/tvs/tv1.png','smart tv',34556,'2',13),(51,'LG','images/fridges/tv1','smart fridge',5000,'2',13),(52,'swift','images/cars/car1.jpg','smart car',100000,'1',13),(53,'htc','images/mobiles/mobile2.jpg','white',50000,'1',13),(54,'htc','images/mobiles/mobiles.jpg','black',5000,'1',13),(55,'ford','images/bikes/bike1.jpeg','black',20000,'1',13),(56,'LG','images/tvs/tv2.jpeg','Black',12000,'1',13),(57,'maruthi','images/cars/car3.jpeg','smooth engine',100000,'1',13);
/*!40000 ALTER TABLE `ProductDetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Refrigerators`
--

DROP TABLE IF EXISTS `Refrigerators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Refrigerators` (
  `fId` int(11) NOT NULL AUTO_INCREMENT,
  `color` varchar(20) DEFAULT NULL,
  `capacity` varchar(20) DEFAULT NULL,
  `noOfStars` varchar(20) DEFAULT NULL,
  `detailsId` int(11) DEFAULT NULL,
  PRIMARY KEY (`fId`),
  KEY `detailsId` (`detailsId`),
  CONSTRAINT `Refrigerators_ibfk_1` FOREIGN KEY (`detailsId`) REFERENCES `ProductDetails` (`detailsId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Refrigerators`
--

LOCK TABLES `Refrigerators` WRITE;
/*!40000 ALTER TABLE `Refrigerators` DISABLE KEYS */;
INSERT INTO `Refrigerators` VALUES (1,'black','23','5',47),(2,'grey','34','5',48),(3,'white','23','4',49),(4,'silver','23','4',51);
/*!40000 ALTER TABLE `Refrigerators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Televisions`
--

DROP TABLE IF EXISTS `Televisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Televisions` (
  `tvId` int(11) NOT NULL AUTO_INCREMENT,
  `resolution` varchar(20) DEFAULT NULL,
  `screenSize` varchar(20) DEFAULT NULL,
  `noOfUsbPorts` varchar(20) DEFAULT NULL,
  `detailsId` int(11) DEFAULT NULL,
  PRIMARY KEY (`tvId`),
  KEY `detailsId` (`detailsId`),
  CONSTRAINT `Televisions_ibfk_1` FOREIGN KEY (`detailsId`) REFERENCES `ProductDetails` (`detailsId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Televisions`
--

LOCK TABLES `Televisions` WRITE;
/*!40000 ALTER TABLE `Televisions` DISABLE KEYS */;
INSERT INTO `Televisions` VALUES (1,'15','48','3',50),(2,'23','48','3',56);
/*!40000 ALTER TABLE `Televisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Users`
--

DROP TABLE IF EXISTS `Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Users` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(20) DEFAULT NULL,
  `emailId` varchar(30) DEFAULT NULL,
  `password` varbinary(500) DEFAULT NULL,
  `mobileNo` varchar(12) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `secretQuestion` varchar(50) DEFAULT NULL,
  `secretAnswer` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`userId`),
  UNIQUE KEY `emailId` (`emailId`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users`
--

LOCK TABLES `Users` WRITE;
/*!40000 ALTER TABLE `Users` DISABLE KEYS */;
INSERT INTO `Users` VALUES (1,'sdfgv','xyz','1234','235346','jhsgdv','sdgv','fgv'),(2,NULL,NULL,'©d⁄©Ò&7S’Œkdú‚%',NULL,'34fgxh','edbhe','+√¥¬≤{√õ√≠?i‚Ñ¢\'√∏√®√π¬±¬®'),(3,NULL,NULL,'©d⁄©Ò&7S’Œkdú‚%',NULL,'34fgxh','edbhe','+√¥¬≤{√õ√≠?i‚Ñ¢\'√∏√®√π¬±¬®'),(4,'bindu','bindu5498@gmail.com','†∞4˚πtz_¿]\r\"Ù5','906527354','Karnataka','Who r u','\"√∏√≥aR‚Äû¬∂bz¬´√å2%a'),(5,'a','a','\"∑≈\',C°íªËÚWâ˙','34','gv','a','\"¬∑√Ö\',C¬°‚Äô¬ª√®√≤W‚Ä∞√∫'),(6,'aa','aa','S»ûçyóç∏B9Nº•·Ä','546747','34634','54dgb','¬∂√ä‚Äì\"u√è√ñ√•~:bj√å√Ö'),(7,'dgvbs','bin','—™[•\r}H+A:Éœk+∫=','654984','dzsvsb','jhgsvdfs','T~y√â¬ºF4¬π¬∏\'√ç¬ª¬∑‚Ä∞'),(8,'b','b','¨˛E‹HjŒB ÷◊\0ﬁ','4','d','fv','`√äuTM√û√´√Ü√é‚Äù√π$‚Äû√†¬µ+'),(9,'sdfgv','bb','tI∫˜Ôî-·ßˇ¥:‘@§f','2342','3463','fgv','f√º0¬∏√úl¬¶√®\"√∞(¬≤‚Äî'),(10,'dfbh','bindu','«7ﬂw†xvÙíæ–\0ﬁ','34657','dbdb','d','¬¨≈æ6\n¬†¬Ø√ú	B√ú√á?¬©¬≤\0y'),(11,'fhb','cc','í27wë#è\\<¬úneàç','45778569','fghf','fgjn','√≠uv√¥r≈∏¬ª¬•brt\r>‚Äî¬¨X'),(12,'madhuri','abc@gmail.com','*?ÄvÎ≈ñ‹Nâ\'£¡à5','9876543210','hyderabad-43','favorite colour?','≈°√∞‚Äö√≠√å√¥√®¬°√ÑZu¬Ω√•√ÅJ√ú'),(13,'dfgh','3','6Hﬂ.™dÜhv6\0f‰ˆ\r\n','343','df','df','¬∏¬±&(!I7√Ö√ö¬ªC\r√¥'),(14,'madhuri','madhuri@gmail.com','1234','9876543210','hyderabad','who is your favourite actor?','mahesh');
/*!40000 ALTER TABLE `Users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-08 18:31:07
