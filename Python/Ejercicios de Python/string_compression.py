




import zlib

s = "El lenguaje de Python es muy bueno para el manejo de datos"
t = zlib.compress(s.encode("utf-8"))


print("Sin compresion")
print(s)

print("Con compresion")
print(t)


print("Descomprimido")
print(zlib.decompress(t))

