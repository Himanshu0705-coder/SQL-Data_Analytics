use sales;

select customerID from customers
union ALL
select customerID from orders;


use employees;


select emp_id , first_name , salary from employee
UNION ALL
select emp_id , first_name , salary from `employee data`;