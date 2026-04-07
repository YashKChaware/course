with raw_hosts as (
    SELECT * FROM AIRBNB.RAW.RAW_HOSTS
)

select ID as host_id,
NAME as host_name,
IS_SUPERHOST,
CREATED_AT,
UPDATED_AT
from raw_hosts