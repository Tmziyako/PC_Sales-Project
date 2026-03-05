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
 

-- INTERMEDIATE QUESTIONS

-- 11. Calculate total revenue (SUM of Sale Price).
select sum (Sale_Price) as TotalRevenue from [dbo].[pc_data ];
-- 12. Calculate total profit (SUM of Sale Price - Cost Price).
select sum ((Sale_Price) - (Cost_Price)) as TotalProfit from [dbo].[pc_data ];
-- 13. Find the average Discount Amount.
Select avg (Discount_Amount) as AverageDiscountAmount from [dbo].[pc_data ];
-- 14. Calculate total Finance Amount issued.
select sum (Cast(Finance_Amount as decimal (18,1))) as TotalFinanceAmount from [dbo].[pc_data ];
-- 15. Find total revenue per PC Make.
Select sum(Sale_Price) as TotalRevenue, PC_Make from [dbo].[pc_data ] group by PC_Make;
-- 16. Find average Sale Price per Storage Type.
select avg(sale_price) as AverageSalePricePerStorageType,RAM from [dbo].[pc_data ] group by RAM;
-- 17. Calculate total revenue per Shop Name.
select sum(Sale_Price) as TotalRevenuePerShop, Shop_Name from [dbo].[pc_data ] group by Shop_Name;
-- 18. Calculate total revenue per Sales Person Name.
select sum(Sale_Price) as TotalRevenuePerSalesPersonName, Sales_Person_Name from [dbo].[pc_data ] group by Sales_Person_Name;
-- 19. Find average Credit Score per Payment Method.
Select avg(Credit_Score) as AverageCreditScorePerPaymentMethod, Payment_Method from [dbo].[pc_data ] group by Payment_Method;
-- 20. Calculate total Cost of Repairs per Sales Person Department.
Select sum(cast(Cost_of_Repairs as decimal (18,2))) as TotalCostofRepairs, Sales_Person_Department from [dbo].[pc_data ] group by Sales_Person_Department;
