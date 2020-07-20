
# Declaramos la funcion
def bubbleSort(nlist):
    #!Importante! aqui buscamos el maximo numero de la lista menos uno porque no hay otro numero luego de este.
    for passnum in range(len(nlist)-1,0,-1):
        # Creamos otro iterador que pasa sobre en rango de la lista
        for i in range(passnum):
            # Aqui comparamos el valor de la izquierda con el de la derecha. Si es mayor lo ponemos en la variable temporal 
            # y en las lineas de codigo 12 y 13 los intercambiamos.  
            if nlist[i] > nlist[i+1]:
                temp = nlist[i]
                nlist[i] = nlist[i+1]
                nlist[i+1] = temp

# Lista desorganizada
nlist = [80, 1007, 13,16,53,71,42,61,45,20,70]

# Llama a la funcion
bubbleSort(nlist)

# Imprime el resultado una vez que la funcion complete.
print(nlist)