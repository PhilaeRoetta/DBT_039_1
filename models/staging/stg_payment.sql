with payments as (

    SELECT
        id as payment_id,
        order_id,
        paymentmethod,
        status as order_status,
        amount as order_amount,
        created
    FROM
        DBT.DBT_039_1.PAYMENTS

)

select * from payments