with src_hosts as (
    select * from {{ref('src_hosts')}}
)

select
    HOST_ID,
    nvl(
        host_name,'Anonymous'
    ) as host_name,
    IS_SUPERHOST,
    CREATED_AT,
    UPDATED_AT
from src_hosts