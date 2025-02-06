{% snapshot mock_orders_snap %}

    {{config(
        unique_key = 'ORDER_ID',
        strategy = 'timestamp',
        updated_at = 'UPDATED'
    )}}

    SELECT * FROM {{source('DBT_039_1_SRC','MOCK')}}

{% endsnapshot %}