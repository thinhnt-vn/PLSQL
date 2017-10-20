CREATE OR REPLACE TRIGGER difference_salary
BEFORE INSERT OR UPDATE OR DELETE
ON select_into
FOR EACH ROW
WHEN (NEW.ID > 0)
DECLARE
     sal_dif number;
BEGIN
     sal_dif := :new.salary - :old.salary;
     dbms_output.put_line('Old Salary: ' || :old.salary);
     dbms_output.put_line('New Salary: ' || :new.salary);
     dbms_output.put_line('Difference Salary: ' || sal_dif);
END;
