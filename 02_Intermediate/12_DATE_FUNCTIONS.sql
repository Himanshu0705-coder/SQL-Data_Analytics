-- Date functions are used to work with dates and times in SQL— for example
-- finding age, calculating date differences, extracting year/month, or getting today's date.

-- CURDATE() — Today's Date
select CURDATE();

-- NOW() — Current Date + Time
select NOW();

-- YEAR() — Extract Year
select year('2026-07-20');
select year(CURDATE());

SELECT emp_id, first_name, date_of_joining, YEAR(date_of_joining) AS joining_year
FROM employee;


-- MONTH() — Extract Month
select month(CURDATE());
select month(CURRENT_DATE);

select emp_id , first_name , date_of_joining , month(date_of_joining) from employee;


-- DAY() — Extract Day
select DAY(curdate());
select emp_id , first_name , date_of_joining , DAY(date_of_joining) from employee;



-- MONTHNAME() — Get Month Name
select MONTHNAME(CURDATE());
select emp_id , first_name , date_of_joining , MONTHNAME(date_of_joining) from employee;



-- DAYNAME() — Get Day Name
select DAYNAME(CURDATE());
select emp_id , first_name , date_of_joining , DAYNAME(date_of_joining) from employee;



-- DATEDIFF() — Difference Between Two Dates

select DATEDIFF(CURDATE(),'2020-10-17');
select emp_id , first_name , date_of_joining , DATEDIFF(CURDATE(),date_of_joining) from employee;



-- DATE_ADD() — Add Time to a Date
SELECT DATE_ADD(CURDATE(), INTERVAL 10 day);
select DATE_ADD(CURDATE() , INTERVAL 1 year);
select DATE_ADD(CURDATE() , INTERVAL 10 MONTH);



-- DATE_SUB() — Subtract Time From a Date
SELECT DATE_SUB(CURDATE(), INTERVAL 10 day);
select DATE_SUB(CURDATE() , INTERVAL 1 year);
select DATE_SUB(CURDATE() , INTERVAL 10 MONTH);




-- EXTRACT() — Extract Date Part
select EXTRACT(year from curdate());
select first_name , date_of_joining , Extract(year from date_of_joining) from employee;


-- DATE_FORMAT() — Format a Date
select DATE_FORMAT(CURDATE() , '%d - %m - %y');

select first_name , date_of_joining  , DATE_FORMAT(date_of_joining , '%d-%m-%y') from employee;


-- no. of employees joined each year
SELECT
    YEAR(date_of_joining) AS joining_year,
    COUNT(*) AS employee_count
FROM employee
GROUP BY YEAR(date_of_joining)
ORDER BY joining_year;