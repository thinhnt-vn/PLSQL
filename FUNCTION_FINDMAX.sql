DECLARE
  a number;
  b number;
  c number;
  
  FUNCTION findMax(x IN number, y IN number) 
  RETURN number IS
    f number;
  BEGIN
    IF x <= y THEN
      f := y;
    ELSE
      f := x;
    END IF;
    RETURN f;
  END; 
  
BEGIN
  a := 10;
  b := 20;
  c := findMax(a, b);
  dbms_output.put_line('Max (' || a || ', ' || b || '): ' || c);
END;
