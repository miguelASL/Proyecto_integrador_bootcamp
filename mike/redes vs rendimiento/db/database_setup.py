import sqlite3

# Crear la base de datos y la tabla
def setup_database(conn, cursor):
    cursor.execute("""
    CREATE TABLE IF NOT EXISTS student_performance (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        gender TEXT NOT NULL,
        race_ethnicity TEXT NOT NULL,
        parental_education TEXT NOT NULL,
        lunch TEXT NOT NULL,
        test_prep_course TEXT NOT NULL,
        math_score REAL NOT NULL,
        reading_score REAL NOT NULL,
        writing_score REAL NOT NULL
    );
    """)
    print("Base de datos y tabla creadas exitosamente.")
