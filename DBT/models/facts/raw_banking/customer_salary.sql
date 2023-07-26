{{ config(
    materialized = 'table'
)}}

SELECT
	c.customerid,
	c.surname,
	c.geography,
	c.gender,
	s.estimatedsalary
FROM {{ ref('customers_dim') }} c
JOIN salary s ON c.customerid = s.customerid
