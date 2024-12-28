import sqlite3
import os
from db.database_setup import setup_database
from db.data_loader import load_data_to_db, validate_data
from views.views import create_views_and_procedures
from procedures.procedures import get_high_math_scores, insert_student, get_student_averages, avg_scores_by_ethnicity
import pandas as pd
import seaborn as sns
import matplotlib.pyplot as plt
# from analisis import x

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


def Sueño_Genero():

    # Cargar los datos del CSV en un DataFrame de pandas
    df = pd.read_csv(CSV_FILE)

    # Crear la tabla pivote
    Actividad_Fisica = df.pivot_table(
        index='Gender', columns='Physical_Activity', aggfunc='size', fill_value=0)
    sns.heatmap(Actividad_Fisica,
                annot=True, cmap='YlOrRd', linewidths=0.9, linecolor="white").set_title('Actividad Física',
                                                                                        fontdict={'fontsize': 20,
                                                                                                'fontweight': 'bold',
                                                                                                'color': 'black'})
    plt.show()


def main():
    conn, cursor = setup_database(DB_FILE)

    if not table_has_data(cursor, 'students'):
        load_data_to_db(CSV_FILE, cursor)

    validate_data(cursor)

    # Sueño_Genero()

    create_views_and_procedures(cursor)

    # print_section_header("High Math Scores")
    # print("=============================")
    # print(get_high_math_scores(cursor))

    # print_section_header("Student Averages")
    # print("=============================")
    # print(get_student_averages(cursor))

    # print_section_header("Average Scores by Ethnicity")
    # print("=============================")
    # print(avg_scores_by_ethnicity(cursor))

    conn.close()


if __name__ == "__main__":
    main()


# Sueño_Edad=df.pivot_table(index="Age",columns="University_Year",values="Sleep_Duration",aggfunc="mean")
# print(Sueño_Edad)

# Sueño_calidad=df.pivot_table(index="Age",columns="University_Year",values="Sleep_Quality",aggfunc="mean")
# print(Sueño_calidad)

# Cafeina_Genero=df.pivot_table(index="University_Year",columns="Gender",values="Caffeine_Intake",aggfunc="mean")

# print(Cafeina_Genero)
# Actividad_Fisica=df.pivot_table(index="University_Year",columns="Gender",values="Physical_Activity",aggfunc="mean")
# print(Actividad_Fisica)

# sns.heatmap(Actividad_Fisica,
#             annot=True, cmap='YlOrRd',linewidths=0.9,linecolor="white").set_title('Actividad Física',
#                                                    fontdict={'fontsize':20,
#                                                            'fontweight':'bold',
#                                                            'color': 'black'})
# plt.show()

# sns.heatmap(Cafeina_Genero,
#             annot=True, cmap='YlOrRd',linewidths=0.9,linecolor="white").set_title('Cafeína por Genero',
#                                                  fontdict={'fontsize':20,
#                                                            'fontweight':'bold',
#                                                            'color': 'black'})

# plt.show()

# sns.heatmap(Sueño_calidad,
#             annot=True, cmap='YlOrRd',linewidths=0.9,linecolor="white").set_title('Sueño de Calidad por edad',
#                                                  fontdict={'fontsize':20,
#                                                            'fontweight':'bold',
#                                                            'color': 'black'})
# plt.show()


# plt.figure(figsize=(4,3))
# sns.histplot(data=df, x="Gender",bins=50,kde=True)
# plt.show()

# sns.pairplot(df[['Sleep_Duration','Physical_Activity','Gender']],hue='Gender')
# plt.show()
