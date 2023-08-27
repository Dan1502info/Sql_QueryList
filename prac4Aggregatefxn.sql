create table payment
(
customer_id int8 primary key,
	amount int8,
	mode varchar(50),
	payment_date date
)

select * from payment

copy payment(customer_id, amount, mode, payment_date)
from 'D:\Resumes\payment.csv'
delimiter ','
csv header;


select * from payment;


select count(amount)from payment;

select sum(amount) from payment

select max(amount) from payment

select min(amount) from payment

select avg(amount)from payment 

select round(avg(amount),2) from payment

select count(*) from payment


select mode, sum(amount) as total
from payment
group by mode 
order by total asc



select mode, amount 
from payment




select mode , count(amount) as total
from payment
group by mode

having count(amount)>=2 and count(amount)<4

order by total desc

