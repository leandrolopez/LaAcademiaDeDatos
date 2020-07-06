

import zlib

s = "El lenguaje Python is muy bueno para procesamiento de datos"
t =  zlib.compress(s.encode("utf-8"))

print("Sin compresión")
print(s)

print("Con compresión")
print(t)

print("Decompresionado")
print(zlib.decompress(t))




