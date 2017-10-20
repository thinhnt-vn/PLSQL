DECLARE
  CURSOR c IS
  SELECT name, age, address, salary 
  FROM select_into;
  
  rec c%ROWTYPE; 
BEGIN
  OPEN c;
  LOOP
    FETCH c INTO rec;  
    dbms_output.put_line('Name:' || rec.name || '. Age:' || rec.age || '. Address:' || rec.address || '. Salary: ' || rec.salary);
    EXIT WHEN c%NOTFOUND;
  END LOOP;
  CLOSE c;
END;
