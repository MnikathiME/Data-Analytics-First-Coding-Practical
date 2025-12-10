------------------------------------------------------
--Q1. Display all columns for all transactions. 
--Expected output: All columns 

SELECT *PRACTICAL1.DATASET.RETAIL_SALES
FROM PRACTICAL1.DATASET.RETAIL_SALES;

------------------------------------------------------

--Q2. Display only the Transaction ID, Date, and Customer ID for all records. 
--Expected output: Transaction ID, Date, Customer ID

SELECT Transaction_ID,
        date, customer_id
FROM PRACTICAL1.DATASET.RETAIL_SALES;

------------------------------------------------------
--Q3. Display all the distinct product categories in the dataset. 
--Expected output: Product Category

SELECT DISTINCT product_category
FROM PRACTICAL1.DATASET.RETAIL_SALES;

----------------------------------------------------------
--Q4. Display all the distinct gender values in the dataset. 
--Expected output: Gender

SELECT DISTINCT gender
FROM PRACTICAL1.DATASET.RETAIL_SALES;
-----------------------------------------------------------

--Q5. Display all transactions where the Age is greater than 40. 
--Expected output: All columns 

SELECT *
FROM PRACTICAL1.DATASET.RETAIL_SALES
WHERE AGE > 40;
---------------------------------------------------------------

--Q6. Display all transactions where the Price per Unit is between 100 and 500. 
--Expected output: All columns 

SELECT *
FROM PRACTICAL1.DATASET.RETAIL_SALES
WHERE price_per_unit BETWEEN 100 AND 500;
-----------------------------------------------------------------------------------------
--Q7. Display all transactions where the Product Category is either 'Beauty' or 'Electronics'.
--Expected output: All columns

SELECT *
FROM PRACTICAL1.DATASET.RETAIL_SALES
WHERE Product_Category = '(beauty' OR 'electronics');

--------------------------------------------------------------------------------------------------

--Q8. Display all transactions where the Product Category is not 'Clothing'. 
--Expected output: All columns

SELECT * 
FROM PRACTICAL1.DATASET.RETAIL_SALES
WHERE 'product_category' != 'clothing';
-----------------------------------------------------------------------------

--Q9. Display all transactions where the Quantity is greater than or equal to 3. 
--Expected output: All columns

SELECT *
FROM PRACTICAL1.DATASET.RETAIL_SALES
WHERE quantity >= 3;

---------------------------------------------------------------------------------
--Q10. Count the total number of transactions.  
--Expected output: Total_Transactions 

SELECT COUNT(*) AS total_transactions
FROM PRACTICAL1.DATASET.RETAIL_SALES;
----------------------------------------------------------------------------------
--Q11. Find the average Age of customers. 
--Expected output: Average_Age 

SELECT AVG(age) AS average_age
FROM PRACTICAL1.DATASET.RETAIL_SALES;

----------------------------------------------------------------------------------
--Q12. Find the total quantity of products sold. 
--Expected output: Total_Quantity

SELECT SUM (quantity) AS Total_Quantity
FROM PRACTICAL1.DATASET.RETAIL_SALES;
----------------------------------------------------------------------------------
--Q13. Find the maximum Total Amount spent in a single transaction. 
--Expected output: Max_Total_Amount

SELECT MAX (Total_Amount) AS Max_Total_Amount
FROM PRACTICAL1.DATASET.RETAIL_SALES;
---------------------------------------------------------------------------------------
--Q14. Find the minimum Price per Unit in the dataset. 
--Expected output: Min_Price_per_Unit

SELECT MIN (Price_per_Unit) AS Min_Price_per_Unit
FROM PRACTICAL1.DATASET.RETAIL_SALES;
---------------------------------------------------------------------------------------
--Q15. Find the number of transactions per Product Category. 
--Expected output: Product Category, Transaction_Count 

SELECT 'Product_Categoty', COUNT(*) AS Transaction_Count
FROM PRACTICAL1.DATASET.RETAIL_SALES;
GROUP BY 'Product Category';
----------------------------------------------------------------------------------------
--Q16. Find the total revenue (Total Amount) per gender. 
--Expected output: Gender, Total_Revenue 

SELECT Gender, SUM(Total_Amount)AS Total_Revenue
FROM PRACTICAL1.DATASET.RETAIL_SALES
GROUP BY Gender;

-----------------------------------------------------------------------------------
--Q17. Find the average Price per Unit per product category. 
--Expected output: Product Category, Average_Price

SELECT 'Product category', AVG(price_per_unit)AS Average_Price
FROM PRACTICAL1.DATASET.RETAIL_SALES
GROUP BY 'Product category';
------------------------------------------------------------------------------------
--Q18. Find the total revenue per product category where total revenue is greater than 
--10,000. 
--Expected output: Product Category, Total_Revenue

SELECT 'Product Category', SUM(total_amount) AS Total_Revenue
FROM PRACTICAL1.DATASET.RETAIL_SALES
GROUP BY 'Product Category'
HAVING SUM(total_amount)>10000;

--------------------------------------------------------------------------------------
--Q19. Find the average quantity per product category where the average is more than 2. 
--Expected output: Product Category, Average_Quantity

SELECT 'Product Category', AVG(Quantity) AS Average_Quantity
FROM PRACTICAL1.DATASET.RETAIL_SALES
GROUP BY 'Product Category'
HAVING AVG(Quantity) >2;

---------------------------------------------------------------------------------------
--Q20. Display a column called Spending_Level that shows 'High' if Total Amount > 1000, 
--otherwise 'Low'. 
--Expected output: Transaction ID, Total Amount, Spending_Level

SELECT 'Transaction ID', total_amount, 
CASE
    WHEN total_amount> 1000 THEN 'High'
    ELSE 'Low'
END AS Spending_Level
FROM PRACTICAL1.DATASET.RETAIL_SALES;
-------------------------------------------------------------------------------------------------------- 
Expected output: Customer ID, Age, Age_Group

SELECT 'Customer ID', Age,
CASE
   WHEN AGE <30 THEN 'Youth'
   WHEN Age BETWEEN 30 AND 59 THEN 'Adult'
   WHEN Age >= 60 THEN 'Senior'
END AS Age_Group
FROM PRACTICAL.DATASET.RETAIL_SALES;
