create table customer
(
	customer_id int8 primary key,
	first_name varchar(50),
	last_name  varchar(50),
	email varchar(100),
	address_id int8
 )
 
 
 select * from customer;
 
 
copy customer(customer_id, first_name,last_name,email,address_id)
from
'D:\Resumes\customer.csv'
delimiter ','
csv header;


select * from customer

order by first_name

limit 10;



select length(email) as len
,upper(first_name) , lower(last_name)

from customer
order by first_name 
asc;

select length(email) from customer





