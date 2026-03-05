SELECT [Continent]
      ,[Country_or_State]
      ,[Province_or_City]
      ,[Shop_Name]
      ,[Shop_Age]
      ,[PC_Make]
      ,[PC_Model]
      ,[Storage_Type]
      ,[Customer_Name]
      ,[Customer_Surname]
      ,[Customer_Contact_Number]
      ,[Customer_Email_Address]
      ,[Sales_Person_Name]
      ,[Sales_Person_Department]
      ,[Cost_Price]
      ,[Sale_Price]
      ,[Payment_Method]
      ,[Discount_Amount]
      ,[Purchase_Date]
      ,[Ship_Date]
      ,[Finance_Amount]
      ,[RAM]
      ,[Credit_Score]
      ,[Channel]
      ,[Priority]
      ,[Cost_of_Repairs]
      ,[Total_Sales_per_Employee]
      ,[PC_Market_Price]
      ,[Storage_Capacity]
  FROM [PC_SalesDo].[dbo].[pc_data ]
  select Distinct (Continent) from [dbo].[pc_data ];

  
  -- ======================================================
-- SQL PROJECT QUESTIONS
-- Dataset: PC Sales
-- ======================================================

-- BASIC QUESTIONS

-- 1. Count the total number of sales records.
Select Count (*) as Total_Sales from [dbo].[pc_data ];
-- 2. Count the number of sales per Continent.
Select Continent, Count (*) as Sales_per_continent from [dbo].[pc_data ] group by Continent;
-- 3. Count the number of sales per Country or State.
Select Country_or_state,count (*) as Sales_Per_Country from [dbo].[pc_data ] group by Country_or_State;
-- 4. List all distinct Shop Name values.
select distinct Shop_Name from [dbo].[pc_data ];
-- 5. Find the average Sale Price.
select AVG(Sale_price) as Avg_Sale_Price from [dbo].[pc_data ];
-- 6. Find the highest and lowest Sale Price.
select Max (Sale_Price) as Highest_Price,Min (Sale_Price) as Lowest_Price from [dbo].[pc_data ];
-- 7. Count the number of sales by Payment Method.
Select Payment_Method, count (*) as sales_by_payment_Method from [dbo].[pc_data ] group by payment_method;
-- 8. Count the number of sales by Channel (Online vs Offline).
Select Channel, count (*) as sales_by_Channel from [dbo].[pc_data ] group by Channel;
-- 9. Count the number of sales by Priority level.
Select Priority, count (*) as sales_by_Priority from [dbo].[pc_data ] group by Priority;
-- 10. Count the number of distinct PC Make values.
select count (distinct PC_Make) as distinct_pc_make from [dbo].[pc_data ];
