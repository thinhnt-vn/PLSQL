DECLARE
  i NUMBER := 10;
  
BEGIN
  LOOP
    dbms_output.put_line('i = ' || i);
    i := i + 10;
    IF i > 50 THEN
      EXIT;
    END IF;
  END LOOP;
  
  dbms_output.put_line('After loop');  
END;
