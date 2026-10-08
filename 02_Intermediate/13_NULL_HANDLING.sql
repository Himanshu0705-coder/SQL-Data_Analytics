use employees;
show tables;


select * from employee
where department is null;

select * from employee
WHERE salary is null;

select * from employee
where department is not null;


-- COALESCE
SELECT first_name, COALESCE(salary, 0) AS salary
FROM employee;

select First_name , COALESCE(salary,department,position , 0)
from employee;

-- IFNULL
select first_name , IFNULL(salary,0)
from employee;



-- Diffence between IFNULL & COALESCE

-- IFNULL   :- it is commonly used in MySQL for two values.
            -- IFNULL(salary, 0)


-- COALESCE  :- it can check multiple values.
            -- COALESCE(salary, bonus, 0)




-- Find employees whose department is NULL.
select * from employee
where department is null;

-- Replace NULL salary with 0.
select department ,
        position , 
        COALESCE(first_name,'NULL') 
from employee;


-- Count employees who have a salary.
select count(emp_id)
from employee

-- Count all employees including those with NULL salary.
select count(*)
from employee;


-- Calculate total salary while treating NULL salary as zero.
select sum(COALESCE(salary,0)) as total_salary
from employee;
