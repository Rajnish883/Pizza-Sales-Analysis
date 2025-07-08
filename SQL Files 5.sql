-- Average order value :

SELECT 
    ROUND(SUM(od.quantity * p.price) / COUNT(DISTINCT od.order_id), 2) AS average_order_value
FROM 
    order_details od
JOIN 
    pizzas p ON od.pizza_id = p.pizza_id;



-- Total pizza sold :



select  sum(quantity) as Total_pizza_sold from order_details

	 
 
 
 
 
 
 
