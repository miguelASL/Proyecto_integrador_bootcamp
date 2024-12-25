-- Correlación entre estudio y tiempo de pantalla
CREATE VIEW StudyVsScreenTime AS
SELECT 
    CASE
        WHEN Screen_Time < 2 THEN 'Low (<2h)'
        WHEN Screen_Time BETWEEN 2 AND 5 THEN 'Moderate (2-5h)'
        ELSE 'High (>5h)'
    END AS screen_time_category,
    AVG(Study_Hours) AS avg_study_hours,
    COUNT(*) AS student_count
FROM lifestyle
GROUP BY screen_time_category;
