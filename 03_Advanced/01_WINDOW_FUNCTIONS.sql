use employees;

select *from employee;

select emp_id,
       first_name,
       department,
       avg(salary) over (PARTITION by department)
from employee;



-- ROW_NUMBER()
select emp_id,
       first_name,
       department,
       position,
       salary,
       ROW_NUMBER() over(ORDER BY salary DESC) as highest_salary
from employee
order by salary desc;


-- DENSE_RANK()
select emp_id,
        first_name,
        salary,
        dense_rank() over (order by salary desc) as new_data
from employee;


-- RANK()
select emp_id,
       first_name,
       last_name,
       salary,
       department,
       RANK() over (order by salary desc) 
from employee;



-- Find the highest-paid employee in each department
select * from 
(select emp_id,
       first_name,
       last_name,
       department,
       position,
       salary,
       DENSE_RANK() Over(partition by department order by salary desc) as highest_pay
from employee) as rnk
where highest_pay = 1 ;


-- Find the second-highest salary
with new_data as 
(select first_name,
        last_name,
        department,
        salary,
        Dense_rank() over (PARTITION BY department order by salary desc) as rnk
from employee)
select * from new_data
where rnk = 2;




-- Compare an employee's salary with the previous employee
SELECT
    emp_id,
    first_name,
    salary,
    LAG(salary) OVER (
        ORDER BY emp_id
    ) AS previous_salary
FROM employee;




select first_name, department, salary,
        Dense_Rank() over (partition by department order by salary desc)
from employee;