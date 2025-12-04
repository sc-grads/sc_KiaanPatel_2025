CREATE TRIGGER EmployeeInsert 
   ON EmployeeNew 
   AFTER INSERT
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for trigger here
	insert into EmployeeTriggerHistory values
	((select max(ID) from EmployeeNew), 'Insert')
END

select * from EmployeeTriggerHistory



