

SELECT
	geography,
	AVG(age) AS average_age
FROM "mydb"."dbt_warehouse"."customers_dim"
GROUP BY geography