{{ config(
    materialized= 'table'
)}}

SELECT
    DISTINCT genres
FROM {{ source("raw", "raw_netflix") }}