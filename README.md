# 🛌 Proyecto Integrador: Análisis de Patrones de Sueño en Estudiantes 

Este proyecto forma parte del **bootcamp de análisis de datos en Unicorn Academy** 🎓. Aquí exploraremos cómo los patrones de sueño afectan el rendimiento académico, utilizando herramientas como SQL para el análisis y GitHub para la documentación.  

## 🚀 Objetivo  

- **Organizar y estructurar la base de datos:**
Crear un esquema bien estructurado para almacenar los datos relacionados con los patrones de sueño de los estudiantes. Esto incluye dividir la información en varias tablas para facilitar el análisis y mejorar el rendimiento de las consultas.

- **Aplicar las mejores prácticas de SQL:**
Utilizar comandos SQL eficientes y organizar el código en archivos específicos para cada paso (selección del esquema, creación de tablas, popular las tablas, verificación de datos y limpieza).

- **Facilitar el análisis de datos:**
Organizar las tablas de forma que sea fácil realizar análisis y visualizaciones en herramientas externas. Utilizar las relaciones entre las tablas para facilitar las consultas complejas, demostrando un uso avanzado de SQL, incluyendo el uso de JOIN.

- **Limpieza de datos:**
Detectar y manejar los valores nulos, duplicados y cualquier inconsistencia en los datos, utilizando técnicas de limpieza para asegurar que los datos sean precisos y confiables para el análisis.

- **Diseñar vistas SQL avanzadas:**
La finalidad es analizar y resumir datos clave, como hábitos de sueño, actividad física y tiempo frente a pantallas, permitiendo una interpretación rápida y eficiente de los resultados.

- **Implementar stored procedures personalizados:**
Automatizar consultas complejas, generar reportes dinámicos y comparar datos, optimizando el análisis y destacando habilidades avanzadas en SQL.

- **Documentar y explicar el proceso:**
Documentar cada paso del proyecto de forma detallada, explicando el propósito de cada consulta SQL, para que el proyecto sea fácilmente entendible para otros usuarios. Además, presentar los scripts de SQL bien organizados en la carpeta sql del repositorio.

- **Demostrar habilidades en SQL:**
Mostrar el dominio de funciones avanzadas de SQL (como JOIN, GROUP BY, HAVING, etc.) y la capacidad para manejar grandes cantidades de datos de forma eficiente.

- **Crear un repositorio bien organizado:**
Mantener un repositorio de GitHub limpio y bien estructurado con una documentación clara y accesible. Proporcionar un índice interactivo al principio del README.md para facilitar la navegación por los scripts SQL.

- **Optimizar la base de datos para futuras visualizaciones:**
Organizar las tablas de forma que los datos sean fácilmente exportables a herramientas de visualización de datos, como Power BI o Tableau, permitiendo un análisis visual efectivo en el futuro.


---

## Índice del Proyecto
1. [🔑 Seleccionar esquema](sql/1-seleccionar-esquema.sql)  
2. [🏗️ Creación de tablas](sql/2-creación-de-tablas.sql)  
3. [📥 Popular tablas](sql/3-popular-tablas.sql)  
4. [✅ Verificación de tablas](sql/4-verificación-tablas.sql)  
5. [🧹 Limpieza de datos](sql/5-limpieza-de-datos.sql)  
---

## 📝 Guía paso a paso  

### 🔨 **Paso 1: Configuración de la base de datos** 
Incluye los pasos iniciales para crear la base de datos o esquema, cargar los datos al esquema y asegurarte de trabajar en el esquema correcto.

- **🗂️ Crear el Esquema**

Ejecuta el siguiente código SQL para crear un esquema llamado sleeping_pattern y una tabla student_sleep_patterns

**Código SQL:**  [crear-esquema.sql](sql/crear-esquema.sql)

- **📥 Cargar los Datos desde el CSV**

1. Ubica el archivo CSV: Asegúrate de que sleeping_patterns.csv esté en tu sistema o servidor.
2. Carga los datos usando SQL: Si estás utilizando herramientas como MySQL Workbench, pgAdmin o cualquier sistema de gestión de bases de datos compatible, puedes usar el siguiente comando para cargar el archivo:

 **Código SQL:** [cargar-datos-esquema.sql](sql/cargar-datos-esquema.sql)
   
3. Verifica la Importación:
```
SELECT * FROM sleeping_pattern.student_sleep_patterns LIMIT 10;
```


- Seleccionar el esquema correcto

**Código SQL:** [1-seleccionar-esquema.sql](sql/1-seleccionar-esquema.sql)

### Explicación:
Esto asegura que cualquier tabla que creemos o modifiquemos se haga en la base de datos sleeping_patterns.


---



### 🛠️ Paso 2: Creación de tablas
Aquí explicamos cómo se separaron los datos en tres tablas: `students`, `sleep_patterns` y `lifestyle`.
Para mejorar la organización y el análisis de los datos, dividimos la tabla original `student_sleep_patterns` en tres tablas relacionadas:

1. **`students`**: Contiene información básica de los estudiantes.
2. **`sleep_patterns`**: Incluye datos relacionados con los hábitos de sueño.
3. **`lifestyle`**: Registra los hábitos y actividades de los estudiantes.

