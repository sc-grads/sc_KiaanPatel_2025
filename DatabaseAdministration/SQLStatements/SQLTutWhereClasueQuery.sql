--Using WHERE Clause
/*
SELECT *
FROM sales.customers
WHERE state = 'NY'
*/

/*
SELECT * 
FROM production.pokemon
WHERE id <> 2				-- Can also use != for not equals
*/

/*
SELECT *
FROM sales.customers
WHERE customer_id != 2 AND state = 'CA' AND phone IS NOT NULL
*/

/*
SELECT *
FROM sales.customers
WHERE first_name LIKE 'W%'
*/

SELECT *
FROM sales.customers
WHERE phone IS NOT NULL