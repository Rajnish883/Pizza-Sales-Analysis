-- Top 5 Pizzas by Total Orders

SELECT 
    pt.name AS pizza_name,
    COUNT(DISTINCT od.order_id) AS Total_Orders
FROM 
    order_details od
JOIN 
    pizzas p ON od.pizza_id = p.pizza_id
JOIN 
    pizza_types pt ON p.pizza_type_id = pt.pizza_type_id
GROUP BY 
    pt.name
ORDER BY 
    Total_Orders DESC
LIMIT 5;



--  Borrom 5 Pizzas by Total Orders:

SELECT 
    pt.name AS pizza_name,
    COUNT(DISTINCT od.order_id) AS Total_Orders
FROM 
    order_details od
JOIN 
    pizzas p ON od.pizza_id = p.pizza_id
JOIN 
    pizza_types pt ON p.pizza_type_id = pt.pizza_type_id
GROUP BY 
    pt.name
ORDER BY 
    Total_Orders ASC
LIMIT 5;
