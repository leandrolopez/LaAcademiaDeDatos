

use tempdb
go

declare @numero_aleatorio int
declare @numero_mayor int
declare @numero_menor int

-- Este codigo genera un numero aleatorio entre 1 y 999
set @numero_mayor = 500
set @numero_menor = 1

select @numero_aleatorio = round(((@numero_mayor - @numero_menor - 1) * rand() + @numero_menor),0)

select @numero_aleatorio