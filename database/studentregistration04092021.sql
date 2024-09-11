-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: studentinfo
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `college`
--

DROP TABLE IF EXISTS `college`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `college` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fname` varchar(50) NOT NULL,
  `mname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `bdate` varchar(10) NOT NULL,
  `address` varchar(500) NOT NULL,
  `nguardian` varchar(50) NOT NULL,
  `gcontact` varchar(20) NOT NULL,
  `fbaccount` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `lastschool` varchar(100) NOT NULL,
  `schooladdress` varchar(500) NOT NULL,
  `yrgrad` varchar(20) NOT NULL,
  `course` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `college`
--

LOCK TABLES `college` WRITE;
/*!40000 ALTER TABLE `college` DISABLE KEYS */;
INSERT INTO `college` VALUES (1,'Von','C','Toledo','Male','05-15-2000','Craig St.','Eileen','09161951432','karbu','patricktld@gmail.com','09161951432','NBCS','Baguio City','2000','BSIS'),(4,'a','a','a','Male','04-06-2021','a','a','a','a','a','a','a','a','a','BSIS'),(5,'b','b','b','Male','04-06-2021','b','b','b','b','b','b','b','b','b','BSIS');
/*!40000 ALTER TABLE `college` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shs`
--

DROP TABLE IF EXISTS `shs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shs` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `fname` varchar(50) NOT NULL,
  `mname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `bdate` varchar(10) NOT NULL,
  `address` varchar(500) NOT NULL,
  `nguardian` varchar(50) NOT NULL,
  `gcontact` varchar(20) NOT NULL,
  `fbaccount` varchar(50) NOT NULL,
  `lrn` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `lastschool` varchar(100) NOT NULL,
  `schooladdress` varchar(500) NOT NULL,
  `yrgrad` varchar(20) NOT NULL,
  `strand` varchar(50) NOT NULL,
  `stype` varchar(20) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shs`
--

LOCK TABLES `shs` WRITE;
/*!40000 ALTER TABLE `shs` DISABLE KEYS */;
INSERT INTO `shs` VALUES (1,'Vincent','C.','Toledo','male','2021-03-23','Tondo, Manila','Patrick Toledo','09161951432','VincentT','136436090498','barracudaskynet@gmail.com','09161951432','Legarda Elem. School','España Manila','2020','abm','FULL VOUCHER'),(23,'Von','Carandang','Toledo','Male','11-17-2011','Craig St. Samp. Manila','Patrick Toledo','09161951432','Karbu.FB','12345678912','patricktld@gmail.com','09161951432','Legarda Elem. School','Loyola','2011','humss','FULL VOUCHER'),(65,'a','a','a','Male','09-02-2000','a','a','456456','aaa','436432','domingo.joseph@gmail.com','567567','a','a','2000','ictp','ESC'),(66,'B','B','B','B','B','B','B','B','B','B','B','B','B','B','B','B',''),(67,'B','B','B','B','B','B','B','B','B','B','B','B','B','B','B','B',''),(68,'c','c','c','c','Bc','c','c','B','B','B','B','B','B','B','B','B',''),(69,'d','d','d','Male','02-03-2004','d','d','45454','d','45454','d','45664','d','d','d','icta','FULL VOUCHER'),(70,'e','e','e','Male','02-15-2000','e','e','2','e','e','e','e','e','e','e','ictp',''),(71,'f','f','f','Male','06-13-2000','f','f','f','f','f','f','f','f','f','f','ictp',''),(72,'g','g','g','Male','01-16-2019','g','g','g','g','g','g','g','g','g','g','gas',''),(73,'h','h','','Male','06-11-2010','h','h','h','h','h','h','h','h','h','h','humss',''),(74,'i','i','i','Female','04-06-2021','i','i','i','i','i','i','i','i','i','i','humss',''),(75,'j','j','j','Male','02-02-2000','j','j','j','j','j','j','j','j','j','j','ictc',''),(76,'jj','jj','jj','Male','02-02-2010','jj','jj','jj','jj','jj','jj','jj','jj','jj','jj','humss',''),(77,'l','l','l','Male','04-06-2021','l','l','l','l','l','l','l','l','l','l','gas',''),(78,'m','m','m','Male','04-06-2021','m','m','m','m','m','m','m','m','m','m','humss',''),(79,'n','n','n','Male','04-06-2021','n','n','n','n','n','n','n','n','n','n','abm','');
/*!40000 ALTER TABLE `shs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'test1','test1','uname','pass');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'studentinfo'
--

--
-- Dumping routines for database 'studentinfo'
--
/*!50003 DROP PROCEDURE IF EXISTS `pCollege` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pCollege`(
IN `firstname` VARCHAR(50), 
IN `lastname` VARCHAR(50),
IN `mname` VARCHAR(50),
IN `gender` VARCHAR(50),
IN `bdate` VARCHAR(50),
IN `address` VARCHAR(50),
IN `guardian` VARCHAR(50),
IN `contact` VARCHAR(50),
IN `fbaccount` VARCHAR(50),
IN `email` VARCHAR(50),
IN `mobile` VARCHAR(50),
IN `lastschool` VARCHAR(50),
IN `schooladdress` VARCHAR(50),
IN `yrgrad` VARCHAR(50),
IN `course` VARCHAR(50)
)
BEGIN
if(select count(*) from college where
	fname=firstname and
    lname=lastname and
    mname = mname and
    gender = gender and
    bdate = bdate and
    address = address)=0 then
		INSERT INTO college(
		fname,lname,mname,
		gender,bdate,address,
		nguardian,gcontact,fbaccount,
		email,mobile,
		lastschool,schooladdress,yrgrad,
		course)
		values (firstname, lastname,mname,
		gender,bdate,address,
		guardian,contact,fbaccount,
		email,mobile,
		lastschool,schooladdress,
		yrgrad,course);
		select 'Success' as status, 'Record inserted' as msg;
	else
		select 'Error' as status, 'Duplicate entry detected' as msg;
	end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pSHS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pSHS`(IN `firstname` VARCHAR(50), 
IN `lastname` VARCHAR(50),
IN `mname` VARCHAR(50),
IN `gender` VARCHAR(50),
IN `bdate` VARCHAR(50),
IN `address` VARCHAR(50),
IN `guardian` VARCHAR(50),
IN `contact` VARCHAR(50),
IN `fbaccount` VARCHAR(50),
IN `lrn` VARCHAR(50),
IN `email` VARCHAR(50),
IN `mobile` VARCHAR(50),
IN `lastschool` VARCHAR(50),
IN `schooladdress` VARCHAR(50),
IN `yrgrad` VARCHAR(50),
IN `strand` VARCHAR(50),
IN `type` VARCHAR(50)
)
BEGIN
/* START TRANSACTION; */
if(select count(*) from shs where
	fname=firstname and
    lname=lastname and
    mname = mname and
    gender = gender and
    bdate = bdate and
    address = address)=0 then
		INSERT INTO shs(
		fname,lname,mname,
		gender,bdate,address,
		nguardian,gcontact,fbaccount,
		lrn,email,mobile,
		lastschool,schooladdress,yrgrad,
		strand,stype)
		values (firstname, lastname,mname,
		gender,bdate,address,
		guardian,contact,fbaccount,
		lrn,email,mobile,
		lastschool,schooladdress,
		yrgrad,strand,stype);
		select 'Success' as status, 'Record inserted' as msg;
	else
		select 'Error' as status, 'Duplicate entry detected' as msg;
	end if;
/*https://www.tutorialrepublic.com/php-tutorial/php-mysql-prepared-statements.php*/
/* COMMIT; */
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `simpleproc` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `simpleproc`(OUT `param1` INT)
BEGIN
  SELECT COUNT(*) INTO param1 FROM t;
 END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-09 14:16:31
