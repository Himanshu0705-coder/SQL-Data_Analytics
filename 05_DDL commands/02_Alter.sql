use employees;
alter table Himanshu rename column email to emailID;

alter table Himanshu change column emp_id id decimal;

alter table Himanshu modify column id int;
select * from Himanshu;


describe HImanshu;

alter table Himanshu add column gender varchar(50);

alter table Himanshu drop column gender;
