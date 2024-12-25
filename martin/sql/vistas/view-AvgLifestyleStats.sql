-- Promedio por categoría de estilo de vida. 
-- Esta vista calculará los promedios de horas de estudio, tiempo de pantalla, consumo de cafeína, y actividad física para todos los estudiantes.
CREATE VIEW AvgLifestyleStats AS
SELECT 
    AVG(Study_Hours) AS avg_study_hours,
    AVG(Screen_Time) AS avg_screen_time,
    AVG(Caffeine_Intake) AS avg_caffeine_intake,
    AVG(Physical_Activity) AS avg_physical_activity
FROM lifestyle;
