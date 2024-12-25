-- Crear la tabla `students` en el esquema `sleeping_patterns`
CREATE TABLE sleeping_patterns.students (
    Student_ID INT PRIMARY KEY,
    Age INT,
    Gender VARCHAR(10),
    University_Year VARCHAR(20)
);

-- Crear la tabla `sleep_patterns` en el esquema `sleeping_patterns`
CREATE TABLE sleeping_patterns.sleep_patterns (
    Pattern_ID INT AUTO_INCREMENT PRIMARY KEY,
    Student_ID INT,
    Sleep_Duration FLOAT,
    Sleep_Quality INT,
    Weekday_Sleep_Start TIME,
    Weekday_Sleep_End TIME,
    Weekend_Sleep_Start TIME,
    Weekend_Sleep_End TIME,
    FOREIGN KEY (Student_ID) REFERENCES sleeping_patterns.students(Student_ID)
);

-- Crear la tabla `lifestyle` en el esquema `sleeping_patterns`
CREATE TABLE sleeping_patterns.lifestyle (
    Lifestyle_ID INT AUTO_INCREMENT PRIMARY KEY,
    Student_ID INT,
    Study_Hours FLOAT,
    Screen_Time FLOAT,
    Caffeine_Intake FLOAT,
    Physical_Activity FLOAT,
    FOREIGN KEY (Student_ID) REFERENCES sleeping_patterns.students(Student_ID)
);
