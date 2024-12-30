def create_views_and_procedures(cursor):
    # AYUDA DE LA FUNCIÓN
    """Crear vistas y procedimientos almacenados."""
    print("Creating views and procedures...")

    # Crear vista de estudiantes con calificaciones altas en matemáticas
    cursor.execute("""
        CREATE VIEW high_math_scores AS
        SELECT * FROM students WHERE math_score > 90;
    """)

    # Crear procedimiento almacenado para insertar un estudiante
    cursor.execute("""
        CREATE PROCEDURE insert_student (first_name TEXT, last_name TEXT, math_score INTEGER, reading_score INTEGER, writing_score INTEGER
""")
