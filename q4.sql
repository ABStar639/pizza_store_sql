-- Identify the most common pizza size ordered.

SELECT 
    pizzas.size, COUNT(pizzas.size) AS pizza_size_count
FROM
    pizzas
        JOIN
    order_details ON pizzas.pizza_id = order_details.pizza_id
GROUP BY pizzas.size
ORDER BY pizza_size_count DESC
LIMIT 1;
