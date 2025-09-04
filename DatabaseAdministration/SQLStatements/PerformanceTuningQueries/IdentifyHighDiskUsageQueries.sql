SELECT TOP 10 
    total_physical_reads / execution_count AS AvgPhysicalReads,
    execution_count,
    text AS QueryText
FROM sys.dm_exec_query_stats
CROSS APPLY sys.dm_exec_sql_text(sql_handle)
ORDER BY AvgPhysicalReads DESC;
