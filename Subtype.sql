DECLARE
  SUBTYPE name IS VARCHAR2(30);
  subtype message is varchar2(200);
  myname name;
  welcome message;
BEGIN
  myname := 'Nguyen Toan Thinh';
  welcome := 'Welcome you!';
  dbms_output.put_line('Hi ' || myname || '. ' || welcome);
END;
