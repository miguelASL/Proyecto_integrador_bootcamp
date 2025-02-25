-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: git
-- ------------------------------------------------------
-- Server version	9.1.0

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
-- Temporary view structure for view `avg_performance_by_gender`
--

DROP TABLE IF EXISTS `avg_performance_by_gender`;
/*!50001 DROP VIEW IF EXISTS `avg_performance_by_gender`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `avg_performance_by_gender` AS SELECT 
 1 AS `gender`,
 1 AS `avg_math_score`,
 1 AS `avg_reading_score`,
 1 AS `avg_overall_score`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `avg_performance_by_lunch`
--

DROP TABLE IF EXISTS `avg_performance_by_lunch`;
/*!50001 DROP VIEW IF EXISTS `avg_performance_by_lunch`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `avg_performance_by_lunch` AS SELECT 
 1 AS `lunch`,
 1 AS `avg_math_score`,
 1 AS `avg_reading_score`,
 1 AS `avg_overall_score`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `avg_performance_by_parental_education`
--

DROP TABLE IF EXISTS `avg_performance_by_parental_education`;
/*!50001 DROP VIEW IF EXISTS `avg_performance_by_parental_education`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `avg_performance_by_parental_education` AS SELECT 
 1 AS `parental_education_level`,
 1 AS `avg_math_score`,
 1 AS `avg_reading_score`,
 1 AS `avg_overall_score`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `avg_performance_by_social_media`
--

DROP TABLE IF EXISTS `avg_performance_by_social_media`;
/*!50001 DROP VIEW IF EXISTS `avg_performance_by_social_media`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `avg_performance_by_social_media` AS SELECT 
 1 AS `social_media_platform`,
 1 AS `avg_math_score`,
 1 AS `avg_reading_score`,
 1 AS `avg_overall_score`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `avg_performance_by_test_preparation_course`
--

DROP TABLE IF EXISTS `avg_performance_by_test_preparation_course`;
/*!50001 DROP VIEW IF EXISTS `avg_performance_by_test_preparation_course`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `avg_performance_by_test_preparation_course` AS SELECT 
 1 AS `test_preparation_course`,
 1 AS `avg_math_score`,
 1 AS `avg_reading_score`,
 1 AS `avg_overall_score`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `avg_performance_by_usage_hours`
--

DROP TABLE IF EXISTS `avg_performance_by_usage_hours`;
/*!50001 DROP VIEW IF EXISTS `avg_performance_by_usage_hours`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `avg_performance_by_usage_hours` AS SELECT 
 1 AS `usage_hours`,
 1 AS `avg_math_score`,
 1 AS `avg_reading_score`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `gender`
--

DROP TABLE IF EXISTS `gender`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gender` (
  `id` int NOT NULL AUTO_INCREMENT,
  `gender_name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gender`
--

LOCK TABLES `gender` WRITE;
/*!40000 ALTER TABLE `gender` DISABLE KEYS */;
INSERT INTO `gender` VALUES (1,'female'),(2,'male');
/*!40000 ALTER TABLE `gender` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `low_performance_students`
--

DROP TABLE IF EXISTS `low_performance_students`;
/*!50001 DROP VIEW IF EXISTS `low_performance_students`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `low_performance_students` AS SELECT 
 1 AS `id`,
 1 AS `math_score`,
 1 AS `reading_score`,
 1 AS `writing_score`,
 1 AS `avg_score`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `lunch`
--

DROP TABLE IF EXISTS `lunch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lunch` (
  `id` int NOT NULL AUTO_INCREMENT,
  `lunch_type` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lunch`
--

LOCK TABLES `lunch` WRITE;
/*!40000 ALTER TABLE `lunch` DISABLE KEYS */;
INSERT INTO `lunch` VALUES (1,'standard'),(2,'free/reduced');
/*!40000 ALTER TABLE `lunch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parental_level_of_education`
--

DROP TABLE IF EXISTS `parental_level_of_education`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parental_level_of_education` (
  `id` int NOT NULL AUTO_INCREMENT,
  `education_level_name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parental_level_of_education`
--

LOCK TABLES `parental_level_of_education` WRITE;
/*!40000 ALTER TABLE `parental_level_of_education` DISABLE KEYS */;
INSERT INTO `parental_level_of_education` VALUES (1,'some college'),(2,'bachelor\'s degree'),(3,'some high school'),(4,'associate\'s degree'),(5,'high school'),(6,'master\'s degree');
/*!40000 ALTER TABLE `parental_level_of_education` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `performance_by_impact_category`
--

DROP TABLE IF EXISTS `performance_by_impact_category`;
/*!50001 DROP VIEW IF EXISTS `performance_by_impact_category`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `performance_by_impact_category` AS SELECT 
 1 AS `impact_category`,
 1 AS `student_count`,
 1 AS `avg_math_score`,
 1 AS `avg_reading_score`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `performance_by_usage_range`
--

DROP TABLE IF EXISTS `performance_by_usage_range`;
/*!50001 DROP VIEW IF EXISTS `performance_by_usage_range`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `performance_by_usage_range` AS SELECT 
 1 AS `usage_range`,
 1 AS `avg_math_score`,
 1 AS `avg_reading_score`,
 1 AS `student_count`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `race_ethnicity`
--

DROP TABLE IF EXISTS `race_ethnicity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `race_ethnicity` (
  `id` int NOT NULL AUTO_INCREMENT,
  `race_ethnicity_name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `race_ethnicity`
--

LOCK TABLES `race_ethnicity` WRITE;
/*!40000 ALTER TABLE `race_ethnicity` DISABLE KEYS */;
INSERT INTO `race_ethnicity` VALUES (1,'group C'),(2,'group B'),(3,'group D'),(4,'group A'),(5,'group E');
/*!40000 ALTER TABLE `race_ethnicity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_media_platforms`
--

DROP TABLE IF EXISTS `social_media_platforms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_media_platforms` (
  `id` int NOT NULL AUTO_INCREMENT,
  `platform_name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_media_platforms`
--

LOCK TABLES `social_media_platforms` WRITE;
/*!40000 ALTER TABLE `social_media_platforms` DISABLE KEYS */;
INSERT INTO `social_media_platforms` VALUES (1,'Instagram, Snapchat, YouTube'),(2,'YouTube, Twitter'),(3,'Facebook, Instagram'),(4,'TikTok, Instagram, Snapchat, Twitter'),(5,'No Social Media');
/*!40000 ALTER TABLE `social_media_platforms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students_performance`
--

DROP TABLE IF EXISTS `students_performance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students_performance` (
  `math_score` varchar(50) DEFAULT NULL,
  `reading_score` varchar(50) DEFAULT NULL,
  `writing_score` varchar(50) DEFAULT NULL,
  `fecha` text,
  `tiempo_redes_horas` double DEFAULT NULL,
  `categoria_rendimiento` text,
  `generacion` text,
  `id` int NOT NULL AUTO_INCREMENT,
  `usage_hours` int DEFAULT NULL,
  `impact_score` float DEFAULT NULL,
  `impact_category` varchar(20) DEFAULT NULL,
  `gender_id` int DEFAULT NULL,
  `race_ethnicity_id` int DEFAULT NULL,
  `parental_level_of_education_id` int DEFAULT NULL,
  `lunch_id` int DEFAULT NULL,
  `test_preparation_course_id` int DEFAULT NULL,
  `social_media_platforms_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students_performance`
--

LOCK TABLES `students_performance` WRITE;
/*!40000 ALTER TABLE `students_performance` DISABLE KEYS */;
INSERT INTO `students_performance` VALUES ('60','72','74','2009-07-08',6.6,'Bajo','Gen Z',1,3,4.9,'Medium',1,1,1,1,1,1),('83','93','95','2004-12-28',0.7,'Alto','Gen Z',2,2,2.5,'Medium',1,1,2,1,1,2),('61','68','66','2003-03-07',5.2,'Bajo','Gen Z',3,3,4.975,'Medium',1,2,1,2,1,1),('76','70','69','2003-12-27',2.5,'Medio','Gen Z',4,2,3.55,'Medium',2,3,3,1,2,3),('49','51','43','1997-04-10',4.2,'Bajo','Gen Z',5,6,7,'High',2,1,4,1,1,4),('72','72','74','1999-12-16',4.8,'Medio','Gen Z',6,3,3.8,'Medium',1,2,2,1,1,3),('24','38','27','2009-10-03',6.2,'Bajo','Gen Z',7,6,7.95,'High',1,2,3,2,1,4),('35','55','60','1997-02-15',6.9,'Bajo','Gen Z',8,5,7.05,'High',1,3,3,2,2,4),('58','61','52','2002-08-15',4.4,'Bajo','Gen Z',9,6,6.525,'High',2,1,5,2,1,4),('61','58','56','1996-03-11',7.1,'Bajo','Millennials',10,4,5.425,'High',2,2,4,2,1,1),('61','73','63','1995-04-16',7.7,'Bajo','Millennials',11,3,4.85,'Medium',1,1,5,1,1,1),('69','76','74','2003-03-14',3.6,'Medio','Gen Z',12,4,4.775,'Medium',1,2,5,1,2,1),('67','72','67','2000-04-25',4.2,'Bajo','Gen Z',13,4,4.925,'Medium',2,3,4,1,2,1),('39','64','57','2001-03-13',5.8,'Bajo','Gen Z',14,5,6.725,'High',1,1,4,1,1,4),('58','63','73','1996-10-27',6.7,'Bajo','Millennials',15,6,6.475,'High',1,3,1,2,2,4),('63','55','63','2005-02-14',4.8,'Bajo','Gen Z',16,4,5.45,'High',2,3,1,1,2,1),('41','51','48','2006-02-03',7.5,'Bajo','Gen Z',17,5,7,'High',1,4,4,2,1,4),('61','57','56','2003-11-04',6.4,'Bajo','Gen Z',18,4,5.45,'High',2,1,3,2,1,1),('49','49','41','2009-07-26',7.9,'Bajo','Gen Z',19,4,6.65,'High',2,1,3,1,1,4),('69','90','88','2001-01-17',4.8,'Medio','Gen Z',20,4,4.425,'Medium',1,1,1,1,2,1),('44','41','38','2007-12-12',4.3,'Bajo','Gen Z',21,4,6.975,'High',2,2,4,2,1,4),('30','26','22','1996-08-11',4.6,'Bajo','Millennials',22,5,7.9,'High',2,5,3,1,1,4),('90','95','93','2007-02-25',1.2,'Alto','Gen Z',23,0,0,'Low',1,2,6,1,1,5),('47','57','44','2001-05-09',7.4,'Bajo','Gen Z',24,6,6.9,'High',2,4,4,2,1,4),('76','78','75','2008-10-04',4.3,'Medio','Gen Z',25,3,3.55,'Medium',2,1,1,1,1,3),('71','83','78','1997-06-19',4.5,'Medio','Gen Z',26,2,3.35,'Medium',1,2,4,1,1,3),('88','95','92','2002-04-04',1.6,'Alto','Gen Z',27,1,2.125,'Medium',1,2,1,1,2,2),('40','43','39','2005-06-23',5.1,'Bajo','Gen Z',28,5,7.225,'High',2,2,1,2,1,4),('64','64','67','1998-02-13',5.2,'Bajo','Gen Z',29,3,5,'Medium',2,3,5,2,2,1),('79','73','67','2007-01-05',3.2,'Medio','Gen Z',30,3,3.6,'Medium',2,3,1,1,1,3),('38','60','50','1997-10-01',4.6,'Bajo','Gen Z',31,6,7.05,'High',1,2,5,2,1,4),('72','80','75','2002-03-17',4.1,'Medio','Gen Z',32,2,3.4,'Medium',1,1,5,1,1,3),('62','61','57','2003-06-09',5,'Bajo','Gen Z',33,3,5.125,'High',2,2,1,1,1,1),('77','94','95','2004-12-25',0.9,'Alto','Gen Z',34,3,3.125,'Medium',1,1,2,1,2,3),('75','74','66','1995-05-16',3.2,'Medio','Millennials',35,2,3.475,'Medium',2,3,5,2,1,3),('87','74','76','1997-04-15',3.8,'Medio','Gen Z',36,1,2.675,'Medium',2,5,4,1,1,2),('52','65','69','1995-03-06',4.4,'Bajo','Millennials',37,4,6.175,'High',1,2,2,1,1,4),('66','57','52','1995-06-11',7.4,'Bajo','Millennials',38,3,5.125,'High',2,5,1,1,1,1),('63','78','80','2006-05-20',4.4,'Medio','Gen Z',39,4,4.875,'Medium',1,1,1,1,2,1),('46','58','57','2010-06-15',6.5,'Bajo','Gen Z',40,4,6.5,'High',1,1,4,1,1,4),('59','71','70','1995-12-07',7.9,'Bajo','Millennials',41,5,6.05,'High',1,1,1,1,1,4),('67','84','86','1998-07-15',2,'Medio','Gen Z',42,3,4.425,'Medium',1,1,4,1,2,1),('61','72','70','2004-04-01',7.2,'Bajo','Gen Z',43,3,4.875,'Medium',1,2,2,1,1,1),('63','61','61','2009-05-26',5,'Bajo','Gen Z',44,3,5.1,'High',2,4,4,1,1,1),('42','66','69','1995-11-01',7.9,'Bajo','Millennials',45,4,6.4,'High',1,1,1,2,2,4),('59','62','61','1999-09-21',7.2,'Bajo','Gen Z',46,4,6.075,'High',2,3,1,2,1,4),('80','90','89','2007-02-01',1.1,'Alto','Gen Z',47,1,2.45,'Medium',1,3,1,1,1,2),('58','62','59','1995-02-19',4.6,'Bajo','Millennials',48,5,6.3,'High',1,2,5,1,1,4),('85','84','78','2000-02-09',3,'Medio','Gen Z',49,1,2.475,'Medium',2,2,3,1,2,2),('52','58','58','1997-08-05',6.1,'Bajo','Gen Z',50,5,6.55,'High',1,1,1,1,1,4),('27','34','32','1996-08-18',4.2,'Bajo','Millennials',51,5,7.775,'High',1,3,3,2,1,4),('59','60','58','1999-10-14',6.8,'Bajo','Gen Z',52,5,6.325,'High',2,1,1,1,1,4),('49','58','60','1997-02-22',5.2,'Bajo','Gen Z',53,6,6.825,'High',2,4,2,2,2,4),('69','58','53','2002-07-21',4.3,'Bajo','Gen Z',54,4,5.225,'High',2,1,5,1,2,1),('61','66','61','1999-02-19',5.1,'Bajo','Gen Z',55,3,5.025,'High',2,1,2,2,1,1),('44','64','58','2002-05-25',4.9,'Bajo','Gen Z',56,4,6.4,'High',1,4,3,2,1,4),('73','84','85','2006-12-23',5,'Medio','Gen Z',57,3,3.475,'Medium',1,3,3,1,1,3),('84','77','71','1998-01-10',2.8,'Medio','Gen Z',58,2,2.875,'Medium',2,5,1,1,1,2),('45','73','70','2000-06-09',4.1,'Bajo','Gen Z',59,6,6.55,'High',1,1,1,2,2,4),('74','74','72','1996-12-10',3,'Medio','Millennials',60,2,3.5,'Medium',2,3,3,1,1,3),('82','97','96','1997-08-21',1.5,'Alto','Gen Z',61,1,2.225,'Medium',1,3,1,1,2,2),('59','70','73','1999-05-07',5.4,'Bajo','Gen Z',62,4,5.875,'High',1,3,2,1,1,4),('46','43','41','1998-12-18',6.8,'Bajo','Gen Z',63,6,7.275,'High',2,5,4,2,1,4),('80','90','82','2009-08-08',3.6,'Medio','Gen Z',64,1,2.45,'Medium',1,3,3,1,1,2),('85','95','100','1997-12-22',1.2,'Alto','Gen Z',65,1,2.2,'Medium',1,3,6,2,2,2),('71','83','77','1997-03-04',2.1,'Medio','Gen Z',66,3,3.55,'Medium',1,4,3,1,1,3),('66','64','62','1999-12-21',5.2,'Bajo','Gen Z',67,3,4.95,'Medium',2,4,2,1,1,1),('80','86','83','2000-05-06',4.9,'Medio','Gen Z',68,2,2.75,'Medium',1,2,4,1,1,2),('87','100','95','2001-09-03',1.1,'Alto','Gen Z',69,1,2.025,'Medium',2,1,4,1,2,2),('80','78','81','2005-09-13',3.2,'Medio','Gen Z',70,2,2.95,'Medium',2,4,2,1,2,2),('79','81','71','2000-03-23',3.1,'Medio','Gen Z',71,3,3.4,'Medium',2,1,6,2,1,3),('61','74','72','2002-11-05',4.4,'Bajo','Gen Z',72,4,5.025,'High',1,3,3,1,2,1),('58','54','52','2004-01-15',5.9,'Bajo','Gen Z',73,4,6.3,'High',2,1,4,1,1,4),('38','49','45','2007-12-11',7,'Bajo','Gen Z',74,4,6.925,'High',1,5,3,2,1,4),('38','43','43','2000-06-21',4.6,'Bajo','Gen Z',75,5,7.275,'High',1,4,3,2,1,4),('67','76','75','2007-05-09',2.4,'Medio','Gen Z',76,4,4.825,'Medium',1,5,1,1,1,1),('40','52','43','1996-02-17',6,'Bajo','Millennials',77,5,7,'High',2,3,4,1,1,4),('64','73','70','1996-04-11',6.1,'Bajo','Millennials',78,3,4.775,'Medium',1,5,2,1,1,1),('57','78','67','2003-04-03',7.1,'Bajo','Gen Z',79,5,5.925,'High',1,1,4,2,1,4),('62','68','68','1998-11-20',5.1,'Bajo','Gen Z',80,4,5.15,'High',1,5,6,1,1,1),('65','81','77','1995-06-15',2.7,'Medio','Millennials',81,4,4.75,'Medium',1,3,1,2,1,1),('62','64','64','1995-10-11',6.1,'Bajo','Millennials',82,4,5.25,'High',1,3,5,1,1,1),('47','49','50','2006-01-08',6.5,'Bajo','Gen Z',83,6,7.1,'High',1,2,4,1,1,4),('73','70','75','1998-12-03',3.2,'Medio','Gen Z',84,3,3.825,'Medium',2,3,6,1,1,3),('65','81','73','1996-11-21',3.5,'Medio','Millennials',85,4,4.75,'Medium',1,2,5,1,1,1),('69','77','69','2008-09-13',4.4,'Medio','Gen Z',86,4,4.75,'Medium',2,1,4,1,1,1),('49','45','45','2007-02-13',7.4,'Bajo','Gen Z',87,4,6.75,'High',2,2,5,2,1,4),('73','67','59','2008-09-11',6.7,'Bajo','Gen Z',88,3,3.9,'Medium',2,5,3,2,2,3),('77','68','77','1996-11-01',3.9,'Medio','Millennials',89,3,3.775,'Medium',1,3,1,1,1,3),('78','72','70','2009-06-01',2.7,'Medio','Gen Z',90,2,3.45,'Medium',2,4,1,1,2,3),('76','67','67','2001-11-11',4.8,'Medio','Gen Z',91,2,3.625,'Medium',2,5,1,1,1,3),('57','69','68','2008-11-16',4.9,'Bajo','Gen Z',92,5,6.15,'High',1,2,4,1,1,4),('50','53','58','1995-08-09',6.7,'Bajo','Millennials',93,5,6.725,'High',1,4,6,1,1,4),('57','54','56','1997-08-18',5.4,'Bajo','Gen Z',94,5,6.525,'High',2,1,4,1,2,4),('50','47','54','2002-08-02',7,'Bajo','Gen Z',95,5,6.875,'High',2,4,1,2,2,4),('65','74','77','1998-10-28',2.8,'Medio','Gen Z',96,3,4.725,'Medium',1,1,3,1,2,1),('48','45','41','2000-10-28',6.2,'Bajo','Gen Z',97,4,6.775,'High',2,4,5,2,1,4),('72','64','63','2000-03-04',7.4,'Bajo','Gen Z',98,3,4,'Medium',2,5,4,1,1,3),('69','75','78','1997-05-21',4.5,'Medio','Gen Z',99,3,4.6,'Medium',1,1,3,1,1,1),('50','67','63','1999-02-20',5.7,'Bajo','Gen Z',100,5,6.375,'High',1,2,5,2,1,4),('42','39','34','1997-04-01',7.4,'Bajo','Gen Z',101,4,7.075,'High',2,3,5,2,1,4),('85','89','95','1995-08-23',0.5,'Alto','Millennials',102,2,2.55,'Medium',1,1,4,1,1,2),('59','41','42','2004-05-14',6.6,'Bajo','Gen Z',103,4,6.6,'High',2,1,1,1,1,4),('74','63','57','2007-02-02',5.5,'Bajo','Gen Z',104,3,3.975,'Medium',2,2,3,1,1,3),('88','89','86','1998-02-05',0.5,'Alto','Gen Z',105,1,2.275,'Medium',2,1,5,1,1,2),('18','32','28','2003-05-02',4.6,'Bajo','Gen Z',106,6,8.25,'High',1,2,3,2,1,4),('73','80','82','1996-01-11',3.9,'Medio','Millennials',107,2,3.375,'Medium',1,1,1,1,1,3),('74','71','78','1998-08-22',4.2,'Medio','Gen Z',108,2,3.575,'Medium',2,3,3,1,2,3),('76','83','88','1997-01-22',2.1,'Medio','Gen Z',109,3,3.425,'Medium',1,1,1,2,1,3),('82','62','62','1999-07-07',4.5,'Bajo','Gen Z',110,2,3.3,'Medium',2,5,2,1,1,2),('46','42','46','1995-02-19',5.5,'Bajo','Millennials',111,6,7.3,'High',2,1,6,2,2,4),('71','71','74','2009-03-11',3,'Medio','Gen Z',112,2,3.65,'Medium',1,3,4,1,1,3),('81','80','76','1996-07-19',3.8,'Medio','Millennials',113,2,2.875,'Medium',2,5,5,1,2,2),('54','58','61','1997-08-13',6.8,'Bajo','Gen Z',114,6,6.7,'High',1,1,4,2,1,4),('66','69','63','2007-08-07',5.9,'Bajo','Gen Z',115,3,4.825,'Medium',2,3,5,1,1,1),('58','70','67','2000-06-17',5.6,'Bajo','Gen Z',116,5,6.1,'High',1,4,1,1,1,4),('74','81','76','2002-07-07',3.9,'Medio','Gen Z',117,3,3.525,'Medium',1,2,1,2,1,3),('73','86','82','2001-12-07',3.1,'Medio','Gen Z',118,3,3.425,'Medium',1,3,3,1,1,3),('65','75','70','2001-09-24',4.1,'Medio','Gen Z',119,3,4.7,'Medium',1,2,1,2,2,1),('58','61','66','1997-09-17',7.5,'Bajo','Gen Z',120,6,6.525,'High',1,2,1,2,1,4),('60','59','54','2003-07-19',5.1,'Bajo','Gen Z',121,4,5.425,'High',2,3,3,1,1,1),('65','72','74','2010-08-08',3.6,'Medio','Gen Z',122,4,4.975,'Medium',1,1,2,1,1,1),('59','54','67','2003-12-28',7.4,'Bajo','Gen Z',123,5,6.475,'High',1,1,3,1,2,4),('44','54','53','2008-05-20',7,'Bajo','Gen Z',124,6,7.05,'High',2,3,1,1,1,4),('53','43','43','1998-09-27',6.2,'Bajo','Gen Z',125,4,6.7,'High',2,4,1,1,1,4),('69','73','73','1997-09-07',3.4,'Medio','Gen Z',126,3,4.65,'Medium',1,1,3,1,1,1),('49','65','55','1995-08-03',5,'Bajo','Millennials',127,5,6.45,'High',1,4,1,2,1,4),('88','99','100','2007-12-19',1.6,'Alto','Gen Z',128,2,2.225,'Medium',1,3,5,1,2,2),('27','34','36','1999-04-09',5.4,'Bajo','Gen Z',129,6,7.975,'High',2,1,5,2,1,4),('54','59','62','2005-08-07',4.9,'Bajo','Gen Z',130,6,6.675,'High',1,1,5,1,1,4),('71','79','71','2010-01-13',4.8,'Medio','Gen Z',131,3,3.65,'Medium',2,1,5,1,1,3),('63','73','68','2003-02-16',4.4,'Bajo','Gen Z',132,4,5,'Medium',1,1,3,1,1,1),('65','65','63','1997-11-24',7.9,'Bajo','Gen Z',133,4,5.15,'High',2,2,4,1,2,1),('82','80','77','2004-01-18',2.3,'Medio','Gen Z',134,2,2.85,'Medium',1,2,4,1,1,2),('52','57','56','1996-07-08',6.1,'Bajo','Millennials',135,4,6.375,'High',1,3,5,2,2,4),('87','84','85','2000-09-10',1,'Alto','Gen Z',136,2,2.625,'Medium',2,3,4,1,2,2),('43','45','50','2010-07-06',5.2,'Bajo','Gen Z',137,5,7.1,'High',2,1,4,2,2,4),('70','71','74','2008-09-17',4.6,'Medio','Gen Z',138,2,3.675,'Medium',1,3,6,1,2,3),('84','83','78','1996-05-24',3.4,'Medio','Millennials',139,2,2.725,'Medium',2,5,1,1,2,2),('79','86','92','2000-12-01',1.6,'Alto','Gen Z',140,3,3.275,'Medium',1,2,1,1,1,3),('71','66','60','2008-02-12',6.5,'Bajo','Gen Z',141,3,3.975,'Medium',2,3,4,1,1,3),('63','67','67','1996-09-10',4.2,'Bajo','Millennials',142,3,4.95,'Medium',2,2,3,1,2,1),('51','72','79','2004-04-01',6.3,'Bajo','Gen Z',143,5,6.225,'High',1,1,2,2,2,4),('78','81','82','2000-04-22',4.3,'Medio','Gen Z',144,2,3.225,'Medium',2,1,4,2,2,3),('84','73','69','1997-07-18',4.7,'Medio','Gen Z',145,1,2.775,'Medium',2,5,5,1,1,2),('65','66','62','2002-05-20',7.2,'Bajo','Gen Z',146,3,4.925,'Medium',2,2,3,1,2,1),('63','72','70','1998-04-13',6.8,'Bajo','Gen Z',147,4,5.025,'High',1,5,1,1,2,1),('58','67','62','2010-08-26',7.2,'Bajo','Gen Z',148,4,5.975,'High',1,3,1,2,1,4),('65','67','62','2004-12-05',4.2,'Bajo','Gen Z',149,4,5.1,'High',1,3,2,1,1,1),('80','79','79','2007-08-27',4.5,'Medio','Gen Z',150,2,2.925,'Medium',2,3,3,2,2,2),('35','28','27','2010-05-10',6.9,'Bajo','Gen Z',151,6,7.925,'High',2,1,1,2,1,4),('42','62','60','1996-02-04',6.5,'Bajo','Millennials',152,5,6.7,'High',1,1,5,2,1,4),('79','67','67','1998-01-05',3,'Medio','Gen Z',153,3,3.75,'Medium',2,2,1,1,1,3),('60','51','56','1995-02-14',8,'Bajo','Millennials',154,3,5.425,'High',2,1,4,2,2,1),('68','74','74','1998-06-14',3.1,'Medio','Gen Z',155,3,4.65,'Medium',2,3,2,1,2,1),('87','91','81','2004-04-24',1.8,'Alto','Gen Z',156,2,2.45,'Medium',2,5,5,1,2,2),('85','91','89','2003-10-24',1.4,'Alto','Gen Z',157,2,2.5,'Medium',1,3,4,1,1,2),('71','74','68','2007-02-03',4.7,'Medio','Gen Z',158,3,3.775,'Medium',2,1,2,1,2,3),('60','44','47','2004-12-13',7,'Bajo','Gen Z',159,4,5.8,'High',2,2,5,1,2,1),('84','83','75','1998-03-03',2.8,'Medio','Gen Z',160,2,2.725,'Medium',2,2,3,1,2,2),('83','86','88','2002-01-24',0.7,'Alto','Gen Z',161,2,2.675,'Medium',1,5,4,2,2,2),('34','42','39','1996-11-17',5,'Bajo','Millennials',162,5,7.4,'High',1,1,5,2,1,4),('98','86','90','2000-09-24',0.8,'Alto','Gen Z',163,0,0,'Low',2,1,1,1,2,5),('66','77','70','1999-04-11',3.7,'Medio','Gen Z',164,4,4.825,'Medium',2,2,5,2,1,1),('58','67','72','1999-04-05',4.7,'Bajo','Gen Z',165,6,6.375,'High',1,1,1,1,1,4),('61','56','56','2001-10-12',7.4,'Bajo','Gen Z',166,3,5.275,'High',2,2,3,1,2,1),('87','100','100','1998-01-05',0.8,'Alto','Gen Z',167,2,2.225,'Medium',1,3,6,1,1,2),('56','68','74','2006-07-19',5.3,'Bajo','Gen Z',168,6,6.4,'High',1,3,5,1,2,4),('66','63','64','2002-06-15',6.4,'Bajo','Gen Z',169,4,5.175,'High',2,5,4,1,2,1),('52','76','70','2009-02-09',7.8,'Bajo','Gen Z',170,6,6.3,'High',1,2,4,2,1,4),('87','85','73','2003-08-24',4.3,'Medio','Gen Z',171,1,2.4,'Medium',2,2,4,1,1,2),('70','64','72','2000-11-22',5.2,'Bajo','Gen Z',172,2,3.85,'Medium',1,2,3,1,1,3),('55','65','62','2010-04-06',4,'Bajo','Gen Z',173,6,6.5,'High',1,1,3,2,1,4),('74','73','67','2004-01-08',4.4,'Medio','Gen Z',174,3,3.725,'Medium',2,1,4,1,1,3),('68','59','62','2008-01-27',4.4,'Bajo','Gen Z',175,3,5.025,'High',2,3,1,1,1,1),('57','56','54','2010-12-19',7.4,'Bajo','Gen Z',176,4,6.275,'High',2,5,5,2,2,4),('82','93','93','2003-10-21',1.1,'Alto','Gen Z',177,1,2.325,'Medium',1,1,4,2,2,2),('57','58','64','2007-06-26',7.8,'Bajo','Gen Z',178,4,6.225,'High',1,3,5,1,2,4),('47','58','67','2005-06-19',4.2,'Bajo','Gen Z',179,6,6.875,'High',1,3,6,2,2,4),('59','85','80','2010-04-27',2.8,'Medio','Gen Z',180,4,5.5,'High',1,4,3,1,2,4),('41','39','34','2001-12-01',6.1,'Bajo','Gen Z',181,6,7.5,'High',2,2,1,2,1,4),('62','67','62','2006-12-08',7.8,'Bajo','Gen Z',182,4,5.175,'High',1,1,1,2,1,1),('86','83','86','2002-08-16',0.7,'Alto','Gen Z',183,1,2.475,'Medium',2,1,2,1,1,2),('69','71','65','1998-08-07',4.8,'Bajo','Gen Z',184,3,4.7,'Medium',2,1,3,2,1,1),('65','59','53','1998-03-07',5.8,'Bajo','Gen Z',185,3,5.1,'High',2,4,3,2,1,1),('68','63','54','1998-09-27',7.7,'Bajo','Gen Z',186,4,5.125,'High',2,1,3,2,1,1),('77','89','98','2007-07-02',1.4,'Alto','Gen Z',187,3,3.25,'Medium',1,3,4,2,2,3),('64','66','59','1998-04-09',6.2,'Bajo','Gen Z',188,3,4.95,'Medium',2,1,4,2,1,1),('61','72','70','2000-05-05',7.5,'Bajo','Gen Z',189,3,4.875,'Medium',1,1,5,1,1,1),('62','55','49','2009-09-12',7.7,'Bajo','Gen Z',190,3,5.275,'High',2,1,5,1,1,1),('61','56','55','1998-02-28',5,'Bajo','Gen Z',191,3,5.275,'High',2,1,5,1,1,1),('54','53','47','1995-11-11',7.1,'Bajo','Millennials',192,4,6.425,'High',2,4,4,1,1,4),('47','59','50','2000-11-21',5.6,'Bajo','Gen Z',193,6,6.85,'High',1,4,3,2,1,4),('73','66','66','1995-04-26',5.8,'Bajo','Millennials',194,3,3.925,'Medium',2,1,3,1,1,3),('51','58','54','1996-05-14',6.9,'Bajo','Millennials',195,4,6.375,'High',1,3,1,1,1,4),('74','71','80','1996-02-09',4.9,'Medio','Millennials',196,3,3.775,'Medium',2,3,2,2,2,3),('50','48','53','1997-11-03',4.3,'Bajo','Gen Z',197,6,7.05,'High',2,1,1,2,2,4),('75','68','64','2002-05-22',7.4,'Bajo','Gen Z',198,2,3.625,'Medium',2,3,4,1,1,3),('99','100','100','2002-06-09',1.9,'Alto','Gen Z',199,0,0,'Low',1,5,2,1,2,5),('73','74','72','1997-10-17',2.9,'Medio','Gen Z',200,3,3.725,'Medium',2,4,6,2,1,3),('75','66','73','2010-01-22',3.3,'Medio','Gen Z',201,3,3.875,'Medium',2,3,4,2,1,3),('70','56','51','2010-04-27',6.3,'Bajo','Gen Z',202,3,4.25,'Medium',2,1,5,1,1,3),('89','88','82','2004-03-28',0.9,'Alto','Gen Z',203,1,2.275,'Medium',2,3,3,1,2,2),('69','54','55','2008-09-19',4.3,'Bajo','Gen Z',204,4,5.325,'High',2,2,1,1,1,1),('67','69','75','2001-03-19',4.6,'Medio','Gen Z',205,4,5,'Medium',1,1,2,1,1,1),('67','81','79','1999-11-01',2.3,'Medio','Gen Z',206,4,4.7,'Medium',1,1,1,1,2,1),('84','77','74','2001-12-06',2.4,'Medio','Gen Z',207,2,2.875,'Medium',2,1,5,1,1,2),('78','81','80','2004-08-16',3.4,'Medio','Gen Z',208,2,3.225,'Medium',1,3,5,1,1,3),('70','70','65','2009-03-12',4.5,'Bajo','Gen Z',209,3,3.9,'Medium',2,1,5,1,1,3),('59','73','69','2004-01-20',7.8,'Bajo','Gen Z',210,4,5.8,'High',1,4,3,2,1,4),('62','70','75','2004-09-12',7,'Bajo','Gen Z',211,4,5.1,'High',1,3,6,1,1,1),('69','74','74','2001-08-01',2.6,'Medio','Gen Z',212,4,4.825,'Medium',1,3,1,1,1,1),('73','83','76','2006-12-28',4.8,'Medio','Gen Z',213,2,3.3,'Medium',1,2,4,1,1,3),('79','82','73','1999-07-08',2.7,'Medio','Gen Z',214,3,3.375,'Medium',2,4,3,2,1,3),('67','74','77','2007-02-23',2.9,'Medio','Gen Z',215,3,4.675,'Medium',1,1,3,1,2,1),('75','85','82','2008-07-11',2.7,'Medio','Gen Z',216,3,3.4,'Medium',1,2,2,2,1,3),('69','66','60','2005-04-19',6.3,'Bajo','Gen Z',217,4,5.025,'High',2,3,1,2,1,1),('78','82','79','2001-06-18',2,'Medio','Gen Z',218,3,3.4,'Medium',1,3,2,1,1,3),('63','65','61','1995-04-02',5.8,'Bajo','Millennials',219,3,5,'Medium',1,2,1,1,1,1),('86','81','80','1997-03-28',2.3,'Medio','Gen Z',220,2,2.725,'Medium',2,1,5,1,2,2),('47','46','42','2006-11-05',5.5,'Bajo','Gen Z',221,5,6.975,'High',2,2,5,1,1,4),('51','63','61','1996-07-28',4.6,'Bajo','Millennials',222,6,6.65,'High',1,3,3,1,1,4),('81','73','72','1995-06-07',4.2,'Medio','Millennials',223,2,3.05,'Medium',2,2,4,1,1,2),('64','85','85','1998-07-08',3.6,'Medio','Gen Z',224,3,4.475,'Medium',1,1,1,2,2,1),('100','92','97','2007-01-25',1.3,'Alto','Gen Z',225,0,0,'Low',1,5,1,1,1,5),('55','69','65','1997-02-28',5.1,'Bajo','Gen Z',226,5,6.2,'High',1,1,1,1,1,4),('65','77','74','2010-10-17',2.1,'Medio','Gen Z',227,3,4.65,'Medium',1,1,4,2,1,1),('79','92','89','1999-01-20',1.6,'Alto','Gen Z',228,3,3.125,'Medium',1,1,2,1,2,3),('65','58','49','2006-09-23',4.4,'Bajo','Gen Z',229,3,5.125,'High',2,1,1,2,1,1),('56','72','65','2009-08-09',4.7,'Bajo','Gen Z',230,6,6.3,'High',1,5,6,2,1,4),('53','61','62','1995-05-23',7.3,'Bajo','Millennials',231,5,6.45,'High',1,1,4,2,1,4),('40','42','38','2004-12-09',7.6,'Bajo','Gen Z',232,4,7.05,'High',2,3,1,1,1,4),('37','56','47','1996-07-03',6.8,'Bajo','Millennials',233,6,7.175,'High',2,1,2,2,1,4),('79','89','89','2002-11-15',1,'Alto','Gen Z',234,2,3,'Medium',1,3,2,1,1,3),('86','80','75','2003-01-08',4.2,'Medio','Gen Z',235,1,2.55,'Medium',2,3,3,1,1,2),('97','87','82','2003-06-09',0.7,'Alto','Gen Z',236,0,0,'Low',2,5,1,1,1,5),('53','54','48','1998-08-18',7.8,'Bajo','Gen Z',237,5,6.625,'High',2,3,4,2,1,4),('91','89','92','2005-02-14',1.4,'Alto','Gen Z',238,0,0,'Low',2,2,4,1,2,5),('81','81','79','2007-09-13',2.3,'Medio','Gen Z',239,2,2.85,'Medium',2,5,4,1,2,2),('88','93','93','2002-11-06',1.6,'Alto','Gen Z',240,2,2.375,'Medium',1,1,1,1,2,2),('74','81','83','2010-10-24',3.9,'Medio','Gen Z',241,3,3.525,'Medium',1,3,4,1,1,3),('52','66','73','1999-05-28',7.9,'Bajo','Gen Z',242,5,6.35,'High',1,2,4,1,2,4),('45','56','54','2003-09-17',7.5,'Bajo','Gen Z',243,5,6.775,'High',1,5,6,2,1,4),('63','57','56','2008-05-28',6.6,'Bajo','Gen Z',244,4,5.4,'High',2,3,5,2,1,1),('83','80','73','2000-03-06',4.3,'Medio','Gen Z',245,1,2.625,'Medium',2,5,1,1,1,2),('87','95','86','2004-04-14',2,'Alto','Gen Z',246,1,2.15,'Medium',1,2,5,1,1,2),('50','64','59','2000-05-24',7.2,'Bajo','Gen Z',247,6,6.65,'High',1,3,3,2,1,4),('72','72','71','1995-09-26',4.8,'Medio','Millennials',248,3,3.8,'Medium',1,1,1,1,1,3),('100','100','100','2006-06-09',0.8,'Alto','Gen Z',249,0,0,'Low',1,5,2,1,1,5),('75','90','88','2004-08-22',2.7,'Medio','Gen Z',250,3,3.275,'Medium',1,3,4,2,2,3),('57','50','54','1997-01-17',5.7,'Bajo','Gen Z',251,4,6.425,'High',2,3,5,1,1,4),('72','68','67','2001-01-01',4.1,'Bajo','Gen Z',252,2,3.7,'Medium',2,2,3,1,1,3),('72','65','68','1997-06-03',5,'Bajo','Gen Z',253,3,3.975,'Medium',2,2,5,1,2,3),('57','56','57','2000-02-10',4,'Bajo','Gen Z',254,6,6.675,'High',2,2,4,2,1,4),('68','72','64','2003-07-25',5.9,'Bajo','Gen Z',255,3,4.7,'Medium',2,4,3,2,1,1),('53','58','55','1997-12-06',5.6,'Bajo','Gen Z',256,6,6.725,'High',2,1,2,2,1,4),('65','77','74','1995-06-03',4.5,'Medio','Millennials',257,4,4.85,'Medium',2,3,1,1,2,1),('54','54','45','2001-10-27',5.1,'Bajo','Gen Z',258,4,6.4,'High',2,2,1,2,1,4),('55','61','54','2005-08-10',5.7,'Bajo','Gen Z',259,5,6.4,'High',2,1,4,2,1,4),('71','70','76','2001-11-22',4,'Medio','Gen Z',260,3,3.875,'Medium',1,5,1,1,1,3),('88','95','94','1997-02-03',2,'Alto','Gen Z',261,1,2.125,'Medium',1,1,1,1,2,2),('82','82','74','1996-12-04',4.7,'Medio','Millennials',262,1,2.6,'Medium',2,3,6,1,1,2),('77','90','91','2003-03-13',0.6,'Alto','Gen Z',263,2,3.025,'Medium',1,1,1,2,1,3),('58','73','68','1999-02-12',5.8,'Bajo','Gen Z',264,5,6.025,'High',1,1,4,1,1,4),('53','58','65','1998-07-13',4.3,'Bajo','Gen Z',265,4,6.325,'High',1,2,4,1,1,4),('75','58','62','1998-12-14',6.9,'Bajo','Gen Z',266,3,4.075,'Medium',2,4,2,1,2,3),('76','64','66','1998-05-08',7.8,'Bajo','Gen Z',267,2,3.7,'Medium',2,3,1,1,1,3),('51','49','51','1997-12-10',5.8,'Bajo','Gen Z',268,6,7,'High',1,4,2,1,1,4),('84','87','91','1999-02-16',1.8,'Alto','Gen Z',269,2,2.625,'Medium',1,1,1,1,1,2),('46','43','42','2009-09-28',5.5,'Bajo','Gen Z',270,6,7.275,'High',2,1,4,1,1,4),('26','31','38','2004-06-15',7.2,'Bajo','Gen Z',271,6,8.075,'High',1,3,4,2,1,4),('89','84','82','1998-09-06',1.4,'Alto','Gen Z',272,2,2.575,'Medium',2,3,6,1,1,2),('72','67','65','2008-04-02',6.3,'Bajo','Gen Z',273,3,3.925,'Medium',2,4,5,2,2,3),('53','37','40','2003-12-24',6.3,'Bajo','Gen Z',274,6,7.25,'High',2,1,3,2,2,4),('59','65','66','2008-08-17',6.3,'Bajo','Gen Z',275,5,6.2,'High',2,2,1,2,2,4),('67','86','83','2004-05-09',4.6,'Medio','Gen Z',276,3,4.375,'Medium',1,2,2,1,1,1),('50','56','54','2006-09-15',5.9,'Bajo','Gen Z',277,5,6.65,'High',1,5,4,2,1,4),('92','87','78','2001-03-19',0.9,'Alto','Gen Z',278,0,0,'Low',2,5,3,1,1,5),('65','54','57','1999-08-01',7.7,'Bajo','Gen Z',279,3,5.225,'High',2,2,4,1,1,1),('83','82','84','2003-07-12',4.9,'Medio','Gen Z',280,2,2.775,'Medium',2,1,2,1,2,2),('55','65','62','2004-04-23',5.7,'Bajo','Gen Z',281,4,6.1,'High',1,4,4,1,2,4),('80','75','77','2008-08-20',4.3,'Medio','Gen Z',282,1,2.825,'Medium',2,3,4,1,1,2),('66','71','76','2000-02-02',3.1,'Medio','Gen Z',283,4,4.975,'Medium',1,1,5,1,1,1),('77','88','85','1998-08-20',2.9,'Medio','Gen Z',284,2,3.075,'Medium',1,4,5,2,2,3),('91','74','76','2005-05-18',2.7,'Medio','Gen Z',285,0,0,'Low',2,1,1,1,1,5),('83','85','90','2002-02-14',1.9,'Alto','Gen Z',286,2,2.7,'Medium',1,1,4,1,2,2),('57','74','76','1996-10-26',4.6,'Bajo','Millennials',287,4,5.825,'High',1,3,4,2,2,4),('63','66','67','2005-01-09',4.5,'Bajo','Gen Z',288,3,4.975,'Medium',2,3,2,2,1,1),('63','69','74','2002-04-06',4.8,'Bajo','Gen Z',289,3,4.9,'Medium',1,1,5,1,1,1),('68','86','84','1996-01-22',3.8,'Medio','Millennials',290,3,4.35,'Medium',1,1,4,1,2,1),('59','67','61','1999-04-13',5.2,'Bajo','Gen Z',291,6,6.35,'High',1,3,3,1,1,4),('90','90','91','2005-10-09',0.7,'Alto','Gen Z',292,0,0,'Low',1,2,4,1,2,5),('71','76','83','1996-08-06',3.5,'Medio','Millennials',293,3,3.725,'Medium',1,3,2,1,2,3),('76','62','66','2010-09-20',6.5,'Bajo','Gen Z',294,3,3.95,'Medium',2,5,2,1,2,3),('82','84','82','2003-01-11',4.8,'Medio','Gen Z',295,1,2.55,'Medium',2,1,5,1,2,2),('64','60','74','1999-07-03',4.8,'Bajo','Gen Z',296,4,5.3,'High',1,3,3,1,2,1),('80','68','72','2002-06-08',2.6,'Medio','Gen Z',297,1,3,'Medium',2,3,4,1,1,2),('55','64','70','2009-04-20',5.4,'Bajo','Gen Z',298,6,6.525,'High',1,3,6,1,1,4),('76','71','67','1997-10-22',2.9,'Medio','Gen Z',299,3,3.725,'Medium',2,5,4,1,1,3),('53','55','48','1995-08-11',4.3,'Bajo','Millennials',300,5,6.6,'High',2,5,1,1,1,4),('54','52','51','1998-10-28',4.7,'Bajo','Gen Z',301,6,6.85,'High',2,2,1,1,1,4),('73','71','68','2007-12-20',3.7,'Medio','Gen Z',302,2,3.6,'Medium',2,2,5,1,2,3),('52','59','56','2005-09-05',7.9,'Bajo','Gen Z',303,6,6.725,'High',1,3,4,2,1,4),('77','69','68','2002-01-21',4.2,'Medio','Gen Z',304,2,3.55,'Medium',2,5,4,2,2,3),('84','80','80','2000-06-04',2.7,'Medio','Gen Z',305,2,2.8,'Medium',2,1,4,1,1,2),('68','68','61','2007-06-20',6.3,'Bajo','Gen Z',306,3,4.8,'Medium',2,1,1,2,1,1),('53','44','42','2000-02-19',6,'Bajo','Gen Z',307,4,6.675,'High',2,1,1,1,1,4),('59','52','46','2003-06-06',6,'Bajo','Gen Z',308,6,6.725,'High',2,4,5,1,1,4),('73','68','66','1999-10-05',4.6,'Bajo','Gen Z',309,2,3.675,'Medium',2,3,5,2,2,3),('49','52','54','2005-07-11',7.9,'Bajo','Gen Z',310,6,6.975,'High',1,2,4,1,1,4),('70','74','71','2001-05-16',5,'Medio','Gen Z',311,3,3.8,'Medium',2,1,5,1,1,3),('88','78','75','2002-10-11',3.4,'Medio','Gen Z',312,1,2.55,'Medium',2,3,5,1,1,2),('61','47','56','2003-07-04',5.5,'Bajo','Gen Z',313,4,5.7,'High',2,3,1,2,1,1),('80','83','83','1997-05-22',3.5,'Medio','Gen Z',314,1,2.625,'Medium',1,5,2,1,1,2),('60','75','74','2002-06-24',7.1,'Bajo','Gen Z',315,4,5.025,'High',1,1,4,2,1,1),('64','53','57','1999-05-09',5.2,'Bajo','Gen Z',316,4,5.475,'High',2,2,3,1,2,1),('79','82','82','2004-05-03',4.3,'Medio','Gen Z',317,3,3.375,'Medium',2,4,4,2,2,3),('56','52','55','2010-06-02',6.6,'Bajo','Gen Z',318,6,6.8,'High',1,3,5,1,1,4),('65','85','76','2010-08-22',4.4,'Medio','Gen Z',319,4,4.65,'Medium',1,4,4,2,1,1),('71','84','87','2006-02-11',3.3,'Medio','Gen Z',320,2,3.325,'Medium',1,1,3,2,2,3),('64','64','70','2000-04-17',6.3,'Bajo','Gen Z',321,4,5.2,'High',1,1,4,1,1,1),('83','83','90','2005-12-03',0.7,'Alto','Gen Z',322,1,2.55,'Medium',1,1,1,1,1,2),('81','88','90','2000-08-01',0.9,'Alto','Gen Z',323,1,2.475,'Medium',1,1,2,1,1,2),('54','64','68','2001-09-19',5.6,'Bajo','Gen Z',324,6,6.55,'High',1,2,5,1,1,4),('68','64','66','2001-02-10',7.4,'Bajo','Gen Z',325,3,4.9,'Medium',2,3,5,1,2,1),('54','48','52','2010-07-20',5.9,'Bajo','Gen Z',326,4,6.55,'High',1,1,1,1,1,4),('33','41','43','1997-01-26',5.5,'Bajo','Gen Z',327,5,7.45,'High',1,1,5,2,1,4),('59','78','76','2009-06-23',4.4,'Medio','Gen Z',328,5,5.875,'High',1,3,1,2,2,4),('66','69','68','2008-09-11',4.4,'Bajo','Gen Z',329,4,5.025,'High',1,2,3,1,1,1),('87','74','70','1999-04-01',2.4,'Medio','Gen Z',330,2,2.875,'Medium',2,5,1,2,2,2),('82','85','86','2005-07-22',2.3,'Medio','Gen Z',331,1,2.525,'Medium',1,5,4,1,2,2),('59','51','43','2008-12-02',6.7,'Bajo','Gen Z',332,4,6.35,'High',2,5,1,1,1,4),('52','55','49','1997-06-12',8,'Bajo','Gen Z',333,4,6.425,'High',2,3,4,1,1,4),('75','81','84','1995-05-10',3.4,'Medio','Millennials',334,2,3.3,'Medium',1,1,1,1,2,3),('75','74','69','2007-05-26',3.2,'Medio','Gen Z',335,2,3.475,'Medium',2,3,3,1,1,3),('58','59','58','1999-12-11',4.3,'Bajo','Gen Z',336,6,6.575,'High',2,3,1,1,2,4),('74','79','75','2003-10-13',3.9,'Medio','Gen Z',337,2,3.375,'Medium',2,3,2,2,2,3),('85','76','71','2005-08-08',4.1,'Medio','Gen Z',338,2,2.875,'Medium',2,1,4,1,1,2),('76','71','72','1995-09-06',2.9,'Medio','Millennials',339,2,3.525,'Medium',2,5,1,1,1,3),('89','76','74','2003-11-16',3.7,'Medio','Gen Z',340,1,2.575,'Medium',2,5,4,1,1,2),('0','17','10','2003-08-08',4,'Bajo','Gen Z',341,6,9.075,'High',1,1,3,2,1,4),('58','55','48','1995-11-20',5.1,'Bajo','Millennials',342,5,6.475,'High',2,1,2,1,1,4),('58','70','68','1996-08-09',5.8,'Bajo','Millennials',343,6,6.3,'High',1,2,5,1,2,4),('79','74','72','1998-02-17',2.8,'Medio','Gen Z',344,2,3.375,'Medium',2,5,2,2,2,3),('51','54','41','2009-12-10',6.4,'Bajo','Gen Z',345,5,6.675,'High',2,2,3,1,2,4),('74','79','82','2004-05-27',4.1,'Medio','Gen Z',346,3,3.575,'Medium',1,3,6,1,1,3),('94','87','92','1999-09-06',1.2,'Alto','Gen Z',347,0,0,'Low',1,2,4,1,2,5),('65','64','62','2001-01-12',5.8,'Bajo','Gen Z',348,4,5.175,'High',1,2,5,1,1,1),('63','61','54','2005-11-12',4.8,'Bajo','Gen Z',349,3,5.1,'High',2,1,1,2,1,1),('95','89','92','2006-04-25',1.3,'Alto','Gen Z',350,0,0,'Low',1,5,4,1,2,5),('40','59','54','2000-11-20',4.1,'Bajo','Gen Z',351,4,6.625,'High',1,3,6,2,1,4),('70','55','56','2005-10-18',5.9,'Bajo','Gen Z',352,2,4.075,'Medium',2,5,5,1,1,3),('82','82','80','2009-11-11',4.3,'Medio','Gen Z',353,2,2.8,'Medium',1,2,3,1,1,2),('39','39','34','2002-03-21',5.8,'Bajo','Gen Z',354,4,7.15,'High',2,4,3,2,1,4),('68','70','66','2004-01-18',6.2,'Bajo','Gen Z',355,4,4.95,'Medium',2,4,5,1,1,1),('55','59','54','1999-01-11',6.6,'Bajo','Gen Z',356,5,6.45,'High',2,2,2,2,1,4),('59','66','67','2003-10-14',6.2,'Bajo','Gen Z',357,4,5.975,'High',1,1,4,1,1,4),('68','60','53','2007-01-15',6.9,'Bajo','Gen Z',358,4,5.2,'High',2,1,5,1,1,1),('79','78','77','2010-12-08',2.5,'Medio','Gen Z',359,3,3.475,'Medium',2,1,6,1,1,3),('62','61','55','2008-12-01',7.8,'Bajo','Gen Z',360,3,5.125,'High',2,4,4,2,1,1),('86','92','87','2006-10-23',1.7,'Alto','Gen Z',361,1,2.25,'Medium',1,1,2,1,1,2),('71','61','69','2002-10-04',8,'Bajo','Gen Z',362,2,3.9,'Medium',2,3,1,1,2,3),('47','49','49','1995-08-01',6.3,'Bajo','Millennials',363,4,6.7,'High',2,4,3,1,2,4),('76','71','73','2003-09-16',4.8,'Medio','Gen Z',364,3,3.725,'Medium',2,3,1,1,1,3),('69','80','71','1999-04-13',3.9,'Medio','Gen Z',365,3,4.475,'Medium',1,1,4,1,1,1),('64','50','43','2010-11-19',4.7,'Bajo','Gen Z',366,3,5.35,'High',2,4,3,1,1,1),('76','72','71','2001-07-15',4.9,'Medio','Gen Z',367,3,3.7,'Medium',1,3,3,1,1,3),('62','49','52','1995-07-12',4.8,'Bajo','Millennials',368,4,5.625,'High',2,3,3,2,1,1),('71','83','83','2009-07-02',4.7,'Medio','Gen Z',369,3,3.55,'Medium',1,3,1,2,1,3),('59','58','59','2009-01-24',5,'Bajo','Gen Z',370,6,6.575,'High',1,3,3,1,1,4),('54','61','62','1998-04-19',6,'Bajo','Gen Z',371,4,6.225,'High',1,2,3,1,2,4),('77','97','94','2009-02-15',1,'Alto','Gen Z',372,2,2.85,'Medium',1,2,6,2,2,3),('76','87','85','2007-06-07',2.2,'Medio','Gen Z',373,2,3.125,'Medium',1,1,3,1,2,3),('60','70','70','1999-06-22',7.4,'Bajo','Gen Z',374,3,4.95,'Medium',1,2,3,1,2,1),('74','89','84','2007-05-05',3.4,'Medio','Gen Z',375,2,3.125,'Medium',1,3,1,1,1,3),('66','74','73','2007-05-17',4.5,'Medio','Gen Z',376,3,4.7,'Medium',1,5,1,1,2,1),('59','62','64','2009-01-14',4.7,'Bajo','Gen Z',377,6,6.475,'High',1,1,1,2,1,4),('66','78','78','1996-05-02',3.7,'Medio','Millennials',378,4,4.8,'Medium',1,3,3,1,2,1),('80','80','72','1995-02-23',2.6,'Medio','Millennials',379,1,2.7,'Medium',2,3,6,1,1,2),('67','78','79','1998-12-13',4.6,'Medio','Gen Z',380,3,4.575,'Medium',1,2,5,2,2,1),('71','49','52','2003-11-17',6.8,'Bajo','Gen Z',381,2,4.2,'Medium',2,3,1,1,1,3),('91','86','84','1997-07-25',1.1,'Alto','Gen Z',382,0,0,'Low',1,1,4,1,1,5),('42','55','54','2010-01-12',6.2,'Bajo','Gen Z',383,6,7.075,'High',1,5,1,2,2,4),('69','58','57','2001-06-22',6.5,'Bajo','Gen Z',384,4,5.225,'High',2,3,2,1,1,1),('54','59','50','2000-12-21',5.8,'Bajo','Gen Z',385,4,6.275,'High',2,1,6,2,1,4),('53','52','49','2001-06-09',5.6,'Bajo','Gen Z',386,6,6.875,'High',2,1,5,1,2,4),('68','60','59','2005-03-19',8,'Bajo','Gen Z',387,4,5.2,'High',2,5,1,1,1,1),('54','52','52','1997-01-05',5.8,'Bajo','Gen Z',388,4,6.45,'High',2,3,5,1,1,4),('56','61','60','2008-09-07',7,'Bajo','Gen Z',389,6,6.575,'High',2,1,3,2,2,4),('36','53','43','2009-08-21',5.8,'Bajo','Gen Z',390,6,7.275,'High',1,1,5,2,1,4),('57','43','47','2002-04-26',6,'Bajo','Gen Z',391,5,6.8,'High',2,4,5,1,1,4),('29','41','47','2004-10-26',6.3,'Bajo','Gen Z',392,6,7.75,'High',1,3,2,2,1,4),('62','74','70','2006-08-15',5.3,'Bajo','Gen Z',393,4,5,'Medium',1,1,4,1,1,1),('68','67','73','2001-01-22',8,'Bajo','Gen Z',394,4,5.025,'High',1,1,4,1,2,1),('47','54','53','2002-03-20',6.6,'Bajo','Gen Z',395,6,6.975,'High',1,1,3,1,1,4),('88','73','78','2002-08-19',3,'Medio','Gen Z',396,1,2.675,'Medium',2,3,1,1,1,2),('62','61','58','2001-08-17',4.2,'Bajo','Gen Z',397,4,5.325,'High',2,5,4,1,2,1),('62','73','70','2010-09-05',6.9,'Bajo','Gen Z',398,4,5.025,'High',1,5,1,1,1,1),('79','88','94','2010-07-18',0.5,'Alto','Gen Z',399,3,3.225,'Medium',1,5,4,1,2,3),('73','69','68','2006-02-28',3.9,'Medio','Gen Z',400,2,3.65,'Medium',2,2,5,1,2,3),('22','39','33','2003-11-14',6.7,'Bajo','Gen Z',401,5,7.775,'High',1,1,1,2,1,4),('64','73','68','2006-11-15',5.1,'Bajo','Gen Z',402,4,4.975,'Medium',1,1,4,2,1,1),('66','83','83','2001-10-22',3.6,'Medio','Gen Z',403,4,4.675,'Medium',1,1,2,2,2,1),('51','60','58','1997-02-24',5.2,'Bajo','Gen Z',404,5,6.525,'High',2,1,4,1,2,4),('88','84','75','2005-02-19',2.4,'Medio','Gen Z',405,1,2.4,'Medium',2,2,3,1,1,2),('78','77','77','2000-07-17',3.8,'Medio','Gen Z',406,2,3.325,'Medium',2,1,4,1,2,3),('73','68','66','1999-08-27',7.2,'Bajo','Gen Z',407,2,3.675,'Medium',2,1,4,2,1,3),('70','75','78','1997-02-13',4.1,'Medio','Gen Z',408,3,3.775,'Medium',1,2,1,1,1,3),('51','66','62','1999-03-14',5.9,'Bajo','Gen Z',409,6,6.575,'High',1,3,5,1,1,4),('65','81','81','2007-09-12',2.4,'Medio','Gen Z',410,4,4.75,'Medium',1,1,6,2,2,1),('68','75','81','2006-10-23',2.8,'Medio','Gen Z',411,3,4.625,'Medium',1,3,2,1,2,1),('64','79','77','2003-04-06',2.6,'Medio','Gen Z',412,4,4.825,'Medium',1,1,3,2,2,1),('100','100','93','2000-04-23',1.8,'Alto','Gen Z',413,0,0,'Low',2,5,4,2,2,5),('85','66','71','2009-06-12',3.1,'Medio','Gen Z',414,1,2.925,'Medium',2,5,2,1,2,2),('62','67','69','2000-11-24',6.4,'Bajo','Gen Z',415,4,5.175,'High',2,4,3,1,2,1),('97','92','86','2000-11-13',1.6,'Alto','Gen Z',416,0,0,'Low',2,4,4,1,2,5),('75','69','68','2003-02-17',3.8,'Medio','Gen Z',417,3,3.8,'Medium',2,1,5,1,2,3),('79','79','78','2004-08-12',3.1,'Medio','Gen Z',418,2,3.25,'Medium',2,1,1,1,2,3),('79','82','80','2008-12-09',3.4,'Medio','Gen Z',419,2,3.175,'Medium',2,3,4,2,2,3),('77','67','68','2010-04-13',2.8,'Medio','Gen Z',420,2,3.6,'Medium',2,4,2,1,1,3),('81','77','79','2007-06-07',2.2,'Medio','Gen Z',421,2,2.95,'Medium',1,1,4,1,1,2),('82','95','89','2005-11-13',1,'Alto','Gen Z',422,2,2.475,'Medium',1,3,4,1,1,2),('44','50','51','1999-04-21',5.6,'Bajo','Gen Z',423,5,6.95,'High',1,1,3,2,1,4),('59','70','66','2009-10-15',7.4,'Bajo','Gen Z',424,4,5.875,'High',1,2,4,1,2,4),('99','93','90','2004-12-13',0.7,'Alto','Gen Z',425,0,0,'Low',1,5,5,1,1,5),('54','49','47','1997-05-02',5.1,'Bajo','Gen Z',426,4,6.525,'High',2,3,2,1,1,4),('76','73','68','2001-06-27',2.5,'Medio','Gen Z',427,3,3.675,'Medium',2,3,5,1,1,3),('64','63','66','2001-03-13',5.9,'Bajo','Gen Z',428,4,5.225,'High',1,3,6,1,1,1),('78','83','80','2002-10-23',3.4,'Medio','Gen Z',429,2,3.175,'Medium',2,5,3,2,2,3),('67','64','61','2005-01-22',7.7,'Bajo','Gen Z',430,3,4.925,'Medium',2,2,3,1,1,1),('92','100','97','2009-04-09',0.6,'Alto','Gen Z',431,0,0,'Low',1,4,3,1,2,5),('72','67','64','2004-12-06',5.9,'Bajo','Gen Z',432,2,3.725,'Medium',2,1,5,1,2,3),('62','67','64','2009-02-16',5.2,'Bajo','Gen Z',433,4,5.175,'High',1,1,5,2,1,1),('45','37','37','1999-06-10',4.4,'Bajo','Gen Z',434,4,7.05,'High',2,3,3,2,1,4),('62','67','61','2004-11-01',5.6,'Bajo','Gen Z',435,3,4.975,'Medium',2,3,3,1,1,1),('79','72','69','2005-07-28',2.3,'Medio','Gen Z',436,2,3.425,'Medium',2,1,6,1,1,3),('79','76','65','1999-07-27',3.8,'Medio','Gen Z',437,3,3.525,'Medium',2,1,3,2,1,3),('70','89','88','1999-10-20',3.5,'Medio','Gen Z',438,2,3.225,'Medium',1,1,1,1,2,3),('87','90','88','2001-01-13',0.6,'Alto','Gen Z',439,2,2.475,'Medium',2,2,2,2,2,2),('40','48','50','1999-05-02',7.2,'Bajo','Gen Z',440,5,7.1,'High',1,2,4,1,1,4),('66','74','78','2003-12-24',3.7,'Medio','Gen Z',441,4,4.9,'Medium',1,5,5,2,2,1),('77','62','64','1999-07-14',7.5,'Bajo','Gen Z',442,2,3.725,'Medium',2,3,1,2,1,3),('53','45','40','2002-08-12',4.2,'Bajo','Gen Z',443,4,6.65,'High',2,5,4,1,1,4),('60','60','60','1999-03-05',7.9,'Bajo','Gen Z',444,3,5.2,'High',2,2,1,2,1,1),('32','39','33','2003-09-12',5.4,'Bajo','Gen Z',445,5,7.525,'High',1,1,1,2,1,4),('55','72','79','2007-11-03',7.1,'Bajo','Gen Z',446,4,5.925,'High',1,1,4,1,2,4),('61','86','87','1996-03-01',3.2,'Medio','Millennials',447,3,4.525,'Medium',1,2,4,1,2,1),('61','67','66','2001-04-28',6.1,'Bajo','Gen Z',448,3,5,'Medium',2,1,6,2,1,1),('53','70','70','2010-03-06',6,'Bajo','Gen Z',449,6,6.425,'High',1,2,4,2,1,4),('73','66','62','2000-05-08',5.2,'Bajo','Gen Z',450,2,3.725,'Medium',2,3,3,1,1,3),('66','62','64','2003-01-09',4.1,'Bajo','Gen Z',451,4,5.2,'High',2,3,4,2,1,1),('74','75','79','2001-10-14',4.5,'Medio','Gen Z',452,3,3.675,'Medium',1,3,1,1,2,3),('63','74','74','2009-08-16',3,'Medio','Gen Z',453,3,4.775,'Medium',1,1,1,1,1,1),('96','90','92','2002-02-27',1.6,'Alto','Gen Z',454,0,0,'Low',2,1,2,1,2,5),('63','80','80','2004-01-09',3.5,'Medio','Gen Z',455,4,4.825,'Medium',1,3,1,2,2,1),('82','78','74','2006-05-27',4.8,'Medio','Gen Z',456,2,2.9,'Medium',2,2,4,2,2,2),('48','51','46','2006-04-25',6.7,'Bajo','Gen Z',457,5,6.825,'High',2,2,2,2,1,4),('48','43','45','2008-03-08',4.2,'Bajo','Gen Z',458,6,7.225,'High',2,2,4,1,1,4),('76','78','80','2006-12-18',3.4,'Medio','Gen Z',459,2,3.35,'Medium',1,5,1,1,1,3),('75','88','85','2001-09-24',3.1,'Medio','Gen Z',460,2,3.125,'Medium',1,5,1,2,2,3),('92','100','100','2001-07-07',1.4,'Alto','Gen Z',461,0,0,'Low',1,5,2,2,2,5),('61','71','78','1999-03-19',2.7,'Medio','Gen Z',462,3,4.9,'Medium',1,3,6,2,2,1),('49','53','52','2004-10-20',6.8,'Bajo','Gen Z',463,6,6.95,'High',2,2,6,2,1,4),('60','57','51','2004-06-20',5.9,'Bajo','Gen Z',464,3,5.275,'High',2,3,5,2,1,1),('52','53','49','1997-11-02',4.5,'Bajo','Gen Z',465,6,6.875,'High',2,1,5,1,1,4),('84','89','90','1999-09-01',1.2,'Alto','Gen Z',466,1,2.375,'Medium',2,3,6,2,2,2),('59','42','41','1995-04-13',6.4,'Bajo','Millennials',467,6,6.975,'High',2,3,3,2,1,4),('81','92','91','2002-11-16',1,'Alto','Gen Z',468,1,2.375,'Medium',1,5,6,1,1,2),('75','72','62','2000-10-23',4.4,'Bajo','Gen Z',469,2,3.525,'Medium',2,1,3,1,1,3),('63','75','81','2000-05-01',2.2,'Medio','Gen Z',470,4,4.95,'Medium',1,1,2,1,1,1),('85','84','82','2005-03-17',4.6,'Medio','Gen Z',471,1,2.475,'Medium',1,1,4,1,1,2),('96','100','100','2006-07-09',1.3,'Alto','Gen Z',472,0,0,'Low',1,1,2,1,2,5),('40','58','54','2001-10-13',6.7,'Bajo','Gen Z',473,4,6.65,'High',1,1,6,2,1,4),('61','64','62','2001-02-01',5.3,'Bajo','Gen Z',474,3,5.075,'High',1,5,1,1,1,1),('53','51','51','2003-10-04',7.4,'Bajo','Gen Z',475,6,6.9,'High',2,1,5,2,2,4),('58','63','65','2001-09-08',7.3,'Bajo','Gen Z',476,5,6.275,'High',1,2,4,1,1,4),('58','76','78','2009-06-21',2.6,'Medio','Gen Z',477,5,5.95,'High',1,2,6,2,2,4),('68','83','78','2003-04-12',3.1,'Medio','Gen Z',478,3,4.425,'Medium',1,2,5,1,2,1),('69','72','77','2001-02-13',2.8,'Medio','Gen Z',479,4,4.875,'Medium',1,3,5,1,1,1),('67','75','70','1995-02-19',2.3,'Medio','Millennials',480,3,4.65,'Medium',1,1,1,2,2,1),('88','92','95','2010-03-25',1.4,'Alto','Gen Z',481,2,2.4,'Medium',1,3,4,1,2,2),('72','73','74','2005-12-12',3.8,'Medio','Gen Z',482,3,3.775,'Medium',2,4,5,1,2,3),('71','76','70','1995-11-20',4.5,'Medio','Millennials',483,3,3.725,'Medium',1,5,1,2,1,3),('94','88','78','2003-04-03',0.5,'Alto','Gen Z',484,0,0,'Low',2,5,3,1,1,5),('79','86','81','1995-02-28',3.5,'Medio','Millennials',485,3,3.275,'Medium',1,3,1,1,1,3),('69','63','61','2000-11-06',5.4,'Bajo','Gen Z',486,4,5.1,'High',2,1,2,1,1,1),('58','49','42','2000-05-09',4.4,'Bajo','Gen Z',487,4,6.425,'High',2,1,1,1,1,4),('63','67','70','2002-02-27',7.5,'Bajo','Gen Z',488,3,4.95,'Medium',1,1,4,1,1,1),('47','53','58','2002-06-06',5.4,'Bajo','Gen Z',489,4,6.6,'High',1,3,4,2,1,4),('43','51','54','1995-09-15',4.2,'Bajo','Millennials',490,6,7.15,'High',1,1,2,2,2,4),('65','70','71','1997-12-01',5.8,'Bajo','Gen Z',491,4,5.025,'High',1,3,1,1,1,1),('81','91','87','1999-07-06',1.4,'Alto','Gen Z',492,1,2.4,'Medium',1,1,6,1,2,2),('69','60','63','2009-06-05',5.1,'Bajo','Gen Z',493,3,4.975,'Medium',2,3,1,2,2,1),('58','59','66','2001-08-21',4.4,'Bajo','Gen Z',494,5,6.375,'High',1,1,1,1,1,4),('88','85','76','2009-05-09',4.1,'Medio','Gen Z',495,2,2.575,'Medium',2,2,1,1,2,2),('46','54','58','2002-09-12',4,'Bajo','Gen Z',496,4,6.6,'High',1,2,5,2,2,4),('94','90','91','2004-09-13',1.7,'Alto','Gen Z',497,0,0,'Low',2,1,2,1,2,5),('71','77','77','2004-04-03',3.5,'Medio','Gen Z',498,2,3.5,'Medium',1,1,4,1,2,3),('83','78','73','1998-08-21',2.2,'Medio','Gen Z',499,2,2.875,'Medium',2,1,2,1,1,2),('65','77','74','2006-06-04',2.4,'Medio','Gen Z',500,4,4.85,'Medium',1,1,4,1,1,1),('52','70','62','1996-01-24',6.3,'Bajo','Millennials',501,6,6.45,'High',1,2,6,2,2,4),('82','93','93','2008-12-15',0.7,'Alto','Gen Z',502,1,2.325,'Medium',1,4,4,1,1,2),('85','92','93','1995-09-04',1.6,'Alto','Millennials',503,2,2.475,'Medium',1,1,3,1,2,2),('60','68','72','2009-02-08',4.8,'Bajo','Gen Z',504,4,5.2,'High',1,1,5,1,1,1),('97','100','100','2000-10-21',1.4,'Alto','Gen Z',505,0,0,'Low',1,3,3,1,2,5),('59','63','75','2008-11-17',6,'Bajo','Gen Z',506,5,6.25,'High',1,5,5,1,2,4),('37','45','38','2006-12-19',6,'Bajo','Gen Z',507,4,7.05,'High',1,5,2,1,1,4),('62','68','75','2001-01-02',7.2,'Bajo','Gen Z',508,3,4.95,'Medium',2,1,6,2,2,1),('65','86','80','1997-05-02',4.7,'Medio','Gen Z',509,4,4.625,'Medium',1,1,3,2,1,1),('88','78','83','2007-08-15',4,'Medio','Gen Z',510,2,2.75,'Medium',2,3,2,1,1,2),('95','81','84','2005-08-15',1.1,'Alto','Gen Z',511,0,0,'Low',2,3,6,1,1,5),('73','56','57','2010-07-14',7.5,'Bajo','Gen Z',512,3,4.175,'Medium',2,2,2,2,1,3),('46','64','66','2007-04-25',7,'Bajo','Gen Z',513,4,6.35,'High',1,1,1,2,1,4),('65','73','68','2004-12-04',7.7,'Bajo','Gen Z',514,4,4.95,'Medium',2,1,4,2,2,1),('35','61','54','2009-01-04',4.5,'Bajo','Gen Z',515,5,6.9,'High',1,1,5,2,1,4),('50','50','47','1996-04-02',6.1,'Bajo','Millennials',516,4,6.6,'High',1,5,5,1,1,4),('53','52','42','1996-08-24',4.8,'Bajo','Millennials',517,4,6.475,'High',2,3,5,1,1,4),('65','69','70','1995-02-01',6.8,'Bajo','Millennials',518,4,5.05,'High',1,3,4,1,1,1),('62','63','56','2005-06-03',5,'Bajo','Gen Z',519,4,5.275,'High',2,2,2,2,1,1),('45','52','49','2004-06-16',7.8,'Bajo','Gen Z',520,5,6.875,'High',2,1,3,2,2,4),('58','51','52','2004-02-14',5.8,'Bajo','Gen Z',521,5,6.575,'High',2,1,5,2,2,4),('45','48','46','1995-01-10',7.5,'Bajo','Millennials',522,6,7.175,'High',2,3,5,1,1,4),('100','96','86','2000-05-10',0.5,'Alto','Gen Z',523,0,0,'Low',2,4,1,1,2,5),('73','79','84','2008-06-23',2.4,'Medio','Gen Z',524,2,3.4,'Medium',1,3,2,2,1,3),('65','67','65','1997-11-19',4.3,'Bajo','Gen Z',525,4,5.1,'High',2,1,4,2,2,1),('70','78','78','2001-01-24',3.1,'Medio','Gen Z',526,3,3.7,'Medium',1,3,1,2,2,3),('80','76','65','2002-10-26',4.6,'Medio','Gen Z',527,1,2.8,'Medium',2,5,5,1,1,2),('37','46','46','1996-11-18',4.8,'Bajo','Millennials',528,6,7.425,'High',1,2,3,1,1,4),('81','82','82','2004-09-13',2.8,'Medio','Gen Z',529,1,2.625,'Medium',2,2,4,1,2,2),('97','82','88','1996-01-07',1.8,'Alto','Millennials',530,0,0,'Low',2,5,4,1,2,5),('67','89','82','2009-08-19',2,'Medio','Gen Z',531,3,4.3,'Medium',1,2,3,1,1,1),('88','75','76','2004-07-09',2.9,'Medio','Gen Z',532,2,2.825,'Medium',2,2,2,2,1,2),('62','66','68','2008-12-06',5.4,'Bajo','Gen Z',533,3,5,'Medium',2,3,3,1,2,1),('77','76','77','1996-11-25',3.1,'Medio','Millennials',534,2,3.375,'Medium',2,5,3,1,2,3),('48','52','45','1999-01-26',7.3,'Bajo','Gen Z',535,6,7,'High',2,2,3,2,1,4),('61','58','62','1998-04-04',5.7,'Bajo','Gen Z',536,4,5.425,'High',1,5,2,2,1,1),('77','88','87','2005-11-15',3.1,'Medio','Gen Z',537,3,3.275,'Medium',1,1,2,1,1,3),('63','48','47','1999-08-12',4.9,'Bajo','Gen Z',538,4,5.625,'High',2,2,5,2,1,1),('66','65','69','2006-11-27',7.7,'Bajo','Gen Z',539,4,5.125,'High',1,5,4,1,1,1),('68','68','67','1998-05-17',6.5,'Bajo','Gen Z',540,4,5,'Medium',2,3,2,2,1,1),('100','97','99','1995-11-03',1.9,'Alto','Millennials',541,0,0,'Low',2,3,1,1,2,5),('69','70','63','2003-05-09',6.8,'Bajo','Gen Z',542,3,4.725,'Medium',2,2,4,2,2,1),('61','48','46','2007-11-09',7.1,'Bajo','Gen Z',543,4,5.675,'High',2,3,4,1,1,1),('76','70','68','2000-07-07',2.8,'Medio','Gen Z',544,2,3.55,'Medium',2,1,4,1,1,3),('49','57','46','2009-09-04',5.4,'Bajo','Gen Z',545,5,6.65,'High',2,3,1,2,1,4),('86','73','70','1997-06-17',5,'Medio','Gen Z',546,2,2.925,'Medium',2,3,3,1,1,2),('71','75','70','2001-04-24',3.6,'Medio','Gen Z',547,3,3.75,'Medium',2,2,1,1,2,3),('44','51','55','1998-02-28',5.8,'Bajo','Gen Z',548,5,6.925,'High',1,1,3,1,2,4),('67','64','70','2005-07-11',5.6,'Bajo','Gen Z',549,4,5.125,'High',2,3,1,1,1,1),('63','60','57','1999-03-10',7.5,'Bajo','Gen Z',550,4,5.325,'High',2,1,3,1,2,1),('91','96','92','2009-02-02',0.8,'Alto','Gen Z',551,0,0,'Low',2,4,2,1,1,5),('79','60','65','2004-09-20',4.8,'Bajo','Gen Z',552,2,3.725,'Medium',2,2,5,1,1,3),('53','62','56','2007-04-04',7.5,'Bajo','Gen Z',553,6,6.625,'High',1,1,1,1,1,4),('66','74','81','1999-08-06',4.7,'Medio','Gen Z',554,4,4.9,'Medium',1,2,2,1,2,1),('50','66','64','2003-03-21',4,'Bajo','Gen Z',555,4,6.2,'High',1,1,5,2,2,4),('65','73','75','1997-06-11',2.5,'Medio','Gen Z',556,4,4.95,'Medium',1,5,2,1,1,1),('74','81','71','1999-05-11',4.9,'Medio','Gen Z',557,2,3.325,'Medium',1,5,5,1,1,3),('78','77','80','1998-10-15',4.6,'Medio','Gen Z',558,3,3.525,'Medium',2,3,5,2,2,3),('75','88','85','2004-07-04',2.6,'Medio','Gen Z',559,3,3.325,'Medium',1,1,5,1,1,3),('40','55','53','2002-11-24',7.5,'Bajo','Gen Z',560,4,6.725,'High',2,4,4,2,2,4),('67','62','60','2008-10-03',6.3,'Bajo','Gen Z',561,4,5.175,'High',2,2,4,2,1,1),('84','84','80','2008-06-27',2.2,'Medio','Gen Z',562,2,2.7,'Medium',2,3,3,1,1,2),('46','41','43','2001-09-22',6.6,'Bajo','Gen Z',563,5,7.125,'High',2,4,3,1,2,4),('71','74','64','2007-06-13',4.8,'Bajo','Gen Z',564,2,3.575,'Medium',2,4,5,1,1,3),('61','51','52','2000-12-12',6.8,'Bajo','Gen Z',565,3,5.4,'High',2,4,1,1,2,1),('71','74','68','2004-11-09',2.2,'Medio','Gen Z',566,2,3.575,'Medium',2,5,4,1,2,3),('67','80','81','2003-09-12',3.8,'Medio','Gen Z',567,4,4.725,'Medium',1,2,5,2,2,1),('80','92','88','2003-06-10',1.2,'Alto','Gen Z',568,1,2.4,'Medium',1,3,3,1,2,2),('81','91','89','2006-03-26',1.1,'Alto','Gen Z',569,2,2.6,'Medium',1,2,5,1,1,2),('86','76','74','2009-05-15',3.1,'Medio','Gen Z',570,1,2.65,'Medium',2,5,1,1,1,2),('48','56','58','2004-03-10',6.8,'Bajo','Gen Z',571,5,6.7,'High',1,2,1,2,2,4),('40','46','50','2005-03-26',7.3,'Bajo','Gen Z',572,6,7.35,'High',2,1,5,2,2,4),('53','61','68','1995-07-12',5.2,'Bajo','Millennials',573,6,6.65,'High',1,3,6,1,1,4),('81','97','96','1997-08-17',1,'Alto','Gen Z',574,2,2.45,'Medium',1,3,3,1,1,2),('76','74','73','1997-11-02',2.5,'Medio','Gen Z',575,3,3.65,'Medium',1,3,4,1,1,3),('77','79','80','2003-11-12',3.7,'Medio','Gen Z',576,2,3.3,'Medium',1,5,3,1,1,3),('41','52','51','1998-08-09',4.4,'Bajo','Gen Z',577,5,6.975,'High',2,3,5,1,1,4),('90','87','75','2003-11-02',2.8,'Medio','Gen Z',578,0,0,'Low',2,3,4,2,1,5),('74','88','90','2001-12-15',4.8,'Medio','Gen Z',579,2,3.15,'Medium',1,3,4,2,2,3),('81','78','81','1997-04-25',2.7,'Medio','Gen Z',580,2,2.925,'Medium',2,4,1,2,2,2),('72','81','79','2009-12-09',3.4,'Medio','Gen Z',581,2,3.375,'Medium',1,2,3,2,1,3),('63','73','78','2005-03-07',4.7,'Medio','Gen Z',582,3,4.8,'Medium',1,3,2,2,1,1),('76','83','79','2004-10-04',4.7,'Medio','Gen Z',583,2,3.225,'Medium',2,3,1,1,2,3),('56','54','52','1995-12-05',7.3,'Bajo','Millennials',584,6,6.75,'High',2,3,3,2,1,4),('74','79','80','2000-06-11',2,'Medio','Gen Z',585,2,3.375,'Medium',1,5,5,1,2,3),('73','75','80','2010-11-06',3.9,'Medio','Gen Z',586,3,3.7,'Medium',1,3,4,1,2,3),('70','65','60','2010-08-25',5.3,'Bajo','Gen Z',588,2,3.825,'Medium',2,2,5,1,1,3),('69','77','77','2004-09-13',3.7,'Medio','Gen Z',589,3,4.55,'Medium',1,3,1,1,1,1),('62','64','66','2003-03-11',7.7,'Bajo','Gen Z',590,4,5.25,'High',1,2,3,1,1,1),('65','76','76','2008-06-04',2.9,'Medio','Gen Z',591,3,4.675,'Medium',1,1,4,1,1,1),('77','62','62','2000-08-20',4.5,'Bajo','Gen Z',592,3,3.925,'Medium',2,3,1,1,2,3),('80','76','64','2000-07-13',2.3,'Medio','Gen Z',593,2,3,'Medium',2,2,4,1,1,2),('55','73','73','2005-11-19',5.8,'Bajo','Gen Z',594,4,5.9,'High',1,4,5,1,1,4),('65','81','81','2009-10-11',4.6,'Medio','Gen Z',595,3,4.55,'Medium',1,2,2,1,2,1),('69','84','85','2001-08-01',3,'Medio','Gen Z',596,4,4.575,'Medium',1,1,6,1,2,1),('44','63','62','2008-05-06',7.2,'Bajo','Gen Z',597,5,6.625,'High',1,1,2,2,1,4),('61','55','52','2010-01-12',5.2,'Bajo','Gen Z',598,3,5.3,'High',2,3,4,1,1,1),('59','69','65','2004-09-17',7,'Bajo','Gen Z',599,6,6.3,'High',2,1,3,2,2,4),('55','56','51','2002-02-16',6,'Bajo','Gen Z',600,4,6.325,'High',2,5,5,2,1,4),('45','53','55','2007-09-17',6.8,'Bajo','Gen Z',601,6,7.05,'High',1,2,1,2,1,4),('74','75','83','1998-08-21',3.5,'Medio','Gen Z',602,2,3.475,'Medium',1,1,4,1,2,3),('59','70','65','2004-02-16',7.3,'Bajo','Gen Z',603,5,6.075,'High',1,3,4,1,1,4),('78','79','76','2008-09-10',5,'Medio','Gen Z',604,3,3.475,'Medium',1,2,2,2,1,3),('64','62','68','2008-08-15',6.9,'Bajo','Gen Z',605,3,5.05,'High',1,5,5,2,1,1),('50','53','55','2001-03-02',7.3,'Bajo','Gen Z',606,6,6.925,'High',1,2,5,1,1,4),('69','67','69','2008-12-16',7.6,'Bajo','Gen Z',607,3,4.8,'Medium',2,4,1,1,1,1),('69','79','81','2000-09-23',4.8,'Medio','Gen Z',608,3,4.5,'Medium',1,3,1,1,2,1),('99','87','81','2005-08-04',0.9,'Alto','Gen Z',609,0,0,'Low',2,5,1,1,2,5),('51','52','44','1997-03-12',6.1,'Bajo','Gen Z',610,4,6.525,'High',2,1,3,1,1,4),('51','56','53','2003-03-02',5.6,'Bajo','Gen Z',611,4,6.425,'High',2,1,3,2,2,4),('53','71','67','2000-05-18',7.1,'Bajo','Gen Z',612,6,6.4,'High',1,2,4,2,1,4),('68','80','76','2009-03-19',4.6,'Medio','Gen Z',613,4,4.7,'Medium',1,4,5,1,2,1),('85','86','98','1998-11-10',1,'Alto','Gen Z',614,2,2.625,'Medium',1,3,1,1,2,2),('49','57','52','2006-09-11',5.9,'Bajo','Gen Z',615,4,6.45,'High',1,3,5,2,1,4),('65','70','74','1998-01-05',4,'Bajo','Gen Z',616,4,5.025,'High',1,4,4,1,2,1),('73','79','79','2004-03-16',4.7,'Medio','Gen Z',617,2,3.4,'Medium',1,2,3,1,1,3),('73','76','80','1997-04-11',3.1,'Medio','Gen Z',618,3,3.675,'Medium',1,2,4,1,1,3),('54','64','65','1998-10-07',4.3,'Bajo','Gen Z',619,4,6.15,'High',1,1,1,1,1,4),('62','67','67','2007-04-23',4.9,'Bajo','Gen Z',620,4,5.175,'High',1,2,1,1,1,1),('66','60','57','2001-11-25',6.8,'Bajo','Gen Z',621,3,5.05,'High',2,2,2,1,1,1),('48','66','65','2007-04-20',4.1,'Bajo','Gen Z',622,6,6.65,'High',1,4,3,1,1,4),('77','67','64','1995-09-28',6.6,'Bajo','Millennials',623,3,3.8,'Medium',2,1,4,2,1,3),('67','61','68','1997-10-11',4,'Bajo','Gen Z',624,3,5,'Medium',2,3,2,1,2,1),('92','79','84','2007-02-27',1.8,'Alto','Gen Z',625,0,0,'Low',2,1,4,1,1,5),('58','57','54','2008-05-06',6.4,'Bajo','Gen Z',626,5,6.425,'High',2,1,1,2,1,4),('69','66','61','2001-06-24',4.5,'Bajo','Gen Z',627,3,4.825,'Medium',2,3,3,1,1,1),('68','67','69','2003-11-11',6,'Bajo','Gen Z',628,4,5.025,'High',1,1,4,2,2,1),('71','62','50','1996-01-22',6.2,'Bajo','Millennials',629,2,3.875,'Medium',2,4,3,1,1,3),('53','66','73','2005-06-11',4.1,'Bajo','Gen Z',630,5,6.325,'High',1,2,1,2,2,4),('68','68','64','1996-10-04',6.1,'Bajo','Millennials',631,3,4.8,'Medium',2,5,2,1,1,1),('81','71','73','1997-09-14',3.1,'Medio','Gen Z',632,1,2.9,'Medium',2,3,4,1,1,2),('59','64','75','2007-04-19',5.1,'Bajo','Gen Z',633,5,6.225,'High',1,1,2,1,2,4),('43','60','58','1995-06-23',7.3,'Bajo','Millennials',634,4,6.525,'High',1,3,4,2,1,4),('71','66','65','1999-07-25',6.9,'Bajo','Gen Z',635,3,3.975,'Medium',2,1,5,1,1,3),('61','60','55','1996-09-19',6.7,'Bajo','Millennials',636,4,5.375,'High',2,1,5,2,1,1),('90','87','85','1998-12-05',1.8,'Alto','Gen Z',637,0,0,'Low',2,3,4,1,1,5),('77','82','91','2000-11-13',2.7,'Medio','Gen Z',638,3,3.425,'Medium',1,3,6,1,2,3),('74','77','73','2006-05-13',2,'Medio','Gen Z',639,2,3.425,'Medium',2,1,1,2,1,3),('80','73','72','2004-05-07',2.5,'Medio','Gen Z',640,1,2.875,'Medium',2,3,2,1,1,2),('83','72','78','2001-08-21',4.2,'Medio','Gen Z',641,2,3.025,'Medium',2,1,4,1,1,2),('37','57','56','2009-04-27',7.2,'Bajo','Gen Z',642,6,7.15,'High',1,4,4,2,1,4),('63','71','69','2002-04-13',7.8,'Bajo','Gen Z',644,3,4.85,'Medium',2,2,2,1,1,1),('55','71','69','1997-02-20',5.8,'Bajo','Gen Z',645,6,6.35,'High',1,3,1,2,1,4),('81','84','82','2002-10-03',3.9,'Medio','Gen Z',646,1,2.575,'Medium',1,1,5,1,1,2),('56','65','63','2002-01-24',6.5,'Bajo','Gen Z',647,4,6.075,'High',1,3,4,2,1,4),('65','69','67','2005-11-25',4.2,'Bajo','Gen Z',648,3,4.85,'Medium',1,1,5,1,1,1),('59','73','72','2007-09-08',5.1,'Bajo','Gen Z',649,5,6,'High',1,1,4,1,2,4),('80','63','63','1999-03-22',7,'Bajo','Gen Z',650,1,3.125,'Medium',2,3,4,1,1,2),('67','79','84','2005-09-21',4.9,'Medio','Gen Z',651,4,4.75,'Medium',1,1,5,2,2,1),('55','55','47','2005-07-22',6.5,'Bajo','Gen Z',652,5,6.55,'High',2,2,1,2,1,4),('75','86','79','2002-07-28',3.8,'Medio','Gen Z',653,2,3.175,'Medium',1,5,5,1,1,3),('50','60','60','2002-01-04',7.1,'Bajo','Gen Z',654,6,6.75,'High',1,1,3,2,2,4),('72','79','74','2002-06-18',2.1,'Medio','Gen Z',655,3,3.625,'Medium',2,3,4,1,1,3),('71','81','80','1995-08-20',2.1,'Medio','Millennials',656,3,3.6,'Medium',1,1,1,1,1,3),('63','73','71','2002-02-21',6.1,'Bajo','Gen Z',657,3,4.8,'Medium',1,1,1,2,2,1),('69','75','71','1999-05-06',3.9,'Medio','Gen Z',658,4,4.8,'Medium',2,3,5,1,1,1),('69','64','68','1996-07-11',5.7,'Bajo','Millennials',659,4,5.075,'High',2,1,1,1,1,1),('74','76','73','2000-08-28',2.6,'Medio','Gen Z',660,2,3.45,'Medium',1,5,5,1,1,3),('77','85','87','2003-06-19',2.1,'Medio','Gen Z',661,3,3.35,'Medium',1,2,2,2,1,3),('73','74','61','2002-03-24',5.7,'Bajo','Gen Z',662,2,3.525,'Medium',2,1,1,1,1,3),('50','60','59','1999-09-21',4.4,'Bajo','Gen Z',663,6,6.75,'High',1,1,2,2,1,4),('92','100','99','2000-12-16',1.7,'Alto','Gen Z',664,0,0,'Low',1,1,2,1,2,5),('81','72','77','2005-07-13',4.4,'Medio','Gen Z',665,2,3.075,'Medium',2,3,4,1,2,2),('87','84','86','2000-03-22',1.3,'Alto','Gen Z',666,1,2.425,'Medium',2,2,1,1,2,2),('66','76','68','1996-01-07',3.9,'Medio','Millennials',667,4,4.85,'Medium',1,1,5,2,1,1),('71','69','68','2010-01-22',4.7,'Bajo','Gen Z',668,3,3.9,'Medium',2,3,3,1,2,3),('56','79','72','1999-09-06',7.6,'Bajo','Gen Z',669,6,6.125,'High',1,1,2,1,2,4),('30','24','15','2008-04-18',7.4,'Bajo','Gen Z',670,4,7.75,'High',2,2,5,2,1,4),('68','72','65','2007-09-23',4.6,'Bajo','Gen Z',671,3,4.7,'Medium',2,5,1,1,1,1),('52','57','50','2009-01-15',7.8,'Bajo','Gen Z',672,4,6.375,'High',2,3,4,2,1,4),('53','54','48','1999-11-28',6.4,'Bajo','Gen Z',673,4,6.425,'High',2,4,3,1,1,4),('79','77','75','2001-08-07',3.1,'Medio','Gen Z',674,3,3.5,'Medium',2,1,6,2,2,3),('69','77','73','1995-08-25',3.6,'Medio','Millennials',675,4,4.75,'Medium',1,3,5,1,1,1),('77','90','85','2005-01-27',2.4,'Medio','Gen Z',676,3,3.225,'Medium',1,1,3,1,2,3),('69','78','76','2007-09-16',2.4,'Medio','Gen Z',677,3,4.525,'Medium',1,1,1,1,1,1),('58','55','53','2004-03-27',4.8,'Bajo','Gen Z',678,6,6.675,'High',2,1,4,2,1,4),('65','84','84','2005-08-14',2.9,'Medio','Gen Z',679,3,4.475,'Medium',1,1,4,1,2,1),('65','82','81','2010-05-12',3.4,'Medio','Gen Z',680,4,4.725,'Medium',1,3,3,1,1,1),('84','95','92','2010-02-18',1.8,'Alto','Gen Z',681,1,2.225,'Medium',1,5,4,1,1,2),('69','77','78','1996-09-19',3.8,'Medio','Millennials',682,3,4.55,'Medium',1,3,5,1,2,1),('54','60','63','2000-01-17',6.8,'Bajo','Gen Z',683,4,6.25,'High',1,3,6,1,1,4),('55','58','52','1997-09-12',5.7,'Bajo','Gen Z',684,6,6.675,'High',2,3,1,1,1,4),('50','64','66','2004-03-24',4.2,'Bajo','Gen Z',685,5,6.45,'High',1,2,1,1,2,4),('73','78','76','1999-06-18',4.8,'Medio','Gen Z',686,3,3.625,'Medium',1,5,1,1,2,3),('70','68','72','1999-08-15',2.6,'Medio','Gen Z',687,3,3.95,'Medium',2,5,2,2,2,3),('29','29','30','2007-12-28',4.7,'Bajo','Gen Z',688,5,7.85,'High',1,1,5,1,1,4),('52','59','65','2006-06-03',5.8,'Bajo','Gen Z',689,5,6.525,'High',1,3,1,2,2,4),('70','82','76','2008-09-26',3.3,'Medio','Gen Z',690,3,3.6,'Medium',1,1,3,1,2,3),('69','77','77','2001-01-01',2.1,'Medio','Gen Z',691,4,4.75,'Medium',2,2,1,1,2,1),('53','72','64','1998-11-11',7.5,'Bajo','Gen Z',692,5,6.175,'High',1,1,5,2,1,4),('81','75','78','2005-04-18',4.3,'Medio','Gen Z',693,2,3,'Medium',2,3,4,2,1,2),('63','61','60','1997-06-05',4.2,'Bajo','Gen Z',694,4,5.3,'High',2,3,1,2,1,1),('48','58','54','1997-11-23',7.5,'Bajo','Gen Z',695,4,6.45,'High',1,3,3,1,1,4),('67','72','74','2005-09-24',3.3,'Medio','Gen Z',696,4,4.925,'Medium',1,3,5,1,1,1),('78','81','86','1998-06-07',4.2,'Medio','Gen Z',697,3,3.425,'Medium',2,3,3,1,2,3),('60','68','60','1996-01-06',6.6,'Bajo','Millennials',698,4,5.2,'High',2,2,5,1,1,1),('62','62','63','1999-01-26',5.7,'Bajo','Gen Z',699,4,5.3,'High',1,2,5,1,1,1),('62','55','54','2003-12-09',5.3,'Bajo','Gen Z',700,4,5.475,'High',2,2,5,1,1,1),('60','63','59','2006-06-01',4.6,'Bajo','Gen Z',701,3,5.125,'High',2,3,1,1,1,1),('59','58','47','2000-10-23',4.2,'Bajo','Gen Z',702,4,6.175,'High',2,2,5,1,1,4),('74','72','72','2002-03-17',2.6,'Medio','Gen Z',703,3,3.75,'Medium',1,2,5,1,1,3),('70','72','76','2004-02-27',2.7,'Medio','Gen Z',704,2,3.65,'Medium',1,1,1,1,2,3),('29','40','44','1997-03-26',6.4,'Bajo','Gen Z',705,5,7.575,'High',1,1,3,2,2,4),('58','75','77','2005-01-24',3.9,'Medio','Gen Z',706,4,5.775,'High',1,1,5,1,2,4),('82','84','78','1996-10-22',4.3,'Medio','Millennials',707,2,2.75,'Medium',2,2,4,1,2,2),('43','53','53','2004-07-22',7,'Bajo','Gen Z',708,4,6.7,'High',1,1,3,2,1,4),('62','66','68','2009-08-28',4.4,'Bajo','Gen Z',709,4,5.2,'High',2,2,1,1,2,1),('76','62','60','2009-03-02',6.9,'Bajo','Gen Z',710,3,3.95,'Medium',2,2,5,1,2,3),('90','90','82','2001-04-28',1.1,'Alto','Gen Z',711,0,0,'Low',2,5,4,2,1,5),('94','99','100','1997-06-15',0.9,'Alto','Gen Z',712,0,0,'Low',1,5,6,1,2,5),('41','46','43','2001-06-27',4.8,'Bajo','Gen Z',713,4,6.925,'High',1,1,5,2,1,4),('68','71','75','2004-10-24',4.6,'Medio','Gen Z',714,4,4.925,'Medium',1,3,3,1,1,1),('43','62','61','2001-08-05',6.8,'Bajo','Gen Z',715,6,6.875,'High',1,1,2,2,1,4),('85','75','68','2003-06-26',3.4,'Medio','Gen Z',716,1,2.7,'Medium',2,5,1,1,2,2),('58','60','57','2003-01-25',4.4,'Bajo','Gen Z',717,6,6.55,'High',2,4,1,2,1,4),('80','64','66','2005-08-22',2.8,'Medio','Gen Z',718,1,3.1,'Medium',2,1,1,2,1,2),('77','78','73','1998-01-16',4,'Medio','Gen Z',719,3,3.525,'Medium',2,3,4,2,1,3),('81','82','84','1997-01-25',2.6,'Medio','Gen Z',720,1,2.625,'Medium',2,3,1,1,1,2),('53','58','44','2004-05-11',6.7,'Bajo','Gen Z',721,6,6.725,'High',2,4,5,2,1,4),('52','48','49','1998-12-01',4.5,'Bajo','Gen Z',722,6,7,'High',2,2,5,1,1,4),('82','90','94','2004-09-16',1.4,'Alto','Gen Z',723,1,2.4,'Medium',1,1,1,1,1,2),('57','61','54','2008-01-27',7.9,'Bajo','Gen Z',724,5,6.35,'High',2,1,3,1,1,4),('75','73','74','2005-05-01',3.5,'Medio','Gen Z',725,3,3.7,'Medium',2,3,2,1,1,3),('59','72','80','1999-09-08',2.3,'Medio','Gen Z',726,5,6.025,'High',1,3,3,1,1,4),('61','61','62','2001-07-03',6.9,'Bajo','Gen Z',727,4,5.35,'High',2,1,1,1,1,1),('52','67','72','2009-01-08',6.3,'Bajo','Gen Z',728,5,6.325,'High',1,2,3,2,2,4),('64','76','74','2002-09-26',2.7,'Medio','Gen Z',729,4,4.9,'Medium',1,3,4,1,1,1),('63','64','66','1997-09-25',6.6,'Bajo','Gen Z',730,3,5.025,'High',2,1,2,1,2,1),('62','78','79','2006-10-03',4.4,'Medio','Gen Z',731,4,4.9,'Medium',1,1,2,2,1,1),('28','23','19','1995-11-17',5.3,'Bajo','Millennials',732,5,8.025,'High',2,4,1,2,1,4),('93','90','83','2007-06-24',0.5,'Alto','Gen Z',733,0,0,'Low',2,5,1,2,1,5),('66','65','60','1999-01-03',5.8,'Bajo','Gen Z',734,3,4.925,'Medium',2,2,1,1,1,1),('82','75','77','2010-09-27',4.3,'Medio','Gen Z',735,2,2.975,'Medium',2,1,4,1,2,2),('49','53','53','1999-09-25',5.5,'Bajo','Gen Z',736,5,6.75,'High',1,1,4,1,1,4),('49','58','55','1999-12-25',7.2,'Bajo','Gen Z',737,4,6.425,'High',1,2,3,2,1,4),('73','76','78','2006-06-06',2.6,'Medio','Gen Z',738,3,3.675,'Medium',1,5,4,2,1,3),('41','55','51','2008-12-20',7.5,'Bajo','Gen Z',739,4,6.7,'High',1,2,3,1,1,4),('66','72','70','2005-05-13',7.3,'Bajo','Gen Z',740,4,4.95,'Medium',1,2,5,1,1,1),('71','70','70','1996-09-18',3.5,'Medio','Millennials',741,3,3.875,'Medium',1,5,2,1,2,3),('66','74','81','1997-03-12',2,'Medio','Gen Z',742,3,4.7,'Medium',1,1,2,2,2,1),('64','73','71','2001-02-25',7.8,'Bajo','Gen Z',743,4,4.975,'Medium',1,2,5,2,1,1),('35','44','43','2007-02-11',6.8,'Bajo','Gen Z',744,6,7.525,'High',1,1,1,2,1,4),('77','77','73','2003-08-03',4.5,'Medio','Gen Z',745,3,3.55,'Medium',1,3,4,1,1,3),('55','46','44','2008-09-11',5.6,'Bajo','Gen Z',746,4,6.575,'High',2,3,2,2,1,4),('72','79','82','2009-12-21',3.7,'Medio','Gen Z',747,3,3.625,'Medium',1,4,1,1,2,3),('51','51','54','2002-04-09',6.6,'Bajo','Gen Z',748,5,6.75,'High',1,5,4,1,1,4),('94','85','82','1997-01-10',1.6,'Alto','Gen Z',749,0,0,'Low',2,5,4,1,2,5),('71','60','61','1995-02-01',7.2,'Bajo','Millennials',750,3,4.125,'Medium',2,1,5,1,1,3),('49','63','56','2009-09-18',7.5,'Bajo','Gen Z',751,6,6.7,'High',1,1,3,1,1,4),('62','76','80','2003-04-08',4.2,'Medio','Gen Z',752,4,4.95,'Medium',1,1,4,1,2,1),('46','56','57','2002-04-11',4.3,'Bajo','Gen Z',753,4,6.55,'High',1,3,4,2,1,4),('79','89','86','2010-06-11',2.5,'Medio','Gen Z',754,2,3,'Medium',1,3,1,2,1,3),('93','100','95','2006-09-04',1.6,'Alto','Gen Z',755,0,0,'Low',1,5,4,1,2,5),('77','90','84','1996-03-18',3.7,'Medio','Millennials',756,2,3.025,'Medium',1,2,6,1,1,3),('54','72','59','1996-07-26',5,'Bajo','Millennials',757,5,6.15,'High',2,1,5,2,1,4),('76','85','82','2005-01-19',3.6,'Medio','Gen Z',758,2,3.175,'Medium',1,2,5,2,2,3),('69','65','74','2003-08-21',6.9,'Bajo','Gen Z',759,4,5.05,'High',1,3,1,2,1,1),('52','59','62','2004-01-05',5.1,'Bajo','Gen Z',760,6,6.725,'High',1,1,4,1,2,4),('47','37','35','2006-07-10',6.4,'Bajo','Gen Z',761,4,7,'High',2,1,4,1,1,4),('44','51','48','2009-08-25',4.9,'Bajo','Gen Z',762,5,6.925,'High',2,3,5,2,1,4),('91','81','79','2000-10-08',2.6,'Medio','Gen Z',763,0,0,'Low',2,1,2,1,2,5),('62','56','53','2006-11-13',7.8,'Bajo','Gen Z',764,4,5.45,'High',2,5,4,1,2,1),('32','51','44','2003-06-14',5,'Bajo','Gen Z',765,6,7.425,'High',1,2,3,1,2,4),('72','79','77','1997-08-17',2.8,'Medio','Gen Z',766,2,3.425,'Medium',1,5,3,2,1,3),('90','78','81','2005-06-27',2.4,'Medio','Gen Z',767,0,0,'Low',2,2,4,1,1,5),('19','38','32','2010-07-06',7,'Bajo','Gen Z',768,6,8.075,'High',1,2,1,1,1,4),('68','65','61','2000-10-05',5.8,'Bajo','Gen Z',769,4,5.075,'High',2,1,4,2,1,1),('52','65','61','2008-07-01',4.4,'Bajo','Gen Z',770,4,6.175,'High',1,1,6,2,1,4),('48','62','60','1999-03-01',4.4,'Bajo','Gen Z',771,6,6.75,'High',1,2,5,1,1,4),('60','66','70','2005-05-13',6.9,'Bajo','Gen Z',772,3,5.05,'High',1,3,1,2,1,1),('66','74','69','2010-02-15',6.2,'Bajo','Gen Z',773,3,4.7,'Medium',2,3,5,2,1,1),('89','84','77','2008-05-24',2.8,'Medio','Gen Z',774,1,2.375,'Medium',2,5,3,1,2,2),('42','52','51','2006-09-16',5.5,'Bajo','Gen Z',775,6,7.15,'High',1,2,5,1,1,4),('86','85','91','1996-11-21',0.7,'Alto','Millennials',776,1,2.425,'Medium',1,5,1,1,2,2),('57','68','73','2008-06-05',4.4,'Bajo','Gen Z',777,6,6.375,'High',1,5,4,2,2,4),('70','70','70','1998-11-23',3.3,'Medio','Gen Z',778,3,3.9,'Medium',2,3,5,1,1,3),('85','92','85','2003-02-16',0.7,'Alto','Gen Z',779,2,2.475,'Medium',1,5,4,1,1,2),('70','84','81','2004-09-16',3.2,'Medio','Gen Z',780,3,3.55,'Medium',1,5,4,2,1,3),('50','67','73','2004-02-01',7.3,'Bajo','Gen Z',781,4,6.175,'High',1,4,6,2,1,4),('88','74','75','2006-04-20',3.2,'Medio','Gen Z',782,1,2.65,'Medium',2,3,3,1,2,2),('69','60','54','1999-08-25',6.7,'Bajo','Gen Z',783,4,5.175,'High',2,5,1,1,1,1),('59','62','69','2010-09-23',7.2,'Bajo','Gen Z',784,5,6.275,'High',1,5,4,1,1,4),('52','55','57','2001-05-14',4.3,'Bajo','Gen Z',785,6,6.825,'High',1,1,4,1,1,4),('32','34','38','2004-08-02',4.7,'Bajo','Gen Z',786,5,7.65,'High',1,5,3,2,1,4),('67','73','68','1999-08-17',5.4,'Bajo','Gen Z',787,3,4.7,'Medium',2,1,3,1,2,1),('36','29','27','2008-06-25',4.3,'Bajo','Gen Z',788,6,7.875,'High',2,2,5,2,1,4),('63','78','79','2001-09-12',2.9,'Medio','Gen Z',789,4,4.875,'Medium',1,2,3,2,2,1),('76','80','73','2000-07-26',3.5,'Medio','Gen Z',790,2,3.3,'Medium',2,1,3,1,2,3),('67','54','63','2010-11-10',5.9,'Bajo','Gen Z',791,4,5.375,'High',2,3,4,1,2,1),('87','94','95','2004-09-23',1.2,'Alto','Gen Z',792,1,2.175,'Medium',1,5,4,1,1,2),('65','78','82','2007-03-18',3.9,'Medio','Gen Z',793,4,4.825,'Medium',1,3,3,1,2,1),('82','85','87','1995-06-22',3.3,'Medio','Millennials',794,2,2.725,'Medium',1,2,1,1,1,2),('85','84','89','2010-09-03',0.6,'Alto','Gen Z',795,1,2.475,'Medium',2,3,6,1,1,2),('73','78','74','1997-07-24',2.1,'Medio','Gen Z',796,2,3.425,'Medium',1,1,6,1,1,3),('73','76','78','1995-06-18',4.2,'Medio','Millennials',797,3,3.675,'Medium',1,1,1,1,1,3),('75','81','74','2009-03-28',4.2,'Medio','Gen Z',798,3,3.5,'Medium',2,4,1,2,1,3),('34','48','41','1997-07-27',5.2,'Bajo','Gen Z',799,4,7.05,'High',1,4,5,2,2,4),('93','100','100','2000-02-06',1.1,'Alto','Gen Z',800,0,0,'Low',1,3,2,2,2,5),('64','74','75','2000-04-26',4.3,'Medio','Gen Z',801,4,4.95,'Medium',1,3,1,2,1,1),('67','84','84','2005-06-15',3.1,'Medio','Gen Z',802,3,4.425,'Medium',1,3,3,2,1,1),('41','45','40','2001-01-14',4.5,'Bajo','Gen Z',803,5,7.15,'High',1,5,5,2,1,4),('75','82','90','2004-02-12',4.4,'Medio','Gen Z',804,3,3.475,'Medium',1,1,4,1,2,3),('59','72','70','2005-03-03',6,'Bajo','Gen Z',805,4,5.825,'High',1,4,2,1,1,4),('88','77','77','2002-09-03',4.6,'Medio','Gen Z',806,1,2.575,'Medium',2,3,1,1,1,2),('57','78','79','2001-12-08',2.2,'Medio','Gen Z',807,5,5.925,'High',1,3,4,1,2,4),('57','48','51','2006-04-22',4.7,'Bajo','Gen Z',808,6,6.875,'High',2,2,5,1,1,4),('90','75','69','2010-07-05',3.1,'Medio','Gen Z',809,0,0,'Low',2,1,5,1,1,5),('66','66','59','2002-08-17',7.6,'Bajo','Gen Z',810,4,5.1,'High',2,1,5,2,1,1),('79','84','91','1999-02-13',2.7,'Medio','Gen Z',811,3,3.325,'Medium',1,3,1,1,2,3),('59','54','51','2006-01-21',7.4,'Bajo','Gen Z',812,4,6.275,'High',2,2,2,1,1,4),('67','75','72','2005-04-11',3.1,'Medio','Gen Z',813,4,4.85,'Medium',1,1,2,2,1,1),('51','31','36','1996-08-23',5.4,'Bajo','Millennials',814,4,7.05,'High',2,4,3,1,1,4),('79','81','82','2006-11-08',4.3,'Medio','Gen Z',815,3,3.4,'Medium',1,5,2,1,2,3),('45','47','49','2010-06-27',4.5,'Bajo','Gen Z',816,5,7,'High',2,4,5,2,1,4),('57','67','72','2009-09-23',5,'Bajo','Gen Z',817,5,6.2,'High',1,2,3,1,1,4),('54','64','67','1997-10-23',7.7,'Bajo','Gen Z',818,6,6.55,'High',1,1,6,1,2,4),('87','84','87','2006-08-17',0.9,'Alto','Gen Z',819,2,2.625,'Medium',2,4,2,1,2,2),('87','84','76','2004-02-16',3.9,'Medio','Gen Z',820,2,2.625,'Medium',2,5,3,1,2,2),('63','64','67','2007-03-09',5,'Bajo','Gen Z',821,3,5.025,'High',1,3,1,1,1,1),('59','63','64','1998-04-24',4.7,'Bajo','Gen Z',822,4,6.05,'High',1,2,3,2,2,4),('70','64','70','1998-12-02',7.6,'Bajo','Gen Z',823,2,3.85,'Medium',2,5,2,1,2,3),('50','42','48','2005-02-26',6.6,'Bajo','Gen Z',825,4,6.8,'High',2,3,2,2,1,4),('94','86','87','2000-07-19',0.9,'Alto','Gen Z',826,0,0,'Low',2,2,3,1,2,5),('62','72','65','1998-08-11',6.8,'Bajo','Gen Z',827,3,4.85,'Medium',2,4,2,2,1,1),('69','84','82','2005-01-10',4,'Medio','Gen Z',828,4,4.575,'Medium',1,4,1,1,1,1),('45','59','64','2000-08-19',6.4,'Bajo','Gen Z',829,6,6.9,'High',1,4,2,1,1,4),('46','34','36','2006-09-13',5.6,'Bajo','Gen Z',830,4,7.1,'High',2,3,5,1,1,4),('52','61','66','2009-09-26',4,'Bajo','Gen Z',831,6,6.675,'High',1,1,2,1,2,4),('66','59','52','1996-09-08',7,'Bajo','Millennials',832,3,5.075,'High',2,1,1,1,1,1),('61','70','76','2002-10-10',6.5,'Bajo','Gen Z',833,3,4.925,'Medium',2,3,2,2,2,1),('47','62','66','2010-01-06',6,'Bajo','Gen Z',834,5,6.575,'High',1,1,2,2,2,4),('60','72','68','1996-03-21',5.8,'Bajo','Millennials',835,4,5.1,'High',1,2,5,2,1,1),('46','61','55','2000-07-14',4.4,'Bajo','Gen Z',836,5,6.625,'High',1,2,4,2,1,4),('77','91','88','1996-07-25',1.6,'Alto','Millennials',837,3,3.2,'Medium',1,1,3,1,1,3),('89','87','79','2009-02-03',0.8,'Alto','Gen Z',838,1,2.3,'Medium',2,3,5,1,1,2),('68','70','66','2009-05-18',7.2,'Bajo','Gen Z',839,3,4.75,'Medium',1,5,1,1,1,1),('85','90','92','1995-06-25',1.2,'Alto','Millennials',840,2,2.525,'Medium',1,4,3,1,2,2),('42','61','58','2002-01-23',7.7,'Bajo','Gen Z',841,6,6.925,'High',1,3,4,2,2,4),('93','84','90','1996-02-08',1.3,'Alto','Millennials',842,0,0,'Low',2,1,1,1,2,5),('78','90','93','2004-12-27',0.5,'Alto','Gen Z',843,3,3.2,'Medium',1,3,2,2,1,3),('49','52','51','2000-01-19',4.2,'Bajo','Gen Z',844,5,6.775,'High',2,5,1,2,2,4),('80','85','85','2009-12-04',4.7,'Medio','Gen Z',845,2,2.775,'Medium',1,5,3,1,2,2),('98','100','99','2000-08-23',0.8,'Alto','Gen Z',846,0,0,'Low',1,3,1,1,1,5),('81','81','84','2009-11-14',4.7,'Medio','Gen Z',847,1,2.65,'Medium',2,3,6,1,1,2),('71','87','82','2000-02-19',4,'Medio','Gen Z',848,2,3.25,'Medium',1,2,5,2,1,3),('48','58','52','1999-07-04',6.1,'Bajo','Gen Z',850,4,6.45,'High',1,1,3,2,1,4),('62','67','58','2003-01-15',5.3,'Bajo','Gen Z',851,3,4.975,'Medium',2,1,5,1,1,1),('76','94','87','2009-01-28',1.6,'Alto','Gen Z',852,3,3.15,'Medium',1,2,4,2,2,3),('56','68','70','2005-08-11',5.8,'Bajo','Gen Z',853,6,6.4,'High',1,1,4,2,2,4),('73','78','72','1995-05-28',4.8,'Medio','Millennials',854,3,3.625,'Medium',2,1,4,1,2,3),('65','69','76','1998-09-23',2,'Medio','Gen Z',855,3,4.85,'Medium',1,1,3,1,1,1),('100','100','100','2009-08-02',1.2,'Alto','Gen Z',856,0,0,'Low',2,5,2,1,2,5),('44','61','52','2003-10-01',4.3,'Bajo','Gen Z',857,4,6.475,'High',1,1,5,1,1,4),('57','77','80','2002-05-07',2.4,'Medio','Gen Z',858,5,5.95,'High',1,1,4,1,2,4),('91','96','91','2006-02-26',1.9,'Alto','Gen Z',859,0,0,'Low',2,2,1,1,2,5),('69','86','81','1998-01-20',3.2,'Medio','Gen Z',860,4,4.525,'Medium',1,3,3,2,2,1),('68','54','53','1996-07-26',6.1,'Bajo','Millennials',861,3,5.15,'High',2,2,3,1,1,1),('61','60','57','1995-11-17',6,'Bajo','Millennials',862,3,5.175,'High',1,4,1,2,1,1),('74','86','89','1997-07-14',2.7,'Medio','Gen Z',863,2,3.2,'Medium',1,1,2,2,2,3),('69','70','67','2005-11-28',7.9,'Bajo','Gen Z',864,3,4.725,'Medium',2,3,5,2,1,1),('64','60','58','1995-12-16',5.2,'Bajo','Millennials',865,3,5.1,'High',2,4,2,1,1,1),('35','53','46','2004-02-28',4.3,'Bajo','Gen Z',866,4,6.9,'High',1,1,5,2,1,4),('72','66','66','2005-01-23',5.4,'Bajo','Gen Z',867,2,3.75,'Medium',2,3,5,1,1,3),('77','82','89','2002-03-05',2.2,'Medio','Gen Z',868,2,3.225,'Medium',1,2,5,1,2,3),('54','65','65','2010-04-15',7.8,'Bajo','Gen Z',869,5,6.325,'High',1,2,4,2,1,4),('74','70','69','1995-02-27',3.9,'Medio','Millennials',870,2,3.6,'Medium',2,3,5,2,1,3),('74','64','60','2001-05-17',7,'Bajo','Gen Z',871,2,3.75,'Medium',2,5,3,1,2,3),('58','50','45','2002-10-01',4.4,'Bajo','Gen Z',872,4,6.4,'High',2,2,1,1,1,4),('64','56','52','2000-07-19',4.2,'Bajo','Gen Z',873,4,5.4,'High',2,5,4,2,1,1),('60','64','74','1999-07-27',5.6,'Bajo','Gen Z',874,4,5.3,'High',1,1,5,1,2,1),('65','61','71','1995-10-20',7.8,'Bajo','Millennials',875,3,5.05,'High',1,3,5,2,2,1),('96','96','99','1996-02-22',0.5,'Alto','Millennials',876,0,0,'Low',1,1,4,1,2,5),('73','64','57','2005-02-28',5,'Bajo','Gen Z',877,3,3.975,'Medium',2,5,5,1,1,3),('76','76','74','2000-04-05',3.7,'Medio','Gen Z',878,2,3.4,'Medium',1,1,5,1,1,3),('75','82','79','2008-05-17',3.6,'Medio','Gen Z',879,3,3.475,'Medium',1,4,5,1,2,3),('91','73','80','2004-03-03',2.9,'Medio','Gen Z',880,0,0,'Low',2,5,4,2,2,5),('58','57','53','2002-02-26',6.2,'Bajo','Gen Z',881,5,6.425,'High',2,2,4,2,2,4),('62','72','70','1997-02-17',5.3,'Bajo','Gen Z',882,3,4.85,'Medium',1,1,1,2,1,1),('55','59','59','1999-03-21',6.2,'Bajo','Gen Z',883,5,6.45,'High',2,3,3,2,2,4),('66','77','73','1999-02-09',2.1,'Medio','Gen Z',884,4,4.825,'Medium',1,1,4,1,1,1),('39','52','46','1995-09-16',7,'Bajo','Millennials',885,6,7.225,'High',1,3,5,2,1,4),('74','90','88','2000-02-10',2.2,'Medio','Gen Z',886,3,3.3,'Medium',1,2,3,2,2,3),('64','58','51','1998-05-05',5.3,'Bajo','Gen Z',887,4,5.35,'High',2,1,3,1,1,1),('50','48','42','2003-05-01',5.1,'Bajo','Gen Z',888,5,6.85,'High',2,1,5,1,1,4),('46','43','44','2006-12-22',7.1,'Bajo','Gen Z',889,6,7.275,'High',2,5,4,2,2,4),('47','43','41','2009-12-02',5.2,'Bajo','Gen Z',890,6,7.25,'High',2,2,1,1,1,4),('48','56','51','2009-04-21',4.3,'Bajo','Gen Z',891,4,6.5,'High',1,1,3,2,1,4),('81','74','71','2002-08-16',3.7,'Medio','Gen Z',892,1,2.825,'Medium',2,5,1,1,2,2),('67','74','70','2003-08-27',3.3,'Medio','Gen Z',893,3,4.675,'Medium',2,1,1,2,2,1),('65','75','77','1996-09-16',2.5,'Medio','Millennials',894,4,4.9,'Medium',1,5,4,1,2,1),('23','44','36','2004-03-11',5.8,'Bajo','Gen Z',895,6,7.825,'High',1,2,5,2,2,4),('62','57','62','2007-02-17',6.2,'Bajo','Gen Z',896,4,5.425,'High',2,3,1,2,1,1),('74','77','76','2008-10-24',2,'Medio','Gen Z',897,2,3.425,'Medium',2,2,1,2,2,3),('61','71','73','2004-12-04',7.2,'Bajo','Gen Z',898,3,4.9,'Medium',2,3,4,2,2,1),('40','65','64','2007-07-06',5.4,'Bajo','Gen Z',899,4,6.475,'High',1,3,3,2,2,4),('70','75','74','2002-07-26',3.9,'Medio','Gen Z',900,3,3.775,'Medium',2,1,2,2,2,3),('68','51','57','1998-07-25',5.9,'Bajo','Gen Z',901,4,5.425,'High',2,5,3,1,2,1),('98','87','90','2008-12-11',0.9,'Alto','Gen Z',902,0,0,'Low',2,1,4,1,2,5),('73','92','84','1999-01-06',3.1,'Medio','Gen Z',903,2,3.075,'Medium',1,3,5,2,1,3),('90','85','84','2002-05-28',1.9,'Alto','Gen Z',904,0,0,'Low',2,5,6,1,1,5),('70','63','58','1999-10-19',7.5,'Bajo','Gen Z',905,2,3.875,'Medium',2,3,1,2,1,3),('53','39','37','1996-04-27',4.4,'Bajo','Millennials',906,5,7,'High',2,1,1,1,1,4),('67','57','53','1999-06-11',7.3,'Bajo','Gen Z',907,4,5.3,'High',2,4,4,1,1,1),('68','77','80','1996-01-06',4.6,'Medio','Millennials',908,3,4.575,'Medium',1,2,4,2,2,1),('91','85','85','1999-02-06',1.1,'Alto','Gen Z',909,0,0,'Low',2,1,6,1,2,5),('57','58','57','2005-06-28',5.8,'Bajo','Gen Z',910,4,6.225,'High',1,5,5,2,1,4),('55','46','43','1996-02-08',4.8,'Bajo','Millennials',911,4,6.575,'High',2,4,3,2,1,4),('64','54','50','1998-06-15',6.3,'Bajo','Gen Z',912,4,5.45,'High',2,3,5,1,1,1),('85','81','85','2005-03-27',4.3,'Medio','Gen Z',913,2,2.75,'Medium',2,3,1,1,2,2),('87','89','94','2004-11-28',1.8,'Alto','Gen Z',914,1,2.3,'Medium',1,1,1,1,2,2),('59','72','68','2001-01-19',6.2,'Bajo','Gen Z',915,6,6.225,'High',1,1,5,1,1,4),('77','68','69','1995-03-23',3,'Medio','Millennials',916,2,3.575,'Medium',2,3,3,1,2,3),('55','47','44','2000-09-20',5.8,'Bajo','Gen Z',918,4,6.55,'High',2,3,3,1,1,4),('71','67','67','2010-03-01',5.9,'Bajo','Gen Z',919,2,3.75,'Medium',2,1,6,1,1,3),('53','58','57','1998-12-19',6.3,'Bajo','Gen Z',920,6,6.725,'High',1,5,1,2,1,4),('67','57','59','2003-11-24',4.8,'Bajo','Gen Z',921,3,5.1,'High',2,1,6,1,1,1),('61','68','63','2003-05-28',4.9,'Bajo','Gen Z',922,3,4.975,'Medium',1,4,5,1,1,1),('87','85','93','1995-12-28',1.3,'Alto','Millennials',923,2,2.6,'Medium',1,5,1,1,1,2),('82','67','61','2003-01-24',2,'Medio','Gen Z',924,2,3.175,'Medium',2,5,3,1,1,2),('72','66','72','2008-08-03',2.4,'Medio','Gen Z',925,2,3.75,'Medium',2,1,6,2,2,3),('62','64','55','1997-10-21',4.1,'Bajo','Gen Z',926,4,5.25,'High',2,1,3,1,1,1),('78','91','96','1999-06-16',1.1,'Alto','Gen Z',927,3,3.175,'Medium',1,3,6,1,1,3),('81','66','64','2002-10-06',2.9,'Medio','Gen Z',928,2,3.225,'Medium',2,1,5,1,1,2),('97','97','96','2000-07-10',1.3,'Alto','Gen Z',929,0,0,'Low',1,2,2,1,1,5),('61','62','61','2005-10-27',5.7,'Bajo','Gen Z',930,3,5.125,'High',2,4,3,2,2,1),('58','68','61','2008-08-26',6.4,'Bajo','Gen Z',931,6,6.35,'High',1,2,5,1,1,4),('54','61','58','2000-06-09',5.6,'Bajo','Gen Z',932,4,6.225,'High',1,1,4,1,1,4),('82','82','80','1995-10-09',3.7,'Medio','Millennials',933,1,2.6,'Medium',2,2,5,1,1,2),('49','58','60','2002-06-25',7.6,'Bajo','Gen Z',934,6,6.825,'High',1,3,1,2,1,4),('49','50','52','1998-02-02',6,'Bajo','Gen Z',935,6,7.025,'High',2,2,3,2,2,4),('57','75','73','1995-10-28',7,'Bajo','Millennials',936,6,6.2,'High',1,5,5,2,2,4),('75','68','65','2010-12-28',8,'Bajo','Gen Z',937,3,3.825,'Medium',2,2,1,2,1,3),('94','73','71','2001-10-19',2.4,'Medio','Gen Z',938,0,0,'Low',2,5,5,1,1,5),('65','79','81','2001-10-17',4.9,'Medio','Gen Z',939,3,4.6,'Medium',1,1,2,1,1,1),('75','77','83','1996-06-16',3.8,'Medio','Millennials',940,3,3.6,'Medium',1,3,1,1,2,3),('74','74','72','2005-04-19',2.4,'Medio','Gen Z',941,2,3.5,'Medium',1,5,3,2,1,3),('58','52','54','2003-07-26',6.6,'Bajo','Gen Z',942,4,6.35,'High',2,1,5,1,2,4),('52','49','46','2006-07-18',5.6,'Bajo','Gen Z',943,4,6.575,'High',2,2,5,1,2,4),('62','69','69','2010-11-10',7.4,'Bajo','Gen Z',944,4,5.125,'High',1,1,1,1,1,1),('72','57','62','1998-10-06',4.4,'Bajo','Gen Z',945,3,4.175,'Medium',2,5,4,1,1,3),('87','73','72','1999-09-07',4.4,'Medio','Gen Z',946,1,2.7,'Medium',2,1,4,2,1,2),('84','87','81','1999-09-05',2.9,'Medio','Gen Z',947,1,2.425,'Medium',2,1,1,1,1,2),('53','62','53','2010-04-05',7.5,'Bajo','Gen Z',948,5,6.425,'High',1,1,4,1,1,4),('81','86','87','1997-09-14',4.5,'Medio','Gen Z',949,1,2.525,'Medium',1,5,6,2,1,2),('92','100','100','2004-12-26',1.9,'Alto','Gen Z',950,0,0,'Low',1,3,6,1,1,5),('39','42','38','2006-11-27',5.8,'Bajo','Gen Z',951,5,7.275,'High',2,3,2,2,2,4),('71','71','80','1995-03-03',2.2,'Medio','Millennials',952,2,3.65,'Medium',1,1,1,1,2,3),('97','93','91','2000-01-13',1.2,'Alto','Gen Z',953,0,0,'Low',2,1,4,1,1,5),('45','63','59','1997-06-12',4.5,'Bajo','Gen Z',954,4,6.4,'High',1,3,5,1,1,4),('75','81','71','2010-09-13',3.1,'Medio','Gen Z',955,3,3.5,'Medium',2,1,5,1,1,3),('82','82','88','1999-05-23',4.6,'Medio','Gen Z',956,2,2.8,'Medium',2,3,1,1,2,2),('56','58','64','1996-04-21',6.5,'Bajo','Millennials',957,6,6.65,'High',1,4,1,1,1,4),('59','53','52','2003-03-22',6.9,'Bajo','Gen Z',958,6,6.7,'High',2,1,5,2,1,4),('48','54','53','1996-02-24',4.6,'Bajo','Millennials',959,4,6.55,'High',1,3,3,2,1,4),('100','100','100','1998-05-04',1.1,'Alto','Gen Z',960,0,0,'Low',1,5,4,1,1,5),('61','42','41','1995-05-21',5.6,'Bajo','Millennials',961,4,5.825,'High',2,2,4,1,1,1),('65','76','75','1995-08-05',4.8,'Medio','Millennials',962,3,4.675,'Medium',1,1,3,2,2,1),('72','57','58','2002-07-16',4,'Bajo','Gen Z',963,2,3.975,'Medium',2,3,1,1,1,3),('62','70','72','2008-06-21',7.6,'Bajo','Gen Z',964,4,5.1,'High',1,3,1,1,1,1),('66','68','64','1997-10-02',5.8,'Bajo','Gen Z',965,3,4.85,'Medium',2,4,3,1,2,1),('63','63','60','2010-12-06',6.8,'Bajo','Gen Z',966,4,5.25,'High',2,1,1,1,1,1),('68','76','67','2000-05-19',5,'Medio','Gen Z',967,3,4.6,'Medium',1,5,4,1,1,1),('75','84','80','2008-01-14',4,'Medio','Gen Z',968,2,3.225,'Medium',1,2,2,1,1,3),('89','100','100','1998-05-19',1.6,'Alto','Gen Z',969,1,1.975,'Low',1,3,2,1,1,2),('78','74','72','2000-06-15',2.3,'Medio','Gen Z',970,2,3.4,'Medium',2,5,4,2,2,3),('78','72','69','1997-07-12',4.8,'Medio','Gen Z',971,3,3.65,'Medium',2,1,3,1,2,3),('53','50','60','1999-07-21',6.4,'Bajo','Gen Z',972,5,6.725,'High',1,4,5,2,2,4),('49','51','51','1998-11-17',5.1,'Bajo','Gen Z',973,4,6.6,'High',2,1,4,2,1,4),('49','65','61','2007-10-03',5.3,'Bajo','Gen Z',974,4,6.25,'High',1,3,1,2,1,4),('54','63','67','1998-03-14',6.5,'Bajo','Gen Z',975,4,6.175,'High',1,4,1,1,1,4),('64','82','77','1996-06-19',2.9,'Medio','Millennials',976,4,4.75,'Medium',1,1,1,1,2,1),('60','62','60','2000-01-19',4.5,'Bajo','Gen Z',977,3,5.15,'High',2,2,1,2,2,1),('62','65','58','2009-06-21',7,'Bajo','Gen Z',978,4,5.225,'High',2,1,4,1,1,1),('55','41','48','2007-07-03',5.9,'Bajo','Gen Z',979,5,6.9,'High',2,3,5,1,2,4),('91','95','94','2003-12-15',1.9,'Alto','Gen Z',980,0,0,'Low',1,1,4,1,1,5),('8','24','23','1997-01-14',5.9,'Bajo','Gen Z',981,6,8.7,'High',1,2,5,2,1,4),('81','78','78','2002-02-25',3.1,'Medio','Gen Z',982,2,2.925,'Medium',2,3,3,1,1,2),('79','85','86','2002-03-05',2.9,'Medio','Gen Z',983,2,3.1,'Medium',2,2,3,1,2,3),('78','87','91','2001-11-25',0.9,'Alto','Gen Z',984,2,3.075,'Medium',1,4,1,1,2,3),('74','75','82','1996-02-05',4.5,'Medio','Millennials',985,3,3.675,'Medium',1,1,3,1,1,3),('57','51','54','1997-10-01',4.9,'Bajo','Gen Z',986,6,6.8,'High',2,4,5,1,1,4),('40','59','51','2000-11-02',7.2,'Bajo','Gen Z',987,5,6.825,'High',1,1,4,1,1,4),('81','75','76','1997-10-19',4.5,'Medio','Gen Z',988,2,3,'Medium',2,5,3,1,2,2),('44','45','45','2007-09-19',4.5,'Bajo','Gen Z',989,4,6.875,'High',1,4,3,2,1,4),('67','86','83','2010-05-23',3.3,'Medio','Gen Z',990,4,4.575,'Medium',1,3,1,2,2,1),('86','81','75','1997-11-10',3,'Medio','Gen Z',991,2,2.725,'Medium',2,5,5,2,2,2),('65','82','78','2001-02-01',3.9,'Medio','Gen Z',992,3,4.525,'Medium',1,2,3,1,2,1),('55','76','76','2002-11-08',7.2,'Bajo','Gen Z',993,6,6.225,'High',1,3,4,2,1,4),('62','72','74','2007-09-24',5.4,'Bajo','Gen Z',994,3,4.85,'Medium',1,3,2,2,1,1),('63','63','62','2006-04-24',4.5,'Bajo','Gen Z',995,3,5.05,'High',2,4,5,1,1,1),('88','99','95','2001-10-21',0.8,'Alto','Gen Z',996,1,2.025,'Medium',1,5,6,1,2,2),('62','55','55','1995-12-07',7,'Bajo','Millennials',997,4,5.475,'High',2,1,5,2,1,1),('59','71','65','2000-02-28',5.4,'Bajo','Gen Z',998,4,5.85,'High',1,1,5,2,2,4),('68','78','77','2000-06-10',4.5,'Medio','Gen Z',999,3,4.55,'Medium',1,3,1,1,2,1),('77','86','86','1997-01-23',2.1,'Medio','Gen Z',1000,3,3.325,'Medium',1,3,1,2,1,3);
/*!40000 ALTER TABLE `students_performance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test_preparation_course`
--

DROP TABLE IF EXISTS `test_preparation_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `test_preparation_course` (
  `id` int NOT NULL AUTO_INCREMENT,
  `course_name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test_preparation_course`
--

LOCK TABLES `test_preparation_course` WRITE;
/*!40000 ALTER TABLE `test_preparation_course` DISABLE KEYS */;
INSERT INTO `test_preparation_course` VALUES (1,'none'),(2,'completed');
/*!40000 ALTER TABLE `test_preparation_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'git'
--
/*!50003 DROP PROCEDURE IF EXISTS `calculate_social_media_avg_by_gender` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `calculate_social_media_avg_by_gender`()
BEGIN
    SELECT 
        gender AS 'Género',
        ROUND(AVG(hours_on_social_media), 2) AS 'Promedio de Uso de Redes Sociales (horas)'
    FROM 
        student_data
    GROUP BY 
        gender
    ORDER BY 
        gender;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `FilterPerformanceByImpact` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `FilterPerformanceByImpact`(
    IN min_math INT,
    IN min_reading INT,
    IN min_impact FLOAT
)
BEGIN
    SELECT 
        id, 
        math_score, 
        reading_score, 
        impact_score
    FROM students_performance
    WHERE math_score >= min_math 
      AND reading_score >= min_reading 
      AND impact_score >= min_impact;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `identify_students_at_risk` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `identify_students_at_risk`()
BEGIN
    SELECT 
        student_id AS 'ID Estudiante',
        name AS 'Nombre',
        academic_performance AS 'Rendimiento Académico',
        hours_on_social_media AS 'Horas en Redes Sociales',
        CASE 
            WHEN academic_performance < 50 AND hours_on_social_media > 5 THEN 'Alto Riesgo'
            WHEN academic_performance < 70 AND hours_on_social_media > 4 THEN 'Moderado'
            ELSE 'Bajo'
        END AS 'Nivel de Riesgo'
    FROM 
        student_data
    WHERE 
        academic_performance < 70
    ORDER BY 
        academic_performance ASC, hours_on_social_media DESC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `avg_performance_by_gender`
--

/*!50001 DROP VIEW IF EXISTS `avg_performance_by_gender`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `avg_performance_by_gender` AS select `g`.`gender_name` AS `gender`,avg(`sp`.`math_score`) AS `avg_math_score`,avg(`sp`.`reading_score`) AS `avg_reading_score`,avg(((`sp`.`math_score` + `sp`.`reading_score`) / 2)) AS `avg_overall_score` from (`students_performance` `sp` join `gender` `g` on((`sp`.`gender_id` = `g`.`id`))) group by `g`.`gender_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `avg_performance_by_lunch`
--

/*!50001 DROP VIEW IF EXISTS `avg_performance_by_lunch`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `avg_performance_by_lunch` AS select `l`.`lunch_type` AS `lunch`,avg(`sp`.`math_score`) AS `avg_math_score`,avg(`sp`.`reading_score`) AS `avg_reading_score`,avg(((`sp`.`math_score` + `sp`.`reading_score`) / 2)) AS `avg_overall_score` from (`students_performance` `sp` join `lunch` `l` on((`sp`.`lunch_id` = `l`.`id`))) group by `l`.`lunch_type` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `avg_performance_by_parental_education`
--

/*!50001 DROP VIEW IF EXISTS `avg_performance_by_parental_education`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `avg_performance_by_parental_education` AS select `pe`.`education_level_name` AS `parental_education_level`,avg(`sp`.`math_score`) AS `avg_math_score`,avg(`sp`.`reading_score`) AS `avg_reading_score`,avg(((`sp`.`math_score` + `sp`.`reading_score`) / 2)) AS `avg_overall_score` from (`students_performance` `sp` join `parental_level_of_education` `pe` on((`sp`.`parental_level_of_education_id` = `pe`.`id`))) group by `pe`.`education_level_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `avg_performance_by_social_media`
--

/*!50001 DROP VIEW IF EXISTS `avg_performance_by_social_media`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `avg_performance_by_social_media` AS select `sm`.`platform_name` AS `social_media_platform`,avg(`sp`.`math_score`) AS `avg_math_score`,avg(`sp`.`reading_score`) AS `avg_reading_score`,avg(((`sp`.`math_score` + `sp`.`reading_score`) / 2)) AS `avg_overall_score` from (`students_performance` `sp` join `social_media_platforms` `sm` on((`sp`.`social_media_platforms_id` = `sm`.`id`))) group by `sm`.`platform_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `avg_performance_by_test_preparation_course`
--

/*!50001 DROP VIEW IF EXISTS `avg_performance_by_test_preparation_course`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `avg_performance_by_test_preparation_course` AS select `t`.`course_name` AS `test_preparation_course`,avg(`sp`.`math_score`) AS `avg_math_score`,avg(`sp`.`reading_score`) AS `avg_reading_score`,avg(((`sp`.`math_score` + `sp`.`reading_score`) / 2)) AS `avg_overall_score` from (`students_performance` `sp` join `test_preparation_course` `t` on((`sp`.`test_preparation_course_id` = `t`.`id`))) group by `t`.`course_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `avg_performance_by_usage_hours`
--

/*!50001 DROP VIEW IF EXISTS `avg_performance_by_usage_hours`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `avg_performance_by_usage_hours` AS select `students_performance`.`usage_hours` AS `usage_hours`,round(avg(`students_performance`.`math_score`),2) AS `avg_math_score`,round(avg(`students_performance`.`reading_score`),2) AS `avg_reading_score` from `students_performance` group by `students_performance`.`usage_hours` order by `students_performance`.`usage_hours` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `low_performance_students`
--

/*!50001 DROP VIEW IF EXISTS `low_performance_students`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `low_performance_students` AS select `students_performance`.`id` AS `id`,`students_performance`.`math_score` AS `math_score`,`students_performance`.`reading_score` AS `reading_score`,`students_performance`.`writing_score` AS `writing_score`,(((`students_performance`.`math_score` + `students_performance`.`reading_score`) + `students_performance`.`writing_score`) / 3) AS `avg_score` from `students_performance` where ((`students_performance`.`math_score` < 50) or (`students_performance`.`reading_score` < 50) or (`students_performance`.`writing_score` < 50)) order by (((`students_performance`.`math_score` + `students_performance`.`reading_score`) + `students_performance`.`writing_score`) / 3) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `performance_by_impact_category`
--

/*!50001 DROP VIEW IF EXISTS `performance_by_impact_category`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `performance_by_impact_category` AS select `students_performance`.`impact_category` AS `impact_category`,count(0) AS `student_count`,avg(`students_performance`.`math_score`) AS `avg_math_score`,avg(`students_performance`.`reading_score`) AS `avg_reading_score` from `students_performance` group by `students_performance`.`impact_category` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `performance_by_usage_range`
--

/*!50001 DROP VIEW IF EXISTS `performance_by_usage_range`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `performance_by_usage_range` AS select (case when (`students_performance`.`usage_hours` between 0 and 1) then '0-1 hours' when (`students_performance`.`usage_hours` between 2 and 3) then '2-3 hours' when (`students_performance`.`usage_hours` between 4 and 5) then '4-5 hours' else '6+ hours' end) AS `usage_range`,round(avg(`students_performance`.`math_score`),2) AS `avg_math_score`,round(avg(`students_performance`.`reading_score`),2) AS `avg_reading_score`,count(0) AS `student_count` from `students_performance` group by `usage_range` order by `usage_range` */;
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

-- Dump completed on 2024-12-24  9:53:26
-- Dump completed on 2024-12-23 23:24:40
