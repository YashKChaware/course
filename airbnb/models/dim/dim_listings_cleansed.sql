with src_listings as (
    select * from {{ref('src_listings')}}
)

select
    listing_id,
    listing_name,
    room_type,
    case
        when minimum_nights = 0 Then 1
        Else minimum_nights
    End as minimum_nights,
    host_id,
    replace(
        price_str,'$'
    ):: number(
        10,2
    ) as price,
    created_at,
    updated_at
from src_listings