-- Mínimo y máximo de horas dormidas identificando los estudiantes 
CREATE VIEW MinMaxSleepDurationWithStudents AS
SELECT 
    Student_ID AS min_sleep_student,
    Sleep_Duration AS min_sleep_duration
FROM student_sleep_patterns
WHERE Sleep_Duration = (SELECT MIN(Sleep_Duration) FROM student_sleep_patterns)
UNION ALL
SELECT 
    Student_ID AS max_sleep_student,
    Sleep_Duration AS max_sleep_duration
FROM student_sleep_patterns
WHERE Sleep_Duration = (SELECT MAX(Sleep_Duration) FROM student_sleep_patterns);
