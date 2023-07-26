{{ config(
    materialized = 'table'
)}}


SELECT
	c.customerid,
	c.surname,
	c.geography,
	c.gender,
	b.balance
FROM {{ ref('customers_dim') }} c
JOIN banking b ON c.customerid = b.customerid