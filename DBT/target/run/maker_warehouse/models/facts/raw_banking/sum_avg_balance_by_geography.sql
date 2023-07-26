
  
    

  create  table "mydb"."dbt_warehouse"."sum_avg_balance_by_geography__dbt_tmp"
  
  
    as
  
  (
    

SELECT
	c.geography,
	AVG(balance) AS average_balance
FROM "mydb"."dbt_warehouse"."banking_fact" b
JOIN "mydb"."dbt_warehouse"."customers_dim" c ON b.customerid = c.customerid
GROUP BY c.geography
  );
  