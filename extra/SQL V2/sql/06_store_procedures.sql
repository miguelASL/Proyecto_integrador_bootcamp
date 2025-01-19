Creamos un Stored Procedure que permita filtrar estudiantes con puntajes específicos o impact_score alto.

DELIMITER //

CREATE PROCEDURE FilterPerformanceByImpact(
    IN min_math INT,
    IN min_reading INT,
    IN min_impact FLOAT
)
BEGIN
    SELECT 
        id, 
        math_score, 
        reading_score, 
        impact_score
    FROM students_performance
    WHERE math_score >= min_math 
      AND reading_score >= min_reading 
      AND impact_score >= min_impact;
END //

DELIMITER ;

Promedio de Uso de Redes Sociales por Género:** Calcula el tiempo promedio en redes sociales desglosado por género.

DELIMITER //

CREATE PROCEDURE calculate_social_media_avg_by_gender()
BEGIN
    SELECT 
        gender AS 'Género',
        ROUND(AVG(hours_on_social_media), 2) AS 'Promedio de Uso de Redes Sociales (horas)'
    FROM 
        student_data
    GROUP BY 
        gender
    ORDER BY 
        gender;
END //

DELIMITER ;

Detección de Estudiantes en Riesgo Académico:** Identifica estudiantes con bajo rendimiento y clasifica su nivel de riesgo según el impacto de las redes sociales.

    DELIMITER $$

CREATE PROCEDURE identify_students_at_risk()
BEGIN
    SELECT 
        student_id AS 'ID Estudiante',
        name AS 'Nombre',
        academic_performance AS 'Rendimiento Académico',
        hours_on_social_media AS 'Horas en Redes Sociales',
        CASE 
            WHEN academic_performance < 50 AND hours_on_social_media > 5 THEN 'Alto Riesgo'
            WHEN academic_performance < 70 AND hours_on_social_media > 4 THEN 'Moderado'
            ELSE 'Bajo'
        END AS 'Nivel de Riesgo'
    FROM 
        student_data
    WHERE 
        academic_performance < 70
    ORDER BY 
        academic_performance ASC, hours_on_social_media DESC;
END $$

DELIMITER ;


