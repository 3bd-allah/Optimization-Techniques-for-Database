start transaction ;
insert into employees values (9, "Abdullah Nabil","manger" , "software" ,  "Nabil Abdullah"); 
update employees set fullname = "Seamus Hogan" where employeeid = 1 ; 
rollback ;