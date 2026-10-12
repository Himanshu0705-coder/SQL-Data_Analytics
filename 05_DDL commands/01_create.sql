use employees;
CREATE TABLE Himanshu (
    emp_id INT AUTO_INCREMENT,
    emp_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    age INT,
    salary DECIMAL(10,2) NOT NULL,
    dept_id INT,
    PRIMARY KEY (emp_id),
    CHECK (age >= 18),
    CHECK (salary > 0),
    INDEX idx_emp_name (emp_name)
);
INSERT INTO Himanshu
    (emp_id,emp_name, email, age, salary,dept_id)
VALUES
(1,"Himan","panchalhimanshu0507@gmail.com",21,50000,01);



select * from Himanshu;