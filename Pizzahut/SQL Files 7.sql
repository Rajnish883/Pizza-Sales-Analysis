--  Daily Trend for Total Orders:

select dayname(order_date) as order_day, count(distinct order_id) as total_orders
from orders group by dayname(order_date) 



