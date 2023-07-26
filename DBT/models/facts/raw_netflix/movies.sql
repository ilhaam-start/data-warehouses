{{ config(
    materialized = 'table',
)}}
SELECT
    DISTINCT
    title,
    genres,
    release_date,
    movie_id
FROM {{ source("raw", "raw_netflix") }}
