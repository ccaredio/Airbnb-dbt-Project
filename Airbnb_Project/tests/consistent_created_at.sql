select
    *
from
    {{ ref('dim_listings_cleansed') }} l
join
    {{ ref('fact_reviews') }} r on l.listing_id=r.listing_id
where
    l.created_at >= r.review_date