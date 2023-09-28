{{
  config(
    materialized = 'table',
    )
}}
SELECT
    product_id,
    category,
    sub_category,
    product_name
FROM
    {{ ref('stage_dim_product') }}
