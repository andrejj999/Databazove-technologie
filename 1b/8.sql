SELECT 
    f1.product_name,
    f1.product_category,
    f1.total_amount
FROM 
    flourmills_sales f1
WHERE 
    f1.total_amount > (
        SELECT AVG(f2.total_amount)
        FROM flourmills_sales f2
        WHERE f2.product_category = f1.product_category
    );