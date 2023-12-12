-- prepared Statement

-- declaring prepared statement
prepare GetOrderStatement from "select clientid , productid , quantity, cost from orders where orderid =?"; 

-- declaring variable 
set @orderid = 10 ; 
-- excuting prepared statement
execute GetOrderStatement using @orderid ; 

select @x := 1 ; 
execute GetOrderStatement using @x ;

