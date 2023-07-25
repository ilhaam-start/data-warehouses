select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select genres
from "mydb"."dbt_warehouse"."genres"
where genres is null



      
    ) dbt_internal_test