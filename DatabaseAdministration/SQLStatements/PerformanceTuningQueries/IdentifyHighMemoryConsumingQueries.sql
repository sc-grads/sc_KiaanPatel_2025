SELECT TOP 10 
    total_grant_kb / execution_count AS AvgMemoryGrant,
    execution_count,
    text AS QueryText
FROM sys.dm_exec_query_stats
CROSS APPLY sys.dm_exec_sql_text(sql_handle)
ORDER BY AvgMemoryGrant DESC;
