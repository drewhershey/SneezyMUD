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
-- Table structure for table `shopowned`
--

DROP TABLE IF EXISTS `shopowned`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shopowned` (
  `shop_nr` int(11) NOT NULL DEFAULT 0,
  `profit_buy` double NOT NULL DEFAULT 0,
  `profit_sell` double NOT NULL DEFAULT 0,
  `max_num` int(11) DEFAULT NULL,
  `corp_id` int(11) DEFAULT NULL,
  `dividend` double DEFAULT NULL,
  `reserve_max` int(11) DEFAULT NULL,
  `reserve_min` int(11) DEFAULT NULL,
  `no_such_item1` varchar(127) DEFAULT NULL,
  `no_such_item2` varchar(127) DEFAULT NULL,
  `do_not_buy` varchar(127) DEFAULT NULL,
  `missing_cash1` varchar(127) DEFAULT NULL,
  `missing_cash2` varchar(127) DEFAULT NULL,
  `message_buy` varchar(127) DEFAULT NULL,
  `message_sell` varchar(127) DEFAULT NULL,
  `tax_nr` int(11) DEFAULT NULL,
  `gold` int(11) DEFAULT NULL,
  PRIMARY KEY (`shop_nr`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shopowned`
--

LOCK TABLES `shopowned` WRITE;
/*!40000 ALTER TABLE `shopowned` DISABLE KEYS */;
INSERT INTO `shopowned` VALUES (0,1,0.7,50,21,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,13466463),
(1,1.1,0.7,10,21,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1904850),
(2,1,0.7,50,21,0,0,0,NULL,'I\'ve never heard of that.',NULL,NULL,'I\'m sorry you can\'t afford that.  Try killing a few more wall mobs to raise some cash.','Hey that only cost you %d talen.  Your lucky day.','There ya go, %d talens.  Money in your pocket!',NULL,11222827),
(3,1,0.7,200,16,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1911956),
(4,0,0,0,21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,141752327),
(5,1,0.7,25,21,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1758590),
(6,0.7,0.3,100,21,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,18789513),
(7,1.1,0.7,100,21,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9920751),
(8,1,0.7,75,21,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,186464),
(9,1.1,0.7,10,21,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1591286),
(10,1,0.7,100,21,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9990256),
(11,1,0.7,50,21,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,580022),
(12,1.5,1,500,21,0,0,0,'I don\'t have one of those.  I\'m sure when Fitz gets some time, he\'ll plow for more.','I don\'t have that right now, but if you\'ll come back in a day or two, I\'m sure someone will have sold me some more.',NULL,NULL,'Out of dough eh?  Being a caster does have it\'s down side.  Get someone to plow for you.','%d talen in exchange for good casting, not a bad deal.','Here\'s your %d talen.  Thanks!',NULL,5501083),
(13,0,0,NULL,7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000),
(14,0.3,0,0,21,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,66599756),
(15,1.01,1,9999,10,NULL,11000000,9900000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10777233),
(16,1,0.4,10,27,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1987333),
(17,3,0.65,2,1,0,1100000,900000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1007807),
(18,1,0.7,50,29,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,26),
(19,0.7,0.4,100,29,0,1100000,900000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000),
(20,0.7,0.4,100,29,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000),
(21,1.4,0.5,10,29,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1957768),
(22,0.7,0.4,100,29,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,679386),
(23,1,0.4,10,29,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1990720),
(24,1,0.5,100,29,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1976688),
(25,1.2,0.2,900,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1293159),
(26,0.6,0.3,100,28,0.1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000),
(27,0.6,0.3,100,28,0.1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000),
(28,1,0.2,10,16,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1999430),
(29,0.7,0.5,500,21,0,10000000,100000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000),
(30,1.3,0.5,10,28,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1055267),
(31,1,0.2,10,16,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1992153),
(32,5,0.0001,99,28,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000),
(33,3,0.01,4,28,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000),
(34,0.7,0.5,50,27,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1994750),
(35,0.7,0.5,50,27,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1999619),
(36,1,0.7,50,21,0,0,0,'I don\'t have that right now.','I\'ve never heard of that item.','Whoa, I don\'t take those.  Sorry.',NULL,'Doesn\'t look like you can afford that.  Come back again with some loot!','%d is a lot of money, thanks!','I\'ve been looking for one of those.  Here\'s %d talen for it.',NULL,12806893),
(37,1,0.2,10,16,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1997358),
(38,1,0.2,10,16,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1992775),
(39,1,0.1,10,16,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1995211),
(40,0.8,0.1,10,27,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2026167),
(41,0.8,0.1,10,27,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2004718),
(42,0.1,0.1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000),
(43,5,0.0001,10,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1999998),
(44,1.2,0.8,NULL,21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000),
(45,1.2,0.2,NULL,28,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000),
(46,1.2,0.2,NULL,28,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000),
(47,1,0.2,10,16,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1994564),
(48,1,0.5,10,16,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1994558),
(49,1,0.2,10,16,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1998669),
(50,1,0.2,10,16,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1989759),
(51,1,0.2,10,16,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1992488),
(52,1,0.2,10,16,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1997855),
(53,1,0.2,10,16,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1992545),
(54,5,0.01,1,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000),
(55,1,0.5,10,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2019002),
(56,1.01,1,9999,27,NULL,11000000,9900000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,6361108),
(57,1.01,1,9999,29,NULL,11000000,9900000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3305870),
(58,1.01,1,9999,10,NULL,11000000,9900000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10415747),
(59,1,0.5,10,27,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1991581),
(60,1,0.5,10,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1866166),
(61,1.3,0.5,10,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1999880),
(62,1.2,0.8,NULL,29,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000),
(63,1,0.7,100,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,936178),
(64,1,0.4,10,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1992600),
(65,1,0.2,10,16,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1998080),
(66,2.5,0.5,10,28,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1990438),
(67,1,0.2,10,16,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1998050),
(68,0.5,0.2,900,27,0,900000000,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1999844),
(69,1.2,0.8,NULL,27,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000),
(70,0.7,0.5,500,27,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2006315),
(71,1,0.00001,900,27,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,74),
(72,2,0.2,30,27,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,624200),
(73,1,0.7,50,21,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2103051),
(74,0.7,0.5,50,27,0.1,600000,500000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000),
(75,1,0.5,10,16,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1997415),
(76,1,0.4,10,16,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1992435),
(77,2.2,0.3,900,1,0,2100000,1900000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000),
(78,5,0.00001,900,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000),
(79,2,0.4,NULL,29,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000),
(80,1,0.5,10,16,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1999120),
(81,1.01,1,9999,10,NULL,11000000,9900000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,5828365),
(82,1.5,0.6,NULL,29,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000),
(83,5,0.000001,10,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000),
(84,1.4,0.6,25,21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000),
(85,1.4,0.6,25,21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000),
(86,1.4,0.6,25,21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000),
(87,1.4,0.6,25,21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000),
(88,1.4,0.6,25,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000),
(89,1.4,0.6,25,21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000),
(90,1.4,0.6,25,21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000),
(91,1.4,0.6,25,21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000),
(92,1.4,0.6,25,21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000),
(93,1.4,0.6,25,21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000),
(94,1.4,0.6,25,21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000),
(95,1.4,0.6,25,21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000),
(96,1.4,0.6,25,21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000),
(97,1.4,0.6,25,21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000),
(98,1.4,0.6,25,21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000),
(99,1.4,0.6,25,21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000),
(100,1.4,0.6,25,21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000),
(101,1.4,0.6,25,21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000),
(102,1.4,0.6,25,21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000),
(103,1.4,0.6,25,21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000),
(104,1.01,1,9999,21,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,104),
(105,1.01,1,9999,27,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000),
(106,1.05,0.95,10,16,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1999230),
(107,1,0.4,10,16,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1972769),
(108,1.1,0.9,NULL,27,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000),
(109,1.25,0.4,10,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1339663),
(110,1.1,0.9,10,21,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1978088),
(111,1.2,0.8,10,28,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000),
(112,1.1,0.7,10,16,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1975879),
(113,0.7,0.5,50,11,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2671880),
(114,0.35,0.1,10,4,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000),
(115,0.7,0.5,500,13,0.05,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,782),
(116,1.1,0.4,10,16,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1987620),
(117,0.7,0.5,50,4,0,6000000,5000000,NULL,'I\'ve never heard of that! If you want Armor Go 14 East and 2 North from Center Square','This isnt Clothing. If your trying to sell armor, go 14 East and two North of Center Square.','I can\'t afford that! Give Frobozz a Tell that Torkyns outa cash please.',NULL,'That\'ll be %d talens. Thank you! For great Armor go 14 east 2 north from Center Square.','Here is your %d talens.  Thank you! If you want great Armor Go 14 East and 2 North from Center Square!',NULL,3813684),
(118,0.7,0.5,50,3,0,10000000,100000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1770041),
(119,0.7,0.5,50,3,0,10000000,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1882915),
(120,1,0.7,200,8,0.1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,738889),
(121,0.7,0.5,50,12,0.1,100000,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1686346),
(122,1.05,1,100,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1986957),
(124,0.2,0,10,21,0,250000,100000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,225548),
(125,0.7,0.5,50,21,0,NULL,NULL,NULL,'You dont have that Item in your inventory. You idiot!','It aint Armor, and it aint Jewelery, so I dont want it.',NULL,NULL,'That\'ll be %d talens. Thank you.','heres your %d talens. Feel free to continue bleeding me dry!',NULL,1997135),
(126,10,0,0,27,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000),
(127,1.4,0,0,21,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1745073),
(128,1.1,0,0,29,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000),
(129,1.1,0,0,27,0,1100000,900000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,993576),
(130,1.1,0,0,28,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000),
(131,1.1,0,0,27,0,1100000,900000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,862026),
(132,1,0,0,29,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000),
(133,1.1,0,0,28,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000),
(134,1.65,0,0,28,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000),
(135,1.1,0.5,10,3,0,10000000,100000,NULL,NULL,NULL,NULL,NULL,'That\'ll be %d talens.  Thank you!  And do you know I pay extra for good poisons?','Here is your %d talens.  Thank you!  And do you know I pay extra for good poisons?',NULL,2040131),
(136,0.1,0.05,NULL,21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2174580),
(137,0.7,0.5,50,17,0,1000000,500000,'Looks like we\'re sold out of that item.','We don\'t have that for sale at the moment, sorry.','Sorry, I don\'t buy that stuff. Check the guy south of me.','I\'m a little strapped for cash right now.','Prices non-negotiable, sorry.','That\'s gonna be %d talens, thanks. Tell your friends about us.','Fair enough, here\'s your %d talens. Please come again.',NULL,2000000),
(138,0.7,0.5,50,21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000),
(139,0.7,0.5,50,17,NULL,1000000,500000,'Sorry chap, fresh out of those. Try the \'list\' command.','I\'m afraid you don\'t have that item to sell to me.','I only trade in clothing, friend.','Sorry, I seem to be out of funds temporarily.  Come back soon.',NULL,NULL,NULL,NULL,749888),
(140,0,0,0,29,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),
(141,0,0,0,28,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000271),
(142,0,0,0,27,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),
(143,0.7,0.5,50,13,0.05,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1879819),
(144,1.8,0,0,21,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2212454),
(145,1.4,0,0,27,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1998261),
(146,1.4,0,0,28,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1999943),
(147,1.4,0,0,29,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1999999),
(148,1.4,0,0,21,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1910103),
(149,1,0.7,10,21,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,77795),
(150,1.8,0,0,21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2027239),
(151,1,0.1,NULL,21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,4230889),
(152,1.1,0,0,29,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000),
(153,1.4,0,0,28,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000),
(154,1.4,0,0,27,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000),
(155,1.1,0.9,NULL,27,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1997230),
(156,1,0.1,NULL,29,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000),
(157,1,0.1,NULL,28,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000),
(158,1,0.1,NULL,27,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000),
(159,1,0.7,500,4,NULL,NULL,NULL,'I have no such item, does not compute!','Does not Compute!',NULL,'I have Insufficient Funds!','You have Insufficient Funds!','you gave me %d talens.  Transaction Complete.','I gave you %d talens.  Transaction Complete.',NULL,740546),
(160,1.1,0.9,NULL,21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,116738502),
(161,1.8,0,0,21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000052),
(162,1.4,0,0,29,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000),
(163,1.4,0,0,27,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000),
(164,1.4,0.6,25,21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2027888),
(165,0.7,0.4,100,29,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000),
(166,1,0.9,NULL,24,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000),
(167,1.4,0.6,25,27,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000),
(168,0,0,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000),
(169,0.15,0,0,27,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000),
(170,0.15,0,0,28,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000),
(171,0.15,0,0,29,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000),
(172,2.5,0.0001,10,24,0.1,100000,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000),
(173,0.6,0.3,100,12,0.1,100000,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000),
(174,1.1,0.9,NULL,29,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000),
(175,1.1,0.9,NULL,29,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000),
(176,1.4,0,25,29,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000),
(177,1.4,0.6,NULL,29,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000),
(178,5,0.000001,100,12,NULL,100000,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000),
(179,1.1,0.9,NULL,29,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000),
(180,1.1,0.9,NULL,29,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000),
(181,1.5,0.01,10,17,NULL,250000,15000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000),
(182,1.1,0.9,NULL,27,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000),
(183,1,0.1,9999,2,0.5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000),
(184,0.7,0.5,50,21,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1663471),
(185,0.01,0,NULL,29,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000),
(186,20,0,0,21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,5274387),
(187,10,0,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000),
(188,0,0,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000),
(189,0,0,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000),
(190,0,0,NULL,21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000),
(191,0,0,NULL,21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000),
(192,0,0,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000),
(193,10,0,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000),
(194,10,0,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000),
(195,10,0,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000),
(196,0,0,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000),
(197,0,0,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000),
(198,10,0,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000),
(199,10,0,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000),
(200,10,0,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2029212),
(201,10,0,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000),
(202,10,0,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000),
(203,10,0,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2070670),
(204,10,0,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000),
(205,10,0,0,27,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2006957),
(206,10,0,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000),
(207,10,0,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000),
(208,10,0,0,28,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2002081),
(209,10,0,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000),
(210,10,0,0,29,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000447),
(211,0,0,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000),
(212,0,0,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000),
(213,0,0,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000),
(214,1.1,0.7,10,21,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1997244),
(215,1.1,0.7,10,21,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000),
(217,1,0.6,500,28,0.1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1671428),
(218,1.1,0.9,3,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1961414),
(219,1.1,0.9,3,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1987346),
(220,1.1,0.9,3,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1991537),
(221,1.1,0.9,3,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1895524),
(222,0,0,10,27,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000),
(223,1,0,NULL,21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000),
(224,1.1,0.9,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000),
(226,0.7,0.4,1000,29,NULL,NULL,NULL,NULL,NULL,'That will not help the cause.','I seem to be short on cash at the moment.','You seem to be short on cash.',NULL,NULL,NULL,2000000),
(227,0,0,NULL,7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000),
(228,0,0,NULL,7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000),
(229,0,0,NULL,7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000),
(230,0,0,NULL,7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000),
(231,0,0,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000),
(232,1.1,0.9,10,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'That\'ll be %d talens.  Thank you!','Here is your %d talens.  Thank you!',NULL,2000000),
(233,1.1,0.9,10,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'That\'ll be %d talens.  Thank you!','Here is your %d talens.  Thank you!',NULL,2000000),
(234,1.1,0.9,10,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'That\'ll be %d talens.  Thank you!','Here is your %d talens.  Thank you!',NULL,2000000),
(235,1.1,0.9,10,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'That\'ll be %d talens.  Thank you!','Here is your %d talens.  Thank you!',NULL,2000000),
(236,1.1,0.9,10,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'That\'ll be %d talens.  Thank you!','Here is your %d talens.  Thank you!',NULL,2000000),
(237,1.1,0.9,10,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'That\'ll be %d talens.  Thank you!','Here is your %d talens.  Thank you!',NULL,1969740),
(238,1.01,1,9999,10,NULL,11000000,9900000,NULL,NULL,NULL,NULL,NULL,'That\'ll be %d talens.  Thank you!','Here is your %d talens.  Thank you!',NULL,2000000),
(239,1.1,0.9,100,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'That\'ll be %d talens.  Thank you!','Here is your %d talens.  Thank you!',NULL,2000000),
(240,10,0,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000),
(241,1,0.9,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000),
(242,1,0.5,100,16,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'That\'ll be %d talens.  Thank you!','Here is your %d talens.  Thank you!',NULL,2000000),
(243,1.1,0.5,10,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'That\'ll be %d talens.  Thank you!','Here is your %d talens.  Thank you!',NULL,1997970),
(244,1.1,0.5,10,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'That\'ll be %d talens.  Thank you!','Here is your %d talens.  Thank you!',NULL,1917680),
(245,0,0,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000),
(246,0,0,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000),
(247,1.25,0.75,10,1,NULL,1100000,900000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000),
(248,0,0,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000),
(250,1.1,0.9,NULL,27,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000),
(251,1,0.5,1000,21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000),
(252,1.1,0.9,25,21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000),
(255,0,0,10,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000),
(256,3,0.5,1,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000),
(257,3,0.5,1,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000),
(258,4,2,9999,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000),
(260,1.1,0.9,10,21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000),
(261,1.1,0.9,10,21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000);
/*!40000 ALTER TABLE `shopowned` ENABLE KEYS */;
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
