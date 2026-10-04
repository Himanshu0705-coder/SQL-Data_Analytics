
-- Arithmetic Operators 
-- +, -, * , / , % , ** , ^



select * from employee
where (salary + 1000) > 50000;




select * from employee
where (salary - 20000) > 50000;



select first_name ,
       salary, 
       salary*11 as new_salary 
    from employee;




select first_name, 
       last_name, 
       salary , salary/10 as new_salary 
    from employee;
    

select first_name,
       last_name,
       salary,
       salary%17 as new_salary 
    from employee;




select salary/1000 as new_salary from employee;
