select * from payment



---  CASE STATEMENT is like if else statement in programming language----


select customer_id,amount,
case
when amount>=60 then 'Expensive Product'
when amount=50 then 'Moderate'
else ' Inexpensive Product'
end as " Product Status"
from payment





---------case Expression------

select customer_id,
case amount
when 90 then 'prime Customer'
when 50 then 'plus customer'
else 'Regular Customer'
end as "Customer Status"
from payment