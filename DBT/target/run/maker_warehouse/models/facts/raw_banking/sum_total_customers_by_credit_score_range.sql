
  
    

  create  table "mydb"."dbt_warehouse"."sum_total_customers_by_credit_score_range__dbt_tmp"
  
  
    as
  
  (
    

SELECT
	CASE
		WHEN creditscore < 600 THEN 'Poor (Below 600)'
		WHEN creditscore >= 600 AND creditscore < 700 THEN 'Fair (600-699)'
		WHEN creditscore >= 700 AND creditscore < 800 THEN 'Good (700-799)'
		ELSE 'Excellent (800+)'
	END AS credit_score_range,
	COUNT(*) AS total_customers
FROM "mydb"."dbt_warehouse"."banking_fact"
GROUP BY credit_score_range
  );
  