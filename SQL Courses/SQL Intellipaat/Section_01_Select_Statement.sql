-- 1.1 SELECCT Basic Syntaxis. 
SELECT *
FROM employee;

-- 1.2 DISTINCT Basic Syntaxis. 
-- Select Distinct Values from a Table. 
SELECT DISTINCT e_gender
FROM employee;

-- 1.3 WHERE Basic Syntaxis. 
-- Filter Results Based On a Simple Condition. 
SELECT * 
FROM employee
WHERE e_gender = 'Female';

SELECT *
FROM employee
WHERE e_age <= 30;

-- 1.4 AND, OR, and NOT Operators.
-- Logical Condition Operatos. 
SELECT *
FROM employee
WHERE e_gender = 'Male' AND e_dept = 'Operations' AND e_age <= 30;

SELECT *
FROM employee
WHERE e_dept = 'Operations' OR e_dept = 'Analytics';

SELECT *
FROM employee
WHERE NOT e_gender = 'Male';

-- 1.5 LIKE Operator. 
-- Find Similar Results Based on a Regular Expression. 
SELECT *
FROM employee
WHERE e_name LIKE 'J%' AND e_salary <= 100000;

SELECT * 
FROM employee
WHERE e_salary LIKE '73___';

-- 1.6 BETWEEEN Operator
SELECT *
FROM employee
WHERE e_age BETWEEN 20 AND 30;

-- 1.7 ORDER BY Operator. 
SELECT * 
FROM employee
ORDER BY e_salary, e_gender;

-- 1.8 GROUP BY Operator
SELECT AVG(e_salary), e_gender
FROM employee
GROUP BY e_gender;

SELECT avg(e_age), e_dept
FROM employee
GROUP BY e_dept
ORDER BY avg(e_age) DESC;

-- 1.9 LIMIT Operator. 
SELECT * 
FROM employee
LIMIT 3;

-- 1.10 HAVING Operation: Impose conditions on groups. 
-- HAVING statement is usually applied when the GROUP BY operator is also used. 
SELECT e_dept, avg(e_salary) as avg_salary
FROM employee
GROUP BY e_dept
HAVING avg(e_salary) > 100000;

-- 1.11 UPDATE Statement: Used to modify records in a table. 
UPDATE employee
SET e_age = 42
WHERE e_name = 'Sam';

-- 1.12 DETELE Statement: USed to delete records in a table.
-- Do not forget WHERE Clause. 
DELETE
FROM employee
WHERE e_age = 33;



