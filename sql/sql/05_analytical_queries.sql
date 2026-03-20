
SELECT * FROM all_sales_2019_clean LIMIT 10;


SELECT
    COUNT(DISTINCT order_id) AS total_orders,
    COUNT(*) AS total_items_sold,
    SUM(quantity) AS total_quantity,
    SUM(quantity * price) AS total_revenue
FROM all_sales_2019_clean;

SELECT
    DATE_TRUNC('month', order_date) AS month,
    COUNT(DISTINCT order_id) AS orders,
    SUM(quantity) AS items_sold,
    SUM(quantity * price) AS revenue
FROM all_sales_2019_clean
GROUP BY month
ORDER BY month;

SELECT
    product,
    SUM(quantity) AS total_quantity,
    SUM(quantity * price) AS revenue
FROM all_sales_2019_clean
GROUP BY product
ORDER BY revenue DESC
LIMIT 5;

SELECT
    city,
    COUNT(DISTINCT order_id) AS orders,
    SUM(quantity * price) AS revenue
FROM all_sales_2019_clean
GROUP BY city
ORDER BY revenue DESC
LIMIT 5;

SELECT
    EXTRACT(dow FROM order_date) AS day_of_week,
    SUM(quantity * price) AS revenue
FROM all_sales_2019_clean
GROUP BY day_of_week
ORDER BY day_of_week;
