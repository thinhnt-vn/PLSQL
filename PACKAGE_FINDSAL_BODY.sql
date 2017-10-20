CREATE OR REPLACE PACKAGE BODY cus_sal IS
       PROCEDURE findSal(x select_into.salary%TYPE) IS
         sal select_into.salary%TYPE;
       BEGIN
         SELECT salary INTO sal
         FROM select_into
         WHERE id = x;
         dbms_output.put_line('Salary: ' || sal);
         EXCEPTION
           WHEN no_data_found THEN
             dbms_output.put_line('Not found');
       END;
END;
