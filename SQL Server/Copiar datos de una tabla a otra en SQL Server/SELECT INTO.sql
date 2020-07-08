
-- Metodo 2: Usando el SELECT INTO

Use AdventureWorks2016
go

-- Selecionar la informacion deseada y guardarla en una tabla nueva al mismo tiempo
select FirstName, LastName
into TablaDePrueba 
from Person.Person
where EmailPromotion = 1


-- Verifica que la informacion fue copiada
select FirstName, LastName
from TablaDePrueba


-- Limpiar
drop table TablaDePrueba

-- Selecionar la informacion deseada usando un alias en las columnas y guardarla en una tabla nueva al mismo tiempo
select FirstName as PrimerNombre, LastName as Apellido
into TablaDePrueba 
from Person.Person
where EmailPromotion = 1

-- Verifica que la informacion fue copiada
select PrimerNombre, Apellido
from TablaDePrueba

-- Limpiar
drop table TablaDePrueba