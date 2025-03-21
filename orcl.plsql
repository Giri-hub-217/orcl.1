-- DECLARE
--     student_name varchar2(50):='Developer';
-- BEGIN
--     DBMS_OUTPUT.PUT_LINE('PlSql ' || student_name);
-- END;

-- declare
--     type emp_record is record (
--       emp_id number, emp_name varchar2(20),emp_salary number(9,3));
--        emp emp_record;
-- begin
--      emp.emp_id:=50;
--      emp.emp_name:='Developer';
--      emp.emp_salary:=1000;
--      DBMS_OUTPUT.PUT_LINE(emp.emp_name || ' '|| emp.emp_id || ' ' ||emp.emp_salary);
--  end;

-- DECLARE
--     emp_name VARCHAR2(100);
--     salary number;
-- BEGIN
--     select first_name,salary into emp_name,salary from hr.employees where EMPLOYEE_ID=102;
--     dbms_output.PUT_LINE(emp_name||salary);
-- END;

-- DECLARE
--     emp_status  varchar2(20);
-- BEGIN
--     SELECT case when salary>10000 then 'high' 
--     else 'low' end
--     into emp_status from hr.employees  where employee_id=101;
--     dbms_output.PUT_LINE(emp_status);
-- END;

-- DECLARE
--     number_of_rows number;
-- BEGIN
--     select count(*) into number_of_rows from hr.employees;
--     dbms_output.PUT_LINE(number_of_rows);
-- END ;

-- DECLARE
--     salary_range number;
-- BEGIN
--     select max(salary)-min(salary) into salary_Range from hr.employees ;
--     dbms_output.put_line(salary_range);
-- END;

-- DECLARE
--     min_salary number;
--     max_salary number;
-- BEGIN
--     select max(salary),min(salary) into max_salary,min_salary from hr.employees ;
--     dbms_output.put_line(max_salary-min_salary);
--  END;

-- DECLARE
--     x NUMBER := 1; 
-- BEGIN
--     WHILE x < 5 LOOP  
--         DBMS_OUTPUT.PUT_LINE(x);  
--         x := x + 1; 
--     END LOOP;
-- END;
-- /
