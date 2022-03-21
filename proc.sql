-- MySQL dump 10.13  Distrib 5.1.33, for Win32 (ia32)
--
-- Host: localhost    Database: onlineshopping
-- ------------------------------------------------------
-- Server version	5.1.33-community

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
-- Table structure for table `adress`
--

DROP TABLE IF EXISTS `adress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `adress` (
  `email` varchar(50) DEFAULT NULL,
  `name1` varchar(50) DEFAULT NULL,
  `adress1` varchar(50) DEFAULT NULL,
  `adress2` varchar(50) DEFAULT NULL,
  `postalcode` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `mobilephone` varchar(50) DEFAULT NULL,
  `cidsx` varchar(50) DEFAULT NULL,
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`aid`),
  KEY `cidsx` (`cidsx`),
  CONSTRAINT `adress_ibfk_1` FOREIGN KEY (`cidsx`) REFERENCES `users` (`CONTACTNO`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adress`
--

LOCK TABLES `adress` WRITE;
/*!40000 ALTER TABLE `adress` DISABLE KEYS */;
INSERT INTO `adress` VALUES ('goelabhishek709@gmail.com','abhi','h.no564/35','jantacolony,rohtak','124001','-- Country --','7206671525','9034524364',4),('nikhil@gmail.com','','','','','-- Country --','','9034524364',5),('aman@gamil.com','aman','h.no564/35','devimandir','124001','India','7206671525','9034524364',6);
/*!40000 ALTER TABLE `adress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brand`
--

DROP TABLE IF EXISTS `brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `brand` (
  `bno` int(11) NOT NULL AUTO_INCREMENT,
  `bname` varchar(150) DEFAULT NULL,
  `cname` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`bno`),
  UNIQUE KEY `cb` (`bname`,`cname`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brand`
--

LOCK TABLES `brand` WRITE;
/*!40000 ALTER TABLE `brand` DISABLE KEYS */;
INSERT INTO `brand` VALUES (10,'ADDIDAS','FOOTWEAR'),(7,'BOAT','ELECTRONIC'),(3,'COBB','CLOTHS'),(4,'INTEX','ELECTRONIC'),(1,'LEVIS','CLOTHS'),(12,'MILTION','OTHERS'),(6,'MOCHI','FOOTWEAR'),(11,'NIKE','FOOTWEAR'),(2,'PETER ENGLAND','CLOTHS'),(5,'SONY','ELECTRONIC'),(9,'TITAN','SUNGLASS');
/*!40000 ALTER TABLE `brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `srno` int(11) NOT NULL AUTO_INCREMENT,
  `cid` varchar(20) DEFAULT NULL,
  `pid` varchar(20) DEFAULT NULL,
  `qty` varchar(20) DEFAULT NULL,
  `status` varchar(20) DEFAULT 'NP',
  `isenable` int(11) DEFAULT '1',
  `orderno` int(11) DEFAULT '-1',
  PRIMARY KEY (`srno`),
  KEY `cid` (`cid`),
  KEY `pid` (`pid`),
  CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`cid`) REFERENCES `users` (`CONTACTNO`),
  CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`pid`) REFERENCES `productdetails` (`PRODUCTID`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (1,'9034524364','110','2','R',1,-1),(2,'9034524364','103','3','P',1,NULL),(15,'9034524364','110','','R',1,-1),(16,'9034524364','110','21','P',1,NULL),(17,'9034524364','103','5','P',1,NULL),(18,'9034524364','108','12','P',1,NULL),(19,'9034524364','111','8','P',1,NULL),(20,'9034524364','108','1','P',1,NULL),(21,'9034524364','108','1','P',1,NULL),(22,'9034524364','108','1','R',1,-1),(23,'9034524364','111','','R',1,-1),(24,'9034524364','108','12','P',1,1),(25,'9034524364','106','1','P',1,2),(26,'9034524364','110','1','P',1,3),(27,'9034524364','109','2','P',1,4),(28,'9034524364','110','6','P',1,5),(29,'9034524364','103','','R',1,-1),(30,'9034524364','390','2','P',1,6),(31,'9034524364','108','2','P',1,7),(32,'9034524364','108','8','P',1,8),(33,'9034524364','111','1','P',1,9),(34,'9034524364','111','2','P',1,9),(35,'9034524364','110','2','P',1,10),(36,'9034524364','109','2','P',1,10),(37,'9034524364','110','7','P',1,11),(39,'9034524364','111','2','P',1,11),(40,'9034524364','102','4','P',1,11),(41,'9034524364','108','2','NP',1,-1);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `cno` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(70) DEFAULT NULL,
  PRIMARY KEY (`cno`),
  UNIQUE KEY `cb` (`cname`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'CLOTHS'),(2,'ELECTRONIC'),(4,'FOOTWEAR'),(5,'OTHERS'),(3,'SUNGLASS');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordertable`
--

DROP TABLE IF EXISTS `ordertable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ordertable` (
  `orderno` int(11) NOT NULL AUTO_INCREMENT,
  `custid` varchar(40) DEFAULT NULL,
  `addid` int(11) DEFAULT NULL,
  `orderdate` date DEFAULT NULL,
  `paytype` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`orderno`),
  KEY `custid` (`custid`),
  KEY `addid` (`addid`),
  CONSTRAINT `ordertable_ibfk_1` FOREIGN KEY (`custid`) REFERENCES `users` (`CONTACTNO`),
  CONSTRAINT `ordertable_ibfk_2` FOREIGN KEY (`addid`) REFERENCES `adress` (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordertable`
--

LOCK TABLES `ordertable` WRITE;
/*!40000 ALTER TABLE `ordertable` DISABLE KEYS */;
INSERT INTO `ordertable` VALUES (1,'9034524364',4,'2022-03-07','COD'),(2,'9034524364',5,'2022-03-07','CP'),(3,'9034524364',4,'2022-03-08','CP'),(4,'9034524364',5,'2022-03-08','PP'),(5,'9034524364',5,'2022-03-08','PP'),(6,'9034524364',6,'2022-03-08','COD'),(7,'9034524364',6,'2022-03-09','CP'),(8,'9034524364',6,'2022-03-09','COD'),(9,'9034524364',6,'2022-03-09','COD'),(10,'9034524364',6,'2022-03-09','COD'),(11,'9034524364',6,'2022-03-09','COD');
/*!40000 ALTER TABLE `ordertable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productdetails`
--

DROP TABLE IF EXISTS `productdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productdetails` (
  `PRODUCTID` varchar(50) NOT NULL,
  `NAME` varchar(50) DEFAULT NULL,
  `BRANDNAME` varchar(50) DEFAULT NULL,
  `SIZE` varchar(50) DEFAULT NULL,
  `PRICE` varchar(50) DEFAULT NULL,
  `QUANTITY` varchar(50) DEFAULT NULL,
  `PRODUCTCATEGORY` varchar(50) DEFAULT NULL,
  `IMAGE` varchar(400) DEFAULT NULL,
  `Empid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`PRODUCTID`),
  KEY `Empid` (`Empid`),
  CONSTRAINT `productdetails_ibfk_1` FOREIGN KEY (`Empid`) REFERENCES `users` (`CONTACTNO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productdetails`
--

LOCK TABLES `productdetails` WRITE;
/*!40000 ALTER TABLE `productdetails` DISABLE KEYS */;
INSERT INTO `productdetails` VALUES ('101','RUNNING SHOES','ADDIDAS','10','3339','25','FOOTWEAR','sportshoes.jpg','9467443974'),('102','SUN GLASS','TITAN','M','1999','6','SUNGLASS','41zL5zXMSzL._UY625_ - Copy - Copy.jpg','9467443974'),('103','RUNNING SHOES','NIKE','09','2999','22','FOOTWEAR','61hMQOHmEIL._UY625_.jpg','9467443974'),('105','HEADPHONE','BOAT','L','1199','20','ELECTRONIC','photo-1505740420928-5e560c06d30e.jpg','9467443974'),('106','HD-r-nikon','NIKON','l','23999','8','ELECTRONIC','pexels-photo-90946.jpeg','9467443974'),('108','REDMI 9i','REDMI','l','9999','10','ELECTRONIC','images (1).jpg','9467443974'),('109','REDMI 10i','REDMI','m','19999','18','ELECTRONIC','images (2).jpg','9467443974'),('110','LENOVO i7','LENOVO','45inch','34599','14','ELECTRONIC','images.jpg','9467443974'),('111','brown CASUAL ','MOCHI','8','1999','25','FOOTWEAR','1553367033-5_thump.jpg','9467443974'),('199','k','k','k','','k','k','images.jpg','9467443974'),('23345','shirt','PETER ENGLAND','xl','1999','23','CLOTHS','download (2).jpg','9467443974'),('2341','WATER CAN',' MILTION','large','239','234','OTHER','download (4).jpg','9467443974'),('2390','computer glass','TITAN','m','2399','45','SUNGLASS','41zL5zXMSzL._UY625_ - Copy - Copy.jpg','9467443974'),('290','SPORT SHOES',' NIKE','09','1999','23','FOOTWEA','sportshoes.jpg','9467443974'),('390','i5 laptop','HP','m','45999','32','ELECTRONIC','download (3).jpg','9467443974'),('678','i7 laptop ssd','INTEX','m','45999','20','ELECTRONIC','download (3).jpg','9467443974'),('777','a','h','h','','h','h','pexels-photo-90946.jpeg','9467443974'),('899','printed shirt','PETER ENGLAND','xl','1239','23','CLOTHS','download (2).jpg','9467443974'),('900','laptop','INTEX','123','34599','45','ELECTRONIC','images.jpg','9467443974'),('985','camera HD','SONY','m','23999','12','ELECTRONIC','pexels-photo-90946.jpeg','9467443974'),('987','WATER BOOTEL','MILTION','L','234','123','OTHERS','download (4).jpg','9467443974');
/*!40000 ALTER TABLE `productdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `CONTACTNO` varchar(40) NOT NULL,
  `USERTYPE` varchar(40) DEFAULT NULL,
  `USERNAME` varchar(40) DEFAULT NULL,
  `PASSWORD` varchar(40) DEFAULT NULL,
  `ISENABELED` int(11) DEFAULT NULL,
  PRIMARY KEY (`CONTACTNO`),
  UNIQUE KEY `USERNAME` (`USERNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('1234567','customer','23333','123456',1),('2','customer','2','2',1),('4','customer','4','4',1),('7','customer','7','7',1),('7777777','employee','7777777','777777777',1),('8','employee','8','9',1),('8168977337','Admin','Abhishek','sg@1964',1),('9034524364','customer','lakshit','asdf',1),('9467443974','employee','abhishek goel','qwert',1),('980286121','customer','jai@123','asdfg',0),('9992579978','customer','nisha','zxcv',1),('99999999','employee','99999999','99999999',1),('AA','employee','wert','aa',1),('gdgggd','customer','ddgdd','sxsfd',1),('jojhnuinbjun','employee','kinini','iojiojm',1),('kkkkk','customer','llll','lllll',1),('okedkewokf','customer','dkferwkof','efrkeorkf',1),('swww2ew3r','employee','ededed','sdeded',0),('xxxxxxx','employee','1111111','11111111',1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `v1`
--

DROP TABLE IF EXISTS `v1`;
/*!50001 DROP VIEW IF EXISTS `v1`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v1` (
  `srno` int(11),
  `cid` varchar(20),
  `pid` varchar(20),
  `qty` varchar(20),
  `status` varchar(20),
  `isenable` int(11),
  `PRODUCTID` varchar(50),
  `NAME` varchar(50),
  `BRANDNAME` varchar(50),
  `SIZE` varchar(50),
  `PRICE` varchar(50),
  `QUANTITY` varchar(50),
  `PRODUCTCATEGORY` varchar(50),
  `IMAGE` varchar(400),
  `Empid` varchar(50)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Dumping routines for database 'onlineshopping'
--
/*!50003 DROP PROCEDURE IF EXISTS `add2Cart` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `add2Cart`(custid varchar(100),prodid varchar(100),q varchar(100))
begin
	if exists (select * from cart where cid = custid and status = 'NP' and pid = prodid) then
	begin
	update cart set qty = qty + q where cid = custid and status = 'NP' and pid = prodid;
	end;
	else
	begin
	insert into cart(cid,pid,qty) values(custid,prodid,q);
	end;
	end if;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getorderdetail` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `getorderdetail`(cid varchar(100))
begin
Select a.orderno,a.orderdate, a.addid, a.custid, b.srno as 'cartno', b.pid, b.qty, c.*,d.*  from ordertable a, cart b, adress c,productdetails d where a.custid= cid and a.orderno=b.orderno and a.addid = c.aid and b.pid = d.productid order by a.orderno desc;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p1` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `p1`()
begin
	if exists (select * from cart where cid = '9034524364' and status = 'NP') then
	begin
	select * from cart;
	end;
	else
	begin
	select * from users;
	end;
	end if;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `proc_order` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `proc_order`(cid varchar(100), aid int, ptype varchar(100))
begin
	insert into ordertable(custid,orderdate,addid,paytype) values(cid,curdate(),aid,ptype);
	update cart set status = 'P', orderno=(select max(orderno) from ordertable) where cid in (cid) and status='NP';
update productdetails p 
inner join cart c on p.productid=c.pid
set p.quantity=p.quantity-c.qty where c.orderno=(select max(orderno) from ordertable where custid=cid);
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `v1`
--

/*!50001 DROP TABLE `v1`*/;
/*!50001 DROP VIEW IF EXISTS `v1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v1` AS select `cart`.`srno` AS `srno`,`cart`.`cid` AS `cid`,`cart`.`pid` AS `pid`,`cart`.`qty` AS `qty`,`cart`.`status` AS `status`,`cart`.`isenable` AS `isenable`,`productdetails`.`PRODUCTID` AS `PRODUCTID`,`productdetails`.`NAME` AS `NAME`,`productdetails`.`BRANDNAME` AS `BRANDNAME`,`productdetails`.`SIZE` AS `SIZE`,`productdetails`.`PRICE` AS `PRICE`,`productdetails`.`QUANTITY` AS `QUANTITY`,`productdetails`.`PRODUCTCATEGORY` AS `PRODUCTCATEGORY`,`productdetails`.`IMAGE` AS `IMAGE`,`productdetails`.`Empid` AS `Empid` from (`cart` join `productdetails` on((`cart`.`pid` = `productdetails`.`PRODUCTID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-21 11:18:58
