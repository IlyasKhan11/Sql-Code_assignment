show databases;
USE student;


show tables;



ALTER TABLE Employees
DROP COLUMN first_name,
DROP COLUMN last_name;

-- Show the updated table structure
DESCRIBE Employees;



ALTER TABLE Employees
ADD COLUMN employee_name VARCHAR(100) AFTER employee_id;

-- Show the updated table structure
DESCRIBE Employees;


SELECT CONCAT(employee_name, ', ', designation, ', ', department) AS employee_info
FROM Employees;


SELECT COUNT(*) AS total_auditors
FROM Employees
WHERE designation = 'Auditor';


SELECT city, department, COUNT(*) AS number_of_employees
FROM Employees
GROUP BY city, department;

SELECT department, AVG(salary) AS average_salary
FROM Employees
GROUP BY department;

SELECT department, COUNT(*) AS employees_over_8_years
FROM Employees
WHERE years_served > 8
GROUP BY department;

SELECT designation, SUM(salary) AS total_salary_expense
FROM Employees
GROUP BY designation
ORDER BY total_salary_expense DESC;

SELECT COUNT(*) AS "Number of Employees"
FROM Employees;


SELECT city, department, ROUND(AVG(salary), 2) AS average_salary
FROM Employees
GROUP BY city, department
HAVING AVG(salary) >= 70000;

