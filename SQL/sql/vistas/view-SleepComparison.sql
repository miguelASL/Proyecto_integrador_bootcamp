-- Comparación: Sueño entre semana vs fines de semana

CREATE VIEW SleepComparison AS
SELECT 
    AVG(CASE 
            WHEN Weekday_Sleep_End >= Weekday_Sleep_Start THEN Weekday_Sleep_End - Weekday_Sleep_Start
            ELSE (24 - Weekday_Sleep_Start) + Weekday_Sleep_End
        END) AS avg_weekday_sleep,
    AVG(CASE 
            WHEN Weekend_Sleep_End >= Weekend_Sleep_Start THEN Weekend_Sleep_End - Weekend_Sleep_Start
            ELSE (24 - Weekend_Sleep_Start) + Weekend_Sleep_End
        END) AS avg_weekend_sleep
FROM student_sleep_patterns;
