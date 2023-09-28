{{
  config(
    materialized = 'table',
    )
}}
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
{{ ref('stage_fact_orders') }}