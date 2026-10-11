use employees;

select * from employee;

delete from employee where emp_id=1;

rollback;

delete from employee where position like "%Manager%";

delete from employee where department not like "%IT%";


delete from employee where salary in
( select max(Salary) where department = "IT" );



-- rollback revert the changes in the database
rollback;

-- commit marks the permanent changes in the database.. 
commit;

-- NOTE :- you can't revert the changes after rollback;

