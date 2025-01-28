# 📊 **Análisis de Datos de Rendimiento Estudiantil** 🧑‍🏫📚

Este proyecto explora el rendimiento de estudiantes en matemáticas, lectura y escritura mediante análisis avanzado y visualizaciones interactivas. Utilizamos herramientas de ciencia de datos para entender patrones, relaciones y generar predicciones útiles.

---

## ✨ **Índice**

1. [📚 **Descripción del Proyecto**](#descripción-del-proyecto)
2. [⚙️ **Configuración del Entorno**](#configuración-del-entorno)
3. [📈 **Análisis y Visualizaciones**](#análisis-y-visualizaciones)
    - Distribución de puntuaciones 🎯
    - Matriz de correlación 🔗
    - Comparación por preparación 🧑‍🎓
    - Estudiantes destacados 🏅
    - Visualización combinada 📊
4. [📌 **Conclusiones**](#conclusiones)
5. [🚀 **Cómo Ejecutar**](#cómo-ejecutar)
6. [📂 **Estructura del Proyecto**](#estructura-del-proyecto)

---

## 📚 **Descripción del Proyecto**

Analizamos un dataset de 1000 estudiantes con información sobre:

-   **Género**.
-   **Grupo étnico**.
-   **Nivel educativo de los padres**.
-   **Puntuaciones** en matemáticas, lectura y escritura.
-   **Curso de preparación para el examen**.

Este análisis responde preguntas como:

-   ¿Cómo afectan las variables demográficas al rendimiento académico?
-   ¿Existen relaciones significativas entre las puntuaciones de diferentes materias?
-   ¿Qué tan efectivo es un curso de preparación para el examen?

---

## ⚙️ **Configuración del Entorno**


### Instala las dependencias:

```bash
pip install -r requirements.txt
```

### Ejecuta el script principal:

```bash
python main.py
```

---

## 📈 **Análisis y Visualizaciones**


💡 Observaciones:

```bash
python analysis/exploratory_analysis.py
```

-   Las puntuaciones están centradas en valores medios (~70 puntos).
-   Matemáticas muestra mayor dispersión comparada con lectura y escritura.


## 🔗 2. Matriz de Correlación

Evaluamos la relación entre las puntuaciones.

```bash
python analysis/interactive_correlation.py
```

💡 Observaciones:

-   Lectura y escritura tienen una alta correlación (~0.9).
-   Matemáticas tiene una correlación moderada (~0.6) con las otras dos materias.

## 🧑‍🎓 3. Comparación por Preparación

Analizamos el impacto de un curso de preparación en las puntuaciones.

```bash
python analysis/test_prep_analysis.py
```

💡 Observaciones:

-   Los estudiantes que completaron el curso tienen un rendimiento significativamente mejor, especialmente en matemáticas.

## 🏅 4. Estudiantes Destacados

Identificamos a los estudiantes con mejores puntuaciones.

```bash
python analysis/test_prep_analysis.py
```

💡 Observaciones:

-   Los estudiantes destacados tienen un promedio de puntuaciones superior a 90.

## 📊 5. Visualización Combinada

Creamos un gráfico interactivo con múltiples visualizaciones.

```bash
python analysis/interactive_distribution.py
```

💡 Observaciones:

-   Las puntuaciones de matemáticas y lectura tienen una relación lineal positiva.
-   Las puntuaciones de escritura tienden a ser más altas que las de lectura.

---

## 📌 **Conclusiones**

1. Distribución de Puntuaciones:
    - Las puntuaciones en lectura y escritura son consistentes.
    - Matemáticas presenta mayor dispersión.
2. Matriz de Correlaciones:
    - Fuerte relación entre lectura y escritura (~0.9).
3. Impacto del Curso de Preparación:
    - Los estudiantes que completaron el curso obtuvieron mejores resultados.
4. Estudiantes Destacados:
    - El percentil 90 es un buen umbral para identificar alto rendimiento (~85 puntos).


---

## 📂 **Estructura del Proyecto**

```
 ┣ 📂 python
 ┃ ┣ 📂 redes vs rendimiento
 ┃ ┃ ┣ 📂 analysis
 ┃ ┃ ┃ ┃ 📜 ethnicity_analysis.py
 ┃ ┃ ┃ ┣ 📜 exploratory_analysis.py
 ┃ ┃ ┃ ┣ 📜 interactive_correlation.py
 ┃ ┃ ┃ ┣ 📜 interactive_distribution.py
 ┃ ┃ ┃ ┗ 📜 test_prep_analysis.py
 ┃ ┃ ┣ 📂 data
 ┃ ┃ ┣ 📂 db
 ┃ ┃ ┃ ┣ 📜 basic_queries.py
 ┃ ┃ ┃ ┣ 📜 data_loader.py
 ┃ ┃ ┃ ┣ 📜 database_setup.py
 ┃ ┃ ┃ ┣ 📜 initial_setup.py
 ┃ ┃ ┃ ┗ 📜 __init__.py
 ┃ ┃ ┣ 📂 exports
 ┃ ┃ ┣ 📂 procedures
 ┃ ┃ ┃ ┣ 📜 advanced_queries.py
 ┃ ┃ ┃ ┣ 📜 procedures.py
 ┃ ┃ ┃ ┗ 📜 __init__.py
 ┃ ┃ ┣ 📂 script
 ┃ ┃ ┣ 📂 venv
 ┃ ┃ ┣ 📂 views
 ┃ ┃ ┃ ┣ 📜 create_views.py
 ┃ ┃ ┃ ┣ 📜 views.py
 ┃ ┃ ┃ ┗ 📜 __init__.py
 ┃ ┃ ┣ 📜 main.py
 ┃ ┃ ┗ 📜 README.md
 ┣ 📜 README.md
 ┗ 📜 requirements.txt
```

📜 Script

`main.py`: Script principal para ejecutar la exportación de datos.

📤 Exports

En esta carpeta se encuentran los archivos generados por los scripts en formato .csv.

---
