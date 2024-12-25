CREATE SCHEMA IF NOT EXISTS sleeping_patterns;

CREATE TABLE sleeping_patterns.student_sleep_patterns (
    Student_ID INT PRIMARY KEY,
    Age INT,
    Gender TEXT,
    University_Year TEXT,
    Sleep_Duration DOUBLE,
    Study_Hours DOUBLE,
    Screen_Time DOUBLE,
    Caffeine_Intake INT,
    Physical_Activity INT,
    Sleep_Quality INT,
    Weekday_Sleep_Start DOUBLE,
    Weekend_Sleep_Start DOUBLE,
    Weekday_Sleep_End DOUBLE,
    Weekend_Sleep_End DOUBLE
);
