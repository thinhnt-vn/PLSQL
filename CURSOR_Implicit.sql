DECLARE
  total_row number(2);
BEGIN
  UPDATE select_into
  SET salary = salary + 500;
  
  IF sql%FOUND THEN
    total_row := sql%ROWCOUNT;
    dbms_output.put_line(total_row || ' rows be updated');
  ELSIF sql%NOTFOUND THEN
    dbms_output.put_line('There are no row be updated');
  END IF; 
  
END;
