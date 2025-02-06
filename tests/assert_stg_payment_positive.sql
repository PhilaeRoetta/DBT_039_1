SELECT
    *
FROM
    {{ref('stg_payment')}}
WHERE
    order_amount < 0