import sqlite3
import pandas as pd
import plotly.express as px
import os
# Ruta de la base de datos
base_dir = os.path.dirname(os.path.abspath(__file__))
DB_FILE = os.path.join(base_dir, "..", "data", "student_analysis.db")

def interactive_distribution():
    """Distribución interactiva de las puntuaciones por materia."""
    with sqlite3.connect(DB_FILE) as conn:
        query = """
        SELECT math_score, reading_score, writing_score 
        FROM student_performance;
        """
        df = pd.read_sql_query(query, conn)

    # Transformar los datos al formato largo para Plotly
    df_long = df.melt(value_vars=["math_score", "reading_score", "writing_score"],
                        var_name="Subject", value_name="Score")

    # Crear gráfico interactivo
    fig = px.histogram(df_long, x="Score", color="Subject", barmode="overlay",
                        title="Distribución de Puntuaciones por Materia",
                        labels={"Score": "Puntuación", "Subject": "Materia"})
    fig.update_layout(bargap=0.2)
    fig.show()

if __name__ == "__main__":
    interactive_distribution()
