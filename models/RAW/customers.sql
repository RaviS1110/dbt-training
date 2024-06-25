{{
    config(
        materialized='table'
    )
}}

select * from raw_db.globalmart.customers