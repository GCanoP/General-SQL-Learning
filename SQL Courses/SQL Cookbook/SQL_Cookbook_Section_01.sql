USE sql_cookbook_database;
-- BASIC SQL COMMANDS FROM SQL COOKBOOK 

-- 1.1 Retrieving All Rows and Columns from Table. 
SELECT * 
FROM emp ;

-- 1.2 Retrieving a Subset of Rows from a Table
SELECT *
FROM emp
WHERE deptno = 10 ;

-- 1.3 Finding Rows that Satisfy Multiple Conditions -- 
SELECT *
FROM emp
WHERE deptno = 10 
	OR comm>0 
    OR sal <= 2000 AND deptno = 20 ;
-- The Expression Changes when Parenthesis are Applied. 
SELECT * 
FROM emp
WHERE (deptno = 10 
	OR comm > 0 
    OR sal <= 2000)
    AND deptno = 20 ;
    
-- 1.4 Retrieving a Subset of Columns from a Table. 
SELECT ename, deptno, sal
FROM emp; 

-- 1.5 Providing Meaningful NAmes for Columns. 
SELECT 
	sal AS Salary,
    comm AS Commision
FROM emp;

-- 1.6 Referencing Alias Column in the WHERE Clause.
-- Note 1: In order to reference an alias, a subquery is requiered.
-- Note 2: The inline view in this solution is aliased "x". Not all databases require an 
-- inline view to be explicitly aliased, but some do. All of them accept it
SELECT *
FROM (
	SELECT
		sal AS Salary,
		comm AS Commision
	FROM emp) x
WHERE Salary > 2000 ;

-- 1.7 Concatenating Column Values. 
-- MySQL databases supports a function called CONCAT: 
SELECT concat(ename, 'WORK AS A', job) AS Message
FROM emp
WHERE deptno = 10 ;

-- 1.8 Using Conditional Logic in a SELEC Stament. 
-- Use the CASE expression to perform conditional logic directly in your SELECT statement:
SELECT ename, sal,
	CASE 
		WHEN sal <= 2000 THEN 'UNDERPAID'
		WHEN sal >= 4000 THEN 'OVERPAID'
		ELSE 'OK'
    END AS status
FROM emp;

-- 1.9 Limiting the Number of Rows Returned. 
SELECT * 
FROM emp
LIMIT 5 ; 

-- 1.10 Selecting a Random Sample from a Table. 
SELECT ename AS Employee_Name, job As Job
FROM emp
ORDER BY rand() limit 7;

-- 1.11 Finding Null Values. 
SELECT * 
FROM emp
WHERE comm IS NULL;

-- 1.12 Transforming Nulls into Real Values.
-- The COALESCE function takes one or more values as arguments.
SELECT coalesce(comm, 0) AS Commisions
FROM emp ; 
-- Note 1: While you can use CASE to translate nulls into values, you can see that it is much
-- easier and more succinct to use COALESCE.
SELECT sal,
	CASE
		WHEN comm IS NOT NULL THEN comm
        ELSE 0 
	END AS Commission
FROM emp ;

-- 1.13 Searching for Patterns. 
-- Use the LIKE operator in conjunction with the SQL wildcard operators (%):
SELECT 
	ename AS Employee,
    job AS Job
FROM emp
WHERE 
	deptno IN (10, 20) AND (ename LIKE'%I%' or job LIKE '%ER%'); 










