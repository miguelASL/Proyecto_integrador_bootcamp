DELIMITER //

CREATE PROCEDURE sp_GetExtremeHabits()
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
END //

DELIMITER ;
