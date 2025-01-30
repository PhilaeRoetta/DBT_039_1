with orders as (
    SELECT
        id as order_id,
        user_id as customer_id,
        order_date,
        status
    FROM
        DBT.DBT_039_1.ORDERS
)
SELECT * FROM orders