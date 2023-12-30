select id as event_id, * except (id), from {{ source("thelook_ecommerce", "events") }}
