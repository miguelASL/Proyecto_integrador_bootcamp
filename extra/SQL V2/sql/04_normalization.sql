1) Crear tablas de referencia.
    Vamos a desglosar la tabla principal en varias tablas. Para esto, primero debemos crearlas y luego mas adelante insertarle valores.

CREATE TABLE gender (
    id INT AUTO_INCREMENT PRIMARY KEY,
    gender_name VARCHAR(50) NOT NULL
);

CREATE TABLE race_ethnicity (
    id INT AUTO_INCREMENT PRIMARY KEY,
    race_ethnicity_name VARCHAR(50) NOT NULL
);

CREATE TABLE parental_level_of_education (
    id INT AUTO_INCREMENT PRIMARY KEY,
    education_level_name VARCHAR(100) NOT NULL
);

CREATE TABLE lunch (
    id INT AUTO_INCREMENT PRIMARY KEY,
    lunch_type VARCHAR(50) NOT NULL
);

CREATE TABLE test_preparation_course (
    id INT AUTO_INCREMENT PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL
);

CREATE TABLE social_media_platforms (
    id INT AUTO_INCREMENT PRIMARY KEY,
    platform_name VARCHAR(100) NOT NULL
);

2) Insertar valores únicos desde `students_performance` a las tablas de referencia.
INSERT INTO gender (gender_name)
SELECT DISTINCT gender FROM students_performance;

INSERT INTO race_ethnicity (race_ethnicity_name)
SELECT DISTINCT race_ethnicity FROM students_performance;

INSERT INTO parental_level_of_education (education_level_name)
SELECT DISTINCT parental_level_of_education FROM students_performance;

INSERT INTO lunch (lunch_type)
SELECT DISTINCT lunch FROM students_performance;

INSERT INTO test_preparation_course (course_name)
SELECT DISTINCT test_preparation_course FROM students_performance;

INSERT INTO social_media_platforms (platform_name)
SELECT DISTINCT social_media_platforms FROM students_performance;

3) Ahora vamos a modificar la tabla `students_performance` para que contenga claves foráneas que referencian a las tablas de referencia creadas anteriormente.

ALTER TABLE students_performance
ADD COLUMN gender_id INT,
ADD COLUMN race_ethnicity_id INT,
ADD COLUMN parental_level_of_education_id INT,
ADD COLUMN lunch_id INT,
ADD COLUMN test_preparation_course_id INT,
ADD COLUMN social_media_platforms_id INT;

4) Actualizar los valores de las claves foráneas en `students_performance`
UPDATE students_performance sp
JOIN gender g ON sp.gender = g.gender_name
SET sp.gender_id = g.id;

UPDATE students_performance sp
JOIN race_ethnicity r ON sp.race_ethnicity = r.race_ethnicity_name
SET sp.race_ethnicity_id = r.id;

UPDATE students_performance sp
JOIN parental_level_of_education p ON sp.parental_level_of_education = p.education_level_name
SET sp.parental_level_of_education_id = p.id;

UPDATE students_performance sp
JOIN lunch l ON sp.lunch = l.lunch_type
SET sp.lunch_id = l.id;

UPDATE students_performance sp
JOIN test_preparation_course t ON sp.test_preparation_course = t.course_name
SET sp.test_preparation_course_id = t.id;

UPDATE students_performance sp
JOIN social_media_platforms sm ON sp.social_media_platforms = sm.platform_name
SET sp.social_media_platforms_id = sm.id;


5) Después de actualizar la tabla con las claves foráneas, eliminamos las columnas originales.
ALTER TABLE students_performance
DROP COLUMN gender,
DROP COLUMN race_ethnicity,
DROP COLUMN parental_level_of_education,
DROP COLUMN lunch,
DROP COLUMN test_preparation_course,
DROP COLUMN social_media_platforms;
