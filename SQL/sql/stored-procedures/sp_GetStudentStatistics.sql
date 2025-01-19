DELIMITER //

CREATE PROCEDURE sp_GetStudentStatistics(
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
END //

DELIMITER ;
