USE database_example;

/*
-- MOST COMMON QUERY CLAUSES = Select, From, Where, Group By, HAving, Order By --
-- BASIC QUERIES EXAMPLES --

SELECT emp_id, fname, lname
FROM employee;
SELECT *
FROM departments;
SELECT name 
FROM departments;

-- EXAMPLE OF IN-BUILT FUNCTION COMBINED WITH SELECT CLAUSES --
SELECT 
	emp_id,
    'ACTIVE',
    emp_id * 3.14159,
    UPPER(lname)
FROM employee;

-- EXAMPLE OF COLUMN ALIASES IN A SELECT QUERY --
SELECT 
	emp_id,
    'ACTIVE' AS status, 
    emp_id * 3.14159 AS empid_x_pi
    UPPER(lname) AS last_name_upper
FROM employee;

-- REMOVING DUPLICATES --
SELECT DISTINCT cust_id
FROM account;

-- SUBQUERIES GENERATED TABLES --
SELECT e.empi_id, e.fname, e.lname
FROM (SELECT emp_id, fname, lname, start_date, title
	  FROM employee) AS e;

-- SIMPLE TABLE LINKS --
SELECT
	employee.emp_id,
    employee.fname,
    employee.lname,
    department.name AS dept_name
FROM 
	employee INNER JOIN department ON employee.dept_id = department.dept_id
    
--DEFINING TABLE ALIASES --
SELECT
	e.emp_id,
    e.fname,
    e.lname,
    d.name dept_name
FROM 
	employee e INNER JOIN department d ON e.dept_id = d.dept_id;
    
-- THE WHERE CLUSES --
SELECT emp_id, fname, lname, start_date, title
FROM employee
WHERE title = 'Head Teller'

SELECT emp_id, fname, lname, start_date, title
FROM employee 
WHERE title = 'Head Teller' AND start_date > '2006-01-01';

SELECT emp_id, fname, lname, start_date, title
FROM employee 
WHERE title = 'Head Teller' OR start_date > '2006-01-01';

SELECT emp_id, fname, lname, start_date, title
FROM employee
WHERE 
	(title = 'Head Teller' AND start_date > '2006-01-01')
    OR (title = 'Teller' AND start_date > '2007-01-01')

-- THE GROUP BY AND HAVING CLAUSES --
SELECT d.name, count(e.emp_id) num_employees
FROM department d INNER JOIN employee e ON d.dept_id = e.dept_id
GROUP BY d.name
HAVING count(e.emp_id) > 2;

--THE ORDER BY CLAUSE--
SELECT open_empi_id, product_cd
FROM account 
ORDER BY open_emp_id, product_cd ASC;

SELECT cust_id, cust_type_cd, city, state, fed_id
FROM customers
ORDER BY RIGHT (fed_id, 3);






    



*/
