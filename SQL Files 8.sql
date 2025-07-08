-- Monthly Trend for Total Orders :

select monthname(order_date) as order_month, count(distinct order_id) as total_orders
from orders group by monthname(order_date)


 