
-- Uso simple de waitfor delay para pausar la ejecucion de un comando

use tempdb
go

select getdate() FechaConHora

waitfor delay '00:00:05'

select getdate() FechaConHora2