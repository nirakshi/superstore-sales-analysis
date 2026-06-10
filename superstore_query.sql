USE Superstore_db;
GO 

-- 1. Total Sales by Region
SELECT Region, SUM(Sales) AS total_sales
FROM dbo.Superstore_data
GROUP BY Region;
GO


-- 2. Top 5 Profitable Categories
SELECT TOP 5 Category, SUM(Profit) AS total_profit
FROM dbo.Superstore_data
GROUP BY Category
ORDER BY total_profit DESC;
GO


-- 3. Monthly Sales Trend
SELECT 
    MONTH(Order_Date) AS sales_month,
    SUM(Sales) AS total_sales
FROM dbo.Superstore_data
GROUP BY MONTH(Order_Date)
ORDER BY sales_month;
GO


-- 4. Highest Discount Impact on Average Profit
SELECT 
    Discount, 
    AVG(Profit) AS avg_profit
FROM dbo.Superstore_data
GROUP BY Discount
ORDER BY Discount DESC;
GO