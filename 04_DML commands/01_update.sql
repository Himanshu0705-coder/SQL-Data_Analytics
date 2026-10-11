--  DML -- Insert / Update / Delete 

use employees;

set SQL_SAFE_UPDATES = 0;
select * from employee;

update employee set first_name = "John"
                where emp_id = 1;

rollback;

commit;

update employee set first_name = "Updated"
                where salary > 70000;

update employee set salary = 90000
                where first_name = "Ava";

update employee set department = "Human Resource"
                    WHERE deparment = "HR";

update employee set position = "None"
                where poisiton like "%Manager%";

update employee set emp_id = 10
                where salary > 50000;


-- commit is used for mark the permanent changes in the database.
commit;

-- rollback revert the updates that are made in database.

rollback;

--  NOTE :-  after commit , rollback can't be work

