with unique_data as(
select
    Customer_ID,Customer_Name
from
 {{ source('pets', 'super_store') }}
 group by Customer_ID,Customer_Name
 )
 select Customer_ID,Customer_Name
 from unique_data