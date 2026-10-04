-- GROUP BY

select department, sum(salary) as total_salary
from employee
group by department;


select department,
       count(emp_id) as total_employees_per_department,
       sum(salary) as total_salary_per_department,
       avg(salary) as average_salary_per_department,
       min(salary) as minimum_salary_per_department,
       max(salary) as maximum_salary_per_department
from employee
group by department;
