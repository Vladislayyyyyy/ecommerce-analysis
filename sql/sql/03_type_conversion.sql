SELECT *
FROM all_sales_2019
WHERE "Quantity Ordered" !~ '^-?[0-9]+$';


SELECT *
FROM all_sales_2019
WHERE "Price Each" !~ '^-?[0-9]+\.?[0-9]*$';

DELETE FROM all_sales_2019
WHERE "Quantity Ordered" = 'Quantity Ordered'
   OR "Price Each" = 'Price Each';

ALTER TABLE all_sales_2019 ADD COLUMN IF NOT EXISTS quantity_int INTEGER;
ALTER TABLE all_sales_2019 ADD COLUMN IF NOT EXISTS price_numeric NUMERIC(10,2);
