import sqlite3
import pandas as pd
from sklearn.model_selection import train_test_split, cross_val_score
from sklearn.linear_model import LinearRegression
from sklearn.preprocessing import OneHotEncoder, StandardScaler
from sklearn.pipeline import Pipeline
from sklearn.compose import ColumnTransformer
from sklearn.metrics import mean_squared_error
import numpy as np
import matplotlib.pyplot as plt

# Ruta de la base de datos
DB_FILE = "student_analysis.db"

def train_regression_model():
    """Entrenar modelo de regresión para predecir puntajes promedio."""
    # Conexión a la base de datos
    with sqlite3.connect(DB_FILE) as conn:
        # Cargar datos y calcular el promedio
        query = """
        SELECT gender, test_prep_course, 
               (math_score + reading_score + writing_score) / 3 AS avg_score
        FROM student_performance;
        """
        df = pd.read_sql_query(query, conn)

    # Dividir en características (X) y objetivo (y)
    X = df[["gender", "test_prep_course"]]
    y = df["avg_score"]

    # Codificar variables categóricas y estandarizar
    preprocessor = ColumnTransformer(
        transformers=[
            ("onehot", OneHotEncoder(drop="first"), ["gender", "test_prep_course"])
        ],
        remainder="passthrough"
    )

    # Crear pipeline de regresión lineal
    pipeline = Pipeline(steps=[
        ("preprocessor", preprocessor),
        ("regressor", LinearRegression())
    ])

    # Dividir en conjuntos de entrenamiento y prueba
    X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)

    # Entrenar el modelo
    pipeline.fit(X_train, y_train)

    # Predicciones en el conjunto de prueba
    y_pred = pipeline.predict(X_test)

    # Evaluar el modelo
    mse = mean_squared_error(y_test, y_pred)
    print(f"Error cuadrático medio (MSE): {mse:.2f}")
    print(f"Raíz del error cuadrático medio (RMSE): {np.sqrt(mse):.2f}")

    # Validación cruzada
    scores = cross_val_score(pipeline, X, y, cv=5, scoring="neg_mean_squared_error")
    rmse_scores = np.sqrt(-scores)
    print(f"RMSE promedio (validación cruzada): {rmse_scores.mean():.2f}")

    # Predicción de ejemplo
    sample = pd.DataFrame({
        "gender": ["female"],
        "test_prep_course": ["completed"]
    })
    prediction = pipeline.predict(sample)
    print(f"Predicción para {sample.iloc[0].to_dict()}: {prediction[0]:.2f}")
    
    # Gráfico de predicciones vs reales
    plt.scatter(y_test, y_pred, alpha=0.6)
    plt.plot([y.min(), y.max()], [y.min(), y.max()], color="red", linestyle="--")
    plt.title("Predicciones vs Valores Reales")
    plt.xlabel("Valores Reales")
    plt.ylabel("Predicciones")
    plt.grid(True)
    plt.show()

if __name__ == "__main__":
    train_regression_model()
