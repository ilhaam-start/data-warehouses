
  
    

  create  table "mydb"."dbt_warehouse"."sum_avg_credit_score_by_age_group__dbt_tmp"
  
  
    as
  
  (
    

SELECT
	CASE
		WHEN c.age < 30 THEN 'Under 30'
		WHEN c.age >= 30 AND age < 40 THEN '30-39'
		WHEN c.age >= 40 AND age < 50 THEN '40-49'
		ELSE '50+'
	END AS age_group,
	AVG(b.creditscore) AS average_credit_score
FROM "mydb"."dbt_warehouse"."banking_fact" b
JOIN "mydb"."dbt_warehouse"."customers_dim" c ON b.customerid = c.customerid
GROUP BY age_group
  );
  