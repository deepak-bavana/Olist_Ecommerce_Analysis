-- Query 1 — Total Revenue Overview:
SELECT 
    COUNT(DISTINCT order_id) AS total_orders,
    COUNT(DISTINCT customer_id) AS total_customers,
    CAST(SUM(payment_value) AS DECIMAL(12,2)) AS total_revenue,
    CAST(AVG(payment_value) AS DECIMAL(8,2)) AS avg_order_value
FROM olist_master
WHERE order_status = 'delivered';

-- Query 2 — Monthly Revenue Trend:

SELECT 
    order_year,
    order_month,
    COUNT(DISTINCT order_id) AS total_orders,
    CAST(SUM(payment_value) AS DECIMAL(12,2)) AS monthly_revenue
FROM olist_master
WHERE order_status = 'delivered'
GROUP BY order_year, order_month
ORDER BY order_year, order_month;

-- Query 3 — Top 10 Product Categories by Revenue:

SELECT TOP 10
    product_category_name_english,
    COUNT(DISTINCT order_id) AS total_orders,
    CAST(SUM(payment_value) AS DECIMAL(12,2)) AS total_revenue,
    CAST(AVG(review_score) AS DECIMAL(4,2)) AS avg_review_score
FROM olist_master
WHERE order_status = 'delivered'
AND product_category_name_english != 'unknown'
GROUP BY product_category_name_english
ORDER BY total_revenue DESC;

-- Query 4 — Revenue by Customer State:

SELECT TOP 10
    customer_state,
    COUNT(DISTINCT customer_id) AS total_customers,
    COUNT(DISTINCT order_id) AS total_orders,
    CAST(SUM(payment_value) AS DECIMAL(12,2)) AS total_revenue
FROM olist_master
WHERE order_status = 'delivered'
GROUP BY customer_state
ORDER BY total_revenue DESC;

-- Query 5 — Delivery Performance:

SELECT 
    CASE 
        WHEN delivery_days <= 7 THEN 'Fast (0-7 days)'
        WHEN delivery_days <= 14 THEN 'Normal (8-14 days)'
        WHEN delivery_days <= 21 THEN 'Slow (15-21 days)'
        ELSE 'Very slow (21+ days)'
    END AS delivery_speed,
    COUNT(DISTINCT order_id) AS total_orders,
    CAST(AVG(review_score) AS DECIMAL(4,2)) AS avg_review_score
FROM olist_master
WHERE order_status = 'delivered'
AND delivery_days IS NOT NULL
GROUP BY 
    CASE 
        WHEN delivery_days <= 7 THEN 'Fast (0-7 days)'
        WHEN delivery_days <= 14 THEN 'Normal (8-14 days)'
        WHEN delivery_days <= 21 THEN 'Slow (15-21 days)'
        ELSE 'Very slow (21+ days)'
    END
ORDER BY total_orders DESC;

-- Query 6 — Payment Method Analysis:

SELECT 
    payment_type,
    COUNT(DISTINCT order_id) AS total_orders,
    CAST(SUM(payment_value) AS DECIMAL(12,2)) AS total_revenue,
    CAST(AVG(payment_value) AS DECIMAL(8,2)) AS avg_order_value
FROM olist_master
WHERE order_status = 'delivered'
GROUP BY payment_type
ORDER BY total_revenue DESC;

-- Query 7 — Top 10 Sellers by Revenue:

SELECT TOP 10
    seller_id,
    seller_state,
    COUNT(DISTINCT order_id) AS total_orders,
    CAST(SUM(payment_value) AS DECIMAL(12,2)) AS total_revenue,
    CAST(AVG(review_score) AS DECIMAL(4,2)) AS avg_review_score
FROM olist_master
WHERE order_status = 'delivered'
GROUP BY seller_id, seller_state
ORDER BY total_revenue DESC;

















































































