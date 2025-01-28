# Crear vistas y procedimientos almacenados
def create_views_and_procedures(cursor):
    # Crear una vista para promedios por grupo étnico
    cursor.execute("""
    CREATE VIEW IF NOT EXISTS avg_scores_by_ethnicity AS
    SELECT 
        race_ethnicity,
        AVG(math_score) AS avg_math_score,
        AVG(reading_score) AS avg_reading_score,
        AVG(writing_score) AS avg_writing_score
    FROM student_performance
    GROUP BY race_ethnicity;
    """)
    print("Vista 'avg_scores_by_ethnicity' creada exitosamente.")

