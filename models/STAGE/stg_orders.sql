select 
-- from order
o.ORDERID,
o.ORDERDATE,
o.SHIPDATE,
o.SHIPMODE,
--o.CUSTOMERID,
--o.PRODUCTID,
o.ORDERCOSTPRICE,
o.ORDERSELLINGPRICE,
-- from customers
c.CUSTOMERID,
c.CUSTOMERNAME,
c.SEGMENT,
c.COUNTRY,
c.CITY,
--from product
p.CATEGORY,
p.PRODUCTID,
p.PRODUCTNAME,
p.SUBCATEGORY
,o.ORDERSELLINGPRICE-o.ORDERCOSTPRICE as profit 
from {{ ref('orders') }} as o 
left  join {{ ref('customers') }} as c on c.CUSTOMERID=o.CUSTOMERID
left  join {{ ref('product') }} as p on p.PRODUCTID=o.PRODUCTID