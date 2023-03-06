USE sql_cookbook_database;

-- WORKING WITH MULTIPLE TABLES.

-- 3.1 Stacking One Rowset atop Another.
-- You want to return data stored in more than one table, conceptually stacking one
-- result set atop the other
select ename as ename_and_dname, deptno
from emp
where deptno = 10
union all
select dname, deptno
from dept;

-- 3.2 Combining Related Rows. 
-- You want to return rows from multiple tables by joining on a known common column
-- or joining on columns that share common values.
SELECT e.ename, d.loc, e.deptno, d.deptno
FROM emp e, dept d
WHERE e.deptno = d.deptno AND e.deptno = 10 ;

-- 3.3 Finding Rows in Common Between Two Tables.

CREATE VIEW V
AS
SELECT ename, job, sal
FROM emp
WHERE job = 'CLERK';

SELECT * 
FROM V ;

-- Join table EMP to view V using multiple join conditions:
SELECT e.empno, e.ename, e.job, e.sal, e.deptno
FROM emp e, V
WHERE
	e.ename = v.ename AND 
    e.job = v.job AND
    e.sal = v.sal;
-- Alternatively, the same join can be performed via the JOIN clause:
SELECT e.empno, e.ename, e.job, e.sal, e.deptno
FROM emp e JOIN V ON 
					(e.ename = v.ename AND
                    e.job = v.job AND
                    e.sal = v.sal);
				
-- 3.4 Retrieving Values from One Table That Do Not Exist in Another.
-- Use a subquery to return all DEPTNOs from table EMP into an outer query that searches 
-- table DEPT for rows that are not among the rows returned from the subquery.
SELECT deptno
FROM dept
WHERE deptno NOT IN (SELECT deptno FROM emp);

-- 3.5 Retrieving Rows from One Table that Do Not Correspond to Rows in Another. 
-- You want to find rows that are in one table that do not have a match in another table,for
-- two tables that have common keys.

SELECT d.*
FROM dept d LEFT OUTER JOIN emp e
							ON (d.deptno = e.deptno)
WHERE e.deptno IS NULL;

-- 3.6 Addding Joins to a Query Without Interfering with Other Joins. 
-- You have a query that returns the results you want. You need additional information,
-- but when trying to get it, you lose data from the original result set.

SELECT e.ename, d.loc
FROM emp e, dept d
WHERE e.deptno = d.deptno; 

-- You want to add to these results the date a bonus was given to an employee, but joining 
-- to the EMP_BONUS table returns fewer rows than you want because not every employee has a bonus:
SELECT e.ename, d.loc, eb.received
FROM emp e, dept d, emp_bonus eb
WHERE e.deptno = d.deptno AND e.empno = eb.empno;

SELECT e.ename, d.loc, eb.received
FROM emp e JOIN dept d
	ON (e.deptno = d.deptno)
	LEFT JOIN emp_bonus eb
    ON (e.empno = eb.empno)
ORDER BY 2;
