create table custB
(
	cust_name varchar(30),
	cust_amount int8
)

insert into custA 
values
('Madan Mohan',2100),
('Gopi Nath',1200),
('Govind Dev',5000)


insert into custB 
values
('Gopal Bhat',1600),
('Madan Mohan',2100)

select * from custa

select * from custb



select cust_name, cust_amount
from custA

union 

select cust_name, cust_amount
from custB

order by cust_name asc


select cust_name, cust_amount
from custA

union all

select cust_name, cust_amount
from custB



