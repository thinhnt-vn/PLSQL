DECLARE 
  TYPE namearray IS VARRAY(5) OF VARCHAR2(10);
  TYPE grades IS VARRAY(5) OF INTEGER;
  
  names namearray;
  marks grades;
BEGIN
  names := namearray('A', 'B', 'C', 'D');
  marks := grades(5,7,9,8);
  FOR i IN 1..names.count LOOP
    dbms_output.put_line(
    'Student ' || i || ': ' || names(i) ||
    '. Mark: ' || marks(i)
    );
  END LOOP;
END;
