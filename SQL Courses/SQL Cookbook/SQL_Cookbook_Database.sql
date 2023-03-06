CREATE DATABASE SQL_Cookbook_database;
USE SQL_Cookbook_database;

-- Creating a Department Table. 
CREATE TABLE dept(
	deptno INT NOT NULL,
    dname VARCHAR(30) NOT NULL,
    loc VARCHAR(20));
    
-- Creating a Emp Bonus Table. 
CREATE TABLE emp_bonus(
	empno INT NOT NULL,
    received DATE NOT NULL,
    type INT NOT NULL);
    
-- Creating a Employee Table. 
CREATE TABLE emp(
	empno INT NOT NULL,
    ename VARCHAR(20) NOT NULL,
    job VARCHAR(30) NOT NULL,
    mgr INT NOT NULL,
    hiredate DATE NOT NULL,
    sal INT NOT NULL,
    comm INT NOT NULL,
    deptno INT NOT NULL);

-- Insert Data into Department Table. 
INSERT INTO dept
	(deptno, dname, loc)
VALUES
	(10, 'ACCOUNTING', 'NEW YORK'),
    (20, 'RESEARCH', 'DALLAS'),
    (20, 'SALES', 'CHICAGO'),
    (40, 'OPERATIONS', 'BOSTON');

-- Insert Data into Emp Bonus Table. 
INSERT INTO emp_bonus
	(empno, received, type)
VALUES
	(7369, '2005-03-14', 1),
    (7900, '2005-03-14', 2),
    (7780, '2005-03-14', 3);
    
-- Insert Data into Employee Table. 
INSERT INTO emp
	(empno, ename, job, mgr, hiredate, sal, comm, deptno)
VALUES
	(7369, 'SMITH', 'CLERK', 7902, '2005-12-17', 800, 0 ,20 ),
    (7499, 'ALLEN', 'SALESMAN', 7698, '2006-02-20', 1600, 300 ,30 ),
    (7521, 'WARD', 'SALESMAN', 7698, '2006-02-22', 1250, 500 ,30 ),
    (7566, 'JONES', 'MANAGER', 7839, '2006-04-02', 2975, 0 ,20 ),
    (7654, 'MARTIN', 'SALESMAN', 7698, '2006-09-28', 1250, 1400 ,30 ),
    (7698, 'BLAKE', 'MANAGER', 7839, '2006-05-01', 2850, 0 ,30 ),
    (7782, 'CLARK', 'MANAGER', 7839, '2006-06-09', 2450, 0 ,10 ),
    (7788, 'SCOTT', 'ANALYST', 7566, '2007-12-09', 3000, 0 ,20 ),
    (7839, 'KING', 'PRESIDENT', 0, '2006-11-17', 5000, 0 ,10 ),
    (7844, 'TURNER', 'SALESMAN', 7698, '2006-09-08', 1500, 0 ,30 ),
    (7876, 'ADAMS', 'CLERK', 7788, '2008-01-12', 1100, 0 ,20 ),
    (7900, 'JAMES', 'CLERK', 7698, '2006-12-03', 950, 0 ,30 ),
    (7902, 'FORD', 'ANALYST', 7566, '2006-12-03', 3000, 0 ,20 ),
    (7934, 'MILLER', 'CLERK', 7782, '2007-01-12', 1300, 0 ,10 );


    
    
    