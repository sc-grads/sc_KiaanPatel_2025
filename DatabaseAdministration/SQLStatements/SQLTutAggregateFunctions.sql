SELECT 
SUM(list_price) as SUM,
AVG(list_price) as Average,
MAX(list_price) as [Maximum Price],
MIN(list_price) as [Minimum Price],
COUNT(*) as [Row Count]
  FROM [BikeStores].[sales].[order_items]
