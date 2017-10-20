DECLARE
  TYPE salary IS TABLE OF number INDEX BY varchar2(20);
  salary_list salary;
  name varchar2(20);
BEGIN
  salary_list('ABC') := 100;
  salary_list('DEF') := 200;
  salary_list('GHI') := 300;
  salary_list('EFG') := 500;
  name := salary_list.FIRST;
  WHILE name IS NOT NULL LOOP
    dbms_output.put_line('Salary of ' || name || ' is: ' || salary_list(name));
    name := salary_list.NEXT(name);
  END LOOP;
END;
