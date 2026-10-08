use sales;

select * , IFNULL(Product , "NOT AVAILABLE") from customers c
left join orders o
on c.customerID = o.customerID;


select c.customerID , IFNULL(c.CustomerName,"Not Available")
 from customers c
right join orders o
on c.customerID = o.customerID;


