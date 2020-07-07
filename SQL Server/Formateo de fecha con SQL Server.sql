

-- Funciona con todas las versiones de SQL Server 2000 y mayor 

-- Fecha y Hora
SELECT CONVERT(VARCHAR(30),GETDATE()) AS FechaFormateada
SELECT CONVERT(VARCHAR(30),GETDATE(),10) AS FechaFormateada_10
SELECT CONVERT(VARCHAR(30),GETDATE(),101) AS FechaFormateada_101
SELECT CONVERT(VARCHAR(30),GETDATE(),102) AS FechaFormateada_102
SELECT CONVERT(VARCHAR(30),GETDATE(),103) AS FechaFormateada_103
SELECT CONVERT(VARCHAR(30),GETDATE(),104) AS FechaFormateada_104
SELECT CONVERT(VARCHAR(30),GETDATE(),105) AS FechaFormateada_105
SELECT CONVERT(VARCHAR(30),GETDATE(),106) AS FechaFormateada_106
SELECT CONVERT(VARCHAR(30),GETDATE(),103) AS FechaFormateada_107
SELECT CONVERT(VARCHAR(30),GETDATE(),103) AS FechaFormateada_108
SELECT CONVERT(VARCHAR(30),GETDATE(),103) AS FechaFormateada_109
SELECT CONVERT(VARCHAR(30),GETDATE(),110) AS FechaFormateada_110
SELECT CONVERT(VARCHAR(30),GETDATE(),5) AS FechaFormateada_5
SELECT CONVERT(VARCHAR(30),GETDATE(),111) AS FechaFormateada_111
SELECT CONVERT(VARCHAR(30),GETDATE(),112) AS FechaFormateada_112
SELECT CONVERT(VARCHAR(30),GETDATE(),113) AS FechaFormateada_113
SELECT CONVERT(VARCHAR(30),GETDATE(),114) AS FechaFormateada_114
GO


-- Estos formatos especificos funciona con SQL Server 2012 y mayor

SELECT CONVERT(VARCHAR(30),GETDATE(),113) AS FechaFormateada_113;
SELECT FORMAT ( GETDATE(), 'dd mon yyyy HH:m:ss:mmm', 'en-US') AS FechaFormateada_ConFormat

SELECT CONVERT(VARCHAR(30),GETDATE(),114) AS FechaFormateada_114;
SELECT FORMAT ( GETDATE(), 'HH:m:ss:mmm', 'en-US') AS FechaFormateada_ConFormat
GO


-- Ejemplo de uso especifico de la function "format"
SELECT FORMAT(GETDATE(), N'"Current Time is "dddd MMMM dd, yyyy', 'en-US')
AS FechaFormateadaEspecial