/*
SELECT category_id, MAX(list_price)
  FROM [BikeStores].[production].[products]
  GROUP BY category_id
  */

  /*
  SELECT category_id, MAX(list_price)
  FROM [BikeStores].[production].[products]
  WHERE category_id != 1
  GROUP BY category_id
  */

SELECT category_id, MAX(list_price)
  FROM [BikeStores].[production].[products]
  GROUP BY category_id
  HAVING AVG(list_price) > 800