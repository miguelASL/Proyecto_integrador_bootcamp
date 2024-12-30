# 🛌🌙😴Proyecto Integrador Análisis de Patrones de Sueños en Estudiantes 🛌🌙😴

🎓Este proyecto forma parte del bootcamp de análisis de datos de Unicorn Academy. 

En este proyecto vamos a analizar el sueño, la actividad física y consumos de cafeína de 500 estudiantes con Python

🚀 Objetivos:
Aplicar prácticas obtenidas en el curso de Python
Lectura de DataFrame, 
Orden y análisis de datos, 
Gráficas para interpretación de los datos

1- Insertamos data base CSV 

db/Análisis_Sueño.csv

2- Insertamos Ruta y leemos la DB el archivo con Python

### Ruta del archivo CSV y base de datos
BASE_DIR = os.path.dirname(os.path.abspath(__file__))  # Directorio base
CSV_FILE = os.path.join(BASE_DIR, "db/Análisis_Sueño.csv")
DB_FILE = os.path.join(BASE_DIR, "student_analysis.db")

3- Contamos cantidad de estudiantes analizados

def table_has_data(cursor, table_name):
    """Verificar si una tabla ya tiene datos."""
    cursor.execute(f"SELECT COUNT(*) FROM {table_name};")
    count = cursor.fetchone()[0]
    return count > 0

4-  Análisis de sueño en Estudiantes / Edad
🎨 Proyecto

### 1. 🏃‍♂️ Tiempo de actividad física por genero y edad

![image](https://github.com/user-attachments/assets/6beb87bd-d25e-4fd3-9fce-2d16dfb0e8db)
![image](https://github.com/user-attachments/assets/52a5bd96-eaff-43ff-8e24-710b9a9ec76f)

def Actividad_Fisica():
    # Cargar los datos del CSV en un DataFrame de pandas
    df = pd.read_csv(CSV_FILE)

    # Crear la tabla pivote
    Actividad_Fisica = df.pivot_table(index='Gender', columns='Age', values='Physical_Activity',aggfunc='mean')
    sns.heatmap(Actividad_Fisica,
                annot=True, cmap='YlOrRd', linewidths=0.9, linecolor="white").set_title('Actividad Física',
                                                                                        fontdict={'fontsize': 20,
                                                                                                'fontweight': 'bold',
                                                                                                'color': 'black'})
    plt.show()

### 2. 🛌 Sueño de calidad por edad y año escolar
![image](https://github.com/user-attachments/assets/9a41b79d-da75-404c-bb46-44d6bcfd52c3)

def Sueño_Calidad():
    df = pd.read_csv(CSV_FILE)
    Sueño_calidad=df.pivot_table(index="Age",columns="University_Year",values="Sleep_Quality",aggfunc="mean")
    print(Sueño_calidad)
    sns.heatmap(Sueño_calidad,
             annot=True, cmap='YlOrRd',linewidths=0.9,linecolor="white").set_title('Sueño de Calidad por edad',
                                                                          fontdict={'fontsize':20,
                                                                                  'fontweight':'bold',
                                                                                  'color': 'black'})
    plt.show()

![image](https://github.com/user-attachments/assets/028ed879-a1b7-4c02-9ee3-ae305332a380)


### 3. ☕ Cantidad de cafeína por genero y año escolar (más consumo de cafeína menos sueño de calidad)

![image](https://github.com/user-attachments/assets/feba66d2-7d62-4176-8439-79afccbfe599)

def Cafeina_Genero():
    df = pd.read_csv(CSV_FILE)
    Cafeina_Genero=df.pivot_table(index="University_Year",columns="Gender",values="Caffeine_Intake",aggfunc="mean")
    print(Cafeina_Genero)
    sns.heatmap(Cafeina_Genero,
             annot=True, cmap='YlOrRd',linewidths=0.9,linecolor="white").set_title('Cafeína por Genero',
                                                                          fontdict={'fontsize':20,
                                                                                  'fontweight':'bold',
                                                                                  'color': 'black'})

    plt.show()

![image](https://github.com/user-attachments/assets/b0e83b78-0700-40a3-863d-2bc73b78ec4e)
    

### 3. Horas de sueño por genero

![image](https://github.com/user-attachments/assets/c9a3be2c-c655-48ba-9329-608d8b1735d8)


### 4. Sueño por genero 

![image](https://github.com/user-attachments/assets/6c0d0f73-0e1f-4176-aae0-5938856938b8)

def Duracion_Sueño_Genero():
    df = pd.read_csv(CSV_FILE)
    plt.figure(figsize=(4,3))
    sns.histplot(data=df, x="Gender",bins=50,kde=True)
plt.show()

### 5. Exposición a pantallas por año escolar y por edad

![image](https://github.com/user-attachments/assets/780efc51-947a-42d5-ada6-2caa23ac7f78)

![image](https://github.com/user-attachments/assets/48deba37-6cac-41ce-9c74-24d1050724db)

### Promedios de análisis

![image](https://github.com/user-attachments/assets/8bc1750f-f79a-4757-8bde-d8dcff12bdd2)

def Describe():
    df = pd.read_csv(CSV_FILE)
    resumen=df[['Age','Sleep_Duration','Screen_Time','Caffeine_Intake','Physical_Activity','Sleep_Quality']].describe()
    print(resumen)

## Conclusiones

#### Pudimos analizar que los estudiantes que más actividad física realizan son las dos 24 años de edad pero que es indiferente en que año estén cursando.
#### El año escolar y la edad del estudiante también influye en la cantidad de horas de sueño a medida que avanzan en la carreran duermen menos
#### En el gráfico de consumo cafeína analizamos que la edad que aumenta el consumo y disminuya la calidad de horas de sueño. A mayor consumo menos horas de sueño lo cual es correcto 
#### dado que los estudiantes lo utilizan como estimulante para poder estar despiertos.
#### La exposición a las pantallas también es un tema a explicar dado que también es relativa la exposición por año que estén cursando y edad de cada estudiante. 

#### ⚠️⚠️⚠️⚠️Los máximos y minimos nos dan una alarma de que en el algunos estudiantes es mucho el consumo de cafeína, máximo 5, las horas de exposición a las pantallas es 4 que es un valor alto 
#### pero algo para analizar es a las personas que han dormido poco con un mínimo de 4 horas. 
#### Hacer incapie en las personas que tienen CERO minutos de actividad física. 

#### Si bien hay muchos análisis para hacer, me quedé con estos que nos ayuda al análisis de las personas y su enfoque en la calidad de sueño y actividad física, ingesta de droga psicoactiva y exposición a las pantallas. 
