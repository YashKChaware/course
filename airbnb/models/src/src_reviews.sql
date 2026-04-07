with raw_reviews as (
    SELECT * FROM AIRBNB.RAW.RAW_REVIEWS
)

select listing_id,
date as review_date,
reviewer_name,
comments as review_text,
sentiment as review_statment,
from raw_reviews