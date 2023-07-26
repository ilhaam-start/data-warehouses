
  
    

  create  table "mydb"."dbt_warehouse"."sum_total_customers_by_satisfaction_score__dbt_tmp"
  
  
    as
  
  (
    

SELECT
	satisfactionscore,
	COUNT(*) AS total_customers
FROM "mydb"."dbt_warehouse"."customers_dim"
GROUP BY satisfactionscore
  );
  