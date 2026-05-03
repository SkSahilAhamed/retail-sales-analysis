-- ==================================================
-- Retail Sales SQL Analysis
-- Table: retail_sales
-- ==================================================

-- 1. Check total rows
SELECT COUNT(*) AS total_rows
FROM retail_sales;


-- 2. Total revenue
SELECT 
    ROUND(SUM(TotalPrice), 2) AS total_revenue
FROM retail_sales;


-- 3. Total number of orders
SELECT 
    COUNT(DISTINCT Invoice) AS total_orders
FROM retail_sales;


-- 4. Total number of customers
SELECT 
    COUNT(DISTINCT Customer_ID) AS total_customers
FROM retail_sales;


-- 5. Average order value
SELECT 
    ROUND(AVG(order_value), 2) AS average_order_value
FROM (
    SELECT 
        Invoice,
        SUM(TotalPrice) AS order_value
    FROM retail_sales
    GROUP BY Invoice
);


-- 6. Monthly revenue trend
SELECT 
    Year,
    Month,
    ROUND(SUM(TotalPrice), 2) AS monthly_revenue
FROM retail_sales
GROUP BY Year, Month
ORDER BY Year, Month;


-- 7. Top 10 products by revenue
SELECT 
    Description,
    ROUND(SUM(TotalPrice), 2) AS revenue
FROM retail_sales
GROUP BY Description
ORDER BY revenue DESC
LIMIT 10;


-- 8. Top 10 products by quantity sold
SELECT 
    Description,
    SUM(Quantity) AS total_quantity_sold
FROM retail_sales
GROUP BY Description
ORDER BY total_quantity_sold DESC
LIMIT 10;


-- 9. Top 10 countries by revenue
SELECT 
    Country,
    ROUND(SUM(TotalPrice), 2) AS revenue
FROM retail_sales
GROUP BY Country
ORDER BY revenue DESC
LIMIT 10;


-- 10. Top 10 customers by revenue
SELECT 
    Customer_ID,
    ROUND(SUM(TotalPrice), 2) AS revenue
FROM retail_sales
GROUP BY Customer_ID
ORDER BY revenue DESC
LIMIT 10;


-- 11. Repeat vs one-time customers
SELECT
    CASE
        WHEN order_count = 1 THEN 'One-time Customer'
        ELSE 'Repeat Customer'
    END AS customer_type,
    COUNT(*) AS customer_count
FROM (
    SELECT 
        Customer_ID,
        COUNT(DISTINCT Invoice) AS order_count
    FROM retail_sales
    GROUP BY Customer_ID
)
GROUP BY customer_type;


-- 12. Orders per top customers
SELECT 
    Customer_ID,
    COUNT(DISTINCT Invoice) AS total_orders,
    ROUND(SUM(TotalPrice), 2) AS total_spent
FROM retail_sales
GROUP BY Customer_ID
ORDER BY total_spent DESC
LIMIT 10;


-- 13. Revenue by year
SELECT 
    Year,
    ROUND(SUM(TotalPrice), 2) AS yearly_revenue
FROM retail_sales
GROUP BY Year
ORDER BY Year;


-- 14. Monthly order count
SELECT 
    Year,
    Month,
    COUNT(DISTINCT Invoice) AS total_orders
FROM retail_sales
GROUP BY Year, Month
ORDER BY Year, Month;


-- 15. Average monthly revenue
SELECT 
    Year,
    ROUND(AVG(monthly_revenue), 2) AS avg_monthly_revenue
FROM (
    SELECT 
        Year,
        Month,
        SUM(TotalPrice) AS monthly_revenue
    FROM retail_sales
    GROUP BY Year, Month
)
GROUP BY Year;


-- 16. Country-wise customer count
SELECT 
    Country,
    COUNT(DISTINCT Customer_ID) AS total_customers
FROM retail_sales
GROUP BY Country
ORDER BY total_customers DESC
LIMIT 10;


-- 17. Product count by invoice
SELECT 
    Invoice,
    COUNT(DISTINCT StockCode) AS unique_products,
    ROUND(SUM(TotalPrice), 2) AS order_value
FROM retail_sales
GROUP BY Invoice
ORDER BY order_value DESC
LIMIT 10;


-- 18. Top customers with order frequency
SELECT 
    Customer_ID,
    COUNT(DISTINCT Invoice) AS order_frequency,
    ROUND(SUM(TotalPrice), 2) AS total_revenue,
    ROUND(SUM(TotalPrice) / COUNT(DISTINCT Invoice), 2) AS avg_order_value
FROM retail_sales
GROUP BY Customer_ID
ORDER BY total_revenue DESC
LIMIT 10;


-- 19. Revenue contribution percentage by country
SELECT 
    Country,
    ROUND(SUM(TotalPrice), 2) AS revenue,
    ROUND(
        SUM(TotalPrice) * 100.0 / (SELECT SUM(TotalPrice) FROM retail_sales),
        2
    ) AS revenue_percentage
FROM retail_sales
GROUP BY Country
ORDER BY revenue DESC
LIMIT 10;


-- 20. Revenue contribution percentage by top products
SELECT 
    Description,
    ROUND(SUM(TotalPrice), 2) AS revenue,
    ROUND(
        SUM(TotalPrice) * 100.0 / (SELECT SUM(TotalPrice) FROM retail_sales),
        2
    ) AS revenue_percentage
FROM retail_sales
GROUP BY Description
ORDER BY revenue DESC
LIMIT 10;