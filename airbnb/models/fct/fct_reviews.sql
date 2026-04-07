{{
    config(
        materialized = 'incremental',
        on_schema_change = 'fail'
    )
}}   --jinjatemplate for making normal materializatin to incremental materilization
with rec_reviews as(
    select * from {{ref('src_reviews')}}
)

select * from src_reviews
where  review_text is not null
{% if is_incremental() %} -- jinja if templet  to identify if the record is new or not 
    AND review_date >(select max(review_date) from {{ this }})
{% endif %}