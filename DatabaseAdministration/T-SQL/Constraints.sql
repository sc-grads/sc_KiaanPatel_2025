--Throw an error as a con=straint is placed that makes sure Employee number is not null
INSERT INTO tblEmployee
values (null, 'AnotherFirstName', 'N', 'AnotherLastName', 'AB123457C', '1994-01-02', 'Finance')

--This will work as it is valid insert entry with valid values
INSERT INTO tblEmployee
values (2001, 'FirstName', 'M', 'LastName', 'AB123456C', '1994-01-01', 'Commerical')

select * from tblEmployee
where EmployeeNumber = 2001

delete from tblEmployee
where EmployeeNumber = 2001