
  create or replace   view PETS.DBT_TESTING.stage_dim_customer
  
   as (
    with unique_data as(
select
    Customer_ID,Customer_Name
from
 PETS.DBT_TESTING.super_store
 group by Customer_ID,Customer_Name
 )
 select Customer_ID,Customer_Name
 from unique_data
  );

