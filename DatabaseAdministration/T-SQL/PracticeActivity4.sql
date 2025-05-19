select system_type_id, column_id,  system_type_id / column_id as Calculation
from sys.all_columns


--1 make it decimals in calculation column
select system_type_id, column_id,  convert(decimal(5,2), system_type_id) / convert(decimal(5,2), column_id) as Calculation
from sys.all_columns

--round down to next whole number
select system_type_id, column_id,  floor(convert(decimal(5,2), system_type_id) / convert(decimal(5,2), column_id)) as Calculation
from sys.all_columns

-- round up to next whole number
select system_type_id, column_id,  ceiling(convert(decimal(5,2), system_type_id) / convert(decimal(5,2), column_id)) as Calculation
from sys.all_columns

--nearest decimal to the 1: eg 1.56 to 1.6
select system_type_id, column_id,  round(convert(decimal(5,2), system_type_id) / convert(decimal(5,2), column_id), 1) as Calculation
from sys.all_columns


--multiple system_type by 2 then change to tiny int. if doesnt work use try_convert or try_cast
select try_cast(system_type_id * 2 as tinyint)
from sys.all_columns