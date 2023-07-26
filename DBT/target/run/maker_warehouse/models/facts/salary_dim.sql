
  
    

  create  table "mydb"."dbt_warehouse"."salary_dim__dbt_tmp"
  
  
    as
  
  (
    
SELECT
    DISTINCT
    customerid,
	estimatedsalary
FROM mydb.public.raw_banking
  );
  