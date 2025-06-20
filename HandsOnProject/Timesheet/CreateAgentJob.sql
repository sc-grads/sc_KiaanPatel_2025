USE [msdb]
GO
DECLARE @jobId BINARY(16)
EXEC  msdb.dbo.sp_add_job @job_name=N'Run_Timesheet_SSIS_Job', 
	@enabled=1, 
	@notify_level_eventlog=0, 
	@notify_level_email=2, 
	@notify_level_page=2, 
	@delete_level=0, 
	@category_name=N'[Uncategorized (Local)]', 
	@owner_login_name=N'Sambe202507\Kiaan Patel', @job_id = @jobId OUTPUT
select @jobId
GO
EXEC msdb.dbo.sp_add_jobserver @job_name=N'Run_Timesheet_SSIS_Job', @server_name = N'SAMBE202507'
GO
	
USE [msdb]
GO
EXEC msdb.dbo.sp_add_jobstep @job_name=N'Run_Timesheet_SSIS_Job', @step_name=N'Step1', 
	@step_id=1, 
	@cmdexec_success_code=0, 
	@on_success_action=1, 
	@on_fail_action=2, 
	@retry_attempts=0, 
	@retry_interval=0, 
	@os_run_priority=0, @subsystem=N'SSIS', 
	@command=N'/ISSERVER "\"\SSISDB\SSISProject\SSISProject\TimesheetEntry.dtsx\"" /SERVER "\".\"" /Par "\"$ServerOption::LOGGING_LEVEL(Int16)\"";1 /Par "\"$ServerOption::SYNCHRONIZED(Boolean)\"";True /CALLERINFO SQLAGENT /REPORTING E', 
	@database_name=N'master', 
	@flags=0

USE [msdb]
GO

-- Adding Step 2 to execute the PowerShell script
EXEC msdb.dbo.sp_add_jobstep 
	@job_name=N'Run_Timesheet_SSIS_Job', 
	@step_name=N'Step2', 
	@step_id=2, 
	@cmdexec_success_code=0, 
	@on_success_action=1, 
	@on_fail_action=2, 
	@retry_attempts=0, 
	@retry_interval=0, 
	@os_run_priority=0, 
	@subsystem=N'PowerShell', 
	@command=N'# Set the path to your Elasticsearch executable
		$elasticPath = "C:\ELK\elasticsearch-9.0.2-windows-x86_64\elasticsearch-9.0.2\bin\elasticsearch.bat"		 
		# Launch Elasticsearch
		Start-Process -FilePath $elasticPath		 
		Start-Sleep -Seconds 60		 
		# Set the path to your Logstash installation and config file
		$logstashPath = "C:\ELK\logstash-9.0.2-windows-x86_64\logstash-9.0.2\bin\logstash.bat"
		$FilePath = "C:\ELK\Data\apache.conf"		 
		# Run Logstash with your configuration file
		Start-Process -FilePath $logstashPath -ArgumentList "-f `"$FilePath`"" -NoNewWindow -Wait		 
		# Set the path to your Logstash installation and config file
		$logstashPath = "C:\ELK\logstash-9.0.2-windows-x86_64\logstash-9.0.2\bin\logstash.bat"
		$FilePathError = "C:\ELK\Data\errorlog.conf"		 
		# Run Logstash with your configuration file
		Start-Process -FilePath $logstashPath -ArgumentList "-f `"$FilePathError`"" -NoNewWindow -Wait', 
	@database_name=N'master', 
	@flags=0
GO

-- Adding a schedule to run every Friday at 5 PM
DECLARE @schedule_id INT
EXEC msdb.dbo.sp_add_jobschedule 
	@job_name=N'Run_Timesheet_SSIS_Job', 
	@name=N'Weekly_Friday_5PM', 
	@enabled=1, 
	@freq_type=8,        -- Weekly
	@freq_interval=32,   -- Friday (bitmask: 32 = Friday)
	@freq_subday_type=1, -- At the specified time
	@freq_subday_interval=0, 
	@freq_relative_interval=0, 
	@freq_recurrence_factor=1, -- Every 1 week
	@active_start_date=20250620, 
	@active_end_date=99991231, 
	@active_start_time=170000, -- 5:00 PM (HHMMSS)
	@active_end_time=235959, 
	@schedule_id = @schedule_id OUTPUT
SELECT @schedule_id
GO
	
GO
USE [msdb]
GO
EXEC msdb.dbo.sp_update_job @job_name=N'Run_Timesheet_SSIS_Job', 
	@enabled=1, 
	@start_step_id=1, 
	@notify_level_eventlog=0, 
	@notify_level_email=2, 
	@notify_level_page=2, 
	@delete_level=0, 
	@description=N'', 
	@category_name=N'[Uncategorized (Local)]', 
	@owner_login_name=N'Sambe202507\Kiaan Patel', 
	@notify_email_operator_name=N'', 
	@notify_page_operator_name=N''
GO
