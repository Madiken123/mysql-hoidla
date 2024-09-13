-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: mmustonen
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `studentid` int DEFAULT NULL,
  `comment` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `studentid` (`studentid`),
  CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`studentid`) REFERENCES `student` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (5,111111,'John has shown great improvement in programming skills.'),(6,222222,'Jane needs to work on her time management.'),(7,333333,'Mark is an excellent team player.'),(8,444444,'Alice consistently submits assignments on time.'),(9,111001,'Great progress in assignments!'),(10,111001,'Needs to improve in exams.'),(11,111002,'Excellent teamwork skills.'),(12,111002,'Struggles with homework deadlines.'),(13,111003,'Shows strong leadership qualities.'),(14,111003,'Participates actively in class discussions.');
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course` (
  `code` varchar(8) NOT NULL,
  `description` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES ('CSE101','Introduction to Computer Science'),('ENG202','Advanced Engineering');
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stgroup`
--

DROP TABLE IF EXISTS `stgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stgroup` (
  `code` varchar(8) NOT NULL,
  `description` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stgroup`
--

LOCK TABLES `stgroup` WRITE;
/*!40000 ALTER TABLE `stgroup` DISABLE KEYS */;
INSERT INTO `stgroup` VALUES ('GRP001','Informatics Group'),('GRP002','Engineering Group'),('GRP003','Mathematics Group'),('GRP004','Physics Group');
/*!40000 ALTER TABLE `stgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `id` int NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `groupcode` varchar(8) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `groupcode` (`groupcode`),
  CONSTRAINT `student_ibfk_1` FOREIGN KEY (`groupcode`) REFERENCES `stgroup` (`code`),
  CONSTRAINT `student_ibfk_2` FOREIGN KEY (`groupcode`) REFERENCES `stgroup` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=666673 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (111001,'John','Doe','GRP001','1995-05-15'),(111002,'Jane','Doe','GRP002','1996-07-20'),(111003,'Mark','Smith','GRP003','1994-09-10'),(111004,'Alice','Johnson','GRP001','1997-02-11'),(111005,'Bob','Brown','GRP002','1998-08-23'),(111006,'Emily','Davis','GRP003','1999-11-30'),(111007,'Tom','Williams','GRP001','2000-01-10'),(111008,'Sophie','Martinez','GRP002','2001-03-15'),(111009,'Ryan','Garcia','GRP003','2002-04-20'),(111010,'Olivia','Wilson','GRP001','2003-05-25'),(111011,'Lucas','Taylor','GRP002','2004-06-30'),(111012,'Mia','Anderson','GRP003','2005-07-15'),(111013,'Aiden','Thomas','GRP001','2006-08-10'),(111014,'Ella','Moore','GRP002','2007-09-05'),(111015,'Ethan','Jackson','GRP003','2008-10-25'),(111016,'Grace','White','GRP001','2009-11-20'),(111017,'Logan','Harris','GRP002','2010-12-15'),(111018,'Chloe','Martin','GRP003','2011-01-05'),(111019,'James','Garcia','GRP001','2012-02-10'),(111020,'Isabella','Martinez','GRP002','2013-03-30'),(111111,'John','Doe','GRP001','1995-05-15'),(222222,'Jane','Doe','GRP002','1996-07-20'),(333333,'Mark','Smith','GRP001','1994-09-10'),(444444,'Alice','Johnson','GRP002','1997-02-11'),(555555,'Bob','Brown','GRP001','1998-08-23'),(666666,'Emily','Davis','GRP002','1999-11-30'),(666667,'John','Doe','GRP001','1995-05-15'),(666668,'Jane','Doe','GRP002','1996-07-20'),(666669,'Mark','Smith','GRP001','1994-09-10'),(666670,'Alice','Johnson','GRP002','1997-02-11'),(666671,'Bob','Brown','GRP001','1998-08-23'),(666672,'Emily','Davis','GRP002','1999-11-30');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `student_comments`
--

DROP TABLE IF EXISTS `student_comments`;
/*!50001 DROP VIEW IF EXISTS `student_comments`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `student_comments` AS SELECT 
 1 AS `id`,
 1 AS `firstname`,
 1 AS `lastname`,
 1 AS `comment`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `student_comments`
--

/*!50001 DROP VIEW IF EXISTS `student_comments`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `student_comments` AS select `comment`.`studentid` AS `id`,`student`.`firstname` AS `firstname`,`student`.`lastname` AS `lastname`,`comment`.`comment` AS `comment` from (`student` join `comment` on((`student`.`id` = `comment`.`studentid`))) */;
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

-- Dump completed on 2024-09-13  9:39:07
