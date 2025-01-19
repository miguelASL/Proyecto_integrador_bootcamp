-- Estadísticas por grupo de edad
CREATE VIEW SleepStatsByAge AS
SELECT 
    Age,
    AVG(Sleep_Duration) AS avg_sleep_duration,
    MIN(Sleep_Duration) AS min_sleep_duration,
    MAX(Sleep_Duration) AS max_sleep_duration,
    COUNT(Student_ID) AS total_students
FROM student_sleep_patterns
GROUP BY Age;
