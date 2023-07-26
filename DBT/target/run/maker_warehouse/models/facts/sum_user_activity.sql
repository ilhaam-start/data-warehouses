
  
    

  create  table "mydb"."dbt_warehouse"."sum_user_activity__dbt_tmp"
  
  
    as
  
  (
    

SELECT
    user_id,
    COUNT(DISTINCT movie_id) AS each_movie_viewed,
    COUNT(*) AS total_viewings,
    SUM(duration) AS total_viewing_time
FROM "mydb"."dbt_warehouse"."movie_viewings"
GROUP BY user_id
  );
  