SELECT TOP (1000) *
  FROM [BikeStores].[sales].[stores] Stores
  LEFT OUTER JOIN sales.staffs Staff
  ON Stores.store_id = Staff.store_id
