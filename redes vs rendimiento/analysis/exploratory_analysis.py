import sqlite3
import matplotlib.pyplot as plt
import pandas as pd

# Ruta de la base de datos
DB_FILE = "student_analysis.db"

def plot_combined_distributions(df):
    """Graficar distribuciones de las puntuaciones en una sola visualización."""
    # Crear figura y subplots
    fig, axes = plt.subplots(1, 3, figsize=(18, 6), sharey=True)

    # Distribución de Matemáticas
    axes[0].hist(df['math_score'], bins=10, edgecolor='black', color='blue', alpha=0.7)
    axes[0].set_title("Distribución de Matemáticas")
    axes[0].set_xlabel("Puntuación")
    axes[0].set_ylabel("Frecuencia")
    axes[0].grid(axis='y')

    # Distribución de Lectura
    axes[1].hist(df['reading_score'], bins=10, edgecolor='black', color='green', alpha=0.7)
    axes[1].set_title("Distribución de Lectura")
    axes[1].set_xlabel("Puntuación")
    axes[1].grid(axis='y')

    # Distribución de Escritura
    axes[2].hist(df['writing_score'], bins=10, edgecolor='black', color='orange', alpha=0.7)
    axes[2].set_title("Distribución de Escritura")
    axes[2].set_xlabel("Puntuación")
    axes[2].grid(axis='y')

    # Ajustar diseño
    plt.tight_layout()
    plt.show()

def exploratory_analysis():
    """Análisis exploratorio de las puntuaciones."""
    # Conexión a la base de datos
    with sqlite3.connect(DB_FILE) as conn:
        # Cargar datos desde la base de datos a un DataFrame de pandas
        query = "SELECT math_score, reading_score, writing_score FROM student_performance;"
        df = pd.read_sql_query(query, conn)

        # Estadísticas descriptivas
        print("Estadísticas descriptivas:")
        print(df.describe())

        # Graficar distribuciones combinadas
        plot_combined_distributions(df)

if __name__ == "__main__":
    exploratory_analysis()
