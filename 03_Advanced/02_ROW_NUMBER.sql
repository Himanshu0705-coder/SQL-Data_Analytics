use employees;

select emp_id,
       first_name,
       last_name,
       department,
       position,
       ROW_NUMBER() over (order by department) as updated_department
from employee;

select emp_id,
        first_name,
        last_name,
        department,
        ROW_NUMBER() over (PARTITION BY department) as diff_department
from employee;


select * from 
(select first_name,
        last_name,
        department,
        row_number() over (PARTITION BY department order by salary desc) as rnk
from employee) as updated_table
where rnk = 2;



with new_data as
(select first_name,
        last_name,
        department,
        salary,
        ROW_NUMBER() over (partition by department order by salary desc) as rnk
from employee)
select * from new_data
where rnk = 2;


with new_data as 
(select first_name,
        last_name,
        department,
        ROW_NUMBER() over (order by salary desc) as rnk
from employee)
select * from new_data
where rnk = 4;
