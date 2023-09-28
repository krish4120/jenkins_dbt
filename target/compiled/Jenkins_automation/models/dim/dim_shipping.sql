

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