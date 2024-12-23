import sqlite3
import os
from db.database_setup import setup_database
from db.data_loader import load_data_to_db, validate_data
from views.views import create_views_and_procedures
from procedures.procedures import get_high_math_scores, insert_student, get_student_averages, avg_scores_by_ethnicity
# from analisis import x

# Ruta del archivo CSV y base de datos
BASE_DIR = os.path.dirname(os.path.abspath(__file__))  # Directorio base
CSV_FILE = os.path.join(BASE_DIR, "db/Análisis_Sueño.csv")
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
    conn, cursor = setup_database(DB_FILE)

    if not table_has_data(cursor, 'students'):
        load_data_to_db(CSV_FILE, cursor)

    validate_data(cursor)
    # create_views_and_procedures(cursor)

    # print_section_header("High Math Scores")
    # print("=============================")
    # print(get_high_math_scores(cursor))

    # print_section_header("Student Averages")
    # print("=============================")
    # print(get_student_averages(cursor))

    # print_section_header("Average Scores by Ethnicity")
    # print("=============================")
    # print(avg_scores_by_ethnicity(cursor))

    conn.close()


if __name__ == "__main__":
    main()
