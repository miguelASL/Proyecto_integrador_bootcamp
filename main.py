import sqlite3
import pandas as pd
import seaborn as sns
import matplotlib.pyplot as plt
import os
from db.database_setup import setup_database
from db.data_loader import load_data_to_db, validate_data
from views.views import create_views_and_procedures
from procedures.procedures import get_high_math_scores, insert_student, get_student_averages, avg_scores_by_ethnicity

# Ruta del archivo CSV y base de datos
BASE_DIR = os.path.dirname(os.path.abspath(__file__))  # Directorio base
CSV_FILE = os.path.join(BASE_DIR, "db/Análisis_Sueño.csv")
DB_FILE = os.path.join(BASE_DIR, "student_analysis.db")


def print_section_header(title):
    """Imprimir una cabecera clara para cada sección."""
    print("\n" + "=" * 40)
    print(f"{title:^40}")
    print("=" * 40)


def table_has_data(cursor, table_name):
    """Verificar si una tabla ya tiene datos."""
    cursor.execute(f"SELECT COUNT(*) FROM {table_name};")
    count = cursor.fetchone()[0]
    return count > 0


def Actividad_Fisica():
    # Cargar los datos del CSV en un DataFrame de pandas
    df = pd.read_csv(CSV_FILE)

    # Crear la tabla pivote
    Actividad_Fisica = df.pivot_table(
        index='Gender', columns='Age', values='Physical_Activity', aggfunc='mean')
    sns.heatmap(Actividad_Fisica,
                annot=True, cmap='YlOrRd', linewidths=0.9, linecolor="white").set_title('Actividad Física',
                                                                                        fontdict={'fontsize': 20,
                                                                                                  'fontweight': 'bold',
                                                                                                  'color': 'black'})
    plt.show()


def Actividad_Fisica_Año_escolar():
    df = pd.read_csv(CSV_FILE)
    Actividad_Fisica = df.pivot_table(
        index='Gender', columns='University_Year', values='Physical_Activity', aggfunc='mean')
    sns.heatmap(Actividad_Fisica,
                annot=True, cmap='YlOrRd', linewidths=0.9, linecolor="white").set_title('Actividad Física',
                                                                                        fontdict={'fontsize': 20,
                                                                                                  'fontweight': 'bold',
                                                                                                  'color': 'black'})
    plt.show()


def Sueño_Calidad():
    df = pd.read_csv(CSV_FILE)
    Sueño_calidad = df.pivot_table(
        index="Age", columns="University_Year", values="Sleep_Quality", aggfunc="mean")
    print(Sueño_calidad)
    sns.heatmap(Sueño_calidad,
                annot=True, cmap='YlOrRd', linewidths=0.9, linecolor="white").set_title('Sueño de Calidad por edad',
                                                                                        fontdict={'fontsize': 20,
                                                                                                  'fontweight': 'bold',
                                                                                                  'color': 'black'})
    plt.show()


def Sueño_Genero():
    df = pd.read_csv(CSV_FILE)
    Sueño_Genero = df.pivot_table(
        index="Gender", columns="Age", values="Sleep_Duration", aggfunc="mean")
    print(Sueño_Genero)
    sns.heatmap(Sueño_Genero,
                annot=True, cmap='YlOrRd', linewidths=0.9, linecolor="white").set_title('Sueño por Genero',
                                                                                        fontdict={'fontsize': 20,
                                                                                                  'fontweight': 'bold',
                                                                                                  'color': 'black'})
    plt.show()


def Cafeina_Genero():
    df = pd.read_csv(CSV_FILE)
    Cafeina_Genero = df.pivot_table(
        index="University_Year", columns="Gender", values="Caffeine_Intake", aggfunc="mean")
    print(Cafeina_Genero)
    sns.heatmap(Cafeina_Genero,
                annot=True, cmap='YlOrRd', linewidths=0.9, linecolor="white").set_title('Cafeína por Genero',
                                                                                        fontdict={'fontsize': 15,
                                                                                                  'fontweight': 'bold',
                                                                                                  'color': 'black'})

    plt.show()


def Cafeina_Edad():
    df = pd.read_csv(CSV_FILE)
    Cafeina_Edad = df.pivot_table(
        index="Age", columns="Gender", values="Caffeine_Intake", aggfunc="mean")
    print(Cafeina_Edad)
    sns.heatmap(Cafeina_Edad,
                annot=True, cmap='YlOrRd', linewidths=0.9, linecolor="white").set_title('Cafeína por Edad',
                                                                                        fontdict={'fontsize': 15,
                                                                                                  'fontweight': 'bold',
                                                                                                  'color': 'black'})

    plt.show()


def Duracion_Sueño():
    df = pd.read_csv(CSV_FILE)
    sns.pairplot(df[['Sleep_Duration', 'Physical_Activity',
                 'Gender']], hue='Gender', corner=True)


plt.show()


def Duracion_Sueño_Genero():
    df = pd.read_csv(CSV_FILE)
    plt.figure(figsize=(1, 1))
    sns.histplot(data=df, x="Gender", bins=50, kde=True)


plt.show()


def Exposición_Pantalla():
    df = pd.read_csv(CSV_FILE)
    Actividad_Fisica = df.pivot_table(
        index='Gender', columns='University_Year', values='Screen_Time', aggfunc='mean')
    sns.heatmap(Actividad_Fisica,
                annot=True, cmap='YlOrRd', linewidths=0.9, linecolor="white").set_title('Exposición a pantallas por Año escolar',
                                                                                        fontdict={'fontsize': 15,
                                                                                                  'fontweight': 'bold',
                                                                                                  'color': 'black'})
    plt.show()


def Exposición_Pantalla_edad():
    df = pd.read_csv(CSV_FILE)
    Actividad_Fisica = df.pivot_table(
        index='Gender', columns='Age', values='Screen_Time', aggfunc='mean')
    sns.heatmap(Actividad_Fisica,
                annot=True, cmap='YlOrRd', linewidths=0.9, linecolor="white").set_title('Exposición a pantallas por Edad',
                                                                                        fontdict={'fontsize': 15,
                                                                                                  'fontweight': 'bold',
                                                                                                  'color': 'black'})
    plt.show()


def Describe():
    df = pd.read_csv(CSV_FILE)
    resumen = df[['Age', 'Sleep_Duration', 'Screen_Time',
                  'Caffeine_Intake', 'Physical_Activity', 'Sleep_Quality']].describe()
    print(resumen)


def main():
    conn, cursor = setup_database(DB_FILE)

    if not table_has_data(cursor, 'students'):
        load_data_to_db(CSV_FILE, cursor)

    validate_data(cursor)

    Describe()
    Actividad_Fisica_Año_escolar()
    Actividad_Fisica()
    Sueño_Calidad()
    Sueño_Genero()
    Duracion_Sueño_Genero()
    Cafeina_Genero()
    Cafeina_Edad()
    Exposición_Pantalla_edad()
    Duracion_Sueño()
    Exposición_Pantalla()

    conn.close()


if __name__ == "__main__":
    main()
