-- UPPER() — Convert to Uppercase

select Upper(first_name),upper(last_name) from employee;


-- LOWER() — Convert to Lowercase
select lower(first_name),lower(last_name) from employee;


-- LENGTH() — Find String Length
select first_name , length(first_name),
       last_name , length(last_name)
 from employee;


-- CONCAT() — Combine Strings
select concat(first_name , " " ,last_name) as full_name from employee;


-- SUBSTRING() — Extract Part of a String
select substring(first_name,1,2) from employee;


-- TRIM() — Remove Extra Spaces
select trim(first_name),trim(last_name) from employee;



-- REPLACE() — Replace Text
select REPLACE(first_name,'John','Himanshu') from employee;


-- LEFT() — Get Characters From Left
select left(first_name ,2) from employee;

-- RIGHT() — Get Characters From Right
select right(first_name,2) from employee;


select first_name , left(first_name,2) , right(first_name ,2) from employee;


-- INSTR() — Find Position
select INSTR('himanshu','a');
