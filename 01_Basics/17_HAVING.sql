-- Having
-- Having clause is used to filter the records based on aggregate functions.

select department,
    count(*) as total_employees,
    sum(salary) as total_salary,
    avg(salary) as average_salary
from employee
group by department
having count(*) > 8;


select department,
    sum(salary) as total_salary,
    avg(salary) as average_salary   
from employee
group by department
having sum(salary) > 100000;


select department,
    count(*) as total_employees,
    sum(salary) as total_salary,
    avg(salary) as average_salary 
from employee
group by department
having avg(salary) > 30000
    and sum(salary) > 100000;