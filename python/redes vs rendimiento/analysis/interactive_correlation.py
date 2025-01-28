import sqlite3
import pandas as pd
import plotly.graph_objects as go
import os

# Ruta de la base de datos
base_dir = os.path.dirname(os.path.abspath(__file__))
DB_FILE = os.path.join(base_dir, "..", "data", "student_analysis.db")


def interactive_correlation():
    """Matriz de correlación interactiva entre las puntuaciones."""
    with sqlite3.connect(DB_FILE) as conn:
        query = """
        SELECT math_score, reading_score, writing_score 
        FROM student_performance;
        """
        df = pd.read_sql_query(query, conn)

    # Calcular la matriz de correlación
    correlation_matrix = df.corr()

    # Crear un heatmap interactivo
    fig = go.Figure(data=go.Heatmap(
        z=correlation_matrix.values,
        x=correlation_matrix.columns,
        y=correlation_matrix.columns,
        colorscale="Viridis",
        zmin=-1, zmax=1
    ))

    fig.update_layout(
        title="Matriz de Correlación Interactiva",
        xaxis_title="Variables",
        yaxis_title="Variables"
    )
    fig.show()


if __name__ == "__main__":
    interactive_correlation()
