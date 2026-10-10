use employees;


-- Find the lowest salary in each department
SELECT
    first_name,
    department,
    salary,
    LAST_VALUE(salary) OVER (
        PARTITION BY department
        ORDER BY salary desc, emp_id
        ROWS BETWEEN UNBOUNDED PRECEDING
                 AND UNBOUNDED FOLLOWING
    ) AS lowest_salary
FROM employee;


-- Find the highest-paid employee's name

select first_name,
        department,
        salary,
        LAST_VALUE(first_name) over (
            partition by department
            order by salary ASC
            ROWS BETWEEN Unbounded PRECEDING
                        AND UNBoUNDED FOLLOWING
            ) AS HIGHEST_SALARY
FROM EMPLOYEE;


-- Find the latest-hired employee in each department
SELECT first_name,
        department,
        salary,
        date_of_joining,
        LAST_VALUE(first_name) over (
            partition by department
            order by date_of_joining ASC ,emp_id
            ROWS BETWEEN UNBOUNDED PRECEDING
            AND UNBOUNDED FOLLOWING
        ) as latest_hired
from employee;