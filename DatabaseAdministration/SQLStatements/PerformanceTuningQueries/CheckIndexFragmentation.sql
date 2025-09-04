SELECT 
    dbschemas.[name] AS SchemaName,
    dbtables.[name] AS TableName,
    dbindexes.[name] AS IndexName,
    indexstats.avg_fragmentation_in_percent
FROM sys.dm_db_index_physical_stats(DB_ID(), NULL, NULL, NULL, 'LIMITED') indexstats
INNER JOIN sys.tables dbtables ON dbtables.[object_id] = indexstats.[object_id]
INNER JOIN sys.schemas dbschemas ON dbschemas.[schema_id] = dbtables.[schema_id]
INNER JOIN sys.indexes dbindexes ON dbindexes.[object_id] = indexstats.[object_id]
    AND indexstats.index_id = dbindexes.index_id
WHERE indexstats.avg_fragmentation_in_percent > 30
ORDER BY indexstats.avg_fragmentation_in_percent DESC;
