import pandas as pd


def load_data_to_db(csv_file, cursor):
    df = pd.read_csv(csv_file)
    df.to_sql('students', cursor.connection, if_exists='replace', index=False)


def validate_data(cursor):
    cursor.execute("SELECT COUNT(*) FROM students")
    count = cursor.fetchone()[0]
    print(f"Total records in students table: {count}")
