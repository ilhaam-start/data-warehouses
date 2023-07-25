{{ config(
    materialized = 'table',
)}}
SELECT
    DISTINCT
    rownumber,
	customerid,
	creditscore,
	balance,
	exited,
	complain,
	total_balance
FROM {{ source("raw", "raw_banking") }}