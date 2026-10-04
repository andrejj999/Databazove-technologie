SELECT 
    month,
    monthly_sales
FROM (
    SELECT 
        EXTRACT(MONTH FROM sale_date) AS month,
        SUM(total_amount) AS monthly_sales
    FROM 
        flourmills_sales
    GROUP BY 
        EXTRACT(MONTH FROM sale_date)
) AS subquery
ORDER BY 
    monthly_sales DESC;