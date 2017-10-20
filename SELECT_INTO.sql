DECLARE
  c_id SELECT_INTO.ID%TYPE := 3;
  c_name SELECT_INTO.NAME%TYPE;
  c_age SELECT_INTO.AGE%TYPE;
  c_address SELECT_INTO.ADDRESS%TYPE;
  c_salary SELECT_INTO.SALARY%TYPE;
BEGIN
  SELECT t.name, t.age, t.address, t.salary into c_name, c_age, c_address, c_salary
  from SELECT_INTO t
  where t.id = c_id;
  dbms_output.put_line('ID: ' || c_id || '; Name: ' || c_name || '; Age: ' || c_age || '; Address: ' || c_address || '; Salary: ' || c_salary);
END;
