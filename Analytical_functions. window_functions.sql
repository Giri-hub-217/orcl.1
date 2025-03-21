--6. Assign a rank to employees based on their salary within each department.
 -- This Query is to assign the rank to emp's based on their salary's in each dept
 SELECT department_id, employee_id, salary,
 RANK () OVER (PARTITION by department_id order by salary DESC) as salary_rank
 --from hr.EMPLOYEES;

 --7.Find the top 3 highest-paid employees in each department
 -- This Query is to get the top highest salary from each dept using rank()
 Select department_id, employee_id, salary
 FROM(
    SELECT department_id, employee_id, salary,
    RANK () OVER (PARTITION by department_id order by salary DESC) as salary_rank
    from hr.employees
 ) where salary_rank<=3; 

 -- 8. Identify the second highest salary in each department using DENSE_RANK().
-- This Query is to get the second highest salary in each dept using dense_rank
SELECT department_id, employee_id, salary, 
from (
select department_id, employee_id, salary,
DENSE_RANK() OVER (PARTITION by department_id order by salary desc) as salary_rank
from hr.employees 
) where salary_rank=2;

--9. Compute the cumulative total salary of employees ordered by hire date.
-- This Query is to sum, over the salary of emp's and oder by hire_date
select employee_id, hire_date, salary
sum (salary) OVER (order by hire_date) as cummulative_salary
from hr.employees;

--10. Assign a row number to each employee in each department.
-- This Query is to assign rownum to each emp's using partitions
select department_id, employee_id,
Row_number () OVER (PARTITIONby department_id order by employee_id) as rownum
from hr.employees;

--11. Find the salary difference between each employee and the next highest-paid employee.
-- This query is to get the next highest sal using lead()
select employee_id, salary,
lead(salary) OVER (order by salary DESC)- salary as diff_salary
from hr.employees;

--12. Calculate the previous month’s salary for each employee using LAG().
-- This Query is to get the next prev highest salary using lag()
SELECT employee_id,salary, hire_date,
lag(salary) OVER (PARTITION by employee_id order by hire_date) as prev_salary
from hr.EMPLOYEES;

--13. Identify employees whose salaries increased over time.
-- This query is to get the salary's increases of emp's using lead() and lag()
select employee_id, hire_date, salary,
lag(salary) over (PARTITIONby employee_id order by hire_date) as prev_salary
