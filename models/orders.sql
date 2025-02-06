{{config(
    materialized = 'incremental',
    unique_key = 'ORDER_ID'
)}}

SELECT * FROM {{ref('stg_orders')}}
{% if is_incremental()%}
WHERE ORDER_DATE > SELECT (MAX(ORDER_DATE) FROM {{this}})
{% endif %}