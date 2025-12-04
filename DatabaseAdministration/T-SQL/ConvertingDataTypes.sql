-- add .0 to either of the numbers to change to float
select 3/2
select 3.0/2

--Implicit Conversion
declare @myvar as decimal(5, 2) = 3

select @myvar


--Explicit Conversion
select convert(decimal(5, 2), 3)/2
select cast(3 as decimal(5,2))/2

select convert(decimal(6,2), 1000)
select convert(int, 12.345) + convert(int, 12.7)