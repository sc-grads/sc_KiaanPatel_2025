ALTER TABLE tblEmployee
DROP COLUMN Department;

ALTER TABLE tblEmployee
ADD Department VARCHAR(20);

SELECT * FROM tblEmployee

INSERT INTO tblEmployee
VALUES (132, 'Dylan', 'A', 'Word', 'HN513777D', '19920914', 'Customer Relations')

--SELECT LEN( 'Customer Relations')

INSERT INTO tblEmployee([EmployeeFirstName],[EmployeeMiddleName],
[EmployeeLastName],[EmployeeGovernmentID],[DateOfBirth],[Department],[EmployeeNumber])
VALUES ('Jossef', 'H', 'Wright', 'TX593671R', '19711224', 'Litigation',131)

INSERT INTO tblEmployee
VALUES (1, 'Dylan', 'A', 'Word', 'HN513777D', '19920914', 'Customer Relations'),
(2,'Jossef', 'H', 'Wright', 'TX593671R', '19711224', 'Litigation')


select * from tblEmployee
where [EmployeeLastName] = 'Word'


select * from tblEmployee
where [EmployeeLastName] <> 'Word' -- <> also mean !=


select * from tblEmployee
where [EmployeeLastName] like 'w%' --start with w

select * from tblEmployee
where [EmployeeLastName] like '%w' --end with w

select * from tblEmployee
where [EmployeeLastName] like '%w%' --has w in name

select * from tblEmployee
where [EmployeeLastName] like '_w%' --w is the second letter

-- % = 0-infinity characters
-- _ = 1 character
-- [A-G] = In the range A-G.
-- [AGQ] = A, G or Q.
-- [^AGQ] = NOT A, G or Q.

select * from tblEmployee
where [EmployeeLastName] like '[r-t]%'

select * from tblEmployee
where [EmployeeLastName] like '[^rst]%'

select * from tblEmployee
where [EmployeeLastName] like '[%]%' --wildcard query

select * from tblEmployee
where EmployeeLastName like '`%%' ESCAPE '`' --start with %

select * from tblEmployee where EmployeeNumber > 200

select * from tblEmployee where not EmployeeNumber = 200
select * from tblEmployee where EmployeeNumber != 200 --same thing as above

select * from tblEmployee where (EmployeeNumber >= 200 and EmployeeNumber <= 209)

select * from tblEmployee where not (EmployeeNumber >= 200 and EmployeeNumber <= 209)

select * from tblEmployee where (EmployeeNumber >= 200 or EmployeeNumber <= 209)

select * from tblEmployee where (EmployeeNumber between 200 and 209) -- 200 and 209 inclusive

select * from tblEmployee where not (EmployeeNumber between 200 and 209) 

select * from tblEmployee where EmployeeNumber in(200,204,209) -- 200 and 209 inclusive

