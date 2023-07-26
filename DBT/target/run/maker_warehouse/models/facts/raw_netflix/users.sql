
  
    

  create  table "mydb"."dbt_warehouse"."users__dbt_tmp"
  
  
    as
  
  (
    

SELECT
    DISTINCT user_id
FROM mydb.public.raw_netflix
  );
  