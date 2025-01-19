-- Promedio de horas dormidas
CREATE VIEW AverageSleepDuration AS
SELECT AVG(Sleep_Duration) AS avg_sleep_duration
FROM student_sleep_patterns;

