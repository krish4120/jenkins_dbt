with fact_table as
(
select
MD5(fact.Ship_Mode||fact.Segment||fact.Country||fact.City||fact.State||fact.Postal_Code||fact.Region) AS SHIP_ID,
Order_ID,Order_Date,Ship_Date,Sales,Quantity,Discount,Profit,Customer_ID,Product_ID
from
{{ source('pets', 'super_store') }} fact 
),
fact_data as(
select fact.SHIP_ID,Order_ID,Order_Date,Ship_Date,fact.Customer_ID,Sales,Quantity,Discount,Profit,product.Product_ID
from 
    fact_table fact
    inner join {{ ref('dim_customer') }} as customer 
    on fact.Customer_ID=customer.Customer_ID
    inner join {{ ref('dim_product') }} product
    on fact.Product_ID=product.Product_ID
    inner join {{ ref('dim_shipping') }} as shipping
    on fact.Ship_ID=shipping.Ship_ID
)
select 
Order_ID,
Order_Date,
Ship_Date,
Customer_ID,
ship_id,
Sales,
Quantity,
Discount,
Profit,
Product_ID
FROM
fact_data