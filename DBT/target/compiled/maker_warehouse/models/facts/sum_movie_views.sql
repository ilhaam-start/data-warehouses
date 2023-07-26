

SELECT
    mv.movie_id,
    m.title,
    mv.total_views
FROM (
    SELECT
        movie_id,
        COUNT(*) AS total_views
    FROM "mydb"."dbt_warehouse"."movie_viewings"
    GROUP BY movie_id
) mv
LEFT JOIN "mydb"."dbt_warehouse"."movies" m
ON mv.movie_id = m.movie_id