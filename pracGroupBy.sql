Q1: who is senior most employee based on job title?
select * from employee
order by levels desc
limit 1

Q2: whic countries have the most invoices?
select count(*) as NumberTimes,billing_country 
from invoice 
group by billing_country
order by  NumberTimes desc

//do columns show krega ek numbertimes aur ek billing_country
//The GROUP BY clause in SQL is used to group together rows that share a common value in one or more columns. It is typically used in conjunction with aggregate functions (such as SUM, AVG, COUNT, MIN, and MAX) 
//to perform calculations on these groups of data


Q3:What are the top3 values of invoice?
select billing_country,
count(*) as No_of_times from invoice
group by billing_country
order by No_of_times desc
limit 3
select*from invoice
// ye sahi hai bro
select billing_state,billing_country,total from invoice
order by total desc
limit 3

--Q4:

select sum(total) as invoice_total, billing_city 
from invoice
group by billing_city
order by invoice_total desc
limit 3

--Q5 : who is the best customer,best customer spent most money
-- Hame koi info nahi mila customer table se bills ka
-- Bill related data invoice me hai customer related info customer table
--dono tables ko merge krna hoga hame
select * from customer
select customer.customer_id,customer.first_name,customer.last_name,
SUM(invoice.total) as TOTAL
from customer
join invoice ON customer.customer_id=invoice.customer_id
group by customer.customer_id
order by TOTAL desc
limit 3

--

