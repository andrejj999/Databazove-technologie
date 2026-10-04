SELECT DISTINCT 
    f1.region
FROM 
    flourmills_sales f1
WHERE NOT EXISTS (
    SELECT 1
    FROM flourmills_sales f2
    WHERE f2.region = f1.region
      AND f2.product_category = 'Flour'
);