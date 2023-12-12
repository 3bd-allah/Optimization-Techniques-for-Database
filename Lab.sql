-- ---- There are three main objectives in this activity: 
-- 1) Use common table expressions
-- 2) Create a prepared statement
-- 3) Use JSON to extract relevant data

-- Common table transaction 
with 
items_of_client_1 as (select concat("Cl1 : " , count(orderid) , " orders") AS "Total number of items" from orders where clientid = 'Cl1' AND YEAR(DATE)= '2022'), 
items_of_client_2 as (select concat("Cl2 : " , count(orderid) , " orders") from orders where clientid = 'Cl2'AND YEAR(DATE)= '2022'), 
items_of_client_3 as (select concat("Cl3 : " , count(orderid) , " orders") from orders where clientid = 'Cl3'AND YEAR(DATE)='2022')
select * from items_of_client_1 
union
select * from items_of_client_2
union 
select * from items_of_client_3; 


-- Prepared Statement 

prepare GetOrderDetails from  'select orderid , quantity, cost , date from orders where clientid = ? and Year(date)= ?' ; 

set @id = 'Cl1'; 
set @year = '2020'; 

execute GetOrderDetails USING @id , @year ; 


-- MySQL JSON

SELECT 
	o.productid , 
    o.productname, 
    o.buyprice , 
    o.sellprice 
from products o INNER  JOIN activity a 
where o.productid = Properties->>'$.ProductID' and Properties -> '$.order' = 'true';


























