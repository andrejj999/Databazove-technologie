SELECT COUNT(DISTINCT f1.product_category)
FROM flourmills_sales f1
WHERE NOT EXISTS (
    SELECT 1
    FROM flourmills_sales f2
    WHERE f2.product_category = f1.product_category
      AND f2.total_amount > 500000
);