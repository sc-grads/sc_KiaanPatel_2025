/*
SELECT *
FROM production.products
ORDER BY list_price ASC
*/

/*
SELECT *
FROM production.products
ORDER BY list_price DESC
*/

SELECT product_name as [Product Name], model_year [Model Year], list_price [List Price]
FROM  production.products
ORDER BY model_year, list_price ASC