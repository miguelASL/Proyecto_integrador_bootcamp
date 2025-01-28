import sqlite3
import pandas as pd
import matplotlib.pyplot as plt
import os

# Ruta de la base de datos
base_dir = os.path.dirname(os.path.abspath(__file__))
DB_FILE = os.path.join(base_dir, "..", "data", "student_analysis.db")


def create_table_and_insert_data(conn):
    create_table_query = """
    CREATE TABLE IF NOT EXISTS student_performance (
        id INTEGER PRIMARY KEY,
        race_ethnicity TEXT,
        math_score REAL,
        reading_score REAL,
        writing_score REAL
    );
    """
    conn.execute(create_table_query)
    conn.commit()

    insert_data_query = """
    INSERT INTO student_performance (race_ethnicity, math_score, reading_score, writing_score) VALUES
    ('group A', 65, 70, 75),
    ('group B', 80, 85, 90),
    ('group C', 55, 60, 65),
    ('group D', 75, 80, 85),
    ('group E', 90, 95, 100);
    """
    conn.execute(insert_data_query)
    conn.commit()


def exploratory_analysis():
    """Realizar análisis exploratorio de las puntuaciones."""
    # Conexión a la base de datos
    with sqlite3.connect(DB_FILE) as conn:
        # Crear tabla y datos de prueba si no existen
        create_table_and_insert_data(conn)

        # Consultar datos de puntuaciones
        query = "SELECT math_score, reading_score, writing_score FROM student_performance;"
        df = pd.read_sql_query(query, conn)

        # Graficar distribuciones de las puntuaciones en una sola visualización
        fig, axes = plt.subplots(1, 3, figsize=(18, 6), sharey=True)

        # Distribución de Matemáticas
        axes[0].hist(df['math_score'], bins=10,
                     edgecolor='black', color='blue', alpha=0.7)
        axes[0].set_title("Distribución de Matemáticas")
        axes[0].set_xlabel("Puntuación")
        axes[0].set_ylabel("Frecuencia")
        axes[0].grid(axis='y')

        # Distribución de Lectura
        axes[1].hist(df['reading_score'], bins=10,
                     edgecolor='black', color='green', alpha=0.7)
        axes[1].set_title("Distribución de Lectura")
        axes[1].set_xlabel("Puntuación")
        axes[1].grid(axis='y')

        # Distribución de Escritura
        axes[2].hist(df['writing_score'], bins=10,
                     edgecolor='black', color='orange', alpha=0.7)
        axes[2].set_title("Distribución de Escritura")
        axes[2].set_xlabel("Puntuación")
        axes[2].grid(axis='y')

        # Ajustar diseño
        plt.tight_layout()
        plt.show()


if __name__ == "__main__":
    exploratory_analysis()
