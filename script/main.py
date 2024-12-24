import pandas as pd
from sqlalchemy import create_engine, text
from dotenv import load_dotenv
import os

# Cargar las variables del archivo .env
load_dotenv()

# Verificar que todas las variables de entorno se cargaron correctamente
required_vars = [
    "SLEEPING_PATTERNS_HOST", "SLEEPING_PATTERNS_PORT", "SLEEPING_PATTERNS_USER", "SLEEPING_PATTERNS_PASSWORD", "SLEEPING_PATTERNS_DATABASE",
    "STUDENTS_PERFORMANCE_HOST", "STUDENTS_PERFORMANCE_PORT", "STUDENTS_PERFORMANCE_USER", "STUDENTS_PERFORMANCE_PASSWORD", "STUDENTS_PERFORMANCE_DATABASE"
]

for var in required_vars:
    if os.getenv(var) is None:
        raise ValueError(f"La variable de entorno {
            var} no está definida en el archivo .env")

# Configuración de conexión para las bases de datos
DB_SETTINGS = {
    "sleeping_patterns": {
        "host": os.getenv("SLEEPING_PATTERNS_HOST"),
        "port": int(os.getenv("SLEEPING_PATTERNS_PORT")),
        "user": os.getenv("SLEEPING_PATTERNS_USER"),
        "password": os.getenv("SLEEPING_PATTERNS_PASSWORD"),
        "database": os.getenv("SLEEPING_PATTERNS_DATABASE"),
    },
    "students_performance": {
        "host": os.getenv("STUDENTS_PERFORMANCE_HOST"),
        "port": int(os.getenv("STUDENTS_PERFORMANCE_PORT")),
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
            f"mysql+pymysql://{db_settings['user']}:{db_settings['password']}@{
                db_settings['host']}:{db_settings['port']}/{db_settings['database']}"
        )
        return engine
    except Exception as e:
        print(f"Error al conectar a la base de datos {
            db_settings['database']}: {e}")
        return None


def export_table_to_csv(engine, table_name, output_file):
    """
    Exporta una tabla de la base de datos a un archivo CSV.
    """
    try:
        df = pd.read_sql_table(table_name, engine)
        if df.empty:
            print(f"La tabla {table_name} está vacía.")
        else:
            print(f"Primeros registros de la tabla {table_name}:")
            print(df.head())
            df.to_csv(output_file, index=False)
            print(f"Tabla {table_name} exportada a {output_file}")
    except Exception as e:
        print(f"Error al exportar la tabla {table_name}: {e}")


def export_all_tables(engine, export_dir):
    """
    Exporta todas las tablas de la base de datos a archivos CSV.
    """
    try:
        with engine.connect() as connection:
            result = connection.execute(text("SELECT table_name FROM information_schema.tables WHERE table_schema = :schema"), {
                                        "schema": engine.url.database})
            tables = result.fetchall()
            for table in tables:
                table_name = table[0]
                output_file = os.path.join(export_dir, f"{table_name}.csv")
                export_table_to_csv(engine, table_name, output_file)
    except Exception as e:
        print(f"Error al exportar las tablas: {e}")


# Ejemplo de uso
if __name__ == "__main__":
    # engine_sleeping_patterns = connect_to_database(DB_SETTINGS["sleeping_patterns"])
    engine_students_performance = connect_to_database(
        DB_SETTINGS["students_performance"])

    export_dir = os.path.join(os.path.dirname(__file__), '..', 'exports')
    os.makedirs(export_dir, exist_ok=True)

    # if engine_sleeping_patterns:
    #    # export_all_tables(engine_sleeping_patterns, export_dir)

    if engine_students_performance:
        export_all_tables(engine_students_performance, export_dir)
