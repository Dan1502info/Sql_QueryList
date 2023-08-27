select * from employee

Q.> find the name of the respective Managers for each of the employees

select *
from employee as T1
join employee as T2
on T2.empid =T1.manager_id

select T1.empname as EmployeeName,
T2.empname as MangerName

from employee as T1
join employee as T2
on T2.empid =T1.manager_id