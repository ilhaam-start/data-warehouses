{{ config(
    materialized = 'table',
)}}
SELECT
    DISTINCT
    customerid,
	surname,
	geography,
	gender,
	age,
	tenure,
	numofproducts,
	hascrcard,
	isactivemember,
	cardtype,
	satisfactionscore,
	pointearned
FROM {{ source("raw", "raw_banking") }}