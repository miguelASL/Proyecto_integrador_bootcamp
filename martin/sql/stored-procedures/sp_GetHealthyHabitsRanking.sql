DELIMITER //

CREATE PROCEDURE sp_GetHealthyHabitsRanking()
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
END //

DELIMITER ;

