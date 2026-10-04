SELECT 
    c.region,
    SUM(o.sales) AS total_sales,
    AVG(o.discount) AS avg_discount,
    COUNT(o.order_id) AS order_count
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.region;