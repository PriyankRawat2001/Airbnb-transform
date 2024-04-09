select
    * 
from
    {{ref("dim_listings_cleansed")}} l
INNER JOIN {{ref("fct_reviews")}} r
USING (listing_id)
where
    l.created_at > r.review_date