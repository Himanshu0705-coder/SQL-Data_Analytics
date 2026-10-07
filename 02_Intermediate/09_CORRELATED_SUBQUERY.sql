-- A correlated subquery is a subquery that depends on the outer query.


-- Find employees whose salary is greater than the average salary of their own department.
SELECT e.first_name, e.department, e.salary
FROM employee e
WHERE e.salary > (
    SELECT AVG(e2.salary)
    FROM employee e2
    WHERE e2.department = e.department
);



