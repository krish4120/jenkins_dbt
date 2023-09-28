{{
  config(
    materialized = 'table',
    )
}}
SELECT
    customer_id,
    customer_name
FROM
    {{ ref('stage_dim_customer') }}
