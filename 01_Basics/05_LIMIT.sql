use employees;

select * from employee
    limit 10;


-- select top 5 employees whose department is "HR" & salary is in desc
select * from employee
    where department = "HR"
    order by salary desc
    limit 5;


-- select top 2 employees whose department is "Marketing" & salary in between 20000 and 50000
SELECT *
FROM employee
WHERE (department = "Marketing") AND (salary BETWEEN 20000 AND 50000);


-- select/extract employees who joined between '2020-01-01' to '2021-01-01'.
select * from employee
    where date_of_joining between '2020-01-01' AND '2021-01-01';

