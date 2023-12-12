-- Common Table Expression 

with 
Average_Sales_In_2020 AS (Select concat(Avg(cost), "  (2020)") AS Average_sales from orders where YEAR(date) = "2020" ) , 
Average_Sales_In_2021 AS (SELECT concat(AVG(cost), "  (2021)")from orders where YEAR(DATE) = "2021"), 
Average_Sales_In_2022 AS(SELECT concat(AVG(cost), "  (2022)") from orders where YEAR(DATE) ="2022")

 select * from Average_sales_in_2020 
 union 
 select * from average_sales_in_2021
 union 
 select * from average_sales_in_2022;