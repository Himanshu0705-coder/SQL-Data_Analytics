-- Duplicate Handling
-- Duplicate handling means identifying, removing, or managing duplicate records in a database.
use employees;


-- 1. Find Duplicate Values
select first_name , count(*)
from employee
group by first_name
having count(*) > 1;

-- 2. Find Complete Duplicate Rows
select first_name , email , count(*) 
from employee
group by first_name , email
having count(*) > 1;

-- 3. Use DISTINCT to Get Unique Records
select distinct(first_name)
from employee;

-- 4. Identify Duplicate Rows Using ROW_NUMBER()

-- 5. Find Only Duplicate Rows
-- 6. Delete Duplicate Records
-- 7. Duplicate Handling Using GROUP BY
-- 8. Duplicate Handling with NULL
