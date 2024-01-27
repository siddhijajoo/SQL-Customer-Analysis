SELECT *
FROM sales;

SELECT YEAR([Order_Date]) AS Year,
       SUM(Sales) AS total_sales,
       SUM(Profit) AS total_profit
FROM sales
GROUP BY YEAR([Order_Date])
ORDER BY Year ASC;


SELECT YEAR([Order_Date]) AS Year,
    CASE 
        WHEN MONTH([Order_Date]) IN (1,2,3) THEN 'Q1'
        WHEN MONTH([Order_Date]) IN (4,5,6) THEN 'Q2'
        WHEN MONTH([Order_Date]) IN (7,8,9) THEN 'Q3'
        ELSE 'Q4'
    END AS Quarter,
    SUM(Sales) AS total_sales,
    SUM(Profit) AS total_profit
FROM sales 
GROUP BY YEAR([Order_Date]), 
         CASE 
            WHEN MONTH([Order_Date]) IN (1,2,3) THEN 'Q1'
            WHEN MONTH([Order_Date]) IN (4,5,6) THEN 'Q2'
            WHEN MONTH([Order_Date]) IN (7,8,9) THEN 'Q3'
            ELSE 'Q4'
        END
ORDER BY Year, Quarter;

SELECT State, SUM(Sales) as Total_sales, SUM(Profit) AS Total_Profits, ROUND((SUM(Profit) / SUM(Sales)) * 100, 2) AS profit_margin
FROM sales
GROUP BY State
ORDER BY Total_Profits DESC;

SELECT State, SUM(Sales) as Total_sales, SUM(Profit) as Total_Profits
FROM sales
GROUP BY State
ORDER BY Total_Profits ASC;

SELECT City, SUM(Sales) as Total_sales, SUM(Profit) as Total_Profits, ROUND((SUM(Profit) / SUM(Sales)) * 100, 2) as Profit_margin
FROM sales
GROUP BY City
ORDER BY Total_Profits DESC;

SELECT City, SUM(Sales) as Total_sales, SUM(Profit) as Total_profit
FROM sales
GROUP BY City
ORDER BY Total_profit ASC;

SELECT Discount, AVG(Sales) AS Avg_Sales
FROM sales
GROUP BY Discount
ORDER BY Discount;

SELECT Category, SUM(Discount) AS total_discount
FROM sales
GROUP BY Category
ORDER BY total_discount DESC;

SELECT Category, Sub_Category, SUM(Discount) AS total_discount
FROM sales
GROUP BY Category, Sub_Category
ORDER BY total_discount DESC;

SELECT Category, SUM(Sales) AS total_sales, SUM(Profit) AS total_profit, ROUND(SUM(Profit) / SUM(Sales) * 100,2) AS profit_margin
FROM sales
GROUP BY Category
ORDER BY total_profit DESC;

SELECT Region, Category, SUM(Sales) AS total_sales, SUM(Sales) AS total_sales, SUM(Profit) AS total_profit
FROM sales
GROUP BY Region, Category
ORDER BY total_profit DESC;

SELECT State, Category, SUM(Sales) AS total_sales, SUM(Profit) AS total_profit
FROM sales
GROUP BY State, Category
ORDER BY total_profit DESC;

SELECT State, Category, SUM(Sales) AS total_sales, SUM(Profit) AS total_profit
FROM sales
GROUP BY State, Category
ORDER BY total_profit ASC;

SELECT Sub_Category, SUM(Sales) AS total_sales, SUM(Profit) AS total_profit, ROUND(SUM(Profit) / SUM(Sales)* 100, 2) AS profit_margin
FROM sales
GROUP BY Sub_Category
ORDER BY total_profit DESC;

SELECT Region, Sub_Category, SUM(Sales) AS total_sales, SUM(Profit) AS total_profit
FROM sales
GROUP BY Region, Sub_Category
ORDER BY total_profit DESC;

SELECT Region, Sub_Category, SUM(Sales) AS total_sales, SUM(Profit) AS total_profit
FROM sales
GROUP BY Region, Sub_Category
ORDER BY total_profit ASC;

SELECT State, Sub_Category, SUM(Sales) as total_sales, SUM(Profit) as total_profit
FROM sales
GROUP BY State, Sub_Category
ORDER BY total_profit DESC;

SELECT State, Sub_Category, SUM(Sales) as total_sales, SUM(Profit) as total_profit
FROM sales
GROUP BY State, Sub_Category
ORDER BY total_profit ASC;

SELECT Product_Name, SUM(Sales) as total_sales, SUM(Profit) as total_profit
FROM sales
GROUP BY Product_Name
ORDER BY total_profit DESC;

SELECT Product_Name, SUM(Sales) as total_sales, SUM(Profit) as total_profit
FROM sales
GROUP BY Product_Name
ORDER BY total_profit ASC;

SELECT Segment, SUM(Sales) as total_sales, SUM(Profit) as total_profit
FROM sales
GROUP BY Segment
ORDER BY total_profit DESC;

SELECT Region, COUNT(DISTINCT Customer_ID) AS total_customers
FROM sales
GROUP BY Region
ORDER BY total_customers DESC;

SELECT State, COUNT(DISTINCT Customer_ID) AS total_customers
FROM sales
GROUP BY State
ORDER BY total_customers DESC;

SELECT Customer_ID, SUM(Sales) as total_sales, SUM(Profit) as total_profit
FROM sales
GROUP BY Customer_ID
ORDER BY total_sales DESC;





