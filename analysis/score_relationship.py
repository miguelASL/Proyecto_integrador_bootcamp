import sqlite3
import pandas as pd
import seaborn as sns
import matplotlib.pyplot as plt

# Ruta de la base de datos
DB_FILE = "student_analysis.db"

def score_relationship():
    """Visualización de relaciones entre puntuaciones."""
    with sqlite3.connect(DB_FILE) as conn:
        query = """
        SELECT test_prep_course, math_score, reading_score, writing_score 
        FROM student_performance;
        """
        df = pd.read_sql_query(query, conn)

    # Pairplot para relaciones entre las puntuaciones
    sns.pairplot(df, hue="test_prep_course", diag_kind="kde", palette="Set2",
                    corner=True, height=2.5)
    plt.suptitle("Relaciones entre Puntuaciones y Curso de Preparación", y=1.02)
    plt.show()

if __name__ == "__main__":
    score_relationship()
