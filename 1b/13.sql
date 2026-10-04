SELECT f1.*
FROM flourmills_sales f1
WHERE EXISTS (
    SELECT 1
    FROM flourmills_sales f2
    WHERE f2.region = f1.region
      AND EXTRACT(YEAR FROM f2.sale_date) = 2024
);