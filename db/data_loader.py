import pandas as pd

# Cargar datos desde el archivo TXT a la base de datos
def load_data_to_db(conn, cursor, CSV_FILE):
    # Leer el archivo TXT
    df = pd.read_csv(CSV_FILE, delimiter=",")  # Cambiar el delimitador si es necesario

    # Renombrar columnas para que coincidan con la tabla
    df.columns = [
        'gender', 'race_ethnicity', 'parental_education', 
        'lunch', 'test_prep_course', 'math_score', 'reading_score', 'writing_score'
    ]

    # Insertar los datos en la tabla
    df.to_sql("student_performance", conn, if_exists="append", index=False)
    print("Datos cargados exitosamente.")

# Validar la carga de datos
def validate_data(cursor):
    cursor.execute("SELECT COUNT(*) FROM student_performance;")
    total_registros = cursor.fetchone()[0]
    print(f"Total de registros en la tabla: {total_registros}")

    # Mostrar algunas filas como validación
    cursor.execute("SELECT * FROM student_performance LIMIT 5;")
    rows = cursor.fetchall()
    print("\nPrimeros 5 registros:")
    for row in rows:
        print(row)
