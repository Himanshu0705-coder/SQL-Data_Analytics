-- FIRST_VALUE() is a SQL window function that returns the value from the first row in a window frame, based on the ordering you specify.
-- For example, if you want to display every employee's salary alongside the highest salary in their department, FIRST_VALUE() can help.

use employees;


select First_name,
        department,
        salary,
        FIRST_VALUE(salary) over (order by department)
from employee;


select first_name,
        department,
        salary,
        FIRST_VALUE(salary) over (PARTITION BY department)
from employee;

select first_name,
        department,
        salary,
        FIRST_VALUE(first_name) over (PARTITION BY department order by salary desc)
from employee;



-- Find the highest salary in each department
select first_name,
        department,
        salary,
        FIRST_VALUE(salary) over (partition by Department order by salary desc) as Highest_salary
from employee;


-- Find the first employee hired in each department
SELECT
    first_name,
    department,
    date_of_joining,
    FIRST_VALUE(first_name) OVER (
        PARTITION BY department
        ORDER BY date_of_joining ASC, emp_id
    ) AS first_joined_employee
FROM employee;


-- Find the highest-paid employee's name
select first_name,
        department,
        salary,
        FIRST_VALUE(first_name) over (PARTITION BY department order by salary desc) as highest_paid_name
from employee;



-- Find the first employee hired in each department
select first_name,
        department,
        date_of_joining,
        FIRST_VALUE(date_of_joining) over (PARTITION BY department order by date_of_joining desc) as emp_hiered
from employee
;