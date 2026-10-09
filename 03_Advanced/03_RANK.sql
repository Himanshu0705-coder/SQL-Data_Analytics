use employees;

select first_name,
        last_name,
        department,
        salary,
        RANk() over (order by salary desc) as new
from employee;


select first_name,
        last_name,
        department,
        salary,
        RANK() over (partition by department order by salary desc) as upated_data
from employee;


select * from 
(select first_name,
        last_name,
        department,
        salary,
        RANK() over (partition by department order by salary desc) as rnk
from employee) as new_Data
where rnk = 1;


with dataset as 
(select first_name,
        last_name,
        department,
        position,
        salary,
        RANK() over (partition by department order by salary desc) as rnk
from employee)
select * from dataset
where rnk = 1
;

