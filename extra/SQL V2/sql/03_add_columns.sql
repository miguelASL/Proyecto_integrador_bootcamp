-- 1. Agregar nuevas columnas para analizar el uso de redes sociales y su impacto en el rendimiento.
-- Estas columnas incluyen:

--    - social_media_platforms: Las redes sociales utilizadas por cada estudiante.
--    - usage_hours: Horas promedio de uso de redes sociales por día.
--    - impact_score: Un puntaje calculado que estima el impacto del uso de redes en el rendimiento académico.
--    - ATENCION, QUIZAS TENGADS QUE DESACTIVAR EL SAFE MODE SI TE DA ERROR, ESO SE HACE CON LA SIGUIENTE SENTENCIA:

SET SQL_SAFE_UPDATES = 0;

--    - Ahora si puedo continuar.

ALTER TABLE students_performance
ADD social_media_platforms VARCHAR(255), -- Redes que usa el estudiante
ADD usage_hours INT,                    -- Horas promedio al día usando redes
ADD impact_score FLOAT;                 -- Impacto calculado en el rendimiento

-- 2. Actualizar los valores de estas columnas con lógica personalizada basada en los puntajes.
-- Asignamos plataformas sociales y horas de uso en función del rendimiento en matemáticas.

UPDATE students_performance
SET 
    social_media_platforms = CASE 
        WHEN math_score >= 90 THEN 'No Social Media' 
        WHEN math_score >= 80 THEN 'YouTube, Twitter'
        WHEN math_score >= 70 THEN 'Facebook, Instagram'
        WHEN math_score >= 60 THEN 'Instagram, Snapchat, YouTube'
        ELSE 'TikTok, Instagram, Snapchat, Twitter'
    END,
    usage_hours = CASE 
        WHEN math_score >= 90 THEN 0 
        WHEN math_score >= 80 THEN FLOOR(1 + (RAND() * 2)) -- Rango 1-2 horas
        WHEN math_score >= 70 THEN FLOOR(2 + (RAND() * 2)) -- Rango 2-3 horas
        WHEN math_score >= 60 THEN FLOOR(3 + (RAND() * 2)) -- Rango 3-4 horas
        ELSE FLOOR(4 + (RAND() * 3)) -- Rango 4-6 horas
    END,
    impact_score = CASE
        WHEN math_score >= 90 THEN 0.0 -- Sin impacto si no usa redes
        ELSE 
            usage_hours * 0.2 + 
            LENGTH(REPLACE(social_media_platforms, ',', '')) * 0.1 + -- Penaliza más redes
            (100 - (math_score + reading_score) / 2) * 0.05 -- Promedio notas afecta impacto
    END;

-- 3. Actualizar nombres en caso de inconsistencias. Por ejemplo, cambiar 'None' por 'No Social Media'.

UPDATE students_performance
SET social_media_platforms = 'No Social Media'
WHERE social_media_platforms = 'None';

-- 4. Verificar que las nuevas columnas se han llenado correctamente.
-- Podemos analizar los datos ordenando por impacto para verificar patrones esperados.

SELECT social_media_platforms, usage_hours, impact_score, math_score, reading_score
FROM students_performance
ORDER BY impact_score DESC
LIMIT 20;

Segmentaremos a los estudiantes según su impacto_score y crear agrupaciones (High, Medium, Low), para analizar mejor los patrones.
-- Agregar una nueva columna para categorías:

ALTER TABLE students_performance
ADD COLUMN impact_category VARCHAR(20);

UPDATE students_performance
SET impact_category = CASE
    WHEN impact_score <= 2 THEN 'Low'
    WHEN impact_score <= 5 THEN 'Medium'
    ELSE 'High'
END;

