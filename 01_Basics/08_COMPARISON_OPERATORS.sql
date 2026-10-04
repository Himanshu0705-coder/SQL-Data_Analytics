-- Comparision Operator
-- > ,< ,>= , <= , = , != , <> , BETWEEN , IN , LIKE

select * from employee
    where salary > 70000;


select * from employee
    where salary < 20000;


select * from employee
    where salary>=75000;

select * from employee
    where salary <= 35000;


select * from employee
    where salary = 50000;


select * from employee
    where salary != 10000;

select * from employee
    where salary <> 75000;


select * from employee
    where salary between 10000 and 20000;


select * from employee
    where salary in (10000,20000);


select * from employee
    where department like 'Marketing';


select * from employee
    where position like '%manager%';


select * from employee
where first_name like 'jo_n';