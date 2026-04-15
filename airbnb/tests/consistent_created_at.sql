select * from {{ref('dim_listings_cleansed')}} as dl join {{ref('fct_reviews')}} as fr 
on dl.listing_id = fr.listing_id
where dl.created_at > fr.review_date