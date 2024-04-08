with raw_reviews as(
select * from AIRBNB.RAW.RAW_REVIEWS
)
SELECT
    listing_id,
    DATE as review_date,
    reviewer_name,
    comments as review_text,
    sentiment as review_sentiment
from
    raw_reviews