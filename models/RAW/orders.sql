{{
    config(
        materialized='table'
    )
}}


--select * from raw_db.globalmart.orders
select * from {{ source('globalmart', 'orders') }}