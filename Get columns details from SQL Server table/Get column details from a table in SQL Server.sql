

/***************************************************************************************************
Script/Procedure:   Get column details from a table.sql
Create Date:        2018-01-25
Author:             La Academia de Datos
Website:			https://www.youtube.com/channel/UCU8OoyIDlGIS3RTjmAnUdNA
Description:        Encontrar detalles de las columnas de una tabla 
Call by:            n/a
Affected table(s):  n/a
Used By:            DBA, DEV
Parameter(s):       n/a
Usage:              Just run the queries

****************************************************************************************************
SUMMARY OF CHANGES
Date(yyyy-mm-dd)    Author              Comments
------------------- ------------------- ------------------------------------------------------------
2020-04-21          Antonio Lopez    Added method #3
2018-04-22          Antonio Lopez    Added method #4
***************************************************************************************************/
/*
*/

use Northwind
go


-- Metodo # 1 Abre la base de datos en el explorador de objetos. 


-- Metodo #2 Usar el Information_Schema que nos da informacion acerca de los objetos.

select * from INFORMATION_SCHEMA.COLUMNS 
where TABLE_NAME = 'Employees'



-- Metodo #3 Crear una query dedicada. Este es mi metodo favorito.

select OBJECT_SCHEMA_NAME (c.object_id) SchemaName,
		o.Name as TableName,
		c.Name as FieldName,
		t.Name as DataType,
		t.max_length as LengthSize,
		t.precision as [Precision]
from sys.columns c
	inner join sys.objects o on o.object_id = c.object_id
	left join sys.types t on t.user_type_id  = c.user_type_id
where o.type = 'U'
and o.Name = N'Employees' -- nombre de la tabla
order by o.name, c.name


-- Metodo # 4 ALT + F1
[dbo].[Employees]


-- Metodo # 5 Usar el sp_columns
sp_columns N'Employees'


