{{ config(
    materialized= 'table'
)}}

SELECT
    DISTINCT user_id
FROM {{ source("raw", "raw_netflix") }}