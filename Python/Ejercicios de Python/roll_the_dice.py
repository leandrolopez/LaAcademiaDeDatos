

import random

valor_minimo = 1
valor_maximo = 6

juega_otra_vez = "si"

while juega_otra_vez == "si" or juega_otra_vez == "s":
    print("Tirando los dados...")
    print("Los numeros son...")
    print(random.randint(valor_minimo, valor_maximo))
    print(random.randint(valor_minimo, valor_maximo))
    juega_otra_vez = input("Tira los dados otra vez? ")