**Código SQL:**

[2-creación-de-tablas.sql](sql/2-creación-de-tablas.sql)

### ✍️ Explicación:

- **Normalización de datos:** Dividimos la tabla principal en entidades separadas para evitar redundancias.
- **Claves primarias y foráneas:** Establecimos relaciones entre las tablas mediante claves primarias `(Student_ID)` y foráneas `(Student_ID en las tablas relacionadas)`.
- **Relaciones:** Ahora es posible combinar estas tablas mediante consultas `JOIN`.


---

### **📤 Paso 3: Poblar las tablas**
Explicamos cómo transferimos los datos de la tabla original `student_sleep_patterns` a las nuevas tablas.
Transferimos los datos de la tabla original a las nuevas tablas utilizando consultas `INSERT INTO ... SELECT`.

**Código SQL:**

[3-popular-tablas.sql](sql/3-popular-tablas.sql)

### ✍️ Explicación:

- **Selección de datos:** Usamos `DISTINCT` para evitar duplicados en la tabla `students`
- **División lógica:** Los datos se asignan a la tabla correspondiente según su propósito.
- **Validación:** Cada tabla ahora contiene únicamente los datos relacionados con su entidad.

---

### 📊 Paso 4: Verificar la estructura y datos
Aquí mostramos cómo verificar que las tablas se hayan creado correctamente y estén bien pobladas.
Después de crear y poblar las tablas, verificamos que todo esté correcto.

**Código SQL:**

[4-verificación-tablas.sql](sql/4-verificación-tablas.sql)

### ✍️ Explicación:

- **`SHOW TABLES`**: Muestra todas las tablas del esquema.
- **`SELECT * ... LIMIT`**: Permite visualizar una muestra de los datos en cada tabla.

---

### 🧹 Paso 5: Limpieza de datos
La limpieza de datos es un paso esencial en cualquier proyecto de análisis. Aquí identificaremos y resolveremos problemas comunes como duplicados, valores nulos y posibles inconsistencias en las tablas.

#### 🔍 Identificación de duplicados
#### 🔎 Detección de valores nulos

**Código SQL:**

[5-limpieza-de-datos.sql](sql/5-limpieza-de-datos.sql)

### ✍️ Explicación:

- COUNT(*): Cuenta las filas por Student_ID.
- HAVING COUNT(*) > 1: Filtra estudiantes con más de un registro, lo que indica duplicados.
- IS NULL: Identifica registros con valores faltantes en las columnas clave de cada tabla.
- Revisión por tabla: Analizamos cada tabla individualmente para detectar problemas específicos.
- Reemplazo con promedios: Para columnas numéricas como Age y Sleep_Duration, utilizamos el promedio.
- Reemplazo con valores predeterminados: Para columnas como Study_Hours, asignamos un valor predeterminado, como 0, si faltan datos.



### 🧪 Consistencia de datos 

Por último, verificamos si los datos son consistentes entre las tablas, por ejemplo, si todos los Student_ID de las tablas relacionadas existen en la tabla principal students.

- **Verificar consistencia de Student_ID entre tablas**
```
SELECT sp.Student_ID
FROM sleeping_patterns.sleep_patterns sp
LEFT JOIN sleeping_patterns.students s ON sp.Student_ID = s.Student_ID
WHERE s.Student_ID IS NULL;
```

- **Lógica similar para la tabla `lifestyle`**
```
SELECT ls.Student_ID
FROM sleeping_patterns.lifestyle ls
LEFT JOIN sleeping_patterns.students s ON ls.Student_ID = s.Student_ID
WHERE s.Student_ID IS NULL;
```
### ✍️ Explicación:

- LEFT JOIN: Conectamos las tablas relacionadas con la tabla principal.
- WHERE ... IS NULL: Detecta IDs que no tienen correspondencia, lo que podría indicar errores en las relaciones.

### ✨ Resultado final de la limpieza de datos
Con estos pasos de limpieza, hemos:

----


- Identificado y eliminado duplicados.
- Detectado y resuelto valores nulos.
- Asegurado consistencia en las relaciones entre tablas.
- Este proceso asegura que los datos estén limpios, bien estructurados y listos para análisis y visualizaciones en Power BI. 🚀

---


## 🗂️ Vistas SQL 
### 🌟 Destacados de esta sección

#### 1. 🔎 Análisis avanzado con SQL

- Creación de 11 vistas optimizadas para extraer información clave.
- Uso de funciones de agregación, casos condicionales y lógica de agrupación.

#### 2. 📊 Conexión entre patrones de sueño y estilo de vida

- Análisis cruzado para identificar correlaciones entre actividad física, consumo de cafeína y calidad del sueño.

#### 3. 📈 Insights clave

- Identificación de estudiantes con hábitos extremos.
- Cumplimiento de las recomendaciones de sueño por grupo de edad.
- Análisis del impacto del tiempo de pantalla en los estudios.

### 🗂️ Vistas SQL

#### 1. [view-AverageSleepDuration.sql](sql/vistas/view-AverageSleepDuration.sql)

