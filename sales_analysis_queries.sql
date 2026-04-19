-- Display all records
SELECT * FROM sales_data;

-- Sort by highest sales
SELECT Product, Price, Quantity, Total
FROM sales_data
ORDER BY Total DESC;

-- City-wise total sales
SELECT City, SUM(Total) AS Total_Sales
FROM sales_data
GROUP BY City;

-- Product count
SELECT Product, COUNT(Product) AS Product_Count
FROM sales_data
GROUP BY Product;

-- Category-wise average sales
SELECT Category, AVG(Total) AS Avg_Sales
FROM sales_data
GROUP BY Category;

-- Filter by payment mode
SELECT * FROM sales_data
WHERE Payment_Mode = 'UPI';