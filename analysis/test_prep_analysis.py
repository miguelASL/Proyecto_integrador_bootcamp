import sqlite3
import pandas as pd
import seaborn as sns
import matplotlib.pyplot as plt

# Ruta de la base de datos
DB_FILE = "student_analysis.db"

def combined_preparation_analysis():
    """Análisis combinado del impacto del curso de preparación."""
    with sqlite3.connect(DB_FILE) as conn:
        # Datos para gráfico de barras
        query_bars = """
        SELECT test_prep_course, 
                AVG(math_score) AS avg_math,
                AVG(reading_score) AS avg_reading,
                AVG(writing_score) AS avg_writing
        FROM student_performance
        GROUP BY test_prep_course;
        """
        df_bars = pd.read_sql_query(query_bars, conn)

        # Datos para boxplot
        query_boxplot = """
        SELECT test_prep_course, math_score, reading_score, writing_score
        FROM student_performance;
        """
        df_boxplot = pd.read_sql_query(query_boxplot, conn)
        melted_df = df_boxplot.melt(id_vars=["test_prep_course"], 
                                    value_vars=["math_score", "reading_score", "writing_score"],
                                    var_name="subject", value_name="score")

    # Crear subplots
    fig, axes = plt.subplots(1, 2, figsize=(16, 6))

    # Gráfico de barras
    df_bars.set_index("test_prep_course").plot(kind="bar", ax=axes[0], rot=0, grid=True, legend=True)
    axes[0].set_title("Promedios de Puntuaciones por Curso de Preparación")
    axes[0].set_xlabel("Curso de Preparación")
    axes[0].set_ylabel("Puntuación Promedio")

    # Boxplot
    sns.boxplot(data=melted_df, x="test_prep_course", y="score", hue="subject", ax=axes[1])
    axes[1].set_title("Dispersión de Puntuaciones por Curso de Preparación")
    axes[1].set_xlabel("Curso de Preparación")
    axes[1].set_ylabel("Puntuación")
    axes[1].legend(title="Asignatura")

    # Ajustar diseño
    plt.tight_layout()
    plt.show()

if __name__ == "__main__":
    combined_preparation_analysis()
