DELIMITER //

CREATE PROCEDURE sp_CompareLifestyleWithAverage(
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
END //

DELIMITER ;

