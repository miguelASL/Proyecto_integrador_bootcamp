-- Verificar duplicados en la tabla `students`
SELECT Student_ID, COUNT(*)
FROM sleeping_patterns.students
GROUP BY Student_ID
HAVING COUNT(*) > 1;

-- Verificar duplicados en la tabla `sleep_patterns`
SELECT Student_ID, COUNT(*)
FROM sleeping_patterns.sleep_patterns
GROUP BY Student_ID
HAVING COUNT(*) > 1;

-- Verificar duplicados en la tabla `lifestyle`
SELECT Student_ID, COUNT(*)
FROM sleeping_patterns.lifestyle
GROUP BY Student_ID
HAVING COUNT(*) > 1;

-- Verificar valores nulos en la tabla `students`
SELECT * 
FROM sleeping_patterns.students
WHERE Age IS NULL OR Gender IS NULL OR University_Year IS NULL;

-- Verificar valores nulos en la tabla `sleep_patterns`
SELECT * 
FROM sleeping_patterns.sleep_patterns
WHERE Sleep_Duration IS NULL OR Sleep_Quality IS NULL
   OR Weekday_Sleep_Start IS NULL OR Weekday_Sleep_End IS NULL; 
   
-- Verificar valores nulos en la tabla `lifestyle`
SELECT * 
FROM sleeping_patterns.lifestyle
WHERE Study_Hours IS NULL OR Screen_Time IS NULL 
   OR Caffeine_Intake IS NULL OR Physical_Activity IS NULL; 

SELECT sp.Student_ID
FROM sleeping_patterns.sleep_patterns sp
LEFT JOIN sleeping_patterns.students s ON sp.Student_ID = s.Student_ID
WHERE s.Student_ID IS NULL;  

SELECT ls.Student_ID
FROM sleeping_patterns.lifestyle ls
LEFT JOIN sleeping_patterns.students s ON ls.Student_ID = s.Student_ID
WHERE s.Student_ID IS NULL;