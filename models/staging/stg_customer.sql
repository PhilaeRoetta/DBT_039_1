with customers as (
    SELECT
        id as customer_id,
        firstname as customer_firstname,
        lastname as customer_lastname
    FROM
        {{source("DBT_039_1_SRC","CUST")}}
)
SELECT * FROM customers