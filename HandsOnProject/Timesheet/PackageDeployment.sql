-- Create folder if not exists
IF NOT EXISTS (SELECT 1 FROM SSISDB.catalog.folders WHERE name = 'SSISProject')
BEGIN
  EXEC SSISDB.catalog.create_folder @folder_name = 'SSISMProject', @folder_id = NULL
END

-- Deploy the package
DECLARE @ProjectBinary VARBINARY(MAX)
SELECT @ProjectBinary = BulkColumn 
FROM OPENROWSET(BULK 'C:\Users\Kiaan Patel\Git\sc_KiaanPatel_2025\HandsOnProject\Timesheet\SSISProject.ispac', SINGLE_BLOB) AS x

EXEC SSISDB.catalog.deploy_project 
  @folder_name = 'SSISProject',
  @project_name = 'SSISProjectRun',
  @project_stream = @ProjectBinary
