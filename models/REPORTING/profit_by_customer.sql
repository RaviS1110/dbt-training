select customername,country sum(profit) as profit
 from {{ ref('stg_orders')}}
 group by customername,country

