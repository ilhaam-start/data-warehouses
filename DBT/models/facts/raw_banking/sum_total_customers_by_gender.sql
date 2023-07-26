{{ config(
    materialized = 'table'
)}}

SELECT
	gender,
	COUNT(*) AS total_customers
FROM {{ ref('customers_dim') }}
GROUP BY gender