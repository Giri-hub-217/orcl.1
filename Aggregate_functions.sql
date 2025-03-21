-- 1. Count the number of employees in each department
-- This query is to give count of employees in each dept
SELECT department_id, COUNT(*) AS total_employees
FROM employees
GROUP BY department_id;

-- 2. Find the average salary in each department
-- This Query is to give count of employyes in each dept
SELECT department_id, AVG(salary) AS avg_salary
FROM employees
GROUP BY department_id;

-- 3. Find the maximum and minimum salary in each department
-- This Query is to give max salary and min salary of emp in each dept
SELECT department_id, MAX(salary) AS max_salary, MIN(salary) AS min_salary
FROM employees
GROUP BY department_id;

-- 4. Find the total salary paid in each department
-- This query is to give sum of all emp in each dept
SELECT department_id, SUM(salary) AS total_salary
FROM employees
GROUP BY department_id;

-- 5. Count the number of employees in each job role
-- This Query is to give emp details in each job role 
SELECT job_id, COUNT(*) AS total_employees
FROM employees
GROUP BY job_id;

-- 6. Find the average salary for each job role
-- This Query is to give avg salary of each job role
SELECT job_id, AVG(salary) AS avg_salary
FROM employees
GROUP BY job_id;

-- 7. Find the maximum salary for each job role
-- This Query is to give max salary of emp's in each job role
SELECT job_id, MAX(salary) AS max_salary
FROM employees
GROUP BY job_id;

-- 8. Find the minimum salary for each job role
-- This query is to give min salary of emp's in each job role.
SELECT job_id, MIN(salary) AS min_salary
FROM employees
GROUP BY job_id;

-- 9. Find the total salary paid for each job role
-- This query is to give emp salary each job role.
SELECT job_id, SUM(salary) AS total_salary
FROM employees
GROUP BY job_id;

-- 10. Count the number of employees hired in each year
-- This query is to extracts the year from the hire_date and counts emp hired in each year.
SELECT EXTRACT(YEAR FROM hire_date) AS hire_year, COUNT(*) AS total_employees
FROM employees
GROUP BY EXTRACT(YEAR FROM hire_date)
ORDER BY hire_year;

-- 11. Find the total salary paid in each location
-- This query is to give total salary  by joining emp's with each dept locations.
SELECT d.location_id, SUM(e.salary) AS total_salary
FROM employees e
JOIN departments d ON e.department_id = d.department_id
GROUP BY d.location_id;

-- 12. Find the number of employees in each manager's team
-- This query is to give all the mgr details with team size
SELECT manager_id, COUNT(*) AS team_size
FROM employees
WHERE manager_id IS NOT NULL
GROUP BY manager_id;

-- 13. Find the highest salary for each manager
-- This query is to give max salary of mgr's
SELECT manager_id, MAX(salary) AS max_salary
FROM employees
WHERE manager_id IS NOT NULL
GROUP BY manager_id;

-- 14. Find the average salary for each manager's team
-- This query is to giuve avg salary of emp's with team size
SELECT manager_id, AVG(salary) AS avg_salary
FROM employees
WHERE manager_id IS NOT NULL
GROUP BY manager_id;

-- 15. Count the number of employees hired in each month of the year
-- This query is to extracts the month from hire_date and employees details hired in each month.
SELECT EXTRACT(MONTH FROM hire_date) AS hire_month, COUNT(*) AS total_hired
FROM employees
GROUP BY EXTRACT(MONTH FROM hire_date)
ORDER BY hire_month;

-- 16. Find the department with the highest total salary
-- This query is to gives the dept details wuith total salary
SELECT department_id, SUM(salary) AS total_salary
FROM employees
GROUP BY department_id
ORDER BY total_salary;

-- 17. Find the job role with the highest average salary
-- This query is to give the job role with highest average salary
SELECT job_id, AVG(salary) AS avg_salary
FROM employees
GROUP BY job_id
ORDER BY avg_salary DESC;

-- 18. Find the number of employees in each city
-- This query is to give emp details with locations using joins
SELECT l.city, COUNT(*) AS total_employees
FROM employees e
JOIN departments d ON e.department_id = d.department_id
JOIN locations l ON d.location_id = l.location_id
GROUP BY l.city;

-- 19. Find the number of employees who have a commission, grouped by departmen
-- This query is to give emp deatils having comm  
SELECT department_id, COUNT(*) AS employees_with_commission
FROM employees
WHERE commission_pct IS NOT NULL
GROUP BY department_id;

-- 20. Find the sum of salaries for employees who have a commission, grouped by department
-- This query is to give emp details with comm  
SELECT department_id, SUM(salary) AS total_salary_with_commission
FROM employees
WHERE commission_pct IS NOT NULL
GROUP BY department_id;
