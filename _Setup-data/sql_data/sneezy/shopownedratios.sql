-- MySQL dump 10.16  Distrib 10.1.38-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: db    Database: sneezy
-- ------------------------------------------------------
-- Server version	10.3.14-MariaDB-1:10.3.14+maria~bionic-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `shopownedratios`
--

DROP TABLE IF EXISTS `shopownedratios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shopownedratios` (
  `shop_nr` int(11) NOT NULL DEFAULT 0,
  `obj_nr` int(11) NOT NULL DEFAULT 0,
  `profit_buy` double DEFAULT NULL,
  `profit_sell` double DEFAULT NULL,
  `max_num` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shopownedratios`
--

LOCK TABLES `shopownedratios` WRITE;
/*!40000 ALTER TABLE `shopownedratios` DISABLE KEYS */;
INSERT INTO `shopownedratios` VALUES (34,1162,2,0.1,10),
(20,327,5,1,10),
(61,7018,5,0.001,10),
(70,237,5,1.5,500),
(35,13752,5,0.3,10),
(35,3113,1.8,0.9,10),
(34,23612,0.2,0.1,10),
(61,902,2,0.5,10),
(34,23666,0.2,0.1,10),
(70,209,0.5,0.4,400),
(61,7030,5,0.001,10),
(21,7505,1,0.5,10),
(21,803,1,0.9,10),
(21,813,5,0.9,10),
(111,165,0.4,0.1,40),
(111,510,0.4,0.1,20),
(17,1545,5,1,50),
(70,238,2,1.3,1000),
(20,9734,1.8,1,10),
(70,323,1,0.3,1),
(40,5778,2,1,10),
(21,252,5,0.9,10),
(20,10002,1,1,10),
(21,9755,3,0.9,10),
(21,815,5,0.9,10),
(21,829,5,0.9,10),
(21,837,2.5,0.9,10),
(21,9763,5,0.9,10),
(21,210,5,0.9,10),
(35,306,0.2,0.1,10),
(35,3409,3.1,0.1,10),
(20,11026,5,0.9,10),
(21,31328,0.8,0.1,50),
(35,10702,2,0.9,10),
(35,10714,5,0.1,10),
(35,166,3.1,0.1,10),
(35,10208,1.1,0.1,10),
(35,9576,0.2,0.1,10),
(35,3412,3.1,0.1,10),
(35,3411,3.1,0.1,10),
(35,3414,3.1,0.1,10),
(20,4805,2,0.9,10),
(34,31065,5,1.8,3),
(21,219,1.2,0.5,50),
(21,236,1,0.5,50),
(124,7734,0.01,0.001,10),
(77,2105,3.5,0.3,2),
(124,23224,0.01,0.001,10),
(70,1538,5,1.3,100),
(21,7091,0.3,0.15,50),
(41,9758,1.7,1,10),
(70,1500,5,1.3,100),
(70,1534,5,1.3,100),
(20,9733,2,0.9,10),
(111,511,0.4,0.1,40),
(20,22405,2,0.9,10),
(21,805,1,1,10),
(70,1536,5,1.3,100),
(20,22435,1.2,0.9,10),
(70,1546,5,1.3,100),
(21,238,1,0.5,50),
(70,229,5,1.3,100),
(35,10002,5,0.9,10),
(70,219,5,1.3,100),
(35,3410,3.1,0.1,10),
(35,308,3.1,0.1,10),
(21,31336,2.5,1,50),
(35,10718,3.1,0.1,10),
(111,512,1.3,0.3,10),
(111,502,1.3,0.3,10),
(111,504,1.3,0.3,10),
(111,506,1.3,0.3,10),
(111,507,1.3,0.3,10),
(111,508,1.3,0.3,10),
(111,509,1.3,0.3,10),
(111,501,1.3,0.8,10),
(61,188,2,0.5,10),
(114,12455,1,0.001,10),
(61,245,5,0.5,10),
(114,8516,2,0.001,100),
(111,7088,2.7,2,10),
(114,12456,1,0.001,10),
(35,11026,5,0.9,10),
(114,8515,2,0.001,100),
(35,31346,0.25,0.15,10),
(35,1398,5,0.1,10),
(20,3104,5,1,10),
(20,15195,0.05,2,10),
(21,237,0.4,0.2,50),
(34,1171,2,0.1,10),
(34,1165,2,0.1,10),
(20,7336,5,1.2,10),
(18,9536,5,0.4,10),
(18,9538,5,0.4,10),
(18,13730,5,0.4,10),
(18,28912,5,0.4,10),
(18,10734,5,0.4,10),
(18,12463,5,0.4,10),
(18,10904,5,0.4,10),
(18,28953,5,0.4,10),
(30,28953,5,0.5,10),
(30,10734,5,0.5,10),
(30,13730,5,0.5,10),
(30,13870,5,0.5,10),
(30,28912,5,0.5,10),
(30,12463,5,0.5,10),
(35,3104,5,0.15,10),
(20,7734,1,0.2,10),
(35,327,5,0.15,10),
(35,187,0.2,0.1,10),
(35,11027,5,0.5,10),
(35,23007,5,0.2,10),
(20,14142,5,1,10),
(35,23311,2.6,0.6,10),
(35,23665,1.1,0.01,10),
(35,9083,0.2,0.1,10),
(35,8713,4,1.3,10),
(21,1408,5,0.9,10),
(114,24414,5,0.1,10),
(15,50,1.01,1,100000),
(10,5737,3,1,200);
/*!40000 ALTER TABLE `shopownedratios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-25 15:55:06
