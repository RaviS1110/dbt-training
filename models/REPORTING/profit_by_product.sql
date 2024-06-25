select productname,sum(profit) as profit  from {{ ref('stg_orders')}}
group by productname
