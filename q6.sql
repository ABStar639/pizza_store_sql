-- Join the necessary tables to find the total quantity of each pizza category ordered.

SELECT 
    pizza_types.category AS pizza_category,
    SUM(order_details.quantity) AS quantity
FROM
    pizza_types
        JOIN
    pizzas ON pizza_types.pizza_type_id = pizzas.pizza_type_id
        JOIN
    order_details ON order_details.pizza_id = pizzas.pizza_id
GROUP BY pizza_category
ORDER BY quantity DESC;