📌 Propósito: Calcular la duración promedio del sueño entre semana y fines de semana.

💡 Resultados Clave:
avg_weekday_sleep: 6.8 horas
avg_weekend_sleep: 7.5 horas

#### 2. [view-AvgLifestyleStats.sql](sql/vistas/view-AvgLifestyleStats.sql)

📌 Propósito: Promedios de estudio, tiempo de pantalla, consumo de cafeína y actividad física.

💡 Resultados Clave:
avg_study_hours: 4.3 horas
avg_screen_time: 5.2 horas
avg_caffeine_intake: 1.8 tazas
avg_physical_activity: 3.5 sesiones

#### 3. [view-BalancedHabitsRanking.sql](sql/vistas/view-BalancedHabitsRanking.sql)

📌 Propósito: Identificar estudiantes con hábitos más equilibrados según una métrica personalizada.

#### 📜 Vistas Adicionales
Nombre de la Vista y su	propósito
- [view-ExtremeHabits.sql](sql/vistas/view-ExtremeHabits.sql)	|Identificar estudiantes con hábitos extremos.
- [view-PhysicalActivityVsCaffeine.sql](sql/vistas/view-PhysicalActivityVsCaffeine.sql)	| Relación entre actividad física y consumo de cafeína.
- [view-RecommendedSleepCompliance.sql](sql/vistas/view-RecommendedSleepCompliance.sql)	| Porcentaje de estudiantes que cumplen con el sueño recomendado.
- [view-SleepComparison.sql](sql/vistas/view-SleepComparison.sql)	| Comparación de sueño entre semana y fines de semana.
- [view-SleepStatsByAge.sql](sql/vistas/view-SleepStatsByAge.sql)	| Estadísticas del sueño por grupo de edad.
- [view-StudyVsScreenTime.sql](sql/vistas/view-StudyVsScreenTime.sql)	| Análisis del impacto del tiempo de pantalla en horas de estudio.
- [view-TotalStudents.sql](sql/vistas/view-TotalStudents.sql)	| Contar el número total de estudiantes analizados.

---


## 🛠️ Creación de Stored Procedures para Análisis de Datos

### 📋 ¿Qué es un Stored Procedure?

Un Stored Procedure es un conjunto de instrucciones SQL predefinidas que se almacenan en el servidor de base de datos.
✅ Ventajas:

- Automatiza análisis repetitivos.
- Mejora la organización del código SQL.
- Permite realizar consultas parametrizadas para personalizar resultados.

### 🗂️ Stored Procedures Implementados

**1️⃣ sp_GetStudentStatistics**
📌 Propósito: Generar estadísticas resumidas (promedios) para un grupo específico de estudiantes según rango de edad y género.

**Código SQL:**

[sp_CompareLifestyleWithAverage.sql](sql/stored-procedures/sp_CompareLifestyleWithAverage.sql)

**🖥️ Uso:**
```
CALL sp_GetStudentStatistics(18, 25, 'F'); -- Mujeres entre 18 y 25 años
CALL sp_GetStudentStatistics(20, 30, 'ALL'); -- Todos los géneros entre 20 y 30 años
```
**📊 Resultado:**

![image](https://github.com/user-attachments/assets/e94c9f6b-4591-4df2-a994-57e7934065f2)

**2️⃣ sp_GetExtremeHabits**
📌 Propósito: Identificar estudiantes con hábitos extremos, como horas de sueño insuficientes, exceso de tiempo frente a la pantalla o alta ingesta de cafeína.

**Código SQL:**

[sp_GetExtremeHabits.sql](sql/stored-procedures/sp_GetExtremeHabits.sql)

**🖥️ Uso:**
```
CALL sp_GetExtremeHabits();
```
**📊 Resultado:**

![image](https://github.com/user-attachments/assets/ea3afa2b-dba1-472e-bcf7-37236176032e)

**3️⃣ sp_CompareLifestyleWithAverage**
📌 Propósito: Comparar los hábitos de un estudiante específico con los promedios generales de todos los estudiantes.

**Código SQL:**

[sp_GetHealthyHabitsRanking.sql](sql/stored-procedures/sp_GetHealthyHabitsRanking.sql)

**🖥️ Uso:**
```
CALL sp_CompareLifestyleWithAverage(123); -- Compara al estudiante con ID 123
```
**📊 Resultado:**

![image](https://github.com/user-attachments/assets/72b7f3e2-7306-4ae0-ab17-88cacc8a62ce)

### 🚀 Beneficios para el Proyecto
- 🔍 Automatización de Análisis: Los procedimientos almacenados agilizan la generación de reportes y permiten responder preguntas clave con solo unos comandos.
- 📊 Flexibilidad en Consultas: Puedes personalizar el análisis mediante parámetros (edad, género, ID).
- ⚡ Optimización: Reutilizas las mismas lógicas complejas en múltiples consultas sin duplicar código.
- 🏆 Diferenciación: El uso de stored procedures muestra un manejo avanzado de SQL, destacando tu habilidad para manejar proyectos reales.

  # Archivo final del esquema SQL:

  [sleeping_patterns.sql](sql/archivo-final/sleeping_patterns.sql)
