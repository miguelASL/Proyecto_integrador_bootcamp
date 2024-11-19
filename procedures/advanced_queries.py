# procedures/advanced_queries.py
def calculate_averages(cursor):
    # Promedios generales
    cursor.execute("""
        SELECT 
            AVG(math_score) AS avg_math,
            AVG(reading_score) AS avg_reading,
            AVG(writing_score) AS avg_writing
        FROM student_performance;
    """)
    averages = cursor.fetchone()
    print(f"Promedios generales: Matemáticas: {averages[0]:.2f}, Lectura: {averages[1]:.2f}, Escritura: {averages[2]:.2f}")

def averages_by_ethnicity(cursor):
    # Promedio de matemáticas por grupo étnico
    cursor.execute("""
        SELECT 
            race_ethnicity,
            AVG(math_score) AS avg_math_score
        FROM student_performance
        GROUP BY race_ethnicity
        ORDER BY avg_math_score DESC;
    """)
    results = cursor.fetchall()
    print("Promedios de matemáticas por grupo étnico:")
    for row in results:
        print(f"{row[0]}: {row[1]:.2f}")

def prep_course_statistics(cursor):
    # Estudiantes que completaron el curso de preparación
    cursor.execute("""
        SELECT 
            test_prep_course,
            COUNT(*) AS total_students
        FROM student_performance
        GROUP BY test_prep_course;
    """)
    results = cursor.fetchall()
    print("Estudiantes según curso de preparación:")
    for row in results:
        print(f"{row[0]}: {row[1]} estudiantes")
