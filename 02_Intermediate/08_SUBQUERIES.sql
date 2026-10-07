-- A subquery is a query written inside another SQL query.
use employees;

SELECT first_name, salary
FROM employee
WHERE salary > (
    SELECT AVG(salary)
    FROM employee
);

select * from employee;
select department , count(first_name) , count(date_of_joining) from employee
GROUP BY department
having count(date_of_joining);



SELECT emp_id,first_name,department,position,salary
FROM employee
WHERE department IN (
    SELECT department
    FROM employee
    WHERE department = 'HR'
);