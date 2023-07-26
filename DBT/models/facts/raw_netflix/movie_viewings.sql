{{ config(
    materialized= 'table'
)}}

SELECT
    datetime,
    duration,
    user_id,
    movie_id
FROM {{ source("raw", "raw_netflix")}}
