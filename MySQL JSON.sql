-- MySQL JSON

create table Activity (ActivityId int primary key auto_increment , Properties json); 

insert into Activity values (1, '{"ClientId":"Cl1", "ProductID":"P1", "order":"true"}')
,(2, '{"ClientId":"Cl1", "ProductID":"P1", "order":"true"}')
,(3, '{"ClientId":"Cl1", "ProductID":"P1", "order":"true"}');

select ActivityId, properties -> "$.ClientId", properties ->"$.ProductID" , properties-> "$.order" from activity ;

select * from activity ;