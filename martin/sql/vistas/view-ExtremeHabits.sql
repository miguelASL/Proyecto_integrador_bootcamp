CREATE VIEW ExtremeHabits AS
SELECT 
    Student_ID,
    CASE 
        WHEN Study_Hours > 10 THEN 'High Study Hours'
        WHEN Screen_Time > 8 THEN 'High Screen Time'
        WHEN Caffeine_Intake > 5 THEN 'High Caffeine Intake'
        WHEN Physical_Activity > 10 THEN 'High Physical Activity'
        ELSE 'Normal'
    END AS extreme_habit
FROM lifestyle
WHERE Study_Hours > 10
   OR Screen_Time > 8
   OR Caffeine_Intake > 5
   OR Physical_Activity > 10;
