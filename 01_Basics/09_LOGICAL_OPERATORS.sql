-- Logical Operators
-- LOgical operators are used to combine multiple conditions in a SQL statement.
-- AND , OR, NOT


select * from employee
where department = "HR" AND salary > 50000;



select * from employee
where department = "Marketing" OR salary < 30000;



select * from employee
where NOT department = "IT";


select * from employee
where department not in ('HR','IT');



select * from employee
where department = "HR" AND (salary > 50000 OR date_of_joining > '2020-01-01');