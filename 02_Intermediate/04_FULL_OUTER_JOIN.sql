use sales;

select * from customers c
full OUTER JOIN orders o
on c.customerID = o.customerID ;