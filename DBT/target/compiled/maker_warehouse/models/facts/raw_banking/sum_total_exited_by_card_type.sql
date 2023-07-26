

SELECT
	c.cardtype,
	COUNT(*) AS total_exited
FROM "mydb"."dbt_warehouse"."banking_fact" b
JOIN "mydb"."dbt_warehouse"."customers_dim" c ON b.customerid = c.customerid
WHERE b.exited = 1
GROUP BY c.cardtype