  select * from payment
 Q> find the details of the customers whose amount is more than the average of total amount paid by all
 
 methodology-----
 break qs in two parts
 a.> find avg of total payemnt
 b.> filter customer whose amnt>avg
 
 subquery---
 

  select avg(amount) from
  payment
  
  select * from payment
  where amount>51.5
 ----------------------------------------
 making dynamic the same query
 
 
 select * from payment
  where amount>(  select avg(amount) from
  payment)
 ----------------------------------------
 select customer_id,amount,mode
 from payment
 where 
 customer_id IN (select customer_id from customer)
-------------------------- 
 
 ---- SAME TABLE ME SUBQUERY CHALANA HAI TO WHERE CLAUSE USE KRNA HAI BHAIZAAN AUR 
 ----- AGAR DUSRE TABLES SE SUBQUERY CHALANA HAI TO LOGICAL OPERATOR LIKKE in ka use krna chahiye
 select customer_id from payment
 
 
 ----------------------------------------
 
 
 select first_name, last_name,customer_id
 from customer as c
 where EXISTS(select customer_id,amount 
            from payment as p
            where p.customer_id = c.customer_id
			 and amount>60
              )
 
 
 
 
 
 