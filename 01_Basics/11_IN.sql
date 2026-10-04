--  IN operator is used to filter the records based on a list of values. 
-- It is used in the WHERE clause to specify multiple values in a WHERE clause.

select * from employee
where department in ('HR','IT','Marketing');


select * from employee
where position in ('Manager','Team Lead');


select * from employee
where salary in (10000,20000,30000,40000,50000);


select * from employee
where first_name in ('John','Jane','Michael','Emily');