{{
    config(
        partition_by={
            "field": "started_at",
            "data_type": "timestamp",
            "granularity": "day",
        }
    )
}}

select session_id, user_id, min(created_at) as started_at, max(created_at) as ended_at,
from {{ ref("stg_thelook_ecommerce__events") }}
where user_id is not null
group by session_id, user_id
