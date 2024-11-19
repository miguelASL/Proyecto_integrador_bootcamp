# db/initial_setup.py
import sqlite3
from database_setup import setup_database
from data_loader import load_data_to_db

def initialize_database(csv_file, db_file='students_performance.db'):
    # Conexión a la base de datos
    conn = sqlite3.connect(db_file)
    cursor = conn.cursor()

    # Configurar base de datos y cargar datos
    setup_database(conn, cursor)
    load_data_to_db(conn, cursor, csv_file)

    print("Base de datos configurada y datos cargados exitosamente.")
    conn.close()
