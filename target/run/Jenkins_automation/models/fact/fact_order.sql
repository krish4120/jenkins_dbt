
  
    

        create or replace transient table PETS.DBT_TESTING.fact_order  as
        (
Select 
Order_ID,
Order_Date,
Ship_Date,
Ship_ID,
Customer_ID,
Sales,
Quantity,
Discount,
Profit,
Product_ID
from 
PETS.DBT_TESTING.stage_fact_orders
        );
      
  