<<<<<<< HEAD

-- Uso simple de waitfor delay para pausar la ejecucion de un comando

use tempdb
go

select getdate() FechaConHora

waitfor delay '00:00:05'

=======

-- Uso simple de waitfor delay para pausar la ejecucion de un comando

use tempdb
go

select getdate() FechaConHora

waitfor delay '00:00:05'

>>>>>>> fb1aa228dc07fa487ce99d7d02b48377e8439b98
select getdate() FechaConHora2