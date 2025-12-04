/*
SELECT TOP (1000) *
  FROM [BikeStores].[production].[products] Products
  INNER JOIN production.brands Brands
  ON Products.brand_id = Brands.brand_id
  INNER JOIN production.categories Category
  ON Products.category_id = Category.category_id
  */

  SELECT TOP (1000)
  product_id,
	product_name,
	model_year,
	list_price,
	brand_name,
	category_name
	FROM production.products Products
	INNER JOIN production.brands Brands
	ON Products.brand_id = Brands.brand_id
	INNER JOIN production.categories Category
	ON Products.category_id = Category.category_id

	--Above is more cleaned up