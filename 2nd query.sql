-- Calculate the total revenue generated from pizza sales.
SELECT 
    ROUND(SUM(orders_details_id.quamtity * pizzas.price),
            2) AS total_sales
FROM
    orders_details_id
        JOIN
    pizzas ON pizzas.pizza_id = orders_details_id.pizza_id
    
    
   

 