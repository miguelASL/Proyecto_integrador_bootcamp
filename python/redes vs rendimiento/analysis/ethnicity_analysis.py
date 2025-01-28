import sqlite3
import pandas as pd
import matplotlib.pyplot as plt
import os

# Ruta de la base de datos
base_dir = os.path.dirname(os.path.abspath(__file__))
DB_FILE = os.path.join(base_dir, "..", "data", "student_analysis.db")

def create_table_and_insert_data(conn):
    # Eliminar la tabla si ya existe
    conn.execute("DROP TABLE IF EXISTS student_performance")
    conn.commit()

    # Crear la tabla con las columnas correctas
    create_table_query = """
    CREATE TABLE IF NOT EXISTS student_performance (
        id INTEGER PRIMARY KEY,
        gender TEXT,
        race_ethnicity TEXT,
        parental_level_of_education TEXT,
        lunch TEXT,
        test_prep_course TEXT,
        math_score REAL,
        reading_score REAL,
        writing_score REAL
    );
    """
    conn.execute(create_table_query)
    conn.commit()

    # Insertar datos de prueba
    insert_data_query = """
    INSERT INTO student_performance (gender, race_ethnicity, parental_level_of_education, lunch, test_prep_course, math_score, reading_score, writing_score) VALUES
    ('female', 'group B', "bachelor's degree", 'standard', 'none', 72, 72, 74),
    ('female', 'group C', 'some college', 'standard', 'completed', 69, 90, 88),
    ('female', 'group B', "master's degree", 'standard', 'none', 90, 95, 93),
    ('male', 'group A', "associate's degree", 'free/reduced', 'none', 47, 57, 44),
    ('male', 'group C', 'some college', 'standard', 'none', 76, 78, 75);
    """
    conn.execute(insert_data_query)
    conn.commit()

def ethnicity_analysis():
    """Analizar puntuaciones por grupo étnico."""
    # Conexión a la base de datos
    with sqlite3.connect(DB_FILE) as conn:
        # Crear tabla y datos de prueba si no existen
        create_table_and_insert_data(conn)

        # Consultar promedios por grupo étnico
        query = """
        SELECT race_ethnicity,
                AVG(math_score) AS avg_math,
                AVG(reading_score) AS avg_reading,
                AVG(writing_score) AS avg_writing
        FROM student_performance
        GROUP BY race_ethnicity;
        """
        df = pd.read_sql_query(query, conn)

        # Mostrar resultados
        print("Promedios por grupo étnico:")
        print(df)

        # Graficar
        df.set_index("race_ethnicity").plot(kind="bar", figsize=(10, 6))
        plt.title("Promedios de Puntuaciones por Grupo Étnico")
        plt.xlabel("Grupo Étnico")
        plt.ylabel("Puntuación Promedio")
        plt.xticks(rotation=45)
        plt.grid(axis="y")
        plt.show()

if __name__ == "__main__":
    ethnicity_analysis()