{{ config(
    materialized= 'table'
)}}

SELECT
    mv.movie_id,
    m.title,
    mv.total_viewing_time
FROM (
    SELECT
        movie_id,
        SUM(duration) AS total_viewing_time
    FROM {{ ref('movie_viewings') }}
    GROUP BY movie_id
) mv
LEFT JOIN {{ ref('movies') }} m
ON mv.movie_id = m.movie_id

