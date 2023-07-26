
  
    

  create  table "mydb"."dbt_warehouse"."sum_movie_viewing_time__dbt_tmp"
  
  
    as
  
  (
    

SELECT
    mv.movie_id,
    m.title,
    mv.total_viewing_time
FROM (
    SELECT
        movie_id,
        SUM(duration) AS total_viewing_time
    FROM "mydb"."dbt_warehouse"."movie_viewings"
    GROUP BY movie_id
) mv
LEFT JOIN "mydb"."dbt_warehouse"."movies" m
ON mv.movie_id = m.movie_id
  );
  