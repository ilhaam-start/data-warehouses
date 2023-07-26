{{ config(
    materialized= 'table'
)}}

SELECT
    m.genres,
    COUNT(DISTINCT mv.movie_id) AS each_movie_viewed,
    COUNT(*) AS total_viewings
FROM {{ ref('movie_viewings') }} mv
LEFT JOIN {{ ref('movies') }} m
ON mv.movie_id = m.movie_id
GROUP BY genres