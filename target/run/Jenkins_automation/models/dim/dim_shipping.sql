
  
    

        create or replace transient table PETS.DBT_TESTING.dim_shipping  as
        (

SELECT
    ship_id,
    ship_mode,
    SEGMENT,
    country,
    city,
    state,
    postal_code,
    region
FROM
    PETS.DBT_TESTING.stage_dim_shipping
        );
      
  