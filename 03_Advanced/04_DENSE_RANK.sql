use employees;

select first_name,
        last_name,
        department,
        salary,
        DENSE_RANK() over (order by department asc) as rnk
from employee;


select * FROM
(select first_name,
        last_name,
        department,
        salary,
        DENSE_RANK() over (partition by department order by salary desc) as rnk
from employee) as data
where rnk = 2;

with new_data as 
(select first_name,
        last_name,
        department,
        salary,
        DENSE_RANK() over (partition by department order by salary desc) as rnk
from employee)
select * from new_data
where rnk = 2;