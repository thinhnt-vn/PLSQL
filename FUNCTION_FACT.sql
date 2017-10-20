DECLARE
  n number;
  FUNCTION fact(x number) 
  RETURN number IS
    f number;
  BEGIN
    IF x = 0 THEN
      f := 1;
    ELSE
      f := x * fact(x - 1);
    END IF;
    RETURN f;
  END;
  
BEGIN
  n := 6;
  dbms_output.put_line('Fact of ' || n || ' is: ' || fact(n));
END;
