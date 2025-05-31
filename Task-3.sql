
SELECT 
    c.customer_state,
    COUNT(o.order_id) AS total_orders
FROM 
    olist_customers_dataset c
JOIN 
    olist_orders_dataset o ON c.customer_id = o.customer_id
GROUP BY 
    c.customer_state
ORDER BY 
    total_orders DESC;