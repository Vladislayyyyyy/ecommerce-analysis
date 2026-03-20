CREATE TABLE all_sales_2019 AS
SELECT
    "Order ID"::text AS "Order ID",
    product,
    "Quantity Ordered"::text AS "Quantity Ordered",
    "Price Each"::text AS "Price Each",
    "Order Date",
    "Purchase Address"
FROM sales_january_2019
UNION ALL
SELECT
    "Order ID"::text,
    product,
    "Quantity Ordered"::text,
    "Price Each"::text,
    "Order Date",
    "Purchase Address"
FROM sales_february_2019
UNION ALL
SELECT
    "Order ID"::text,
    product,
    "Quantity Ordered"::text,
    "Price Each"::text,
    "Order Date",
    "Purchase Address"
FROM sales_march_2019
UNION ALL
SELECT
    "Order ID"::text,
    product,
    "Quantity Ordered"::text,
    "Price Each"::text,
    "Order Date",
    "Purchase Address"
FROM sales_april_2019
UNION ALL
SELECT
    "Order ID"::text,
    product,
    "Quantity Ordered"::text,
    "Price Each"::text,
    "Order Date",
    "Purchase Address"
FROM sales_may_2019
UNION ALL
SELECT
    "Order ID"::text,
    product,
    "Quantity Ordered"::text,
    "Price Each"::text,
    "Order Date",
    "Purchase Address"
FROM sales_june_2019
UNION ALL
SELECT
    "Order ID"::text,
    product,
    "Quantity Ordered"::text,
    "Price Each"::text,
    "Order Date",
    "Purchase Address"
FROM sales_july_2019
UNION ALL
SELECT
    "Order ID"::text,
    product,
    "Quantity Ordered"::text,
    "Price Each"::text,
    "Order Date",
    "Purchase Address"
FROM sales_august_2019
UNION ALL
SELECT
    "Order ID"::text,
    product,
    "Quantity Ordered"::text,
    "Price Each"::text,
    "Order Date",
    "Purchase Address"
FROM sales_september_2019
UNION ALL
SELECT
    "Order ID"::text,
    product,
    "Quantity Ordered"::text,
    "Price Each"::text,
    "Order Date",
    "Purchase Address"
FROM sales_october_2019
UNION ALL
SELECT
    "Order ID"::text,
    product,
    "Quantity Ordered"::text,
    "Price Each"::text,
    "Order Date",
    "Purchase Address"
FROM sales_november_2019
UNION ALL
SELECT
    "Order ID"::text,
    product,
    "Quantity Ordered"::text,
    "Price Each"::text,
    "Order Date",
    "Purchase Address"
FROM sales_december_2019;
