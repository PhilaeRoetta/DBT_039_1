with orders as (
    SELECT
        id as order_id,
        user_id as customer_id,
        order_date,
        status
    FROM
        {{source("DBT_039_1_SRC","ORD")}}
)
SELECT * FROM orders