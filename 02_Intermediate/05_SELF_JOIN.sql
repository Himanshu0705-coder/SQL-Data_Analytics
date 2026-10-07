use employees;


select * from employee;
select * from employee e
join employee e1
on e.emp_id = e1.emp_id



-- employee who reports to their manager

select e.first_name,e.position,e1.first_name,e1.position , e1.department
from employee e join employee e1
on e.department = e1.department
where e.position <> "Manager" and e1.position = "manager"
order by department;