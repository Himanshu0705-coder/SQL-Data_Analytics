use sales;
select * from customers c
left join orders o
on c.customerID = o.CustomerID;


select * from customers c
left join orders o
on c.customerID = o.customerID
where o.orderID is NULL;

select c.city , count(o.CustomerID),count(c.customerID),sum(o.amount),max(o.amount) from customers c
left join orders o
on c.customerId = o.CustomerID
group by c.city;

select * from customers c
left join orders o
on c.customerID = o.customerID
where o.amount = (select max(o.amount) from orders o); 


select c.city , max(o.amount) from customers c
left join orders o
on c.customerID = o.customerID
group by c.city;

