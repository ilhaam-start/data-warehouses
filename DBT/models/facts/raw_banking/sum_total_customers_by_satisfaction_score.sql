{{ config(
    materialized = 'table'
)}}

SELECT
	satisfactionscore,
	COUNT(*) AS total_customers
FROM {{ ref('customers_dim') }}
GROUP BY satisfactionscore