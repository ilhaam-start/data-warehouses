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
	complain
FROM {{ source("raw", "raw_banking") }}