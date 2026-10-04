SELECT 
    f1.product_name,
    f1.region,
    f1.total_amount,
    (
        SELECT MIN(f2.total_amount)
        FROM flourmills_sales f2
        WHERE f2.region = f1.region
    ) AS region_min_amount
FROM 
    flourmills_sales f1;