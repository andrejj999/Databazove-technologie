SELECT 
    o.order_id,
    c.customer_name,
    p.category,
    o.sales
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
JOIN products p ON o.product_id = p.product_id;