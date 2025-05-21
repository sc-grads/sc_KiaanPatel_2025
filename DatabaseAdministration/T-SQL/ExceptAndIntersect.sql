select *, Row_Number() over(order by (select null)) % 3 as ShouldIDelete
into tblTransactionNew
from tblTransaction

delete from tblTransactionNew
where ShouldIDelete = 1

update tblTransactionNew
set DateOfTransaction = dateadd(day,1,DateOfTransaction)
Where ShouldIDelete = 2

alter table tblTransactionNew
drop column ShouldIDelete

select * from tblTransaction -- 2486 rows
--union all
--union
except --retrieve all the unique records from the left operand (query), except the records that are present in the result set of the right operand (query
--intersect --returns data thats present in both rows
select * from tblTransactionNew -- 1657 rows, 829 changed rows, 828 unchanged
order by EmployeeNumber
