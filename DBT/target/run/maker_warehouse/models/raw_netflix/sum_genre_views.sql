
  
    

  create  table "mydb"."dbt_warehouse"."sum_genre_views__dbt_tmp"
  
  
    as
  
  (
    

SELECT
    m.genres,
    COUNT(DISTINCT mv.movie_id) AS each_movie_viewed,
    COUNT(*) AS total_viewings
FROM "mydb"."dbt_warehouse"."movie_viewings" mv
LEFT JOIN "mydb"."dbt_warehouse"."movies" m
ON mv.movie_id = m.movie_id
GROUP BY genres
  );
  