use employees;

select first_name,
        last_name,
        department,
        salary,
        LAG(salary) over(order by salary desc)
from employee;

select first_name,
        last_name,
        department,
        salary,
        LAG(salary) over (partition by department)
from employee;

select first_name,
        last_name,
        department,
        salary,
        LAG(salary) over (PARTITION BY department order by salary) as rnk
from employee;


select first_name,
        last_name,
        department,
        salary - LAG(salary) over (partition by department order by salary desc )
from employee;


select first_name,
        last_name,
        department,
        salary - LAG(salary) over (order by salary desc ) as rnk
from employee;



select first_name,
        last_name,
        salary,
        department,
        LAG(department) over (PARTITION BY department) as rnk
from employee;