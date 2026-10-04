-- Aggregation Functions
-- Aggregate functions are used to perform a calculation on a set of values and return a single value.
-- SUM, MIN, MAX, AVG, COUNT

select sum(salary) as total_salary 
    from employee;

select min(salary) as minimum_salary
    from employee;


select max(Salary) as maximum_salary
    from employee;  

select count(emp_id) as total_employees
    from employee;

select avg(salary) as average_salary
    from employee;  


select sum(salary)/count(salary) as average_salary
    from employee;


select max(date_of_joining) as latest_joining_date,
       min(date_of_joining) as earliest_joining_date,
       count(date_of_joining) as total_employees_joined,
       sum(salary) as total_salary,
       avg(salary) as average_salary
    from employee;