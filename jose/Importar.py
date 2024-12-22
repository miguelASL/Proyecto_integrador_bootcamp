import pandas as pd
import os
import mysql.connector
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns

#Creamos un DataFrame para leer el CSV

os.chdir('/Users/gisef/OneDrive/Documentos/Proyecto_Integrador/Proyecto_integrador_bootcamp')
df= pd.read_csv('Análisis_Sueño.csv')
df.to_csv('Análisis_Sueño.csv',index=False)
#print(df)
#print(df.sort_values('Gender'))
#df2=df['Age'].value_counts()
#df3=df['Gender'].value_counts()
#df4=df['University_Year'].value_counts()
#print(df.sort_values('Age')['Age'].value_counts())
#print(df['Gender'].value_counts())
#print(df[['Gender','Age']].value_counts())
#print(DF2[['Gender','Age']].value_counts())
#print(DF2.sort_values('Age'))
#print(df.sort_values(by='Age', ascending=True))
#df.set_index(['Gender','Age'],inplace=True)
#df.sort_index(inplace=True)
#df.describe()
print(df.columns)
#print(df[['Gender','Age']])

Sueño_Genero=df.pivot_table(index="Gender",columns="Age",values="Sleep_Duration",aggfunc="mean")
print(Sueño_Genero)

Sueño_Edad=df.pivot_table(index="Age",columns="University_Year",values="Sleep_Duration",aggfunc="mean")
print(Sueño_Edad)

Sueño_calidad=df.pivot_table(index="Age",columns="University_Year",values="Sleep_Quality",aggfunc="mean")
print(Sueño_calidad)

Cafeina_Genero=df.pivot_table(index="University_Year",columns="Gender",values="Caffeine_Intake",aggfunc="mean")
        
print(Cafeina_Genero)
Actividad_Fisica=df.pivot_table(index="University_Year",columns="Gender",values="Physical_Activity",aggfunc="mean")
print(Actividad_Fisica)

sns.heatmap(Actividad_Fisica,
            annot=True, cmap='YlOrRd',linewidths=0.9,linecolor="white").set_title('Actividad Física',
                                                   fontdict={'fontsize':20,
                                                           'fontweight':'bold',
                                                           'color': 'black'})
plt.show()

sns.heatmap(Cafeina_Genero,
            annot=True, cmap='YlOrRd',linewidths=0.9,linecolor="white").set_title('Cafeína por Genero',
                                                 fontdict={'fontsize':20,
                                                           'fontweight':'bold',
                                                           'color': 'black'})

plt.show()

sns.heatmap(Sueño_calidad,
            annot=True, cmap='YlOrRd',linewidths=0.9,linecolor="white").set_title('Sueño de Calidad por edad',
                                                 fontdict={'fontsize':20,
                                                           'fontweight':'bold',
                                                           'color': 'black'})
plt.show()



plt.figure(figsize=(4,3))
sns.histplot(data=df, x="Gender",bins=50,kde=True)
plt.show()

sns.pairplot(df[['Sleep_Duration','Physical_Activity','Gender']],hue='Gender')
plt.show()