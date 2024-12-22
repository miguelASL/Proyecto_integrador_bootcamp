-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: sleeping_patterns
-- ------------------------------------------------------
-- Server version	9.0.0

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
-- Temporary view structure for view `averagesleepduration`
--

DROP TABLE IF EXISTS `averagesleepduration`;
/*!50001 DROP VIEW IF EXISTS `averagesleepduration`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `averagesleepduration` AS SELECT 
 1 AS `avg_sleep_duration`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `avglifestylestats`
--

DROP TABLE IF EXISTS `avglifestylestats`;
/*!50001 DROP VIEW IF EXISTS `avglifestylestats`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `avglifestylestats` AS SELECT 
 1 AS `avg_study_hours`,
 1 AS `avg_screen_time`,
 1 AS `avg_caffeine_intake`,
 1 AS `avg_physical_activity`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `balancedhabitsranking`
--

DROP TABLE IF EXISTS `balancedhabitsranking`;
/*!50001 DROP VIEW IF EXISTS `balancedhabitsranking`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `balancedhabitsranking` AS SELECT 
 1 AS `Student_ID`,
 1 AS `study_deviation`,
 1 AS `Screen_Time`,
 1 AS `Caffeine_Intake`,
 1 AS `Physical_Activity`,
 1 AS `balance_score`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `extremehabits`
--

DROP TABLE IF EXISTS `extremehabits`;
/*!50001 DROP VIEW IF EXISTS `extremehabits`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `extremehabits` AS SELECT 
 1 AS `Student_ID`,
 1 AS `extreme_habit`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `lifestyle`
--

DROP TABLE IF EXISTS `lifestyle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lifestyle` (
  `Lifestyle_ID` int NOT NULL AUTO_INCREMENT,
  `Student_ID` int DEFAULT NULL,
  `Study_Hours` float DEFAULT NULL,
  `Screen_Time` float DEFAULT NULL,
  `Caffeine_Intake` float DEFAULT NULL,
  `Physical_Activity` float DEFAULT NULL,
  PRIMARY KEY (`Lifestyle_ID`),
  KEY `Student_ID` (`Student_ID`),
  CONSTRAINT `lifestyle_ibfk_1` FOREIGN KEY (`Student_ID`) REFERENCES `students` (`Student_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=501 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary view structure for view `minmaxsleepduration`
--

DROP TABLE IF EXISTS `minmaxsleepduration`;
/*!50001 DROP VIEW IF EXISTS `minmaxsleepduration`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `minmaxsleepduration` AS SELECT 
 1 AS `min_sleep_duration`,
 1 AS `max_sleep_duration`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `minmaxsleepdurationwithstudents`
--

DROP TABLE IF EXISTS `minmaxsleepdurationwithstudents`;
/*!50001 DROP VIEW IF EXISTS `minmaxsleepdurationwithstudents`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `minmaxsleepdurationwithstudents` AS SELECT 
 1 AS `min_sleep_student`,
 1 AS `min_sleep_duration`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `physicalactivityvscaffeine`
--

DROP TABLE IF EXISTS `physicalactivityvscaffeine`;
/*!50001 DROP VIEW IF EXISTS `physicalactivityvscaffeine`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `physicalactivityvscaffeine` AS SELECT 
 1 AS `activity_level`,
 1 AS `avg_caffeine_intake`,
 1 AS `student_count`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `recommendedsleepcompliance`
--

DROP TABLE IF EXISTS `recommendedsleepcompliance`;
/*!50001 DROP VIEW IF EXISTS `recommendedsleepcompliance`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `recommendedsleepcompliance` AS SELECT 
 1 AS `percentage_compliant`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `sleep_patterns`
--

DROP TABLE IF EXISTS `sleep_patterns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sleep_patterns` (
  `Pattern_ID` int NOT NULL AUTO_INCREMENT,
  `Student_ID` int DEFAULT NULL,
  `Sleep_Duration` float DEFAULT NULL,
  `Sleep_Quality` int DEFAULT NULL,
  `Weekday_Sleep_Start` time DEFAULT NULL,
  `Weekday_Sleep_End` time DEFAULT NULL,
  `Weekend_Sleep_Start` time DEFAULT NULL,
  `Weekend_Sleep_End` time DEFAULT NULL,
  PRIMARY KEY (`Pattern_ID`),
  KEY `Student_ID` (`Student_ID`),
  CONSTRAINT `sleep_patterns_ibfk_1` FOREIGN KEY (`Student_ID`) REFERENCES `students` (`Student_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=501 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary view structure for view `sleepstatsbyage`
--

DROP TABLE IF EXISTS `sleepstatsbyage`;
/*!50001 DROP VIEW IF EXISTS `sleepstatsbyage`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `sleepstatsbyage` AS SELECT 
 1 AS `Age`,
 1 AS `avg_sleep_duration`,
 1 AS `min_sleep_duration`,
 1 AS `max_sleep_duration`,
 1 AS `total_students`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `student_sleep_patterns`
--

DROP TABLE IF EXISTS `student_sleep_patterns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_sleep_patterns` (
  `Student_ID` int DEFAULT NULL,
  `Age` int DEFAULT NULL,
  `Gender` text,
  `University_Year` text,
  `Sleep_Duration` double DEFAULT NULL,
  `Study_Hours` double DEFAULT NULL,
  `Screen_Time` double DEFAULT NULL,
  `Caffeine_Intake` int DEFAULT NULL,
  `Physical_Activity` int DEFAULT NULL,
  `Sleep_Quality` int DEFAULT NULL,
  `Weekday_Sleep_Start` double DEFAULT NULL,
  `Weekend_Sleep_Start` double DEFAULT NULL,
  `Weekday_Sleep_End` double DEFAULT NULL,
  `Weekend_Sleep_End` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `Student_ID` int NOT NULL,
  `Age` int DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `University_Year` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Student_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary view structure for view `studyvsscreentime`
--

DROP TABLE IF EXISTS `studyvsscreentime`;
/*!50001 DROP VIEW IF EXISTS `studyvsscreentime`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `studyvsscreentime` AS SELECT 
 1 AS `screen_time_category`,
 1 AS `avg_study_hours`,
 1 AS `student_count`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `totalstudents`
--

DROP TABLE IF EXISTS `totalstudents`;
/*!50001 DROP VIEW IF EXISTS `totalstudents`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `totalstudents` AS SELECT 
 1 AS `total_students`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping routines for database 'sleeping_patterns'
--
/*!50003 DROP PROCEDURE IF EXISTS `sp_CompareLifestyleWithAverage` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_CompareLifestyleWithAverage`(
    IN student_id INT
)
BEGIN
    -- Datos del estudiante específico
    SELECT 
        Study_Hours AS Student_Study_Hours,
        Screen_Time AS Student_Screen_Time,
        Caffeine_Intake AS Student_Caffeine_Intake,
        Physical_Activity AS Student_Physical_Activity,
        Sleep_Duration AS Student_Sleep_Duration
    FROM sleeping_patterns.student_sleep_patterns
    WHERE Student_ID = student_id;

    -- Promedios generales
    SELECT 
        AVG(Study_Hours) AS Avg_Study_Hours,
        AVG(Screen_Time) AS Avg_Screen_Time,
        AVG(Caffeine_Intake) AS Avg_Caffeine_Intake,
        AVG(Physical_Activity) AS Avg_Physical_Activity,
        AVG(Sleep_Duration) AS Avg_Sleep_Duration
    FROM sleeping_patterns.student_sleep_patterns;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_GetExtremeHabits` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_GetExtremeHabits`()
BEGIN
    SELECT 
        Student_ID,
        Age,
        Sleep_Duration,
        Study_Hours,
        Screen_Time,
        Caffeine_Intake,
        Physical_Activity
    FROM sleeping_patterns.student_sleep_patterns
    WHERE Sleep_Duration < 4
       OR Sleep_Duration > 10
       OR Screen_Time > 10
       OR Caffeine_Intake > 5
       OR Physical_Activity < 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_GetHealthyHabitsRanking` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_GetHealthyHabitsRanking`()
BEGIN
    SELECT 
        Student_ID,
        Sleep_Duration,
        Physical_Activity,
        Caffeine_Intake,
        (Sleep_Duration * 2 + Physical_Activity - Caffeine_Intake * 0.5) AS Health_Score
    FROM sleeping_patterns.student_sleep_patterns
    ORDER BY Health_Score DESC
    LIMIT 10;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_GetStudentStatistics` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_GetStudentStatistics`(
    IN min_age INT,
    IN max_age INT,
    IN gender_filter TEXT
)
BEGIN
    SELECT 
        AVG(Sleep_Duration) AS Avg_Sleep_Duration,
        AVG(Study_Hours) AS Avg_Study_Hours,
        AVG(Screen_Time) AS Avg_Screen_Time,
        AVG(Caffeine_Intake) AS Avg_Caffeine_Intake,
        AVG(Physical_Activity) AS Avg_Physical_Activity,
        AVG(Sleep_Quality) AS Avg_Sleep_Quality
    FROM sleeping_patterns.student_sleep_patterns
    WHERE Age BETWEEN min_age AND max_age
      AND (gender_filter = 'ALL' OR Gender = gender_filter);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `averagesleepduration`
--

/*!50001 DROP VIEW IF EXISTS `averagesleepduration`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `averagesleepduration` AS select avg(`student_sleep_patterns`.`Sleep_Duration`) AS `avg_sleep_duration` from `student_sleep_patterns` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `avglifestylestats`
--

/*!50001 DROP VIEW IF EXISTS `avglifestylestats`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `avglifestylestats` AS select avg(`lifestyle`.`Study_Hours`) AS `avg_study_hours`,avg(`lifestyle`.`Screen_Time`) AS `avg_screen_time`,avg(`lifestyle`.`Caffeine_Intake`) AS `avg_caffeine_intake`,avg(`lifestyle`.`Physical_Activity`) AS `avg_physical_activity` from `lifestyle` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `balancedhabitsranking`
--

/*!50001 DROP VIEW IF EXISTS `balancedhabitsranking`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `balancedhabitsranking` AS select `lifestyle`.`Student_ID` AS `Student_ID`,abs((`lifestyle`.`Study_Hours` - 5)) AS `study_deviation`,`lifestyle`.`Screen_Time` AS `Screen_Time`,`lifestyle`.`Caffeine_Intake` AS `Caffeine_Intake`,`lifestyle`.`Physical_Activity` AS `Physical_Activity`,(((abs((`lifestyle`.`Study_Hours` - 5)) + `lifestyle`.`Screen_Time`) + `lifestyle`.`Caffeine_Intake`) + abs((`lifestyle`.`Physical_Activity` - 5))) AS `balance_score` from `lifestyle` order by (((abs((`lifestyle`.`Study_Hours` - 5)) + `lifestyle`.`Screen_Time`) + `lifestyle`.`Caffeine_Intake`) + abs((`lifestyle`.`Physical_Activity` - 5))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `extremehabits`
--

/*!50001 DROP VIEW IF EXISTS `extremehabits`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `extremehabits` AS select `lifestyle`.`Student_ID` AS `Student_ID`,(case when (`lifestyle`.`Study_Hours` > 10) then 'High Study Hours' when (`lifestyle`.`Screen_Time` > 8) then 'High Screen Time' when (`lifestyle`.`Caffeine_Intake` > 5) then 'High Caffeine Intake' when (`lifestyle`.`Physical_Activity` > 10) then 'High Physical Activity' else 'Normal' end) AS `extreme_habit` from `lifestyle` where ((`lifestyle`.`Study_Hours` > 10) or (`lifestyle`.`Screen_Time` > 8) or (`lifestyle`.`Caffeine_Intake` > 5) or (`lifestyle`.`Physical_Activity` > 10)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `minmaxsleepduration`
--

/*!50001 DROP VIEW IF EXISTS `minmaxsleepduration`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `minmaxsleepduration` AS select min(`student_sleep_patterns`.`Sleep_Duration`) AS `min_sleep_duration`,max(`student_sleep_patterns`.`Sleep_Duration`) AS `max_sleep_duration` from `student_sleep_patterns` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `minmaxsleepdurationwithstudents`
--

/*!50001 DROP VIEW IF EXISTS `minmaxsleepdurationwithstudents`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `minmaxsleepdurationwithstudents` AS select `student_sleep_patterns`.`Student_ID` AS `min_sleep_student`,`student_sleep_patterns`.`Sleep_Duration` AS `min_sleep_duration` from `student_sleep_patterns` where (`student_sleep_patterns`.`Sleep_Duration` = (select min(`student_sleep_patterns`.`Sleep_Duration`) from `student_sleep_patterns`)) union all select `student_sleep_patterns`.`Student_ID` AS `max_sleep_student`,`student_sleep_patterns`.`Sleep_Duration` AS `max_sleep_duration` from `student_sleep_patterns` where (`student_sleep_patterns`.`Sleep_Duration` = (select max(`student_sleep_patterns`.`Sleep_Duration`) from `student_sleep_patterns`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `physicalactivityvscaffeine`
--

/*!50001 DROP VIEW IF EXISTS `physicalactivityvscaffeine`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `physicalactivityvscaffeine` AS select (case when (`lifestyle`.`Physical_Activity` = 0) then 'No activity' when (`lifestyle`.`Physical_Activity` between 1 and 3) then 'Low (1-3)' when (`lifestyle`.`Physical_Activity` between 4 and 7) then 'Moderate (4-7)' else 'High (>7)' end) AS `activity_level`,avg(`lifestyle`.`Caffeine_Intake`) AS `avg_caffeine_intake`,count(0) AS `student_count` from `lifestyle` group by `activity_level` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `recommendedsleepcompliance`
--

/*!50001 DROP VIEW IF EXISTS `recommendedsleepcompliance`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `recommendedsleepcompliance` AS select ((count((case when (`student_sleep_patterns`.`Sleep_Duration` between 7 and 9) then 1 end)) * 100.0) / count(0)) AS `percentage_compliant` from `student_sleep_patterns` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `sleepstatsbyage`
--

/*!50001 DROP VIEW IF EXISTS `sleepstatsbyage`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `sleepstatsbyage` AS select `student_sleep_patterns`.`Age` AS `Age`,avg(`student_sleep_patterns`.`Sleep_Duration`) AS `avg_sleep_duration`,min(`student_sleep_patterns`.`Sleep_Duration`) AS `min_sleep_duration`,max(`student_sleep_patterns`.`Sleep_Duration`) AS `max_sleep_duration`,count(`student_sleep_patterns`.`Student_ID`) AS `total_students` from `student_sleep_patterns` group by `student_sleep_patterns`.`Age` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `studyvsscreentime`
--

/*!50001 DROP VIEW IF EXISTS `studyvsscreentime`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `studyvsscreentime` AS select (case when (`lifestyle`.`Screen_Time` < 2) then 'Low (<2h)' when (`lifestyle`.`Screen_Time` between 2 and 5) then 'Moderate (2-5h)' else 'High (>5h)' end) AS `screen_time_category`,avg(`lifestyle`.`Study_Hours`) AS `avg_study_hours`,count(0) AS `student_count` from `lifestyle` group by `screen_time_category` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `totalstudents`
--

/*!50001 DROP VIEW IF EXISTS `totalstudents`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `totalstudents` AS select count(distinct `student_sleep_patterns`.`Student_ID`) AS `total_students` from `student_sleep_patterns` */;
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

-- Dump completed on 2024-12-21 17:55:48
