import sqlite3


def setup_database(db_file):
    conn = sqlite3.connect(db_file)
    cursor = conn.cursor()
    # Crear tablas aquí
    cursor.execute('''
    CREATE TABLE IF NOT EXISTS students (
        id INTEGER PRIMARY KEY,
        age INTEGER,
        gender TEXT,
        university_year TEXT,
        sleep_duration REAL,
        study_hours REAL,
        screen_time REAL,
        caffeine_intake INTEGER,
        physical_activity INTEGER,
        sleep_quality INTEGER,
        weekday_sleep_start REAL,
        weekend_sleep_start REAL,
        weekday_sleep_end REAL,
        weekend_sleep_end REAL
    )
    ''')
    conn.commit()
    return conn, cursor
