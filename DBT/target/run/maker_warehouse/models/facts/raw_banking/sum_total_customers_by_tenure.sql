
  
    

  create  table "mydb"."dbt_warehouse"."sum_total_customers_by_tenure__dbt_tmp"
  
  
    as
  
  (
    

SELECT
	tenure,
	COUNT(*) AS total_customers
FROM "mydb"."dbt_warehouse"."customers_dim"
GROUP BY tenure
  );
  