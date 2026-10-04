SELECT 
    product_category,
    total_sales
FROM (
    SELECT 
        product_category,
        SUM(total_amount) AS total_sales
    FROM 
        flourmills_sales
    GROUP BY 
        product_category
) AS subquery
WHERE 
    total_sales > 50000000
ORDER BY 
    total_sales DESC;