def get_high_math_scores(cursor):
    cursor.execute("SELECT * FROM students WHERE sleep_quality > 8")
    return cursor.fetchall()


def insert_student(cursor, student_data):
    cursor.execute('''
    INSERT INTO students (age, gender, university_year, sleep_duration, study_hours, screen_time, caffeine_intake, physical_activity, sleep_quality, weekday_sleep_start, weekend_sleep_start, weekday_sleep_end, weekend_sleep_end)
    VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
    ''', student_data)
    cursor.connection.commit()


def get_student_averages(cursor):
    cursor.execute('''
    SELECT gender, AVG(sleep_duration) as avg_sleep_duration, AVG(study_hours) as avg_study_hours
    FROM students
    GROUP BY gender
    ''')
    return cursor.fetchall()


def avg_scores_by_ethnicity(cursor):
    cursor.execute('''
    SELECT university_year, AVG(sleep_quality) as avg_sleep_quality
    FROM students
    GROUP BY university_year
    ''')
    return cursor.fetchall()
