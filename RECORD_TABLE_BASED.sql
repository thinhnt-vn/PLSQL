DECLARE
  rec select_into%ROWTYPE;
BEGIN
  SELECT * INTO rec
  FROM select_into
  WHERE id = 1;
  dbms_output.put_line('ID: ' || rec.id);
  dbms_output.put_line('Name: ' || rec.name);
  dbms_output.put_line('Age: ' || rec.age);
  dbms_output.put_line('Address: ' || rec.address);
  dbms_output.put_line('Salary: ' || rec.salary);
END;
