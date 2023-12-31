{{
    config(
        partition_by={
            "field": "created_at",
            "data_type": "timestamp",
            "granularity": "day",
        }
    )
}}

select
    user_id,
    first_name,
    last_name,
    email,
    age,
    gender,
    state,
    street_address,
    postal_code,
    city,
    country,
    latitude,
    longitude,
    traffic_source,
    created_at,
from {{ ref("stg_thelook_ecommerce__users") }}
