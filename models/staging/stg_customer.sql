with customers as (
    SELECT
        id as customer_id,
        firstname as customer_firstname,
        lastname as customer_lastname
    FROM
        DBT.DBT_039_1.CUSTOMERS
)
SELECT * FROM customers