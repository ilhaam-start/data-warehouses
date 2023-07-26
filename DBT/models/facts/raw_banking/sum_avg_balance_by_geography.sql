{{ config(
    materialized = 'table'
)}}

SELECT
	c.geography,
	AVG(balance) AS average_balance
FROM {{ ref('banking_fact') }} b
JOIN {{ ref('customers_dim') }} c ON b.customerid = c.customerid
GROUP BY c.geography