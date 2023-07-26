
  
    

  create  table "mydb"."dbt_warehouse"."customer_balances__dbt_tmp"
  
  
    as
  
  (
    


SELECT
	c.customerid,
	c.surname,
	c.geography,
	c.gender,
	b.balance
FROM "mydb"."dbt_warehouse"."customers_dim" c
JOIN banking b ON c.customerid = b.customerid
  );
  