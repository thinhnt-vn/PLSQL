DECLARE
  i NUMBER := 10;
  
BEGIN
  WHILE i <= 50 LOOP
    dbms_output.put_line('i = ' || i);
    i := i + 10;
  END LOOP;
  
  dbms_output.put_line('After loop');  
END;
