SELECT
    id,
    created_at,
    city, 
    state, 
    YEAR(birth_date) as birth_year,
    source as sales_channel
FROM
{{ref('bronze_users')}}