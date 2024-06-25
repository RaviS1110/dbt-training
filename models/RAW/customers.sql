{{
    config(
        materialized='table'
    )
}}

--select * from raw_db.globalmart.customers
select * from {{ source('globalmart', 'customer') }}