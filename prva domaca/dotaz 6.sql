SELECT 
    c.region,
    SUM(o.sales) AS total_sales
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.region;