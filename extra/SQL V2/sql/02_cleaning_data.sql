-- 1) ESTANDARIZACIÓN DE NOMBRES DE COLUMNAS
Este código realiza ajustes iniciales en la estructura de la base de datos. Cambiamos nombres de columnas para seguir buenas prácticas de nomenclatura (snake_case) y aseguramos que todas las columnas sean del tipo adecuado.


ALTER TABLE students_performance
CHANGE COLUMN `parental level of education` parental_level_of_education VARCHAR(50),
CHANGE COLUMN `race/ethnicity` race_ethnicity VARCHAR(50),
CHANGE COLUMN `test preparation course` test_preparation_course VARCHAR(50),
CHANGE COLUMN `math score` math_score VARCHAR(50),
CHANGE COLUMN `reading score` reading_score VARCHAR(50),
CHANGE COLUMN `writing score` writing_score VARCHAR(50);


-- 2. AGREGAR COLUMNA DE INDENTIFICADOR UNICO (ID)
-- Añado una columna de identificador único a la tabla `students_performance`,  lo cual permitirá identificar cada registro de manera única. Esto también facilita la eliminación de duplicados y el mantenimiento de la base de datos.

ALTER TABLE students_performance
ADD COLUMN id INT AUTO_INCREMENT PRIMARY KEY;



-- 3. IDENTIFICAR REGISTROS DUPLICADOS
-- En esta etapa, se identifican y eliminan duplicados en la tabla students_performance, manteniendo solo los registros más antiguos. Esto ayuda a garantizar que no haya datos repetidos, lo que podría distorsionar los análisis posteriores.

SELECT gender, race_ethnicity, parental_level_of_education, lunch, test_preparation_course, 
       math_score, reading_score, COUNT(*) AS Total_Repetidos
FROM students_performance
GROUP BY gender, race_ethnicity, parental_level_of_education, lunch, test_preparation_course, 
         math_score, reading_score
HAVING COUNT(*) > 1;

-- 4. Verificar si existen valores nulos en las columnas principales.
-- Esto es crucial para garantizar que no haya datos faltantes que puedan afectar el análisis.

SELECT 
    SUM(CASE WHEN gender IS NULL THEN 1 ELSE 0 END) AS Null_Gender,
    SUM(CASE WHEN race_ethnicity IS NULL  THEN 1 ELSE 0 END) AS Null_Race,
    SUM(CASE WHEN parental_level_of_education IS NULL  THEN 1 ELSE 0 END) AS Null_Education,
    SUM(CASE WHEN lunch IS NULL  THEN 1 ELSE 0 END) AS Null_Lunch,
    SUM(CASE WHEN test_preparation_course IS NULL  THEN 1 ELSE 0 END) AS Null_Test_Preparation,
    SUM(CASE WHEN math_score IS NULL  THEN 1 ELSE 0 END) AS Null_Math,
    SUM(CASE WHEN reading_score IS NULL  THEN 1 ELSE 0 END) AS Null_Reading
FROM students_performance;

-- 5. Revisar valores únicos en cada columna para detectar inconsistencias en la codificación.
-- Por ejemplo, el género podría estar mal escrito o contener valores inesperados.

SELECT gender, COUNT(*) AS count
FROM students_performance
GROUP BY gender;

SELECT race_ethnicity, COUNT(*) AS count
FROM students_performance
GROUP BY race_ethnicity;

SELECT parental_level_of_education, COUNT(*) AS count
FROM students_performance
GROUP BY parental_level_of_education;

SELECT lunch, COUNT(*) AS count
FROM students_performance
GROUP BY lunch;

SELECT test_preparation, COUNT(*) AS count
FROM students_performance
GROUP BY test_preparation;

-- 6. Validar que los puntajes estén dentro de los rangos correctos (0-100).
-- Esto ayuda a detectar errores en la carga de datos o datos atípicos que deben ser corregidos.

SELECT * 
FROM students_performance
WHERE math_score < 0 OR math_score > 100
   OR reading_score < 0 OR reading_score > 100;

-- 7. Eliminar duplicados de la tabla, conservando solo el registro más antiguo (por ID).
-- Esta operación se realiza después de verificar los duplicados.

DELETE FROM students_performance
WHERE id NOT IN (
    SELECT id FROM (
        SELECT MIN(id) AS id
        FROM students_performance
        GROUP BY 
            gender, 
            race_ethnicity, 
            parental_level_of_education, 
            lunch, 
            test_preparation_course, 
            math_score, 
            reading_score
    ) AS temp
);
