{{ config(
    materialized = 'table'
)}}

SELECT
	CASE
		WHEN creditscore < 600 THEN 'Poor (Below 600)'
		WHEN creditscore >= 600 AND creditscore < 700 THEN 'Fair (600-699)'
		WHEN creditscore >= 700 AND creditscore < 800 THEN 'Good (700-799)'
		ELSE 'Excellent (800+)'
	END AS credit_score_range,
	COUNT(*) AS total_customers
FROM {{ ref('banking_fact') }}
GROUP BY credit_score_range