USE sql_cookbook_database ; 
 -- SORTING QUERY RESULTS. 
 
 -- 2.1 Returning Query Results in a Specific Ordern.
 SELECT ename, job, sal
 FROM emp
 WHERE deptno = 10
 ORDER BY sal ASC ;
-- Note : The number 3 in the following example ORDER BY clause corresponds to the third
-- column in the SELECT list, which is SAL. 
SELECT ename, job, sal
FROM emp
WHERE deptno = 10
ORDER BY 3 DESC ;

-- 2.2 Sorting by Multiple Fields. 
SELECT empno, deptno, sal, ename, job
FROM emp 
ORDER BY deptno ASC, sal DESC ;

-- 2.3 Sorting by Substrings. 
-- Note : The start position will be the second to last character in the string. 
-- You then take all characters after that start position. S
SELECT ename, job
FROM emp
ORDER BY substr(job, length(job)-1) DESC ;

SELECT ename, deptno
FROM emp
ORDER BY ename ASC;

-- 2.5 Dealing with NULL when sorting.
-- Note 1: It is possible to use a CASE expression to “flag” when a value is NULL.
SELECT ename, sal, comm
FROM emp
ORDER BY comm DESC;

SELECT ename,sal,comm
FROM (
	SELECT ename,sal,comm,
		CASE 
			WHEN comm IS NULL THEN 0 ELSE 1 end as is_null
	FROM emp
		) x
ORDER BY is_null DESC, comm;

-- 2.6 Sorting on a Data-Dependent Key. 
-- You want to sort based on some conditional logic. For example, if JOB is SALES‐MAN,
--  you want to sort on COMM; otherwise, you want to sort by SAL.

SELECT ename, sal, job, comm
FROM emp 
ORDER BY CASE
			WHEN job = 'SALESMAN' THEN comm
            ELSE sal
		END;
