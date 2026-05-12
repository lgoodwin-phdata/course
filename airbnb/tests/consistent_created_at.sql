select fct.listing_id, fct.review_date, dim.created_at
from {{ref('fct_reviews')}} as fct 
left join 
{{ref('dim_listings_cleansed')}} as dim on fct.listing_id = dim.listing_id
where fct.review_date < dim.created_at
limit 10