with unique_data as 
(select 
Ship_Mode,
Segment,
Country,
City,
State,
Postal_Code,
Region
from PETS.DBT_TESTING.super_store
group by Ship_Mode,Segment,Country,City,State,Postal_Code,Region
)
select MD5(Ship_Mode||Segment||Country||City||State||Postal_Code||Region) AS SHIP_ID,* from unique_data