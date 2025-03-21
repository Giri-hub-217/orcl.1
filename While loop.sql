-- declare
--     counter number :=1;
-- begin
--     while counter <=9 loop
--         dbms_output.put_line('counter value' || counter);
--         counter :=counter+1  ;
--     end loop;
-- end; 

-- declare
--     counter number :=1;
-- begin
--     while counter <=15 loop
--         dbms_output.put_line('counter value' || counter);
--         counter :=counter+2 ;
--     end loop;
-- end; 

-- declare
--     counter number :=20;
-- begin
--     while counter >=1 loop
--         dbms_output.put_line('counter value' || counter);
--         counter :=counter-1 ;
--     end loop;
-- end; 


-- DECLARE
--    i NUMBER := 1;
-- BEGIN
--    WHILE i <= 5 LOOP
--       IF i = 3 THEN
--          i := i + 1;
--          CONTINUE;
--       END IF;

--       DBMS_OUTPUT.PUT_LINE('Number: ' || i);
--       i := i + 1;
--    END LOOP;
-- END;






-- DECLARE
--    i NUMBER := 1;
-- BEGIN
--    WHILE i <= 10 LOOP
--       IF i = 7 THEN
--          i := i + 1;
--          exit;
--       END IF;

--       DBMS_OUTPUT.PUT_LINE('Number: ' || i);
--       i := i + 1;
--    END LOOP;
-- END;


-- DECLARE
--    i NUMBER := 2;
-- BEGIN
--    WHILE i <= 15 LOOP
--       IF MOD(i, 6) = 1 THEN
--          EXIT;
--       END IF;

--       DBMS_OUTPUT.PUT_LINE('Even: ' || i);
--       i := i + 1;
--    END LOOP;
-- END;

-- DECLARE
--    i NUMBER := 1;
-- BEGIN
--    WHILE i <= 10 LOOP
--       IF MOD(i, 3) = 0 THEN
--          i := i + 1;
--          CONTINUE;
--       END IF;
--       DBMS_OUTPUT.PUT_LINE('Not divisible by 3: ' || i);
--       i := i + 1;
--    END LOOP;
-- END;

-- DECLARE
--    i NUMBER := 1;
--    sum NUMBER := 0;
-- BEGIN
--    WHILE i <= 20 LOOP
--       sum := sum + i;
--       IF sum > 20 THEN
--          EXIT;
--       END IF;
--       DBMS_OUTPUT.PUT_LINE('Sum: ' || sum);
--       i := i + 1;
--    END LOOP;
-- END;

-- DECLARE
--    i NUMBER := 1;
-- BEGIN
--    WHILE i <= 20 LOOP
--       IF i IN (4, 6, 9, 13) THEN
--          i := i + 1;
--          CONTINUE;
--       END IF;
--       DBMS_OUTPUT.PUT_LINE('i: ' || i);
--       i := i + 1;
--    END LOOP;
-- END;