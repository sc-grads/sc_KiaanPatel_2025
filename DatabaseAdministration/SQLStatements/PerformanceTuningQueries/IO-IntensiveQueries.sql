SELECT TOP 10 
    total_logical_reads / execution_count AS AvgLogicalReads,
    execution_count,
    text AS QueryText
FROM sys.dm_exec_query_stats
CROSS APPLY sys.dm_exec_sql_text(sql_handle)
ORDER BY AvgLogicalReads DESC;
;

