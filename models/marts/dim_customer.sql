with orders as (
    SELECT
        min(order_date) as first_order_date,
        max(order_date) as last_order_date,
        count(order_id) as nb_order,
        customer_id
    FROM
        {{ref("stg_orders")}}
    GROUP BY
        customer_id
)
SELECT
    c.customer_id,
    c.customer_firstname,
    c.customer_lastname,
    o.first_order_date,
    o.last_order_date,
    COALESCE(o.nb_order,0) as nb_order
FROM
    {{ref('stg_customer')}} c
LEFT JOIN
    orders o
    ON o.customer_id = c.customer_id