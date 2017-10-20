DECLARE 
  num1 NUMBER  := 85;
  num2 NUMBER  := 90;
BEGIN
  dbms_output.put_line('num1: ' || num1);
  dbms_output.put_line('num2: ' || num2);   
  DECLARE
    num1 NUMBER  := 185;
    num2 NUMBER  := 190;
  BEGIN
    dbms_output.put_line('num1: ' || num1);
    dbms_output.put_line('num2: ' || num2); 
  END;
END;
