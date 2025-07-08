--  Average Pizzas Per Order:


SELECT 
    ROUND(SUM(quantity) / COUNT(DISTINCT order_id),
            2) AS Average_pizza_per_order
FROM
    order_details
    
