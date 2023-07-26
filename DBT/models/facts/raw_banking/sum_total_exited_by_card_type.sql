{{ config(
    materialized = 'table'
)}}

SELECT
	c.cardtype,
	COUNT(*) AS total_exited
FROM {{ ref('banking_fact') }} b
JOIN {{ ref('customers_dim') }} c ON b.customerid = c.customerid
WHERE b.exited = 1
GROUP BY c.cardtype