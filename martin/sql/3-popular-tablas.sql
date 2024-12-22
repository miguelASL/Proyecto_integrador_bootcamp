-- Poblar la tabla `students`
INSERT INTO sleeping_patterns.students (Student_ID, Age, Gender, University_Year)
SELECT DISTINCT Student_ID, Age, Gender, University_Year
FROM sleeping_patterns.student_sleep_patterns;

-- Poblar la tabla `sleep_patterns`
INSERT INTO sleeping_patterns.sleep_patterns (Student_ID, Sleep_Duration, Sleep_Quality, Weekday_Sleep_Start, Weekday_Sleep_End, Weekend_Sleep_Start, Weekend_Sleep_End)
SELECT Student_ID, Sleep_Duration, Sleep_Quality, Weekday_Sleep_Start, Weekday_Sleep_End, Weekend_Sleep_Start, Weekend_Sleep_End
FROM sleeping_patterns.student_sleep_patterns; 

-- Poblar la tabla `lifestyle`
INSERT INTO sleeping_patterns.lifestyle (Student_ID, Study_Hours, Screen_Time, Caffeine_Intake, Physical_Activity)
SELECT Student_ID, Study_Hours, Screen_Time, Caffeine_Intake, Physical_Activity
FROM sleeping_patterns.student_sleep_patterns; 