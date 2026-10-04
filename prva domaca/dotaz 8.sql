SELECT 
    p.category,
    AVG(o.discount) AS avg_discount
FROM products p
JOIN orders o ON p.product_id = o.product_id
GROUP BY p.category;