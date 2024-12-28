CREACION DE VISTAS

-- Vista: Rendimiento promedio por género
CREATE VIEW avg_performance_by_gender AS
SELECT 
    g.gender_name AS gender,
    AVG(sp.math_score) AS avg_math_score,
    AVG(sp.reading_score) AS avg_reading_score,
    AVG((sp.math_score + sp.reading_score) / 2) AS avg_overall_score
FROM students_performance sp
JOIN gender g ON sp.gender_id = g.id
GROUP BY g.gender_name;


-- Vista: Rendimiento promedio por redes sociales
CREATE VIEW avg_performance_by_social_media AS
SELECT 
    sm.platform_name AS social_media_platform,
    AVG(sp.math_score) AS avg_math_score,
    AVG(sp.reading_score) AS avg_reading_score,
    AVG((sp.math_score + sp.reading_score) / 2) AS avg_overall_score
FROM students_performance sp
JOIN social_media_platforms sm ON sp.social_media_platforms_id = sm.id
GROUP BY sm.platform_name;


-- Vista: Rendimiento promedio por nivel educativo de los padres
CREATE VIEW avg_performance_by_parental_education AS
SELECT 
    pe.education_level_name AS parental_education_level,
    AVG(sp.math_score) AS avg_math_score,
    AVG(sp.reading_score) AS avg_reading_score,
    AVG((sp.math_score + sp.reading_score) / 2) AS avg_overall_score
FROM students_performance sp
JOIN parental_level_of_education pe ON sp.parental_level_of_education_id = pe.id
GROUP BY pe.education_level_name;

Rendimiento Promedio por Tipo de Almuerzo
CREATE VIEW avg_performance_by_lunch AS
SELECT 
    l.lunch_type AS lunch,
    AVG(sp.math_score) AS avg_math_score,
    AVG(sp.reading_score) AS avg_reading_score,
    AVG((sp.math_score + sp.reading_score) / 2) AS avg_overall_score
FROM students_performance sp
JOIN lunch l ON sp.lunch_id = l.id
GROUP BY l.lunch_type;

Rendimiento Promedio por Curso de Preparación de Pruebas
CREATE VIEW avg_performance_by_test_preparation_course AS
SELECT 
    t.course_name AS test_preparation_course,
    AVG(sp.math_score) AS avg_math_score,
    AVG(sp.reading_score) AS avg_reading_score,
    AVG((sp.math_score + sp.reading_score) / 2) AS avg_overall_score
FROM students_performance sp
JOIN test_preparation_course t ON sp.test_preparation_course_id = t.id
GROUP BY t.course_name;

Creamos una vista para ver como se comportan las categorias
    
CREATE VIEW performance_by_impact_category AS
SELECT 
    impact_category,
    COUNT(*) AS student_count,
    AVG(math_score) AS avg_math_score,
    AVG(reading_score) AS avg_reading_score
FROM students_performance
GROUP BY impact_category;

Crear una vista para ver los estudiantes con rendimiento critico

CREATE VIEW low_performance_students AS
SELECT 
    id, 
    math_score, 
    reading_score, 
    writing_score,
    (math_score + reading_score + writing_score) / 3 AS avg_score
FROM students_performance
WHERE math_score < 50 OR reading_score < 50 OR writing_score < 50
ORDER BY avg_score;

Esta vista resume el rendimiento promedio de los estudiantes según las horas de uso de redes sociales, proporcionando un análisis más claro por hora.
    
CREATE VIEW avg_performance_by_usage_hours AS
SELECT 
    usage_hours, 
    ROUND(AVG(math_score), 2) AS avg_math_score,
    ROUND(AVG(reading_score), 2) AS avg_reading_score
FROM students_performance
GROUP BY usage_hours
ORDER BY usage_hours;


Es útil para realizar análisis más segmentados sobre las horas de uso
CREATE VIEW performance_by_usage_range AS
SELECT 
    CASE 
        WHEN usage_hours BETWEEN 0 AND 1 THEN '0-1 hours'
        WHEN usage_hours BETWEEN 2 AND 3 THEN '2-3 hours'
        WHEN usage_hours BETWEEN 4 AND 5 THEN '4-5 hours'
        ELSE '6+ hours'
    END AS usage_range,
    ROUND(AVG(math_score), 2) AS avg_math_score,
    ROUND(AVG(reading_score), 2) AS avg_reading_score,
    COUNT(*) AS student_count
FROM students_performance
GROUP BY usage_range
ORDER BY usage_range;



