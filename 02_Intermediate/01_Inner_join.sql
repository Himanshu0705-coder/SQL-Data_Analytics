use sales;
show databases;
show tables;
select * from customers;
select * from orders;


select * from customers c 
    inner join orders o
    on c.customerID = o.customerID;


select c.customerID , c.CustomerName , c.Country  , o.orderID , o.OrderDate , o.amount
from customers c
inner join orders o
on c.CustomerID = o.customerID;


select * from customers c
inner join orders o
on c.customerID = o.customerID
where o.amount >= 250;


select c.country , count(o.orderID) , count(c.customerName) , sum(o.amount) 
from customers c
inner join orders o
group by c.country;


select c.city, count(o.orderID) , count(c.customerName) , sum(o.amount)
from customers c
inner join orders o
group by c.city
having sum(o.amount) > 500;


select c.city,count(o.orderID), avg(o.amount)
from customers c
inner join orders o
group by c.city;


select c.city,max(c.customerName), max(o.amount)
from customers c
inner join orders o
group by c.city;



-- Find cities having more than 1 employees.
select c.city , count(c.customerID)
from customers c
inner join orders o
on c.customerID = o.customerID
group by c.city
having count(c.customerID) > 1;