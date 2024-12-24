import pandas as pd
from sqlalchemy import create_engine
from dotenv import load_dotenv
import os

# Cargar las variables del archivo .env
load_dotenv()

# Configuración de conexión para las bases de datos
DB_SETTINGS = {
    "sleeping_patterns": {
        "host": os.getenv("SLEEPING_PATTERNS_HOST"),
        "port": os.getenv("SLEEPING_PATTERNS_PORT"),
        "user": os.getenv("SLEEPING_PATTERNS_USER"),
        "password": os.getenv("SLEEPING_PATTERNS_PASSWORD"),
        "database": os.getenv("SLEEPING_PATTERNS_DATABASE"),
    },
    "students_performance": {
        "host": os.getenv("STUDENTS_PERFORMANCE_HOST"),
        "port": os.getenv("STUDENTS_PERFORMANCE_PORT"),
        "user": os.getenv("STUDENTS_PERFORMANCE_USER"),
        "password": os.getenv("STUDENTS_PERFORMANCE_PASSWORD"),
        "database": os.getenv("STUDENTS_PERFORMANCE_DATABASE"),
    },
}


def connect_to_database(db_settings):
    """
    Crea una conexión a la base de datos usando SQLAlchemy.
    """
    try:
        engine = create_engine(
            f"mysql+pymysql://{db_settings['user']}:{db_settings['password']}@{db_settings['host']}:{db_settings['port']}/{db_settings['database']}"
        )
        return engine
    except Exception as e:
        print(f"Error al conectar a la base de datos {db_settings['database']}: {e}")
        return None


def export_table_to_csv(engine, table_name, output_file):
    """
    Exporta una tabla de la base de datos a un archivo CSV.
    """
    try:
        df = pd.read_sql_table(table_name, engine)
        df.to_csv(output_file, index=False)
        print(f"Tabla {table_name} exportada a {output_file}")
    except Exception as e:
        print(f"Error al exportar la tabla {table_name}: {e}")


# Ejemplo de uso
if __name__ == "__main__":
    engine_sleeping_patterns = connect_to_database(DB_SETTINGS["sleeping_patterns"])
    engine_students_performance = connect_to_database(DB_SETTINGS["students_performance"])

    if engine_sleeping_patterns:
        export_table_to_csv(engine_sleeping_patterns, "sleep_data", "sleep_data.csv")

    if engine_students_performance:
        export_table_to_csv(engine_students_performance, "student_data", "student_data.csv")
