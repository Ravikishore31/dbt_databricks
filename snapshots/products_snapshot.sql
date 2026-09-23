{% snapshot products_snapshot %}

    {{
        config(
            database = 'dbt_databricks_project',
            target_schema = 'bronze',
            strategy = 'timestamp',
            unique_key = 'id',
            updated_at = 'created_at',
        )
    }}

    select * from {{ source('landing', 'products')}}

{% endsnapshot %}