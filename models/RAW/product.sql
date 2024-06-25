{{
    config(
        materialized='table'
    )
}}

 --select * from raw_db.globalmart.product
 select * from {{ source('globalmart', 'product') }}