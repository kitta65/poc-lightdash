select session_id, user_id, min(created_at) as started_at, max(created_at) as ended_at,
from {{ ref("stg_thelook_ecommerce__events") }}
group by session_id, user_id
