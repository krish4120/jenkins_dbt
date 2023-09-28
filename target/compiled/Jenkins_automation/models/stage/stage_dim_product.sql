With unique_data as
(
Select Product_ID,Category,Sub_Category,Product_Name
from PETS.DBT_TESTING.super_store
group by Product_ID,Category,Sub_Category,Product_Name
)

Select 
    Product_ID,
    Category,
    Sub_Category,
    Product_Name
from
    unique_data