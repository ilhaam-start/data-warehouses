{{ config(
    materialized = 'table'
)}}

SELECT
	geography,
	AVG(age) AS average_age
FROM {{ ref('customers_dim') }}
GROUP BY geography