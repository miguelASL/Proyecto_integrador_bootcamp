import sqlite3
import pandas as pd
import matplotlib.pyplot as plt

# Ruta de la base de datos
DB_FILE = "student_analysis.db"

def combined_visualizations():
    """Visualizaciones combinadas de puntuaciones."""
    with sqlite3.connect(DB_FILE) as conn:
        query = """
        SELECT math_score, reading_score, writing_score 
        FROM student_performance;
        """
        df = pd.read_sql_query(query, conn)

    # Crear subplots
    fig, axes = plt.subplots(2, 2, figsize=(12, 10))

    # Histograma
    axes[0, 0].hist(df["math_score"], bins=10, alpha=0.7, label="Matemáticas", color="blue", edgecolor="black")
    axes[0, 0].set_title("Distribución Matemáticas")
    axes[0, 0].set_xlabel("Puntuación")
    axes[0, 0].set_ylabel("Frecuencia")

    # Boxplot
    axes[0, 1].boxplot([df["math_score"], df["reading_score"], df["writing_score"]], labels=["Math", "Reading", "Writing"])
    axes[0, 1].set_title("Boxplot de Puntuaciones")

    # Gráfico de dispersión
    axes[1, 0].scatter(df["math_score"], df["reading_score"], alpha=0.6, color="green")
    axes[1, 0].set_title("Relación: Matemáticas vs Lectura")
    axes[1, 0].set_xlabel("Puntuación Matemáticas")
    axes[1, 0].set_ylabel("Puntuación Lectura")

    # Eliminar el gráfico vacío (último subplot)
    fig.delaxes(axes[1, 1])

    # Ajustar diseño
    plt.tight_layout()
    plt.show()

if __name__ == "__main__":
    combined_visualizations()
