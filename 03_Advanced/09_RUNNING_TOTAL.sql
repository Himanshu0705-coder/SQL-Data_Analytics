use employees;

-- Calculate a running total
select first_name,
        department,
        salary,
        sum(salary) over (
                            ORDER BY emp_id
                            ROWS BETWEEN UNBOUNDED PRECEDING
                            AND CURRENT ROW) as running_total
from employee;


-- Running total separately by department

select emp_id,
        first_name,
        department,
        salary,
        sum(salary) over (PARTITION BY department
                            order by emp_id asc
                            ROws BETWEEN UNBOUNDED PRECEDING
                            and CURRENT ROW) as departmental_total
from employee;

