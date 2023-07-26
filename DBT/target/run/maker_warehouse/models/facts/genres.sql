
  
    

  create  table "mydb"."dbt_warehouse"."genres__dbt_tmp"
  
  
    as
  
  (
    

SELECT
    DISTINCT genres
FROM mydb.public.raw_netflix
  );
  