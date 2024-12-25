CREATE VIEW TotalStudents AS
SELECT COUNT(DISTINCT student_id) AS total_students
FROM student_sleep_patterns;

