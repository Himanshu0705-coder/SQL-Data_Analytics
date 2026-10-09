use employees;

select first_name,
        last_name,
        department,
        salary,
        LEAD(salary) over (order by salary)
from employee;



select first_name,
        last_name,
        department,
        salary,
        LEAD(last_name) over (order by last_name)
from employee;


select first_name,
        last_name,
        department,
        salary,
        LEAD(salary) over (PARTITION BY department order by salary desc)
from employee;