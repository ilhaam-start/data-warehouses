

SELECT
	tenure,
	COUNT(*) AS total_customers
FROM "mydb"."dbt_warehouse"."customers_dim"
GROUP BY tenure