
  
    

  create  table "mydb"."dbt_warehouse"."sum_avg_age_by_geography__dbt_tmp"
  
  
    as
  
  (
    

SELECT
	geography,
	AVG(age) AS average_age
FROM "mydb"."dbt_warehouse"."customers_dim"
GROUP BY geography
  );
  