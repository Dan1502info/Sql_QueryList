 with my_cte as(
 select *, avg(amount) over( order by p.customer_id ) as "Average price",
	       count(address_id) over(order by c.customer_id) as "Count"
	 from payment as p
	 inner join customer as c
	 on 
	 p.customer_id = c.customer_id
	 )
	 select first_name, last_name , amount
	 from my_cte
	 
	 
	 
	 
	 WITH my_cte AS(
	 select mode,max(amount) as highest_price , sum(amount) as total_price
		 from payment
		 group by mode )
		 
		 select payment.*, my.highest_price,my.Total_price
		 from payment 
		 join my_cte  as my
		 on payment.mode=my.mode
		 order by payment.mode
		 