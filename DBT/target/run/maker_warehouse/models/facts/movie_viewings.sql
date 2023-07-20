
  
    

  create  table "mydb"."dbt_warehouse"."movie_viewings__dbt_tmp"
  
  
    as
  
  (
    

SELECT
    datetime,
    duration,
    user_id,
    movie_id
FROM mydb.public.raw_netflix
  );
  