

SELECT
	c.customerid,
	c.surname,
	c.geography,
	c.gender,
	s.estimatedsalary
FROM "mydb"."dbt_warehouse"."customers_dim" c
JOIN salary s ON c.customerid = s.customerid