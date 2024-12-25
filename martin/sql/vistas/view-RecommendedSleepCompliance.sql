-- Porcentaje de estudiantes que cumplen con el sueño recomendado
CREATE VIEW RecommendedSleepCompliance AS
SELECT 
    (COUNT(CASE WHEN Sleep_Duration BETWEEN 7 AND 9 THEN 1 END) * 100.0 / COUNT(*)) AS percentage_compliant
FROM student_sleep_patterns;
