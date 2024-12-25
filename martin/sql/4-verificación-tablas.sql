-- Revisar las tablas creadas en el esquema `sleeping_pattern`
SHOW TABLES FROM sleeping_patterns; 

-- Revisar las primeras filas de cada tabla
SELECT * FROM sleeping_patterns.students LIMIT 10;
SELECT * FROM sleeping_patterns.sleep_patterns LIMIT 10;
SELECT * FROM sleeping_patterns.lifestyle LIMIT 10;