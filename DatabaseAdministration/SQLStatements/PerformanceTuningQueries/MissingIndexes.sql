SELECT 
    mig.index_group_handle,
    mid.statement AS TableName,
    mid.equality_columns,
    mid.inequality_columns,
    mid.included_columns,
    migs.unique_compiles,
    migs.user_seeks,
    migs.user_scans
FROM sys.dm_db_missing_index_groups mig
JOIN sys.dm_db_missing_index_group_stats migs 
    ON mig.index_group_handle = migs.group_handle
JOIN sys.dm_db_missing_index_details mid 
    ON mig.index_handle = mid.index_handle
ORDER BY migs.user_seeks DESC;
