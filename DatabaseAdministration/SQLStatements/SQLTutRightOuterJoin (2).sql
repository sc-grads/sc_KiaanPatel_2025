SELECT TOP (1000) *
  FROM [BikeStores].[sales].[staffs] Staff
  RIGHT OUTER JOIN sales.stores Store
  ON Staff.store_id = Store.store_id
