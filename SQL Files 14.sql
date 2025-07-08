-- Top 5 Pizzas by Quantity:

SELECT 
    pt.name AS pizza_name,
    SUM(od.quantity) AS total_quantity_sold
FROM 
    order_details od
JOIN 
    pizzas p ON od.pizza_id = p.pizza_id
JOIN 
    pizza_types pt ON p.pizza_type_id = pt.pizza_type_id
GROUP BY 
    pt.name
ORDER BY 
    total_quantity_sold DESC
LIMIT 5;


-- Bottom 5 Pizzas by Quantity:


SELECT 
    pt.name AS pizza_name,
    SUM(od.quantity) AS total_quantity_sold
FROM 
    order_details od
JOIN 
    pizzas p ON od.pizza_id = p.pizza_id
JOIN 
    pizza_types pt ON p.pizza_type_id = pt.pizza_type_id
GROUP BY 
    pt.name
ORDER BY 
    total_quantity_sold ASC
LIMIT 5;



