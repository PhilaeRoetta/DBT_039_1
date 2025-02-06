with payments as (

    SELECT
        id as payment_id,
        order_id,
        paymentmethod,
        status as order_status,
        amount as order_amount,
        created
    FROM
        {{source("DBT_039_1_SRC","PAY")}}

)

select * from payments