with mart_full_moon_reviews as (
    select * from {{ ref('mart_fullmoon_reviews')}}
)

select
    is_full_moon,
    review_sentiment,
    Count(*) as reviews
from 
    mart_fullmoon_reviews
Group by
    is_full_moon,
    review_sentiment
ORDER by   
    is_full_moon,
    review_sentiment