{{ config(
    materialized = 'table',
)}}
SELECT
    DISTINCT
    customerid,
	estimatedsalary
FROM {{ source("raw", "raw_banking") }}