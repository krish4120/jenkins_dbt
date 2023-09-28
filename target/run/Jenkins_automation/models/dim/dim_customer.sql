
  
    

        create or replace transient table PETS.DBT_TESTING.dim_customer  as
        (
SELECT
    customer_id,
    customer_name
FROM
    PETS.DBT_TESTING.stage_dim_customer
        );
      
  