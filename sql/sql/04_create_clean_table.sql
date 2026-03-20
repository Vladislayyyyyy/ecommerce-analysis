CREATE TABLE all_sales_2019_clean AS
SELECT
    "Order ID"::integer AS order_id,
    product,
    quantity_int AS quantity,
    price_numeric AS price,
    TO_DATE("Order Date", 'MM/DD/YY HH24:MI') AS order_date,
    SPLIT_PART("Purchase Address", ',', 1) AS city,   -- если нужно извлечь город
    "Purchase Address" AS full_address
FROM all_sales_2019
WHERE quantity_int IS NOT NULL AND price_numeric IS NOT NULL;
