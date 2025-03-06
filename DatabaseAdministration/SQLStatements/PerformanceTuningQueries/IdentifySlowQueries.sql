SELECT TOP 10 
    total_worker_time / execution_count AS AvgCPU_Time,
    total_elapsed_time / execution_count AS Avg_Elapsed_Time,
    execution_count,
    text AS QueryText
FROM sys.dm_exec_query_stats
CROSS APPLY sys.dm_exec_sql_text(sql_handle)
ORDER BY Avg_Elapsed_Time DESC;
