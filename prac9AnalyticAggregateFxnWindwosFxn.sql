create table test_data
(
new_id int8 primary key,
new_cat varchar(10) not null,
total int8 not null	
)

select * from test_data

insert into  test_data (new_id, new_cat, total)
values
(100,'Agni',300),
(200,'Agni',300),
(500,'Dharti',1200),
(700,'Dharti',1200),
(200,'Vayu',1000),
(300,'Vayu',1000),
(500,'Vayu',1000)

Alter table test_data
mpodify column new_id int8


Alter table test_data
drop column new_id

select * from test_data

alter table test_data
add column new_id int8 not null


drop coulmn total from table test_data


alter table test_data
drop column total

/

select * from test_data// order by new_id


select new_id, new_cat,
sum(new_id)
over(partition by new_cat order   by new_id) as "tal"
from test_data

select new_id, new_cat,
sum(new_id)
over (partition by new_cat ) as Total
from test_data


select new_id,new_cat,
avg(new_id) over(partition by new_cat order by new_id) as "Average",
sum(new_id)over (partition by new_cat order by new_id ) as Total,
max(new_id)over (partition by new_cat order by new_id ) as "Max",
min(new_id)over (partition by new_cat order by new_id ) as "Min",
count(new_id) over(partition by new_cat order by new_id) as "Count"
from test_data

select new_id, new_cat,
sum(new_id)
over (order by new_id rows between unbounded preceding and unbounded following ) as "Total",
Max(new_id)
over (order by new_id rows between unbounded preceding and unbounded following ) as "Maximum",
Min(new_id)
over (order by new_id rows between unbounded preceding and unbounded following ) as "Minimum"
from test_data









------------------------Ranking Functions---------


select new_id,
row_number() over(order by new_id) as "Row Number",
rank() over(order by new_id) as "Rank",
dense_rank() over(order by new_id) as "Dense Rank",
percent_rank() over(order by new_id) as "Percent Rank"
from 
test_data



---------------------------------------------------------Analytic Functions-----------------

select new_id,
first_value(new_id) over(order by new_id) as "First Value",
last_value(new_id) over(order by new_id rows between unbounded preceding and unbounded following) as " Last Value",
lead(new_id) over(order by new_id) as "Lead Value",
lag(new_id) over (order by new_id) as "lag value"
from test_data


--Q> offset the lead and lag by 2 in the output column ---- by default the lead and lag values are 2----
select new_id,
lead(new_id,2) over(order by new_id) as "Lead Value",
lag(new_id,2) over (order by new_id) as "lag value"
from test_data



