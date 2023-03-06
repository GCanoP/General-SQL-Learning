-- 1.1 MIN() Function.
SELECT MIN(e_age)
FROM employee;

-- 1.2 MIN() Function.
SELECT MAX(e_age)
FROM employee;

-- 1.3 COUNT() Function.
SELECT COUNT(DISTINCT(e_gender))
FROM employee;

SELECT COUNT(*)
FROM employee
WHERE e_gender = 'Male';

-- 1.4 SUM() Function. 
SELECT SUM(e_salary)
FROM employee;

-- 1.5 AVG() Function.
SELECT AVG(e_salary)
FROM employee;

-- 1.6 LTRIM() Function
SELECT '    string';
SELECT ltrim('    string');

-- 1.7 LOWER() Function
SELECT lower('LOWER');

-- 1.8 UPPER() Function.
SELECT upper('upper');

-- 1.9 REVERSE() Function.
SELECT reverse('Reverse');

-- 1.10 SUBSTRING() Function.
SELECT substring('Hello World', 7, 5);


