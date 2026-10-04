-- LIKE operator
--  LIKE operator is used to search for a specified pattern in a column.


select * from employee
where position like 'Manager';


select * from employee
where position like '%Manager%';


select * from employee
where first_name like '__hn';


select * from employee
where department like '%R%';


select * from employee
where first_name like '%ly%';

