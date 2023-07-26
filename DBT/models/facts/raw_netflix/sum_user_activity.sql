{{ config(
    materialized= 'table'
)}}

SELECT
    user_id,
    COUNT(DISTINCT movie_id) AS each_movie_viewed,
    COUNT(*) AS total_viewings,
    SUM(duration) AS total_viewing_time
FROM {{ ref('movie_viewings') }}
GROUP BY user_id