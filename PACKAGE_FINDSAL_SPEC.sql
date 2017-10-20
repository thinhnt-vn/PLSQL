CREATE OR REPLACE PACKAGE cus_sal IS
       PROCEDURE findSal(x select_into.salary%TYPE);
END;

