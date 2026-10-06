use employees;


select * from employee;
select * from employee e
self join employee e1
on e.emp_id = e1.emp_id
