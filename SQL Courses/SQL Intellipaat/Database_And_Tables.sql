CREATE DATABASE sql_intellipaat;
USE sql_intellipaat;

-- Drop a Database. 
-- DROP DATABASE [database name] 

-- Create Table Employee. 
CREATE TABLE employee(
	e_id INT NOT NULL AUTO_INCREMENT,
    e_name VARCHAR(20),
    e_salary INT,
    e_age INT, 
    e_gender VARCHAR(20),
    e_dept VARCHAR(20),
    PRIMARY KEY(e_id));


INSERT INTO employee
	(e_name, e_salary, e_age, e_gender, e_dept)
VALUES
	('Sam', 95000, 45, 'Male', 'Operations'),
    ('Bob', 80000, 21, 'Male', 'Support'),
    ('Anne', 125000, 25, 'Female', 'Analytics'),
    ('Julia', 73000, 30, 'Female', 'Analytics'),
    ('Matt', 159000, 33, 'Male', 'Sales'),
    ('Jeff', 112000, 27, 'Male', 'Operations');