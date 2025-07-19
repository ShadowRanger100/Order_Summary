USE sales_analysis;

DROP TABLE IF EXISTS order_summary;

CREATE TABLE order_summary (
    order_id VARCHAR(20) PRIMARY KEY,
    order_date DATE,
    segment VARCHAR(50),
    country VARCHAR(50),
    state VARCHAR(50),
    region VARCHAR(50),
    category VARCHAR(50),
    sub_category VARCHAR(50),
    product_name VARCHAR(100),
    sales DECIMAL(10,2)
);
