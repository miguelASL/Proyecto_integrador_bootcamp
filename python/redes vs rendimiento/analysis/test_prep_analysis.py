import pandas as pd
import matplotlib.pyplot as plt
import os

# Ruta del archivo CSV en el directorio raíz
base_dir = os.path.dirname(os.path.abspath(__file__))
csv_file = os.path.join(base_dir, "..", "data", "StudentsPerformance.csv")


def get_top_students():
    # Cargar datos desde el archivo CSV
    df = pd.read_csv(csv_file)

    # Calcular el promedio de las puntuaciones
    df["avg_score"] = df[["math score",
                          "reading score", "writing score"]].mean(axis=1)

    # Calcular el percentil 90
    threshold = df["avg_score"].quantile(0.90)

    # Filtrar los estudiantes en el percentil 90 o superior
    top_students = df[df["avg_score"] >= threshold]
    print("Estudiantes en el percentil 90 o superior:")
    print(top_students)

    # Filtrar los estudiantes con puntuación perfecta
    perfect_scores = df[
        (df["math score"] == 100) |
        (df["reading score"] == 100) |
        (df["writing score"] == 100)
    ]
    print("\nEstudiantes con puntuación perfecta:")
    print(perfect_scores)

    # Graficar distribución de promedios
    plt.hist(df["avg_score"], bins=10, edgecolor="black", alpha=0.7)
    plt.axvline(threshold, color="red", linestyle="--",
                label=f"Percentil 90: {threshold:.2f}")
    plt.title("Distribución de Promedios")
    plt.xlabel("Promedio")
    plt.ylabel("Frecuencia")
    plt.legend()
    plt.show()


if __name__ == "__main__":
    get_top_students()
