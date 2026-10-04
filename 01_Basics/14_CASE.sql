-- Case statement is used to handle if-else conditions in SQL.

select *,
        case
        when salary < 20000 then "Low Salary"
        when salary between 20000 and 50000 then "Medium Salary"
        else "High Salary"
        end as Salary_Category 
    from employee;



select first_name,
       last_name,
       salary,
        case
        when salary < 20000 then "Low Salary"
        when salary between 20000 and 50000 then "Medium Salary"
        else "High Salary"
        end as Salary_Category 
    from employee;


select concat(first_name,' ',last_name) as full_name,
        department,
        salary,
        case
          when salary < 20000 then "Low Salary"
          when salary between 20000 and 50000 then "Medium Salary"
          else "High Salary"
          end as Salary_Category
 from employee


select concat(first_name," ",last_name)as full_name,
        department,
        salary,
        case
             when salary < 20000 then "Low Salary"
             when salary between 20000 and 50000 then "Medium Salary"
             else "High Salary"
             end as Salary_Category
     from employee 
     order by salary desc;     