
  
    

  create  table "mydb"."dbt_warehouse"."banking__dbt_tmp"
  
  
    as
  
  (
    
SELECT
    DISTINCT
    rownumber,
	customerid,
	creditscore,
	balance,
	exited,
	complain
FROM mydb.public.raw_banking
  );
  