
  
    

  create  table "mydb"."dbt_warehouse"."sum_total_customers_by_gender__dbt_tmp"
  
  
    as
  
  (
    

SELECT
	gender,
	COUNT(*) AS total_customers
FROM "mydb"."dbt_warehouse"."customers_dim"
GROUP BY gender
  );
  