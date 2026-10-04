-- IS_NULL

select *  from employee
where salary is null;

select * from employee
where salary is not null;

select * from employee
where department is null;

select * from employee
where department is not null;

select * from employee
where date_of_joining is null;


select * from employee
where date_of_joining is not null;  


select * from employee
where emp_id is NULL;


select * from employee
where emp_id is NOT NULL;   