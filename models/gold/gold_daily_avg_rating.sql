SELECT
    date(date_format(u.created_at, 'yyyy-MM-dd')) as review_date,
    u.product_id,
    p.product_name, 
    avg(u.rating) as avg_rating
FROM {{ ref('bronze_reviews') }} u
LEFT JOIN {{ ref('silver_products') }} p
ON u.product_id = p.id
group by all