import sqlite3
from db.database_setup import setup_database
from db.data_loader import load_data_to_db, validate_data
from views.views import create_views_and_procedures
from procedures.procedures import get_high_math_scores, insert_student, get_student_averages, avg_scores_by_ethnicity

# Ruta del archivo TXT
CSV_FILE = "data/StudentsPerformance.csv"

# Nombre del archivo de la base de datos SQLite
DB_FILE = "student_analysis.db"

if __name__ == "__main__":
    
    # Conexión a la base de datos
    conn = sqlite3.connect(DB_FILE)
    cursor = conn.cursor()

    # Crear la base de datos y la tabla
    setup_database(conn, cursor)
    print("======================================")
    
    # Cargar los datos en la base de datos
    load_data_to_db(conn, cursor, CSV_FILE)
    print("======================================")
    
    # Validar la carga de datos
    validate_data(cursor)
    print("======================================")
    
    # Crear vistas
    create_views_and_procedures(cursor)
    print("======================================")
    
    # Ejecutar procedimientos
    avg_scores_by_ethnicity(conn)
    print("======================================")
    get_high_math_scores(conn, 85)
    print("======================================")
    get_student_averages(conn, 1)
    print("======================================")
    # insert_student(conn, 'female', 'group C', "bachelor's degree", 'standard', 'completed', 75, 85, 80)

    # Cerrar la conexión
    conn.close()
    print("Conexión cerrada.")
    