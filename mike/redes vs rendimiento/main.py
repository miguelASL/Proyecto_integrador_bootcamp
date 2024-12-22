import sqlite3
import os
from db.database_setup import setup_database
from db.data_loader import load_data_to_db, validate_data
from views.views import create_views_and_procedures
from procedures.procedures import get_high_math_scores, insert_student, get_student_averages, avg_scores_by_ethnicity

# Ruta del archivo CSV y base de datos
BASE_DIR = os.path.dirname(os.path.abspath(__file__))  # Directorio base
CSV_FILE = os.path.join(BASE_DIR, "data/StudentsPerformance.csv")
DB_FILE = os.path.join(BASE_DIR, "student_analysis.db")


def print_section_header(title):
    """Imprimir una cabecera clara para cada sección."""
    print("\n" + "=" * 40)
    print(f"{title:^40}")
    print("=" * 40)


def table_has_data(cursor, table_name):
    """Verificar si una tabla ya tiene datos."""
    cursor.execute(f"SELECT COUNT(*) FROM {table_name};")
    count = cursor.fetchone()[0]
    return count > 0


def main():
    # Crear la base de datos y cargar datos
    with sqlite3.connect(DB_FILE) as conn:
        cursor = conn.cursor()

        # Crear la tabla
        print_section_header("Creando Base de Datos y Tablas")
        setup_database(conn, cursor)

        # Cargar datos si la tabla está vacía
        if not table_has_data(cursor, "student_performance"):
            print_section_header("Cargando Datos en la Base de Datos")
            load_data_to_db(conn, cursor, CSV_FILE)
        else:
            print_section_header("Datos Ya Cargados")
            print("La tabla 'student_performance' ya contiene datos. No se cargaron duplicados.")

        # Validar la carga de datos
        print_section_header("Validando Datos Cargados")
        validate_data(cursor)

        # Crear vistas
        print_section_header("Creando Vistas")
        create_views_and_procedures(cursor)

        # Ejecutar procedimientos
        print_section_header("Promedios por Grupo Étnico")
        avg_scores_by_ethnicity(conn)

        print_section_header("Estudiantes con Alta Puntuación en Matemáticas (>85)")
        get_high_math_scores(conn, 85)

        print_section_header("Promedio del Estudiante con ID 1")
        get_student_averages(conn, 1)

        # Insertar un nuevo estudiante (descomentar si se desea probar)
        # print_section_header("Insertando un Nuevo Estudiante")
        # insert_student(conn, 'female', 'group C', "bachelor's degree", 'standard', 'completed', 75, 85, 80)

    print("\nConexión cerrada. Ejecución completa.")


if __name__ == "__main__":
    main()
