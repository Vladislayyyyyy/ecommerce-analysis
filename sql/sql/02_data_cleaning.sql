SELECT
    COUNT(*) AS total,
    COUNT("Order ID") AS filled_order_id,
    COUNT(product) AS filled_product,
    COUNT("Quantity Ordered") AS filled_qty,
    COUNT("Price Each") AS filled_price,
    COUNT("Order Date") AS filled_date,
    COUNT("Purchase Address") AS filled_address
FROM all_sales_2019;

SELECT * FROM all_sales_2019
WHERE "Order ID" IS NULL OR "Order ID" = ''
   OR product IS NULL OR product = ''
   OR "Quantity Ordered" IS NULL OR "Quantity Ordered" = ''
   OR "Price Each" IS NULL OR "Price Each" = ''
   OR "Order Date" IS NULL OR "Order Date" = ''
   OR "Purchase Address" IS NULL OR "Purchase Address" = '';

DELETE FROM all_sales_2019
WHERE "Order ID" IS NULL OR "Order ID" = ''
   OR product IS NULL OR product = ''
   OR "Quantity Ordered" IS NULL OR "Quantity Ordered" = ''
   OR "Price Each" IS NULL OR "Price Each" = '';
