USE sql_intellipaat;

-- Considering two tables : Employee and Department. 
SELECT * FROM sql_intellipaat;

-- 1.1 Basic Syntaxis for a INNER JOIN Operation. 
-- The INNER JOIN Returns the Values that Match in Both Tables. 
SELECT e.e_name, e.e_dept, d.d_name, d.d_location
FROM employee e 
INNER JOIN department d 
ON (e.e_dept = d.d_name);

-- 1.2 Basic Syntaxis for a LEFT JOIN Operation. 
-- LEFT JOIN returns all the records from the left table, and the matches record from the right table. 
SELECT e.e_name, e.e_dept, d.d_name, d.d_location
FROM employee e
LEFT JOIN department d
ON (e.e_dept = d.d_name);

-- 1.3 Basic Syntaxis for a RIGHT JOIN Operation. 
SELECT e.e_name, e.e_dept, d.d_name, d.d_location
FROM employee e
RIGHT JOIN department d
ON (e.e_dept = d.d_name);

-- 1.4 Basic Syntaxis for a OUTTER JOIN Operation. 
-- FULL JOIN Operator is not supported by MySQL, but it is possible to simulate with the UNION Operator.
SELECT e.e_name, e.e_dept, d.d_name, d.d_location
FROM employee e
LEFT JOIN department d
ON (e.e_dept = d.d_name)
UNION
SELECT e.e_name, e.e_dept, d.d_name, d.d_location
FROM employee e
RIGHT JOIN department d
ON (e.e_dept = d.d_name);

-- 1,5 Updating Data Applying a Join Condition. 
UPDATE employee e
JOIN department d ON (e.e_dept = d.d_name)
SET e.e_age = e.e_age +10
WHERE d.d_location  = 'New York';
