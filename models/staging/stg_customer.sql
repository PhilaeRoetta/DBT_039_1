{{config(
    materialized = 'ephemeral'
    )}}

with customers as (
    SELECT
        id as customer_id,
        firstname as customer_firstname,
        lastname as customer_lastname
    FROM
        {{run_mode(source("DBT_039_1_SRC","CUST"),ref('customer_testing_sample'))}}
)
SELECT * FROM customers