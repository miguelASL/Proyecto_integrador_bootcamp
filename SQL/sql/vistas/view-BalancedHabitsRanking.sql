CREATE VIEW BalancedHabitsRanking AS
SELECT 
    Student_ID,
    ABS(Study_Hours - 5) AS study_deviation,
    Screen_Time,
    Caffeine_Intake,
    Physical_Activity,
    (ABS(Study_Hours - 5) + Screen_Time + Caffeine_Intake + ABS(Physical_Activity - 5)) AS balance_score
FROM lifestyle
ORDER BY balance_score ASC;
