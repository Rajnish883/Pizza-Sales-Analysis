-- % of sales by pizza size:

SELECT 
    p.size,
    ROUND(SUM(od.quantity * p.price), 2) AS Total_Revenue,
    ROUND(SUM(od.quantity * p.price) * 100.0 / 
         (SELECT SUM(od2.quantity * p2.price)
          FROM order_details od2
          JOIN pizzas p2 ON od2.pizza_id = p2.pizza_id), 2) AS percent_sales
FROM 
    order_details od
JOIN 
    pizzas p ON od.pizza_id = p.pizza_id
GROUP BY 
    p.size
ORDER BY 
    Total_Revenue DESC;
