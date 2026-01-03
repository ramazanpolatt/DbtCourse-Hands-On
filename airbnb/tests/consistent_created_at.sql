SELECT d.listing_id
FROM {{ ref('fct_reviews') }} as r
         inner join {{ ref('dim_listings_cleansed') }} as d
                   on r.listing_id = d.listing_id
WHERE r.review_date < d.created_at
limit 1