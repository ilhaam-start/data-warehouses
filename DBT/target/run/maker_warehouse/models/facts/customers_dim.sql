
  
    

  create  table "mydb"."dbt_warehouse"."customers_dim__dbt_tmp"
  
  
    as
  
  (
    
SELECT
    DISTINCT
    customerid,
	surname,
	geography,
	gender,
	age,
	tenure,
	numofproducts,
	hascrcard,
	isactivemember,
	cardtype,
	satisfactionscore,
	pointearned
FROM mydb.public.raw_banking
  );
  