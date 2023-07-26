
  
    

  create  table "mydb"."dbt_warehouse"."movies__dbt_tmp"
  
  
    as
  
  (
    
SELECT
    DISTINCT
    title,
    genres,
    release_date,
    movie_id
FROM mydb.public.raw_netflix
  );
  