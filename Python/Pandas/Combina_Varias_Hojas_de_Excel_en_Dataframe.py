

import pandas as pd

hoja_de_calculo = "F:/Recorded Tutorials/Python/7-Como combinar varias hojas de Excel en un DataFrame de pandas/Teams lista pracial 2020.xlsx"


# Importando una hoja
una_hoja = pd.read_excel(hoja_de_calculo,sheet_name='Italia')

print(una_hoja)

# Importando todas las hojas
todas_las_hojas = pd.read_excel(hoja_de_calculo, sheet_name=None)

# Miramos todas las hojas importadas
todas_las_hojas.keys()

# Mira el contenido de las hojas
print(todas_las_hojas)

# Ahora hacemos la concatenacion y creamos un DataFrame que contiene la combinacion de todas las otras
df_final = pd.concat(todas_las_hojas, ignore_index=True)

print(df_final)

# Todo a la vez
df = pd.concat(pd.read_excel(workbook_url, sheet_name=None), ignore_index=True)