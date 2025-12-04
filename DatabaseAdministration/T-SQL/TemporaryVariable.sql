-- initialise variable, set its data type and value
declare @myvar as smallint = 2000;

-- increase value by 1
set @myvar = @myvar * 10

-- retrieve the value
select @myvar as myVariable