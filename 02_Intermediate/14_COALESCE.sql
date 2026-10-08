use employees;

-- COALESCE is  use to handle null values

select first_name , COALESCE(salary,0) from employee;


select COALESCE(first_name,'NULL') ,
        COALESCE(department,'NULL') ,
        COALESCE(salary,0)
from employee;




use sales;
show tables;

select * from customers c
left join orders o
on c.customerID = o.CustomerID;


select *,COALESCE(OrderID ,0)
from customers c
left join orders o
on c.customerID = o.CustomerID;

