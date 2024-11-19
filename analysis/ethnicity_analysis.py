import sqlite3
import pandas as pd
import matplotlib.pyplot as plt

# Ruta de la base de datos
DB_FILE = "student_analysis.db"

def ethnicity_analysis():
    """Analizar puntuaciones por grupo étnico."""
    # Conexión a la base de datos
    with sqlite3.connect(DB_FILE) as conn:
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
