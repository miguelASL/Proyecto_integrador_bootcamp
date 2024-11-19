# db/basic_queries.py
def fetch_basic_info(cursor):
    # Consultar las primeras filas
    cursor.execute("SELECT * FROM student_performance LIMIT 5;")
    rows = cursor.fetchall()
    print("Primeras 5 filas:")
    for row in rows:
        print(row)

    # Total de estudiantes con más de 80 en matemáticas
    cursor.execute("SELECT COUNT(*) FROM student_performance WHERE math_score > 80;")
    count = cursor.fetchone()[0]
    print(f"Estudiantes con más de 80 en matemáticas: {count}")

    # Estudiantes con las mejores puntuaciones en lectura
    cursor.execute("""
        SELECT id, gender, reading_score 
        FROM student_performance 
        ORDER BY reading_score DESC 
        LIMIT 5;
    """)
    top_readers = cursor.fetchall()
    print("Top 5 estudiantes en lectura:")
    for reader in top_readers:
        print(reader)
