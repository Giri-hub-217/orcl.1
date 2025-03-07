--  select * from hr.EMPLOYEES

-- Arithematic operators

-- select 10+7 from dual
-- select 20-9 from dual
--select 10*7 from dual
--select 10/5 from dual

--COMPARISON OPERATORS

-- SELECT salary from hr.EMPLOYEES where SALARY>10000
--  SELECT salary from hr.EMPLOYEES where SALARY<10000
--  SELECT salary from hr.EMPLOYEES where SALARY=10000
--SELECT salary from hr.EMPLOYEES where SALARY<=10000
--SELECT salary from hr.EMPLOYEES where SALARY>=10000
--SELECT salary from hr.EMPLOYEES where SALARY<>10000

--#### logical operators  (and or not)

--select * from hr.EMPLOYEES where salary>10000 and DEPARTMENT_ID=90
--select * from hr.EMPLOYEES where salary=10000 or DEPARTMENT_ID=90
--select * from hr.EMPLOYEES where NOT DEPARTMENT_ID = 90

-- ### concatenation

--SELECT First_name || LAST_Name from hr.employees

-- #### Between operator,in ,like operators

-- select First_name from hr.employees where First_name like 'S%'

-- select First_name from hr.EMPLOYEES where FIRST_NAME like'%a'

-- select First_name from hr.employees where First_name like 'S%a'

--  select phone_number from hr.employees where phone_number like '1______________'

--  select EMAIL from hr.EMPLOYEES where email LIKE '%A'
-- select salary from hr.EMPLOYEES where SALARY BETWEEN 10000 and 20000
--select * from hr.employees where DEPARTMENT_ID IN(60,90,100)