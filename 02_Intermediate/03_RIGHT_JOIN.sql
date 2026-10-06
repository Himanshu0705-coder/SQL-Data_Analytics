use sales;

select * from customers;
select * from orders;


select * from customers c
right join orders o
on c.customerID = o.customerID;

select c.customerID , o.customerID from customers c
right join orders o
on c.customerID = o.customerID;


select o.customerID,c.customerName from customers c
right join orders o
on c.customerID = o.customerID
where c.customerID is NULL;



select c.city, count(c.customerID), sum(o.amount) from customers c
right join orders o
on c.customerID = o.customerID
group by c.city
having count(c.customerID) = 0;


select c.country, count(c.customerID), count(o.customerID) from customers c
right join orders o
on c.customerID = o.customerID
group by c.country;