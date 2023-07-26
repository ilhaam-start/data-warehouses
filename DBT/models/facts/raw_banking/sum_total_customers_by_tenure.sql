{{ config(
    materialized = 'table'
)}}

SELECT
	tenure,
	COUNT(*) AS total_customers
FROM {{ ref('customers_dim') }}
GROUP BY tenure