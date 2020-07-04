

import pandas as pd
import time

bricks = pd.read_csv("D:/GitRepositories/PythonRecipes/PythonRecipes/Loop Data Structures/bricks.csv", index_col= 0)

# Metodo con el for loop

start = time.time()

for lab, row in bricks.iterrows():
    # Crear una serie nueva por cada iteración
    bricks.loc[lab, "Letras_en_el_nombre"] = len(row["Pais"])

end = time.time()

tiempo_transcurrido = end - start

print(bricks)
print("Procesado en " + str(tiempo_transcurrido) + " segundos")


# Metodo con el apply() que es una forma vectorizada
# Esta forma es mucho mas eficiente para manipular grandes cantidades de datos

start = time.time()

bricks["Letras_en_el_nombre"] = bricks["Pais"].apply(len)

end = time.time()

tiempo_transcurrido = end - start

print(bricks)
print("Procesado en " + str(tiempo_transcurrido) + " segundos")

