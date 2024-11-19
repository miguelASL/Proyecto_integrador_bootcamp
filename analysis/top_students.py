import sqlite3
import pandas as pd
import matplotlib.pyplot as plt

# Ruta de la base de datos
DB_FILE = "student_analysis.db"

def get_top_students():
    """Identificar estudiantes destacados."""
    with sqlite3.connect(DB_FILE) as conn:
        # Cargar datos
        query = """
        SELECT id, gender, race_ethnicity, 
                (math_score + reading_score + writing_score) / 3 AS avg_score,
                math_score, reading_score, writing_score
        FROM student_performance;
        """
        df = pd.read_sql_query(query, conn)

        # Calcular percentil 90
        threshold = df["avg_score"].quantile(0.9)
        top_students = df[df["avg_score"] >= threshold]

        print(f"Percentil 90 (promedio mínimo para estudiantes destacados): {threshold:.2f}")
        print("\nEstudiantes destacados:")
        print(top_students)

        # Estudiantes con puntuación perfecta
        perfect_scores = df[
            (df["math_score"] == 100) | 
            (df["reading_score"] == 100) | 
            (df["writing_score"] == 100)
        ]
        print("\nEstudiantes con puntuación perfecta:")
        print(perfect_scores)

        # Graficar distribución de promedios
        plt.hist(df["avg_score"], bins=10, edgecolor="black", alpha=0.7)
        plt.axvline(threshold, color="red", linestyle="--", label=f"Percentil 90: {threshold:.2f}")
        plt.title("Distribución de Promedios")
        plt.xlabel("Promedio")
        plt.ylabel("Frecuencia")
        plt.legend()
        plt.show()

if __name__ == "__main__":
    get_top_students()
