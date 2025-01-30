with orders as (
    SELECT
        order_id
    FROM
        {{ref('stg_orders')}}
),
payment as (
    SELECT
        payment_id,
        order_id,
        order_amount
    FROM
        {{ref("stg_payment")}}
)
SELECT
    o.order_id,
    p.payment_id,
    COALESCE(p.order_amount,0) AS order_amount
FROM
    orders o
LEFT JOIN
    payment p
    ON p.order_id = o.order_id
