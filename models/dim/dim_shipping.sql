{{
  config(
    materialized = 'table',
    )
}}

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
    {{ ref('stage_dim_shipping') }}
