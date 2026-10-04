-- BETWEEN

select * from employee
where salary between 10000 and 20000;


select * from employee
where date_of_joining between '2020-01-01' and '2021-01-01';


select * from employee
where salary not between 10000 and 20000;


select * from employee
where date_of_joining not between '2020-01-01' and '2021-01-01';


select * from employee
where emp_id between 1 and 10;


select * from employee
where emp_id not between 1 and 10;


select * from employee
where department between "HR"  and "IT";