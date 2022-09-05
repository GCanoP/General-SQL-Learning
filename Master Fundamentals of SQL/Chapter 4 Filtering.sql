/*
FILTERING
--EQUALITY CONDITION--
SELECT dept_id 
FROM department
WHERE name = 'Loans'

SELECT pt.name product type, p.name product
FROM product p INNER JOIN product_type pt ON p.product_type_cd = pt.product_type_cd
WHERE pt.name = 'Customer Accounts'

--INEQUALITY CONDITIONS--
SELECT pt.name product type, p.name product
FROM product p INNER JOIN product_type pt ON p.product_type_cd = pt.product_type_cd
WHERE pt.name <> 'Customer Accounts'
 
 --DATA MODIFICATION USING EQUALITY CONDITIONS--
 DELETE FROM account 
 WHERE status = 'CLOSED' AND YEAR(close_date) = 2002;
 
 --RANGE CONDITIONS--
 SELECT emp_id, fname, lname, start_date
 FROM employee
 WHERE start_date < '2007-01-01' AND start_date >= '2005-01-01';
 
 --BETWEEN OPERATOR--
 SELECT emp_id, fname, lname, start_date
 FROM employee
 WHERE start_date BETWEEN '2007-01-01' AND '2005-01-01';
 
 --MATCHING CONDITIONS--
 SELECT emp_id, fname, lname
 FROM employee
 WHERE LEFT(lname,1) ='T';
 
 --DIFFERENT CONDITION--
SELECT emp_id, fname, lname, superior_emp_id
FROM employee
WHERE superior_emp_id != 6; 

*/