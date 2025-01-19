-- Relación entre actividad física y cafeína
CREATE VIEW PhysicalActivityVsCaffeine AS
SELECT 
    CASE
        WHEN Physical_Activity = 0 THEN 'No activity'
        WHEN Physical_Activity BETWEEN 1 AND 3 THEN 'Low (1-3)'
        WHEN Physical_Activity BETWEEN 4 AND 7 THEN 'Moderate (4-7)'
        ELSE 'High (>7)'
    END AS activity_level,
    AVG(Caffeine_Intake) AS avg_caffeine_intake,
    COUNT(*) AS student_count
FROM lifestyle
GROUP BY activity_level;
