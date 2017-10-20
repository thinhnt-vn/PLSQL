DECLARE
  CURSOR customer IS 
  SELECT name, salary
  FROM select_into;
  
  TYPE customer_table IS TABLE OF customer%ROWTYPE;
  cus_list customer_table;
  counter number := 0;
BEGIN
  cus_list := customer_table();
  FOR n IN customer LOOP
    counter := counter + 1;
    cus_list.extend;
    cus_list(counter).name := n.name;
    cus_list(counter).salary := n.salary;
    dbms_output.put_line(cus_list(counter).name || ': ' || cus_list(counter).salary);
  END LOOP;
END;
