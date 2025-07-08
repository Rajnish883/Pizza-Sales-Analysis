create database pizzahut;
use pizzahut;

create table orders (
order_id int not null,
order_date date not null,
order_time time not null,
primary key(order_id) );

create table order_details (
order_details_id int not null,
order_id int not null,
pizza_id text not null,
quantity int not null,
primary key(order_details_id) );

select * from order_details;
select * from orders;
select * from pizza_types;
select * from pizzas;

-- Total orders:

SELECT 
    COUNT(distinct order_id) AS Total_orders
FROM
    orders;


-- Total Revenue:

SELECT 
    ROUND(SUM(od.quantity * p.price),
            2) AS total_Revenue
FROM
    order_details od
        JOIN
    pizzas p ON od.pizza_id = p.pizza_id






 

















