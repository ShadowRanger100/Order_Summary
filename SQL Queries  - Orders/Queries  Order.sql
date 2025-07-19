USE sales_analysis;

-- TRUNCATE TABLE order_summary;
-- SELECT * FROM order_summary LIMIT 10;

SELECT region, SUM(sales) AS total_sales
FROM order_summary
GROUP BY region;

SELECT state, SUM(sales) AS total_sales
FROM order_summary
GROUP BY state
ORDER BY total_sales DESC;

SELECT category, sub_category, SUM(sales) AS total_sales
FROM order_summary
GROUP BY category, sub_category
ORDER BY total_sales;

SELECT segment, SUM(sales) AS total_sales
FROM order_summary
GROUP BY segment
ORDER BY total_sales DESC;

SELECT product_name, SUM(sales) AS total_sales
FROM order_summary
GROUP BY product_name
ORDER BY total_sales DESC
LIMIT 10;

SELECT 
	date_format(order_date, '%Y-%m') AS month,
    SUM(sales) AS total_sales
FROM order_summary
GROUP BY month
ORDER BY month;

SELECT 
	date_format(order_date, '%Y-%m') AS month,
    segment,
    SUM(sales) AS total_sales
FROM order_summary
GROUP BY month, segment 
ORDER BY month, segment;

SELECT 
	date_format(order_date, '%Y-%m') AS month,
    category,
    SUM(sales) AS total_sales
FROM order_summary
GROUP BY month, category 
ORDER BY month, category;

SELECT state, category, SUM(sales) AS total_sales
FROM order_summary
GROUP BY state, category
ORDER BY total_sales DESC;
SELECT product_name, COUNT(*) AS total_orders
FROM order_summary
GROUP BY product_name
ORDER BY total_orders DESC
LIMIT 10;

