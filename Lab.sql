with 
items_of_client_1 as (select concat("Cl1 : " , count(orderid) , " orders") AS "Total number of items" from orders where clientid = 'Cl1' AND YEAR(DATE)= '2022'), 
items_of_client_2 as (select concat("Cl2 : " , count(orderid) , " orders") from orders where clientid = 'Cl2'AND YEAR(DATE)= '2022'), 
items_of_client_3 as (select concat("Cl3 : " , count(orderid) , " orders") from orders where clientid = 'Cl3'AND YEAR(DATE)='2022')
select * from items_of_client_1 
union
select * from items_of_client_2
union 
select * from items_of_client_3; 