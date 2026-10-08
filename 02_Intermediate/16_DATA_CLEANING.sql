-- Data Cleaning

use employees;
-- Data cleaning means identifying and fixing problems in raw data so that it is accurate, consistent, and ready for analysis.


-- 1. Find NULL Values
select * from employee
WHERE department IS NULL;

-- Replace NULL
SELECT
    first_name,
    COALESCE(department, 'Not Assigned') AS department
FROM employee;


-- 2. Remove Duplicate Records
SELECT email, COUNT(*) AS count
FROM employee
GROUP BY email
HAVING COUNT(*) > 1;

-- OR using distinct
select DISTINCT(email) from employee;


-- 3. Remove Extra Spaces
select trim(concat(first_name ," ", last_name)) 
from employee;



-- 4. Standardize Text
select UPPER(department) from employee;
select LOWER(Department) from employee;


-- 5. Replace Incorrect Values
select first_name,count(first_name) from employee
group by first_name
having count(first_name) > 1;


select Replace(first_name , 'Ava' , 'Himanshu') from employee;


-- 6. Handle Invalid Data
SELECT *
FROM employee
WHERE salary < 0;


-- 7. Find Outliers
select * 
from employee
where salary > 1000000;


-- 8. Validate Data Using Conditions
SELECT *
FROM employee
WHERE salary < 75000
   OR salary > 50000;


-- 9. Clean Dates
-- Standardize Phone Numbers
-- Standardize Email Addresses
-- Find Duplicate Emails
-- Find Missing Values in Multiple Columns




                                                        -- Raw Data
                                                        --    ↓
                                                        -- Check NULL values
                                                        --    ↓
                                                        -- Check duplicates
                                                        --    ↓
                                                        -- Remove extra spaces
                                                        --    ↓
                                                        -- Standardize text
                                                        --    ↓
                                                        -- Validate data types
                                                        --    ↓
                                                        -- Check invalid values
                                                        --    ↓
                                                        -- Check outliers
                                                        --    ↓
                                                        -- Validate dates
                                                        --    ↓
                                                        -- Clean & transform
                                                        --    ↓
                                                        -- Final Dataset