-- CTE (Common Table Expression)
-- A CTE is a temporary named result set that you create at the beginning of a SQL query using the WITH keyword.

-- -----------------------------------------------------------------
with high_salary as
(
select * from employee
where salary >  70000
)
select * from high_salary;




-- -----------------------------------------------------------------------
-- CTE with Aggrigation
with department_count as 
(
select department,count(emp_id) from employee
group by department
having count(emp_id) > 8
)
select * from department_count;

-- ----------------------------------------------

with dept_avg AS
(
select round(avg(salary)) as avg_salary
from employee
group by department
)
select * from dept_avg
where avg_salary > 50000;



-- -------------------------------------------
-- Multiple CTE (Common Table Expression)

WITH employee_data AS (
    SELECT *
    FROM employee
),
high_salary AS (
    SELECT *
    FROM employee_data
    WHERE salary > 70000
)
SELECT *
FROM high_salary;



-- here, employee_data --- 1st execute
-- high_salary  --- 2nd execute
