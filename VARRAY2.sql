DECLARE
  CURSOR customer IS 
  SELECT name
  FROM SELECT_INTO;
  TYPE names IS VARRAY(7) OF SELECT_INTO.NAME%TYPE;
  customer_names names;
  i integer := 0;
BEGIN
  customer_names := names();  
  FOR c IN customer LOOP
    i := i + 1;
    customer_names.extend;
    customer_names(i) := c.name; 
    dbms_output.put_line('Customer (' || i ||'): ' || customer_names(i));
  END LOOP;
  
END;
