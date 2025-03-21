--1. Retrieve employee names and their department names using INNER JOIN
--  This Query is to give the emp details using inner join with dept table

-- select employees.first_name, employees.last_name, departments.department_name
-- from hr.EMPLOYEES
-- inner join hr.DEPARTMENTS
-- on employees.department_id = departments.department_id;

 --2.  Retrieve all employees and their respective department names (including those without a department) using LEFT JOIN
-- This Query is to give all details of emp using left join with emp and dept table

-- select employees.first_name, employees.last_name, departments.department_name
-- from hr.EMPLOYEES
-- LEFT join hr.departments 
-- on employees.department_id = departments.department_id;

-- 3. Retrieve all departments and employees (including departments without employees) using RIGHT JOIN
-- This query is to give all the emp details using right join with  dept table

-- select employees.first_name, employees.last_name, departments.department_name
-- from hr.EMPLOYEES
-- right join hr.DEPARTMENTS
-- on employees.department_id = departments.department_id;

 --4.  Retrieve all employees and their department names using FULL OUTER JOIN
-- This Query is to give all details of emp's using full outer join

-- select employees.first_name,employees.last_name, departments.department_id
-- from hr.EMPLOYEES
-- full OUTER JOIN hr.DEPARTMENTS
-- on employees.department_id = departments.department_id;

-- 5. Retrieve employees who do not belong to any department using LEFT JOIN with NULL check
-- This Query is to give all the emp details who's not belong to any dept using left join with null checks

-- select employees.first_name, employees.last_name
-- from hr.EMPLOYEES
-- LEFT join hr.departments 
-- on employees.department_id = departments.department_id
-- where departments.department_id IS NULL;  

-- 6. Retrieve departments that have no employees using RIGHT JOIN with NULL check
-- This Query give is to emp details who's ID's having using right join

-- select departments.department_id, departments.department_name 
-- from hr.employees
-- right join hr.departments 
-- on employees.department_id = departments.department_id
-- where employees.employee_id is null; 

-- 7. Retrieve employees along with their manager names using SELF JOIN
-- This Query is to give emp details with their mgr's using self join

-- select e1.employee_id,e1.first_name employee_name,e2.first_name  manager_name
-- from hr.employees e1 
-- join hr.employees e2 
-- on e1.manager_id = e2.employee_id; 

--8. Retrieve employees along with their job title using INNER JOIN
-- This query is to give emp details with their job title using inner join

-- select employees.employee_id, employees.first_name, jobs.job_title
-- from hr.employees
-- join hr.jobs
-- on employees.job_id = jobs.job_id; 

--9.  Retrieve employees along with the location of their department using INNER JOIN
-- This Query is to give emp details with location using dept using inner join

-- select employees.employee_id, employees.first_name, departments.department_name, locations.city
-- from hr.EMPLOYEES
-- join hr.departments 
-- on employees.department_id = departments.department_id
-- join hr.locations 
-- on departments.location_id = locations.location_id;

-- 10. Retrieve employees who earn more than their department’s average salary using INNER JOIN and a subquery
-- This Query is to give emp details who's gettig more salary than dept avg salary using inner join

-- select employees.employee_id, employees.first_name, employees.salary
-- from hr.EMPLOYEES
-- join hr.DEPARTMENTS
-- on employees.department_id = departments.department_id
-- where employees.salary>(select avg(salary) from hr.employees where department_id = employees.department_id);

--11. retrieve employees who have the same job role as another employee using SELF JOIN
-- This Query is to give the emp details who's having same job role using self join

-- select e1.employee_id,e1.FIRST_NAME,e1.job_id,e2.FIRST_NAME co_worker_name
-- from hr.employees e1
-- join hr.employees e2
-- on e1.job_id = e2.job_id
-- where e1.employee_id<>e2.EMPLOYEE_ID;

--12. Retrieve employees and their department names, but show "Not Assigned" if an employee has no department using LEFT JOIN and COALESCE
-- This Query is to give emp details and deot names shows as not assigned using coalesce and left join

-- select employees.employee_id, employees.first_name, coalesce(departmets.department_name,'not assigned') department_name
-- from hr.employees
-- left join hr.DEPARTMENTS
-- on employees.department_id = departments.department_id; 

--13.  Retrieve employees who work in a city where their department is located using INNER JOIN
-- This Query is to give emp details who's working in a city using inner join with dept

-- select employees.employee_id, employees.first_name, locations.city
-- from hr.EMPLOYEES
-- join hr.departments 
-- on employees.department_id = departments.department_id
-- join hr.locations  
-- on departments.location_id = locations.location_id;

-- 14. retrieves employees and their department names where employees belong to a specific region using INNER JOIN
-- This Query is to give emp details with dept names, emp's belong to specific region using inner join

-- select e.emloyee_id,e.first_name,d.department_name,r.region_name
-- from hr.employees e
-- join hr.departments d
-- on e.DEPARTMENT_ID = d.DEPARTMENT_ID
-- join hr.locations l
-- on d.LOCATION_ID = l.LOCATION_ID
-- join hr.COUNTRIES c 
-- on l.COUNTRY_ID = c.COUNTRY_ID
-- join hr.REGIONS r
-- on c.REGION_ID = r.REGION_ID;

-- 15. Retrieve departments and the count of employees in each department using INNER JOIN and GROUP BY
-- This Query is to give count of emp's in each dept using inner join 

-- select departments.department_id, departments.department_name, COUNT(employees.employee_id) employee_count
-- from hr.departments
-- left JOIN hr.employees 
-- on departments.department_id = employees.department_id
-- group by departments.department_id, departments.department_name;
