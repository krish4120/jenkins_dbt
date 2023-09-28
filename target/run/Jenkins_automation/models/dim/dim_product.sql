
  
    

        create or replace transient table PETS.DBT_TESTING.dim_product  as
        (
SELECT
    product_id,
    category,
    sub_category,
    product_name
FROM
    PETS.DBT_TESTING.stage_dim_product
        );
      
  