LOAD DATA INFILE '/ruta/a/sleeping_patterns.csv'
INTO TABLE sleeping_pattern.student_sleep_patterns
FIELDS TERMINATED BY ',' -- Separador de columnas
ENCLOSED BY '"'          -- Comillas para texto
LINES TERMINATED BY '\n' -- Separador de filas
IGNORE 1 ROWS;           -- Ignorar la fila de encabezado

-- Nota: Reemplaza '/ruta/a/sleeping_patterns.csv' con la ubicación real de tu archivo.