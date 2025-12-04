--Mathematical functions
declare @myvar as numeric(7, 2) = 3

select Power(@myvar, 3)
select square(@myvar)
select power(@myvar, 0.5)
select sqrt(@myvar)


declare @myvar as numeric(7, 2) = 3.74

select floor(@myvar) as myFloor --round down
select ceiling(@myvar) as myCeiling --round up
select round(@myvar, 1) as myRound --round to 1 decimal place

go

select pi() as myPi
select exp(1) as e


declare @myvar as numeric(7, 2) = -456.5678

select abs(@myvar), sign(@myvar) as mySign

go 

select rand(356)

go 

