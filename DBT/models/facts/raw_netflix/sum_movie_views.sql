{{ config(
    materialized= 'table'
)}}

SELECT
    mv.movie_id,
    m.title,
    mv.total_views
FROM (
    SELECT
        movie_id,
        COUNT(*) AS total_views
    FROM {{ ref('movie_viewings') }}
    GROUP BY movie_id
) mv
LEFT JOIN {{ ref('movies') }} m
ON mv.movie_id = m.movie_id