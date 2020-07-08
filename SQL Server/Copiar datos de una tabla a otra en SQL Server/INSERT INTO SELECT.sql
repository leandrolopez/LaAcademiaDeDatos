
-- Metodo 1: Usando el INSERT INTO SELECT 

Use AdventureWorks2016
go

--- Crear la tabla de prueba
create table TablaDePrueba (PrimerNombre nvarchar(150), Apellido nvarchar(150))

--- Usando el INSERT INTO SELECT
insert into TablaDePrueba(PrimerNombre, Apellido)
select FirstName, LastName
from Person.Person
where EmailPromotion = 1


-- Verifica que la informacion fue copiada
select PrimerNombre, Apellido
from TablaDePrueba

-- Limpiar
drop table TablaDePrueba
