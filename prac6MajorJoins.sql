 select * from customer
 
 select * from payment
 
 
 select * 
 from customer as c 
 inner join payment as p
 on 
 c.customer_id = p.customer_id
 
 
 
 
 select c.first_name,p.amount, p.mode
 from customer as c
 inner join payment as p
 on
 c.customer_id = p.customer_id
 order by c.first_name asc
 limit 5 
 
update payment
set 
customer_id ='1003'
where amount='80'


select * from payment

insert into payment 
values(1004,50,'Netbanking','2020-08-21')






insert into payment 
values
(1005,50,'credit card','2021-08-21'),
(1006,90,'Netbanking','2022-08-21'),
(1007,70,'cash','2022-10-21')

select * from customer as c
right join payment as p
on  c.customer_id = p.customer_id  

select * from customer as c
left join payment as p
on  c.customer_id = p.customer_id 

select * from 
customer as c
full outer join payment as p
on 
c.customer_id = p.customer_id



select * from payment