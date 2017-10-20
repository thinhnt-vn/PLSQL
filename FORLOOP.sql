DECLARE
  i NUMBER := 10;
  
BEGIN
  FOR i IN 10 .. 20 LOOP
    dbms_output.put_line('i : ' || i); 
  END LOOP;
  
  FOR i IN REVERSE 10 .. 20 LOOP
    dbms_output.put_line('i : ' || i); 
  END LOOP;
  
  dbms_output.put_line('After loop');  
END;
