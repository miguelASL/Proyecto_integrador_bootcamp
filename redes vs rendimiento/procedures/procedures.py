# procedures.py
def get_high_math_scores(conn, min_score):
    cursor = conn.cursor()
    query = """
    SELECT 
        id, gender, race_ethnicity, parental_education, math_score
    FROM student_performance
    WHERE math_score > ?
    ORDER BY math_score DESC;
    """
    cursor.execute(query, (min_score,))
    results = cursor.fetchall()
    print(f"Estudiantes con puntaje en matemáticas mayor a {min_score}:")
    for row in results:
        print(row)
    cursor.close()

def insert_student(conn, gender, race, parental_edu, lunch, test_prep, math, reading, writing):
    cursor = conn.cursor()
    query = """
    INSERT INTO student_performance (
        gender, race_ethnicity, parental_education, lunch, test_prep_course, 
        math_score, reading_score, writing_score
    )
    VALUES (?, ?, ?, ?, ?, ?, ?, ?);
    """
    cursor.execute(query, (gender, race, parental_edu, lunch, test_prep, math, reading, writing))
    conn.commit()
    print("Estudiante insertado exitosamente.")
    cursor.close()

def get_student_averages(conn, student_id):
    cursor = conn.cursor()
    query = """
    SELECT 
        id,
        gender,
        race_ethnicity,
        (math_score + reading_score + writing_score) / 3 AS average_score
    FROM student_performance
    WHERE id = ?;
    """
    cursor.execute(query, (student_id,))
    result = cursor.fetchone()
    print(f"Promedio del estudiante con ID {student_id}:")
    print(result)
    cursor.close()

def avg_scores_by_ethnicity(conn):
    cursor = conn.cursor()
    query = """
    SELECT 
        race_ethnicity,
        AVG(math_score) AS avg_math_score,
        AVG(reading_score) AS avg_reading_score,
        AVG(writing_score) AS avg_writing_score
    FROM student_performance
    GROUP BY race_ethnicity;
    """
    cursor.execute(query)
    results = cursor.fetchall()
    print("Promedios por grupo étnico:")
    for row in results:
        print(row)
    cursor.close()
