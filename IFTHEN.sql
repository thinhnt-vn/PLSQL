DECLARE
  si_id SELECT_INTO.ID%TYPE := 1;
  si_salary SELECT_INTO.SALARY%TYPE;
BEGIN
  SELECT salary INTO si_salary
  FROM SELECT_INTO
  WHERE id = si_id;
  
  IF si_salary <= 10000 THEN
    UPDATE SELECT_INTO
    SET salary = salary + 1000
    WHERE id = si_id;
    dbms_output.put_line('Salary updated');
  END IF;
  
END;
