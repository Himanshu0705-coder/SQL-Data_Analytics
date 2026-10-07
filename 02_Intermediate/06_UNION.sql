-- UNION combines results and removes duplicate rows.

-- UNION ALL combines results but keeps duplicates.

use sales;

select customerId from customers
union
select customerID from orders;





use employees;
show TABLES;


select * from employee;
select * from `employee data`;


select emp_id , first_name , salary from employee
UNION
select emp_id , first_name , salary from `employee data`;

